USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_CurrencyMap]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_CurrencyMap]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_CurrencyMap]
(
[HASH_MD_CURRENCY],
[HASH_MD_CURRENCY_LANG],
[TCURC_SYSID],
[TCURC_MANDT],
[TCURC_WAERS],
[TCURC_ISOCD],
[TCURC_SPRAS],
[TCURC_LTEXT],
[TCURC_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([TCURC_SYSID],'"',''),' ',''),REPLACE(REPLACE([TCURC_MANDT],'"',''),' ',''),REPLACE(REPLACE([TCURC_WAERS],'"',''),' ',''))) as [HASH_MD_CURRENCY],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([TCURC_SYSID],'"',''),' ',''),REPLACE(REPLACE([TCURC_MANDT],'"',''),' ',''),REPLACE(REPLACE([TCURC_WAERS],'"',''),' ',''),REPLACE(REPLACE([TCURC_SPRAS],'"',''),' ',''))) as [HASH_MD_CURRENCY_LANG],
REPLACE([TCURC_SYSID],'"',''),
REPLACE([TCURC_MANDT],'"',''),
REPLACE([TCURC_WAERS],'"',''),
REPLACE([TCURC_ISOCD],'"',''),
REPLACE([TCURC_SPRAS],'"',''),
REPLACE([TCURC_LTEXT],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([TCURC_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([TCURC_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([TCURC_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [TCURC_DATUM]
FROM
[dbo].[MD_CurrencyMap_ETL]
where [TCURC_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
