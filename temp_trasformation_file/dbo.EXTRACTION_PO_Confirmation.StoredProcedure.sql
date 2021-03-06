USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_PO_Confirmation]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Sangysssimooo>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================[dbo].[1_0_EXTRACTION_INV_Item_ETL]
CREATE PROCEDURE [dbo].[EXTRACTION_PO_Confirmation]
AS
BEGIN
	SET NOCOUNT ON;
select
'EKES_SYSID',
'EKES_MANDT',
'EKES_EBELN',
'EKES_EBELP',
'EKES_ETENS',
'EKES_EBTYP',
'EKES_EINDT',
'EKES_LPEIN',
'EKES_UZEIT',
'EKES_ERDAT',
'EKES_EZEIT',
'EKES_MENGE',
'EKES_DABMG',
'EKES_ESTKZ',
'EKES_LOEKZ',
'EKES_KZDIS',
'EKES_XBLNR',
'EKES_VBELN',
'EKES_VBELP',
'EKES_MPROF',
'EKES_EMATN',
'EKES_MAHNZ',
'EKES_CHARG',
'EKES_UECHA',
'EKES_REF_ETENS',
'EKES_IMWRK',
'EKES_VBELN_ST',
'EKES_VBELP_ST',
'EKES_J_3AETENR',
'EKES_ERUSERNAME',
'EKES_AEUSERNAME',
'EKES_UDATE',
'EKES_DATUM'
union all
select
	CASE WHEN replace([EKES_SYSID],' ','') = '' then NULL ELSE replace([EKES_SYSID],' ','') end as [EKES_SYSID],
	CASE WHEN replace([EKES_MANDT],' ','') = '' then NULL ELSE replace([EKES_MANDT],' ','') end as [EKES_MANDT],
	CASE WHEN replace([EKES_EBELN],' ','') = '' then NULL ELSE replace([EKES_EBELN],' ','') end as [EKES_EBELN],
	CASE WHEN replace([EKES_EBELP],' ','') = '' then '00000' WHEN replace([EKES_EBELP],' ','') IS NULL then '00000'  ELSE replace([EKES_EBELP],' ','') end as [EKES_EBELP],
	CASE WHEN replace([EKES_ETENS],' ','') = '' then NULL ELSE replace([EKES_ETENS],' ','') end as [EKES_ETENS],
	CASE WHEN replace([EKES_EBTYP],' ','') = '' then NULL ELSE replace([EKES_EBTYP],' ','') end as [EKES_EBTYP],
	CASE WHEN replace([EKES_EINDT],' ','') = '' then '00000000' WHEN replace([EKES_EINDT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKES_EINDT]),'YYYYMMDD'),' ','') end as [EKES_EINDT],
	CASE WHEN replace([EKES_LPEIN],' ','') = '' then NULL ELSE replace([EKES_LPEIN],' ','') end as [EKES_LPEIN],
	CASE WHEN replace([EKES_UZEIT],' ','') = '' then '00000000' WHEN replace([EKES_UZEIT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKES_UZEIT]),'YYYYMMDD'),' ','') end as [EKES_UZEIT],
	CASE WHEN replace([EKES_ERDAT],' ','') = '' then '00000000' WHEN replace([EKES_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKES_ERDAT]),'YYYYMMDD'),' ','') end as [EKES_ERDAT],
	CASE WHEN replace([EKES_EZEIT],' ','') = '' then '00000000' WHEN replace([EKES_EZEIT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKES_EZEIT]),'YYYYMMDD'),' ','') end as [EKES_EZEIT],
	CASE WHEN replace([EKES_MENGE],' ','') = '' then '0.000' WHEN replace([EKES_MENGE],' ','') IS NULL THEN '0.000' ELSE replace([EKES_MENGE],' ','') end as [EKES_MENGE],
	CASE WHEN replace([EKES_DABMG],' ','') = '' then '0.000' WHEN replace([EKES_DABMG],' ','') IS NULL THEN '0.000' ELSE replace([EKES_DABMG],' ','') end as [EKES_DABMG],
	CASE WHEN replace([EKES_ESTKZ],' ','') = '' then NULL ELSE replace([EKES_ESTKZ],' ','') end as [EKES_ESTKZ],
	CASE WHEN replace([EKES_LOEKZ],' ','') = '' then NULL ELSE replace([EKES_LOEKZ],' ','') end as [EKES_LOEKZ],
	CASE WHEN replace([EKES_KZDIS],' ','') = '' then NULL ELSE replace([EKES_KZDIS],' ','') end as [EKES_KZDIS],
	CASE WHEN replace([EKES_XBLNR],' ','') = '' then NULL ELSE replace([EKES_XBLNR],' ','') end as [EKES_XBLNR],
	CASE WHEN replace([EKES_VBELN],' ','') = '' then NULL ELSE replace([EKES_VBELN],' ','') end as [EKES_VBELN],
	CASE WHEN replace([EKES_VBELP],' ','') = '' then NULL ELSE replace([EKES_VBELP],' ','') end as [EKES_VBELP],
	CASE WHEN replace([EKES_MPROF],' ','') = '' then NULL ELSE replace([EKES_MPROF],' ','') end as [EKES_MPROF],
	CASE WHEN replace([EKES_EMATN],' ','') = '' then NULL ELSE replace([EKES_EMATN],' ','') end as [EKES_EMATN],
	CASE WHEN replace([EKES_MAHNZ],' ','') = '' then '0' WHEN replace([EKES_MAHNZ],' ','') IS NULL THEN '0' ELSE replace([EKES_MAHNZ],' ','') end as [EKES_MAHNZ],
	CASE WHEN replace([EKES_CHARG],' ','') = '' then NULL ELSE replace([EKES_CHARG],' ','') end as [EKES_CHARG],
	CASE WHEN replace([EKES_UECHA],' ','') = '' then NULL ELSE replace([EKES_UECHA],' ','') end as [EKES_UECHA],
	CASE WHEN replace([EKES_REF_ETENS],' ','') = '' then NULL ELSE replace([EKES_REF_ETENS],' ','') end as [EKES_REF_ETENS],
	CASE WHEN replace([EKES_IMWRK],' ','') = '' then NULL ELSE replace([EKES_IMWRK],' ','') end as [EKES_IMWRK],
	CASE WHEN replace([EKES_VBELN_ST],' ','') = '' then NULL ELSE replace([EKES_VBELN_ST],' ','') end as [EKES_VBELN_ST],
	CASE WHEN replace([EKES_VBELP_ST],' ','') = '' then NULL ELSE replace([EKES_VBELP_ST],' ','') end as [EKES_VBELP_ST],
	CASE WHEN replace([EKES_J_3AETENR],' ','') = '' then NULL ELSE replace([EKES_J_3AETENR],' ','') end as [EKES_J_3AETENR],
	CASE WHEN [EKES_ERUSERNAME] = '' then NULL else [EKES_ERUSERNAME] end as [EKES_ERUSERNAME],
	CASE WHEN [EKES_AEUSERNAME] = '' then NULL else [EKES_AEUSERNAME] end as [EKES_AEUSERNAME],
	CASE WHEN replace([EKES_UDATE],' ','') = '' then '00000000' WHEN replace([EKES_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKES_UDATE]),'YYYYMMDD'),' ','') end as [EKES_UDATE],
	CASE WHEN replace([EKES_DATUM],' ','') = '' then '00000000' WHEN replace([EKES_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKES_DATUM]),'YYYYMMDD'),' ','') end as [EKES_DATUM]
	from
	[dbo].[PO_Confirmation]
	WHERE [EKES_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))

END

GO
