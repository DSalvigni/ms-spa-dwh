USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_IMPORT_OTD]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Sangysssimooo>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================[dbo].[1_0_EXTRACTION_INV_Item_ETL]
CREATE PROCEDURE [dbo].[EXTRACTION_IMPORT_OTD]
AS
BEGIN
	SET NOCOUNT ON;
	SET DATEFORMAT DMY;
INSERT INTO
[dbo].[OTD]
(
	[System],
	[Client],
	[CompanyCode],
	[Plant],
	[SupplierID],
	[UniqueIDPO],
	[POID],
	[POItem],
	[POScheduleLine],
	[LineType],
	[PurchasingGroup],
	[MaterialNumber],
	[Identifier],
	[SupplyChain],
	[SupplyChain (TOPL)],
	[MilestoneDeliveryDate],
	[StatisticalDeliveryDate],
	[DeliveryDueDate],
	[MaxDeliveryDate], 
	[ScheduledQuantity],
	[FinalDeliveredQuantity],
	[FinalDeliveryIndicator],
	[FinalInvoiceIndicator],
	[POItemDeleted],
	[GoodsReceiptRequired]
	)
	select 
	poi.[EKPO_SYSID] as 'System',
	poi.[EKPO_MANDT] as 'Client',
	poi.[EKPO_BUKRS] as 'CompanyCode',
	poi.[EKPO_WERKS] as 'Plant',
	poh.[EKKO_LIFNR] as 'SupplierID',
	concat(poi.[EKPO_SYSID],poi.[EKPO_MANDT],'_',poi.[EKPO_EBELN],'_',poi.[EKPO_EBELP],'_',pos.[EKET_ETENR]) as 'UniqueIDPO',
	poi.[EKPO_EBELN] as 'POID',
	poi.[EKPO_EBELP] as 'POItem',
	pos.[EKET_ETENR] as 'POScheduleLine',
	poh.[EKKO_BSART] as 'LineType',
	poh.[EKKO_EKGRP] as 'PurchasingGroup',
	poi.[EKPO_MATNR] as 'MaterialNumber',
	IIF(poi.[EKPO_SYSID] = 'ADP', left(pgr.[T024_TELFX], 11),IIF(poi.[EKPO_SYSID] = 'IE3' or poi.[EKPO_SYSID] = 'OP3', pgr.[T024_EKTEL], pgr.Identifier)) as 'Identifier',
	sc.SupplyChain as 'SupplyChain',
	'' as 'SupplyChain (TOPL)',
	pos.[EKET_EINDT] as 'MilestoneDeliveryDate',
	pos.[EKET_SLFDT] as 'StatisticalDeliveryDate',
	IIF(poh.[EKKO_BSART] in ('NB51', 'SUBD', 'SUBG', 'SUBN', 'SUBP', 'SUBT'),CAST(pos.[EKET_EINDT] as varchar),CAST(pos.[EKET_SLFDT] as varchar)) as 'DeliveryDueDate',
	max(gmh.[MKPF_BLDAT]) as 'MaxDeliveryDate', 
	pos.[EKET_MENGE] as 'ScheduledQuantity',
	pos.[EKET_WEMNG] as 'FinalDeliveredQuantity',
	poi.[EKPO_ELIKZ] as 'FinalDeliveryIndicator',
	poi.[EKPO_EREKZ] as'FinalInvoiceIndicator',
	poi.[EKPO_LOEKZ] as 'POItemDeleted',
	poi.[EKPO_WEPOS] as 'GoodsReceiptRequired'
	from [dbo].[PO_Item] as poi
	left join
			(select IIF([MSEG_BWART] in ('102', '104'), [MSEG_ERFMG]*(-1),[MSEG_ERFMG]) as 'FinalQuantityDelivered',  [HASH_PO_ITEM], [HASH_GM_HEADER]
			from [dbo].[GM_Item]
			where [MSEG_BWART] in ('101', '102','103','104')
	) as gm on gm.[HASH_PO_ITEM] = poi.[HASH_PO_ITEM] 
	left join [dbo].[PO_Schedule] as pos on pos.HASH_PO_ITEM = poi.HASH_PO_ITEM
	left join [dbo].[GM_Header] as gmh on gmh.[HASH_GM_HEADER] = gm.[HASH_GM_HEADER] 
	left join 
			(select *, concat([EKKO_SYSID],'_',[dbo].[rem_0]([EKKO_MANDT]),'_',[dbo].[rem_0]([EKKO_EKGRP])) as hkey
			 from [dbo].[PO_Header]
	) as poh on poh.[HASH_PO_HEADER]  = poi.[HASH_PO_HEADER]
	left join 
			(select IIF([T024_SYSID] in ('800','801','802','803','804','805','806','807','808','809','810','811','812','813','814','815','816','817'), 'SER-YYY-ZZZ',[T024_TEL_NUMBER]) as 'Identifier' ,*
			from [dbo].[MD_PurchasingGroup]
	) as pgr on pgr.[HASH_MD_PGROUP] = poh.[HASH_MD_PGROUP]
	left join 
			(select *, concat([SystemID],'_',[Client],'_',[PurchasingGroup]) as gkey
			from [dbo].[HAND_MD_PurchasingGroup_data]
	) as sc on sc.gkey = poh.hkey
	where 
	(
	(pos.[EKET_EINDT] < CAST('2017-12-01 00:00:00.0000000' AS DATETIME2) or pos.[EKET_SLFDT] < CAST('2017-12-01 00:00:00.0000000' AS DATETIME2)) 
	and 
	(pos.[EKET_EINDT] > CAST('2016-11-30 00:00:00.0000000' AS DATETIME2) or pos.[EKET_SLFDT] >  CAST('2016-11-30 00:00:00.0000000' AS DATETIME2))
	and 
	poi.EKPO_LOEKZ <> 'L' and poi.EKPO_LOEKZ <> 'S' and poi.EKPO_LOEKZ <> 'X' and poi.EKPO_WEPOS = 'X'
	)
	group by 
	poi.EKPO_SYSID,
	poi.[EKPO_MANDT],
	poi.[EKPO_BUKRS],
	poi.[EKPO_WERKS],
	poh.[EKKO_LIFNR],
	poi.[EKPO_EBELN],
	poi.[EKPO_EBELP],
	pos.[EKET_ETENR],
	poh.[EKKO_BSART],
	poh.[EKKO_EKGRP],
	poi.[EKPO_MATNR],
	Identifier,
	SupplyChain,
	pgr.[T024_TELFX],
	pgr.[T024_EKTEL],
	pos.[EKET_EINDT],
	pos.[EKET_SLFDT],
	pos.[EKET_MENGE],
	pos.[EKET_WEMNG],
	poi.[EKPO_ELIKZ],
	poi.[EKPO_EREKZ],
	poi.[EKPO_LOEKZ],
	poi.[EKPO_WEPOS]
END

GO
