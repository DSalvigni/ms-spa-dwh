USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_PO_InfRecGE]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_PO_InfRecGE]
AS
BEGIN
	SET NOCOUNT ON;
select
'EINA_SYSID',
'EINA_MANDT',
'EINA_INFNR',
'EINA_ANZPU',
'EINA_ERDAT',
'EINA_ERNAM',
'EINA_IDNLF',
'EINA_KOLIF',
'EINA_LIFAB',
'EINA_LIFBI',
'EINA_LIFNR',
'EINA_LMEIN',
'EINA_LOEKZ',
'EINA_LTSNR',
'EINA_LTSSF',
'EINA_MAHN1',
'EINA_MAHN2',
'EINA_MAHN3',
'EINA_MATKL',
'EINA_MATNR',
'EINA_MEINS',
'EINA_MFRNR',
'EINA_PUNEI',
'EINA_REGIO',
'EINA_RELIF',
'EINA_RUECK',
'EINA_SORTL',
'EINA_TELF1',
'EINA_TXZ01',
'EINA_UMREN',
'EINA_UMREZ',
'EINA_URZDT',
'EINA_URZLA',
'EINA_URZNR',
'EINA_URZTP',
'EINA_URZZT',
'EINA_VABME',
'EINA_VERKF',
'EINA_WGLIF',
'EINA_ERUSERNAME',
'EINA_AEUSERNAME',
'EINA_UDATE',
'EINA_DATUM'
union all
select	
	CASE WHEN replace([EINA_SYSID],' ','') = '' then NULL ELSE replace([EINA_SYSID],' ','') end as [EINA_SYSID],
	CASE WHEN replace([EINA_MANDT],' ','') = '' then NULL ELSE replace([EINA_MANDT],' ','') end as [EINA_MANDT],
	CASE WHEN replace([EINA_INFNR],' ','') = '' then NULL ELSE replace([EINA_INFNR],' ','') end as [EINA_INFNR],
	CASE WHEN replace([EINA_ANZPU],' ','') = '' then '0.000' WHEN replace([EINA_ANZPU],' ','') IS NULL THEN '0.000' ELSE replace([EINA_ANZPU],' ','') end as [EINA_ANZPU],
	CASE WHEN replace([EINA_ERDAT],' ','') = '' then '00000000' WHEN replace([EINA_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINA_ERDAT]),'YYYYMMDD'),' ','') end as [EINA_ERDAT],
	CASE WHEN replace([EINA_ERNAM],' ','') = '' then NULL ELSE replace([EINA_ERNAM],' ','') end as [EINA_ERNAM],
	CASE WHEN replace([EINA_IDNLF],' ','') = '' then NULL ELSE replace([EINA_IDNLF],' ','') end as [EINA_IDNLF],
	CASE WHEN replace([EINA_KOLIF],' ','') = '' then NULL ELSE replace([EINA_KOLIF],' ','') end as [EINA_KOLIF],
	CASE WHEN replace([EINA_LIFAB],' ','') = '' then '00000000' WHEN replace([EINA_LIFAB],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINA_LIFAB]),'YYYYMMDD'),' ','') end as [EINA_LIFAB],
	CASE WHEN replace([EINA_LIFBI],' ','') = '' then '00000000' WHEN replace([EINA_LIFBI],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINA_LIFBI]),'YYYYMMDD'),' ','') end as [EINA_LIFBI],
	CASE WHEN replace([EINA_LIFNR],' ','') = '' then NULL ELSE replace([EINA_LIFNR],' ','') end as [EINA_LIFNR],
	CASE WHEN replace([EINA_LMEIN],' ','') = '' then NULL ELSE replace([EINA_LMEIN],' ','') end as [EINA_LMEIN],
	CASE WHEN replace([EINA_LOEKZ],' ','') = '' then NULL ELSE replace([EINA_LOEKZ],' ','') end as [EINA_LOEKZ],
	CASE WHEN replace([EINA_LTSNR],' ','') = '' then NULL ELSE replace([EINA_LTSNR],' ','') end as [EINA_LTSNR],
	CASE WHEN replace([EINA_LTSSF],' ','') = '' then NULL ELSE replace([EINA_LTSSF],' ','') end as [EINA_LTSSF],
	CASE WHEN replace([EINA_MAHN1],' ','') = '' then '0' WHEN replace([EINA_MAHN1],' ','') IS NULL THEN '0' ELSE replace([EINA_MAHN1],' ','') end as [EINA_MAHN1],
	CASE WHEN replace([EINA_MAHN2],' ','') = '' then '0' WHEN replace([EINA_MAHN2],' ','') IS NULL THEN '0' ELSE replace([EINA_MAHN2],' ','') end as [EINA_MAHN2],
	CASE WHEN replace([EINA_MAHN3],' ','') = '' then '0' WHEN replace([EINA_MAHN3],' ','') IS NULL THEN '0' ELSE replace([EINA_MAHN3],' ','') end as [EINA_MAHN3],
	CASE WHEN replace([EINA_MATKL],' ','') = '' then NULL ELSE replace([EINA_MATKL],' ','') end as [EINA_MATKL],
	CASE WHEN replace([EINA_MATNR],' ','') = '' then NULL ELSE replace([EINA_MATNR],' ','') end as [EINA_MATNR],
	CASE WHEN replace([EINA_MEINS],' ','') = '' then NULL ELSE replace([EINA_MEINS],' ','') end as [EINA_MEINS],
	CASE WHEN replace([EINA_MFRNR],' ','') = '' then NULL ELSE replace([EINA_MFRNR],' ','') end as [EINA_MFRNR],
	CASE WHEN replace([EINA_PUNEI],' ','') = '' then NULL ELSE replace([EINA_PUNEI],' ','') end as [EINA_PUNEI],
	CASE WHEN replace([EINA_REGIO],' ','') = '' then NULL ELSE replace([EINA_REGIO],' ','') end as [EINA_REGIO],
	CASE WHEN replace([EINA_RELIF],' ','') = '' then NULL ELSE replace([EINA_RELIF],' ','') end as [EINA_RELIF],
	CASE WHEN replace([EINA_RUECK],' ','') = '' then NULL ELSE replace([EINA_RUECK],' ','') end as [EINA_RUECK],
	CASE WHEN replace([EINA_SORTL],' ','') = '' then NULL ELSE replace([EINA_SORTL],' ','') end as [EINA_SORTL],
	CASE WHEN replace([EINA_TELF1],' ','') = '' then NULL ELSE replace([EINA_TELF1],' ','') end as [EINA_TELF1],
	CASE WHEN replace([EINA_TXZ01],' ','') = '' then NULL ELSE replace([EINA_TXZ01],' ','') end as [EINA_TXZ01],
	CASE WHEN replace([EINA_UMREN],' ','') = '' then '0' WHEN replace([EINA_UMREN],' ','') IS NULL THEN '0' ELSE replace([EINA_UMREN],' ','') end as [EINA_UMREN],
	CASE WHEN replace([EINA_UMREZ],' ','') = '' then '0' WHEN replace([EINA_UMREZ],' ','') IS NULL THEN '0' ELSE replace([EINA_UMREZ],' ','') end as [EINA_UMREZ],
	CASE WHEN replace([EINA_URZDT],' ','') = '' then '00000000' WHEN replace([EINA_URZDT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINA_URZDT]),'YYYYMMDD'),' ','') end as [EINA_URZDT],
	CASE WHEN replace([EINA_URZLA],' ','') = '' then NULL ELSE replace([EINA_URZLA],' ','') end as [EINA_URZLA],
	CASE WHEN replace([EINA_URZNR],' ','') = '' then NULL ELSE replace([EINA_URZNR],' ','') end as [EINA_URZNR],
	CASE WHEN replace([EINA_URZTP],' ','') = '' then NULL ELSE replace([EINA_URZTP],' ','') end as [EINA_URZTP],
	CASE WHEN replace([EINA_URZZT],' ','') = '' then NULL ELSE replace([EINA_URZZT],' ','') end as [EINA_URZZT],
	CASE WHEN replace([EINA_VABME],' ','') = '' then NULL ELSE replace([EINA_VABME],' ','') end as [EINA_VABME],
	CASE WHEN replace([EINA_VERKF],' ','') = '' then NULL ELSE replace([EINA_VERKF],' ','') end as [EINA_VERKF],
	CASE WHEN replace([EINA_WGLIF],' ','') = '' then NULL ELSE replace([EINA_WGLIF],' ','') end as [EINA_WGLIF],
	CASE WHEN replace([EINA_ERUSERNAME],' ','') = '' then NULL ELSE replace([EINA_ERUSERNAME],' ','') end as [EINA_ERUSERNAME],
	CASE WHEN replace([EINA_AEUSERNAME],' ','') = '' then NULL ELSE replace([EINA_AEUSERNAME],' ','') end as [EINA_AEUSERNAME],
	CASE WHEN replace([EINA_UDATE],' ','') = '' then '00000000' WHEN replace([EINA_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINA_UDATE]),'YYYYMMDD'),' ','') end as [EINA_UDATE],
	CASE WHEN replace([EINA_DATUM],' ','') = '' then '00000000' WHEN replace([EINA_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINA_DATUM]),'YYYYMMDD'),' ','') end as [EINA_DATUM]
	from
	[dbo].[PO_InfRecGE]
	WHERE [EINA_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))


END

GO
