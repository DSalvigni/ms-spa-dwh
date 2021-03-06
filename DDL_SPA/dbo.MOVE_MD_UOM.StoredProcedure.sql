USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_UOM]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_UOM]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_UOM]
(
[HASH_MD_UOM],
[T006_SYSID],
[T006_MANDT],
[T006_MSEHI],
[T006_ISOCODE],
[T006_MSEHL],
[T006_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([T006_SYSID],'"',''),' ',''),REPLACE(REPLACE([T006_MANDT],'"',''),' ',''),REPLACE(REPLACE([T006_MSEHI],'"',''),' ',''))) as [HASH_MD_UOM],
REPLACE([T006_SYSID] ,'"',''),
REPLACE([T006_MANDT] ,'"',''),
REPLACE([T006_MSEHI] ,'"',''),
REPLACE([T006_ISOCODE] ,'"',''),
REPLACE([T006_MSEHL] ,'"',''),
CASE 
WHEN REPLACE(REPLACE(REPLACE([T006_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([T006_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([T006_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [T006_DATUM]
FROM
[dbo].[MD_UOM_ETL]
where [T006_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
