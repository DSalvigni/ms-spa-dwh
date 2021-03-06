USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_User]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Salvigni - SanGy - Daniele>
-- Create date: <Januaryr, 2018>
-- Status:  ヾ(⌐■_■)ノ
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[MOVE_MD_User]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_User]
(
[HASH_MD_USER] ,
[USR03_SYSID] ,
[USR03_MANDT] ,
[USR03_BNAME] ,
[USR03_NAME1] ,
[USR03_NAME2] ,
[USR03_NAME_TEXT] ,
[USR03_ABTLG] ,
[USR03_DEPARTMENT] ,
[USR03_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([USR03_SYSID],'"',''),' ',''),REPLACE(REPLACE([USR03_MANDT],'"',''),' ',''),REPLACE(REPLACE([USR03_BNAME],'"',''),' ',''))) as [HASH_MD_USER],
REPLACE([USR03_SYSID] ,'"',''),
REPLACE([USR03_MANDT] ,'"',''),
REPLACE([USR03_BNAME] ,'"',''),
REPLACE([USR03_NAME1] ,'"',''),
REPLACE([USR03_NAME2] ,'"',''),
REPLACE([USR03_NAME_TEXT] ,'"',''),
REPLACE([USR03_ABTLG] ,'"',''),
REPLACE([USR03_DEPARTMENT] ,'"',''),
CASE 
WHEN REPLACE(REPLACE(REPLACE([USR03_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([USR03_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([USR03_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [USR03_DATUM]
FROM
[dbo].[MD_User_ETL]
where [USR03_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
