USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_Commodity]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<JOPE>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_Commodity]
AS
BEGIN
	SET NOCOUNT ON;
select
'T023T_SYSID',
'T023T_MANDT',
'T023T_SPRAS',
'T023T_MATKL',
'T023T_WGBEZ',
'T023T_WGBEZ60',
'T023T_DATUM'
union all
select	
	CASE WHEN replace([T023T_SYSID],' ','') = '' then NULL ELSE replace([T023T_SYSID],' ','') end as [T023T_SYSID],
	CASE WHEN replace([T023T_MANDT],' ','') = '' then NULL ELSE replace([T023T_MANDT],' ','') end as [T023T_MANDT],
	CASE WHEN replace([T023T_SPRAS],' ','') = '' then NULL ELSE replace([T023T_SPRAS],' ','') end as [T023T_SPRAS],
	CASE WHEN replace([T023T_MATKL],' ','') = '' then NULL ELSE replace([T023T_MATKL],' ','') end as [T023T_MATKL],
	CASE WHEN replace([T023T_WGBEZ],' ','') = '' then NULL ELSE replace([T023T_WGBEZ],' ','') end as [T023T_WGBEZ],
	CASE WHEN replace([T023T_WGBEZ60],' ','') = '' then NULL ELSE replace([T023T_WGBEZ60],' ','') end as [T023T_WGBEZ60],
	CASE WHEN replace([T023T_DATUM],' ','') = '' then '00000000' WHEN replace([T023T_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([T023T_DATUM]),'YYYYMMDD'),' ','') end as [T023T_DATUM]
	from
	[dbo].[MD_Commodity]
	WHERE [T023T_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
