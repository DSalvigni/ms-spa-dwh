USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_UOM]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_UOM]
AS
BEGIN
	SET NOCOUNT ON;
select
'T006_SYSID',
'T006_MANDT',
'T006_MSEHI',
'T006_ISOCODE',
'T006_MSEHL',
'T006_DATUM'
union all
select	
	CASE WHEN replace([T006_SYSID],' ','') = '' then NULL ELSE replace([T006_SYSID],' ','') end as [T006_SYSID],
	CASE WHEN replace([T006_MANDT],' ','') = '' then NULL ELSE replace([T006_MANDT],' ','') end as [T006_MANDT],
	CASE WHEN replace([T006_MSEHI],' ','') = '' then NULL ELSE replace([T006_MSEHI],' ','') end as [T006_MSEHI],
	CASE WHEN replace([T006_ISOCODE],' ','') = '' then NULL ELSE replace([T006_ISOCODE],' ','') end as [T006_ISOCODE],
	CASE WHEN replace([T006_MSEHL],' ','') = '' then NULL ELSE replace([T006_MSEHL],' ','') end as [T006_MSEHL],
	CASE WHEN replace([T006_DATUM],' ','') = '' then '00000000' WHEN replace([T006_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([T006_DATUM]),'YYYYMMDD'),' ','') end as [T006_DATUM]
	from
	[dbo].[MD_UOM]
	WHERE [T006_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
