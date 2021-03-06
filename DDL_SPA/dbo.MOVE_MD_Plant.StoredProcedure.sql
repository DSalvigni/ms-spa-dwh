USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Plant]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_Plant]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_Plant]
(
[HASH_MD_PLANT],
[T001W_SYSID],
[T001W_MANDT],
[T001W_WERKS],
[T001W_NAME1],
[T001W_NAME2],
[T001W_STRAS],
[T001W_ORT01],
[T001W_REGIO],
[T001W_LAND1],
[T001W_PSTLZ],
[T001W_BEZEI],
[T001W_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([T001W_SYSID],'"',''),' ',''),REPLACE(REPLACE([T001W_MANDT],'"',''),' ',''),REPLACE(REPLACE([T001W_WERKS],'"',''),' ',''))) as [HASH_MD_PLANT],
REPLACE([T001W_SYSID],'"',''),
REPLACE([T001W_MANDT],'"',''),
REPLACE([T001W_WERKS],'"',''),
REPLACE([T001W_NAME1],'"',''),
REPLACE([T001W_NAME2],'"',''),
REPLACE([T001W_STRAS],'"',''),
REPLACE([T001W_ORT01],'"',''),
REPLACE([T001W_REGIO],'"',''),
REPLACE([T001W_LAND1],'"',''),
REPLACE([T001W_PSTLZ],'"',''),
REPLACE([T001W_BEZEI],'"',''),
CASE 
		WHEN REPLACE(REPLACE(REPLACE([T001W_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([T001W_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([T001W_DATUM],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
END AS [T001W_DATUM]
FROM
[dbo].[MD_Plant_ETL]
where [T001W_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
