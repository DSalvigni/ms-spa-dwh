USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_Project]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_Project]
AS
BEGIN
	SET NOCOUNT ON;
select
'PROJ_SYSID',
'PROJ_MANDT',
'PROJ_VBUKR',
'PROJ_PSPID',
'PROJ_POST1',
'PROJ_PLFAZ',
'PROJ_PLSEZ',
'PROJ_VERNA',
'PROJ_ASTNA',
'PROJ_ISTAT',
'PROJ_SPRAS',
'PROJ_TXT30',
'PROJ_PRCTR',
'PROJ_POSID',
'PROJ_PSPNR',
'PROJ_PRPS_POST1',
'PROJ_ERDAT',
'PROJ_AEDAT',
'PROJ_DATUM'
union all
select	
	CASE WHEN replace([PROJ_SYSID],' ','') = '' then NULL ELSE replace([PROJ_SYSID],' ','') end as [PROJ_SYSID],
	CASE WHEN replace([PROJ_MANDT],' ','') = '' then NULL ELSE replace([PROJ_MANDT],' ','') end as [PROJ_MANDT],
	CASE WHEN replace([PROJ_VBUKR],' ','') = '' then NULL ELSE replace([PROJ_VBUKR],' ','') end as [PROJ_VBUKR],
	CASE WHEN replace([PROJ_PSPID],' ','') = '' then NULL ELSE replace([PROJ_PSPID],' ','') end as [PROJ_PSPID],
	CASE WHEN replace([PROJ_POST1],' ','') = '' then NULL ELSE replace([PROJ_POST1],' ','') end as [PROJ_POST1],
	CASE WHEN replace([PROJ_PLFAZ],' ','') = '' then '00000000' WHEN replace([PROJ_PLFAZ],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([PROJ_PLFAZ]),'YYYYMMDD'),' ','') end as [PROJ_PLFAZ],
	CASE WHEN replace([PROJ_PLSEZ],' ','') = '' then '00000000' WHEN replace([PROJ_PLSEZ],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([PROJ_PLSEZ]),'YYYYMMDD'),' ','') end as [PROJ_PLSEZ],
	CASE WHEN replace([PROJ_VERNA],' ','') = '' then NULL ELSE replace([PROJ_VERNA],' ','') end as [PROJ_VERNA],
	CASE WHEN replace([PROJ_ASTNA],' ','') = '' then NULL ELSE replace([PROJ_ASTNA],' ','') end as [PROJ_ASTNA],
	CASE WHEN replace([PROJ_ISTAT],' ','') = '' then NULL ELSE replace([PROJ_ISTAT],' ','') end as [PROJ_ISTAT],
	CASE WHEN replace([PROJ_SPRAS],' ','') = '' then NULL ELSE replace([PROJ_SPRAS],' ','') end as [PROJ_SPRAS],
	CASE WHEN replace([PROJ_TXT30],' ','') = '' then NULL ELSE replace([PROJ_TXT30],' ','') end as [PROJ_TXT30],
	CASE WHEN replace([PROJ_PRCTR],' ','') = '' then NULL ELSE replace([PROJ_PRCTR],' ','') end as [PROJ_PRCTR],
	CASE WHEN replace([PROJ_POSID],' ','') = '' then NULL ELSE replace([PROJ_POSID],' ','') end as [PROJ_POSID],
	CASE WHEN replace([PROJ_PSPNR],' ','') = '' then NULL ELSE replace([PROJ_PSPNR],' ','') end as [PROJ_PSPNR],
	CASE WHEN replace([PROJ_PRPS_POST1],' ','') = '' then NULL ELSE replace([PROJ_PRPS_POST1],' ','') end as [PROJ_PRPS_POST1],
	CASE WHEN replace([PROJ_ERDAT],' ','') = '' then '00000000' WHEN replace([PROJ_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([PROJ_ERDAT]),'YYYYMMDD'),' ','') end as [PROJ_ERDAT],
	CASE WHEN replace([PROJ_AEDAT],' ','') = '' then '00000000' WHEN replace([PROJ_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([PROJ_AEDAT]),'YYYYMMDD'),' ','') end as [PROJ_AEDAT],
	CASE WHEN replace([PROJ_DATUM],' ','') = '' then '00000000' WHEN replace([PROJ_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([PROJ_DATUM]),'YYYYMMDD'),' ','') end as [PROJ_DATUM]
	from
	[dbo].[MD_Project]
	WHERE [PROJ_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
