USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_PaymentTerm]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_PaymentTerm]
AS
BEGIN
	SET NOCOUNT ON;
select
'T052_SYSID',
'T052_MANDT',
'T052_ZTERM',
'T052_SPRAS',
'T052_TEXT1',
'T052_ZTAG1',
'T052_ZPRZ1',
'T052_ZTAG2',
'T052_ZPRZ2',
'T052_ZTAG3',
'T052_DATUM',
'T052_ZTAGG'
union all
select	
	CASE WHEN replace([T052_SYSID],' ','') = '' then NULL ELSE replace([T052_SYSID],' ','') end as [T052_SYSID],
	CASE WHEN replace([T052_MANDT],' ','') = '' then NULL ELSE replace([T052_MANDT],' ','') end as [T052_MANDT],
	CASE WHEN replace([T052_ZTERM],' ','') = '' then NULL ELSE replace([T052_ZTERM],' ','') end as [T052_ZTERM],
	CASE WHEN replace([T052_SPRAS],' ','') = '' then NULL ELSE replace([T052_SPRAS],' ','') end as [T052_SPRAS],
	CASE WHEN replace([T052_TEXT1],' ','') = '' then NULL ELSE replace([T052_TEXT1],' ','') end as [T052_TEXT1],
	CASE WHEN replace([T052_ZTAG1],' ','') = '' then NULL ELSE replace([T052_ZTAG1],' ','') end as [T052_ZTAG1],
	CASE WHEN replace([T052_ZPRZ1],' ','') = '' then '0.0' WHEN replace([T052_ZPRZ1],' ','') IS NULL THEN '0.0' ELSE replace([T052_ZPRZ1],' ','') end as [T052_ZPRZ1],
	CASE WHEN replace([T052_ZTAG2],' ','') = '' then NULL ELSE replace([T052_ZTAG2],' ','') end as [T052_ZTAG2],
	CASE WHEN replace([T052_ZPRZ2],' ','') = '' then '0.0' WHEN replace([T052_ZPRZ2],' ','') IS NULL THEN '0.0' ELSE replace([T052_ZPRZ2],' ','') end as [T052_ZPRZ2],
	CASE WHEN replace([T052_ZTAG3],' ','') = '' then NULL ELSE replace([T052_ZTAG3],' ','') end as [T052_ZTAG3],
	CASE WHEN replace([T052_DATUM],' ','') = '' then '00000000' WHEN replace([T052_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([T052_DATUM]),'YYYYMMDD'),' ','') end as [T052_DATUM],
	CASE WHEN replace([T052_ZTAGG],' ','') = '' then NULL ELSE replace([T052_ZTAGG],' ','') end as [T052_ZTAGG]
	from
	[dbo].[MD_PaymentTerm]
	WHERE [T052_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))

END


GO
