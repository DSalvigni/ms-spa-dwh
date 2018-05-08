USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_GM_Item_CHUNCK]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Salvigni - SanGy - Daniele>
-- Create date: <March, 2018>
-- Status:  ヾ(⌐■_■)ノ
-- Description:	<INSERT/SELECT by Chunck>
-- =============================================
CREATE PROCEDURE [dbo].[MOVE_GM_Item_CHUNCK]
AS
--We start the dance...
SET IDENTITY_INSERT [dbo].[GM_Item] ON
WHILE 1=1
BEGIN
--We declare a TMP tab where to save the unique numeric id generated in the fast import
DECLARE @TempGMItem Table ([MSEG_UNIQU] int not null)

--we insert the chunk block from top select

INSERT INTO
				[dbo].[GM_Item]
				(
				[MSEG_UNIQU],
				[HASH_GM_HEADER],
				[HASH_GM_ITEM],
				[HASH_PO_ITEM],
				[HASH_SUPPLIER_LFA1],
				[HASH_SUPPLIER_LFB1],
				[MSEG_SYSID],
				[MSEG_MANDT],
				[MSEG_MBLNR],
				[MSEG_ZEILE],
				[MSEG_MJAHR],
				[MSEG_XAUTO],
				[MSEG_BUKRS],
				[MSEG_WERKS],
				[MSEG_BUDAT_MKPF],
				[MSEG_CPUDT_MKPF],
				[MSEG_BWART],
				[MSEG_SHKZG],
				[MSEG_MENGE],
				[MSEG_MEINS],
				[MSEG_ERFMG],
				[MSEG_ERFME],
				[MSEG_BPMNG],
				[MSEG_BPRME],
				[MSEG_BSTMG],
				[MSEG_BSTME],
				[MSEG_EBELN],
				[MSEG_EBELP],
				[MSEG_SGTXT],
				[MSEG_LIFNR],
				[MSEG_SAKTO],
				[MSEG_KOSTL],
				[MSEG_POSID],
				[MSEG_NPLNR],
				[MSEG_PRCTR],
				[MSEG_LGORT],
				[MSEG_UMLGO],
				[MSEG_LGNUM],
				[MSEG_LGTYP],
				[MSEG_LGPLA],
				[MSEG_BWLVS],
				[MSEG_TBNUM],
				[MSEG_WEMPF],
				[MSEG_SJAHR],
				[MSEG_SMBLN],
				[MSEG_SMBLP],
				[MSEG_XWSBR],
				[MSEG_GRUND],
				[MSEG_USNAM_MKPF],
				[MSEG_BEV2_ED_AEDAT],
				[MSEG_DATUM],
				[MSEG_PS_PSP_PNR]
				)
    OUTPUT INSERTED.[MSEG_UNIQU]
    INTO @TempGMItem
	SELECT TOP 100000
					[ID],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([MSEG_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([MSEG_MBLNR],'"','')),' ',''),REPLACE(REPLACE([MSEG_MJAHR],'"',''),' ',''))) as [HASH_GM_HEADER],	
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([MSEG_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([MSEG_MBLNR],'"','')),' ',''),REPLACE(REPLACE([MSEG_MJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](4,REPLACE([MSEG_ZEILE],'"','')),' ',''))) as [HASH_GM_ITEM],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([MSEG_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([MSEG_EBELN],'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([MSEG_EBELP],'"','')),' ',''))) as [HASH_PO_ITEM],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MSEG_SYSID],'"',''),' ',''),REPLACE(REPLACE([MSEG_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([MSEG_LIFNR],'"','')),' ',''))) as [HASH_SUPPLIER_LFA1],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MSEG_SYSID],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([MSEG_LIFNR],'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE([MSEG_BUKRS],'"','')),' ',''))) as [HASH_SUPPLIER_LFB1],
					--[HASH_GM_HEADER],
					--[HASH_GM_ITEM],
					--[HASH_PO_ITEM],
					--[HASH_SUPPLIER_LFA1],
					--[HASH_SUPPLIER_LFB1],
					REPLACE([MSEG_SYSID],'"',''),
					REPLACE([MSEG_MANDT],'"',''),
					[dbo].[add_0](10,REPLACE([MSEG_MBLNR],'"','')),
					[dbo].[add_0](4,REPLACE([MSEG_ZEILE],'"','')),
					REPLACE([MSEG_MJAHR],'"',''),
					REPLACE([MSEG_XAUTO],'"',''),
					[dbo].[add_0](4,REPLACE([MSEG_BUKRS],'"','')),
					REPLACE([MSEG_WERKS],'"',''),
					CASE 
					WHEN REPLACE(REPLACE(REPLACE([MSEG_BUDAT_MKPF],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
					WHEN ISDATE(REPLACE(REPLACE(REPLACE([MSEG_BUDAT_MKPF],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MSEG_BUDAT_MKPF],CHAR(13),''),CHAR(10),''),'"','')) 
					ELSE NULL
					END AS [MSEG_BUDAT_MKPF],
					CASE 
					WHEN REPLACE(REPLACE(REPLACE([MSEG_CPUDT_MKPF],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
					WHEN ISDATE(REPLACE(REPLACE(REPLACE([MSEG_CPUDT_MKPF],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MSEG_CPUDT_MKPF],CHAR(13),''),CHAR(10),''),'"','')) 
					ELSE NULL
					END AS [MSEG_CPUDT_MKPF],
					REPLACE([MSEG_BWART],'"',''),
					REPLACE([MSEG_SHKZG],'"',''),
					CASE
					WHEN 
					ISNUMERIC(REPLACE(REPLACE(REPLACE([MSEG_MENGE],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([MSEG_MENGE],CHAR(13),''),CHAR(10),''),'"',''))
					ELSE NULL
					END AS [MSEG_MENGE],
					REPLACE([MSEG_MEINS],'"',''),
					CASE
					WHEN (ISNUMERIC(REPLACE(REPLACE(REPLACE([MSEG_ERFMG],CHAR(13),''),CHAR(10),''),'"','')) = 1 AND REPLACE([MSEG_BWART],'"','') = '102')  THEN (TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([MSEG_ERFMG],CHAR(13),''),CHAR(10),''),'"',''))*(-1))
					WHEN (ISNUMERIC(REPLACE(REPLACE(REPLACE([MSEG_ERFMG],CHAR(13),''),CHAR(10),''),'"','')) = 1 AND REPLACE([MSEG_BWART],'"','') = '104')  THEN (TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([MSEG_ERFMG],CHAR(13),''),CHAR(10),''),'"',''))*(-1))
					WHEN (ISNUMERIC(REPLACE(REPLACE(REPLACE([MSEG_ERFMG],CHAR(13),''),CHAR(10),''),'"','')) = 1 AND REPLACE([MSEG_BWART],'"','') = '106')  THEN (TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([MSEG_ERFMG],CHAR(13),''),CHAR(10),''),'"',''))*(-1))
					ELSE TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([MSEG_ERFMG],CHAR(13),''),CHAR(10),''),'"',''))
					END AS [MSEG_ERFMG],
					REPLACE([MSEG_ERFME],'"',''),
					CASE
					WHEN 
					ISNUMERIC(REPLACE(REPLACE(REPLACE([MSEG_BPMNG],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([MSEG_BPMNG],CHAR(13),''),CHAR(10),''),'"',''))
					ELSE NULL
					END AS [MSEG_BPMNG],
					REPLACE([MSEG_BPRME],'"',''),
					CASE
					WHEN 
					ISNUMERIC(REPLACE(REPLACE(REPLACE([MSEG_BSTMG],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([MSEG_BSTMG],CHAR(13),''),CHAR(10),''),'"',''))
					ELSE NULL
					END AS [MSEG_BSTMG],
					REPLACE([MSEG_BSTME],'"',''),
					[dbo].[add_0](10,REPLACE([MSEG_EBELN],'"','')),
					[dbo].[add_0](5,REPLACE([MSEG_EBELP],'"','')),
					REPLACE([MSEG_SGTXT],'"',''),
					[dbo].[rem_0](REPLACE([MSEG_LIFNR],'"','')),
					REPLACE([MSEG_SAKTO],'"',''),
					REPLACE([MSEG_KOSTL],'"',''),
					REPLACE([MSEG_POSID],'"',''),
					[dbo].[add_0](12,REPLACE([MSEG_NPLNR],'"','')),
					REPLACE([MSEG_PRCTR],'"',''),
					REPLACE([MSEG_LGORT],'"',''),
					REPLACE([MSEG_UMLGO],'"',''),
					REPLACE([MSEG_LGNUM],'"',''),
					REPLACE([MSEG_LGTYP],'"',''),
					REPLACE([MSEG_LGPLA],'"',''),
					REPLACE([MSEG_BWLVS],'"',''),
					REPLACE([MSEG_TBNUM],'"',''),
					REPLACE([MSEG_WEMPF],'"',''),
					REPLACE([MSEG_SJAHR],'"',''),
					[dbo].[add_0](10,REPLACE([MSEG_SMBLN],'"','')),
					[dbo].[add_0](4,REPLACE([MSEG_SMBLP],'"','')),
					REPLACE([MSEG_XWSBR],'"',''),
					REPLACE([MSEG_GRUND],'"',''),
					REPLACE([MSEG_USNAM_MKPF],'"',''),
					CASE 
					WHEN REPLACE(REPLACE(REPLACE([MSEG_BEV2_ED_AEDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
					WHEN ISDATE(REPLACE(REPLACE(REPLACE([MSEG_BEV2_ED_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MSEG_BEV2_ED_AEDAT],CHAR(13),''),CHAR(10),''),'"','')) 
					ELSE NULL
					END AS [MSEG_BEV2_ED_AEDAT],
					CASE 
					WHEN REPLACE(REPLACE(REPLACE([MSEG_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
					WHEN ISDATE(REPLACE(REPLACE(REPLACE([MSEG_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MSEG_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
					ELSE NULL
					END AS [MSEG_DATUM],
					REPLACE([MSEG_PS_PSP_PNR],'"','')
					FROM
					[dbo].[GM_Item_ETL]
					where [MSEG_MANDT] is not null
					AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))

--we delete the imported ID for every 
DELETE [dbo].[GM_Item_ETL]
    FROM [dbo].[GM_Item_ETL]
        INNER JOIN @TempGMItem as t ON [dbo].[GM_Item_ETL].[ID]=t.[MSEG_UNIQU] 
		IF (@@ROWCOUNT = 0)
		BREAK;
END 
GO
