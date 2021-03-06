USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_ProfitCenter]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_ProfitCenter]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_ProfitCenter]
(
[HASH_MD_PROFITCENTER_UNIQUE],
[HASH_MD_PROFITCENTER],
[CEPC_SYSID],
[CEPC_MANDT],
[CEPC_KOKRS],
[CEPC_PRCTR],
[CEPC_SPRAS],
[CEPC_KTEXT],
[CEPC_LTEXT],
[CEPC_VERAK],
[CEPC_ABTEI],
[CEPC_STATUS],
[CEPC_KHINR],
[CEPC_HITXT],
[CEPC_DATAB],
[CEPC_DATBI],
[CEPC_ERSDA],
[CEPC_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([CEPC_SYSID],'"',''),' ',''),REPLACE(REPLACE([CEPC_MANDT],'"',''),' ',''),REPLACE(REPLACE([CEPC_KOKRS],'"',''),' ',''),REPLACE(REPLACE([CEPC_PRCTR],'"',''),' ',''),REPLACE(REPLACE([CEPC_SPRAS],'"',''),' ',''),REPLACE(REPLACE([CEPC_DATAB],'"',''),' ',''))) as [HASH_MD_PROFITCENTER_UNIQUE],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([CEPC_SYSID],'"',''),' ',''),REPLACE(REPLACE([CEPC_MANDT],'"',''),' ',''),REPLACE(REPLACE([CEPC_KOKRS],'"',''),' ',''),REPLACE(REPLACE([CEPC_PRCTR],'"',''),' ',''))) as [HASH_MD_PROFITCENTER],
REPLACE([CEPC_SYSID] ,'"',''),
REPLACE([CEPC_MANDT] ,'"',''),
REPLACE([CEPC_KOKRS] ,'"',''),
REPLACE([CEPC_PRCTR] ,'"',''),
REPLACE([CEPC_SPRAS] ,'"',''),
REPLACE([CEPC_KTEXT] ,'"',''),
REPLACE([CEPC_LTEXT] ,'"',''),
REPLACE([CEPC_VERAK] ,'"',''),
REPLACE([CEPC_ABTEI] ,'"',''),
REPLACE([CEPC_STATUS] ,'"',''),
REPLACE([CEPC_KHINR] ,'"',''),
REPLACE([CEPC_HITXT] ,'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([CEPC_DATAB] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([CEPC_DATAB],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([CEPC_DATAB],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [CEPC_DATAB],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([CEPC_DATBI] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([CEPC_DATBI],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([CEPC_DATBI],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [CEPC_DATBI],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([CEPC_ERSDA] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([CEPC_ERSDA],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([CEPC_ERSDA],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [CEPC_ERSDA],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([CEPC_DATUM] ,CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([CEPC_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([CEPC_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [CEPC_DATUM]
FROM
[dbo].[MD_ProfitCenter_ETL]
where [CEPC_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
