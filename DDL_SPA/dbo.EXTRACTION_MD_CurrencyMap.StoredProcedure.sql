USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_CurrencyMap]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_CurrencyMap]
AS
BEGIN
	SET NOCOUNT ON;
select
'TCURC_SYSID',
'TCURC_MANDT',
'TCURC_WAERS',
'TCURC_ISOCD',
'TCURC_SPRAS',
'TCURC_LTEXT',
'TCURC_DATUM'
union all
select	
	CASE WHEN replace([TCURC_SYSID],' ','') = '' then NULL ELSE replace([TCURC_SYSID],' ','') end as [TCURC_SYSID],
	CASE WHEN replace([TCURC_MANDT],' ','') = '' then NULL ELSE replace([TCURC_MANDT],' ','') end as [TCURC_MANDT],
	CASE WHEN replace([TCURC_WAERS],' ','') = '' then NULL ELSE replace([TCURC_WAERS],' ','') end as [TCURC_WAERS],
	CASE WHEN replace([TCURC_WAERS],' ','') = '' then NULL ELSE replace([TCURC_WAERS],' ','') end as [TCURC_ISOCD],
	CASE WHEN replace([TCURC_SPRAS],' ','') = '' then NULL ELSE replace([TCURC_SPRAS],' ','') end as [TCURC_SPRAS],
	CASE WHEN replace([TCURC_LTEXT],' ','') = '' then NULL ELSE replace([TCURC_LTEXT],' ','') end as [TCURC_LTEXT],
	CASE WHEN replace([TCURC_DATUM],' ','') = '' then '00000000' WHEN replace([TCURC_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([TCURC_DATUM]),'YYYYMMDD'),' ','') end as [TCURC_DATUM]
	from
	[dbo].[MD_CurrencyMap]
	WHERE [TCURC_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
