USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Account_ESP]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_Account_ESP]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_Account]
(
[HASH_MD_ACCOUNT],
[HASH_MD_MAJOR_ACCOUNT],
[SKA1_SYSID],
[SKA1_MANDT],
[SKA1_BUKRS],
[SKA1_SAKNR],
[SKA1_TXT50],
[SKA1_KTOPL],
[SKA1_KTPLT],
[SKA1_SKB1_ERDAT],
[SKA1_ERDAT],
[SKA1_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([SKA1_SYSID],'"',''),' ',''),REPLACE(REPLACE([SKA1_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([SKA1_SAKNR],'"','')),' ',''))) as [HASH_MD_ACCOUNT],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([SKA1_SYSID],'"',''),' ',''),REPLACE(REPLACE([SKA1_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([SKA1_SAKNR],'"','')),' ',''),REPLACE(REPLACE([SKA1_KTOPL],'"',''),' ',''))) as [HASH_MD_MAJOR_ACCOUNT],
REPLACE([SKA1_SYSID],'"',''),
REPLACE([SKA1_MANDT],'"',''),
[dbo].[add_0](4,REPLACE([SKA1_BUKRS],'"','')),
REPLACE([dbo].[add_0](10,REPLACE([SKA1_SAKNR],'"','')),' ',''),
REPLACE([SKA1_TXT50],'"',''),
REPLACE([SKA1_KTOPL],'"',''),
REPLACE([SKA1_KTPLT],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([SKA1_SKB1_ERDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([SKA1_SKB1_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([SKA1_SKB1_ERDAT],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [SKA1_SKB1_ERDAT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([SKA1_ERDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([SKA1_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([SKA1_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [SKA1_ERDAT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([SKA1_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([SKA1_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([SKA1_DATUM],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [SKA1_DATUM]
FROM
[dbo].[MD_Account_ESP_ETL]
where [SKA1_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
