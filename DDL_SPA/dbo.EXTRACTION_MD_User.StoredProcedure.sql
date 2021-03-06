USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_User]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_User]
AS
BEGIN
	SET NOCOUNT ON;
select
'USR03_SYSID',
'USR03_MANDT',
'USR03_BNAME',
'USR03_NAME1',
'USR03_NAME2',
'USR03_NAME_TEXT',
'USR03_ABTLG',
'USR03_DEPARTMENT',
'USR03_DATUM'
union all
select	
	CASE WHEN replace([USR03_SYSID],' ','') = '' then NULL ELSE replace([USR03_SYSID],' ','') end as [USR03_SYSID],
	CASE WHEN replace([USR03_MANDT],' ','') = '' then NULL ELSE replace([USR03_MANDT],' ','') end as [USR03_MANDT],
	CASE WHEN replace([USR03_BNAME],' ','') = '' then NULL ELSE replace([USR03_BNAME],' ','') end as [USR03_BNAME],
	CASE WHEN replace([USR03_NAME1],' ','') = '' then NULL ELSE replace([USR03_NAME1],' ','') end as [USR03_NAME1],
	CASE WHEN replace([USR03_NAME2],' ','') = '' then NULL ELSE replace([USR03_NAME2],' ','') end as [USR03_NAME2],
	CASE WHEN replace([USR03_NAME_TEXT],' ','') = '' then NULL ELSE replace([USR03_NAME_TEXT],' ','') end as [USR03_NAME_TEXT],
	CASE WHEN replace([USR03_ABTLG],' ','') = '' then NULL ELSE replace([USR03_ABTLG],' ','') end as [USR03_ABTLG],
	CASE WHEN replace([USR03_DEPARTMENT],' ','') = '' then NULL ELSE replace([USR03_DEPARTMENT],' ','') end as [USR03_DEPARTMENT],
	CASE WHEN replace([USR03_DATUM],' ','') = '' then '00000000' WHEN replace([USR03_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([USR03_DATUM]),'YYYYMMDD'),' ','') end as [USR03_DATUM]
	from
	[dbo].[MD_User]
	WHERE [USR03_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))

END


GO
