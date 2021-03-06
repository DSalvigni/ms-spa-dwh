USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_ProdOrder_Header]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_ProdOrder_Header]
AS
BEGIN
	SET NOCOUNT ON;
select
'AFKO_SYSID',
'AFKO_MANDT',
'AFKO_AUFNR',
'AFKO_GSTRP',
'AFKO_GLTRP',
'AFKO_GSTRS',
'AFKO_FTRMS',
'AFKO_GLTRS',
'AFKO_GSTRI',
'AFKO_FTRMI',
'AFKO_GETRI',
'AFKO_GLTRI',
'AFKO_RSNUM',
'AFKO_PLNNR',
'AFKO_PLNAW',
'AFKO_AUFPL',
'AFKO_PRONR',
'AFKO_NTZUE',
'AFKO_RMANR',
'AFKO_ERDATE',
'AFKO_UDATE',
'AFKO_DATUM'
union all
select	
	CASE WHEN replace([AFKO_SYSID],' ','') = '' then NULL ELSE replace([AFKO_SYSID],' ','') end as [AFKO_SYSID],
	CASE WHEN replace([AFKO_MANDT],' ','') = '' then NULL ELSE replace([AFKO_MANDT],' ','') end as [AFKO_MANDT],
	CASE WHEN replace([AFKO_AUFNR],' ','') = '' then NULL ELSE replace([AFKO_AUFNR],' ','') end as [AFKO_AUFNR],
	CASE WHEN replace([AFKO_GSTRP],' ','') = '' then '00000000' WHEN replace([AFKO_GSTRP],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_GSTRP]),'YYYYMMDD'),' ','') end as [AFKO_GSTRP],
	CASE WHEN replace([AFKO_GLTRP],' ','') = '' then '00000000' WHEN replace([AFKO_GLTRP],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_GLTRP]),'YYYYMMDD'),' ','') end as [AFKO_GLTRP],
	CASE WHEN replace([AFKO_GSTRS],' ','') = '' then '00000000' WHEN replace([AFKO_GSTRS],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_GSTRS]),'YYYYMMDD'),' ','') end as [AFKO_GSTRS],
	CASE WHEN replace([AFKO_FTRMS],' ','') = '' then '00000000' WHEN replace([AFKO_FTRMS],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_FTRMS]),'YYYYMMDD'),' ','') end as [AFKO_FTRMS],
	CASE WHEN replace([AFKO_GLTRS],' ','') = '' then '00000000' WHEN replace([AFKO_GLTRS],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_GLTRS]),'YYYYMMDD'),' ','') end as [AFKO_GLTRS],
	CASE WHEN replace([AFKO_GSTRI],' ','') = '' then '00000000' WHEN replace([AFKO_GSTRI],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_GSTRI]),'YYYYMMDD'),' ','') end as [AFKO_GSTRI],
	CASE WHEN replace([AFKO_FTRMI],' ','') = '' then '00000000' WHEN replace([AFKO_FTRMI],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_FTRMI]),'YYYYMMDD'),' ','') end as [AFKO_FTRMI],
	CASE WHEN replace([AFKO_GETRI],' ','') = '' then '00000000' WHEN replace([AFKO_GETRI],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_GETRI]),'YYYYMMDD'),' ','') end as [AFKO_GETRI],
	CASE WHEN replace([AFKO_GLTRI],' ','') = '' then '00000000' WHEN replace([AFKO_GLTRI],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_GLTRI]),'YYYYMMDD'),' ','') end as [AFKO_GLTRI],
	CASE WHEN replace([AFKO_RSNUM],' ','') = '' then NULL ELSE replace([AFKO_RSNUM],' ','') end as [AFKO_RSNUM],
	CASE WHEN replace([AFKO_PLNNR],' ','') = '' then NULL ELSE replace([AFKO_PLNNR],' ','') end as [AFKO_PLNNR],
	CASE WHEN replace([AFKO_PLNAW],' ','') = '' then NULL ELSE replace([AFKO_PLNAW],' ','') end as [AFKO_PLNAW],
	CASE WHEN replace([AFKO_AUFPL],' ','') = '' then NULL ELSE replace([AFKO_AUFPL],' ','') end as [AFKO_AUFPL],
	CASE WHEN replace([AFKO_PRONR],' ','') = '' then NULL ELSE replace([AFKO_PRONR],' ','') end as [AFKO_PRONR],
	CASE WHEN replace([AFKO_NTZUE],' ','') = '' then NULL ELSE replace([AFKO_NTZUE],' ','') end as [AFKO_NTZUE],
	CASE WHEN replace([AFKO_RMANR],' ','') = '' then NULL ELSE replace([AFKO_RMANR],' ','') end as [AFKO_RMANR],
	CASE WHEN replace([AFKO_ERDATE],' ','') = '' then '00000000' WHEN replace([AFKO_ERDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_ERDATE]),'YYYYMMDD'),' ','') end as [AFKO_ERDATE],
	CASE WHEN replace([AFKO_UDATE],' ','') = '' then '00000000' WHEN replace([AFKO_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_UDATE]),'YYYYMMDD'),' ','') end as [AFKO_UDATE],
	CASE WHEN replace([AFKO_DATUM],' ','') = '' then '00000000' WHEN replace([AFKO_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AFKO_DATUM]),'YYYYMMDD'),' ','') end as [AFKO_DATUM]
	from
	[dbo].[ProdOrder_Header]
	WHERE [AFKO_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
