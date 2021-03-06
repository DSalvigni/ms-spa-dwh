USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Supplier_LFA1]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_Supplier_LFA1]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_Supplier_LFA1]
(
[HASH_SUPPLIER_LFA1],
[LFA1_SYSID],
[LFA1_MANDT],
[LFA1_LIFNR],
[LFA1_KRAUS],
[LFA1_NAME1],
[LFA1_NAME2],
[LFA1_NAME3],
[LFA1_NAME4],
[LFA1_STRAS],
[LFA1_PSTLZ],
[LFA1_ORT01],
[LFA1_REGIO],
[LFA1_LAND1],
[LFA1_PFACH],
[LFA1_KTOKK],
[LFA1_CONTACTFIRSTNAME],
[LFA1_CONTACTLASTNAME],
[LFA1_TELF1],
[LFA1_TELF2],
[LFA1_TELTX],
[LFA1_TELFX],
[LFA1_SPRAS],
[LFA1_ZWWLS],
[LFA1_SPERR],
[LFA1_SPERM],
[LFA1_SPERZ],
[LFA1_SPERQ],
[LFA1_NODEL],
[LFA1_ERDAT],
[LFA1_LOEVM],
[LFA1_STCD1],
[LFA1_STCD2],
[LFA1_STCEG],
[LFA1_VBUND],
[LFA1_SORTL],
[LFA1_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([LFA1_SYSID],'"',''),' ',''),REPLACE(REPLACE([LFA1_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([LFA1_LIFNR],'"','')),' ',''))) as [HASH_SUPPLIER_LFA1],
REPLACE([LFA1_SYSID] ,'"',''),
REPLACE([LFA1_MANDT] ,'"',''),
[dbo].[rem_0](REPLACE([LFA1_LIFNR],'"','')),
REPLACE([LFA1_KRAUS] ,'"',''),
REPLACE([LFA1_NAME1] ,'"',''),
REPLACE([LFA1_NAME2] ,'"',''),
REPLACE([LFA1_NAME3] ,'"',''),
REPLACE([LFA1_NAME4] ,'"',''),
REPLACE([LFA1_STRAS] ,'"',''),
REPLACE([LFA1_PSTLZ] ,'"',''),
REPLACE([LFA1_ORT01] ,'"',''),
REPLACE([LFA1_REGIO] ,'"',''),
REPLACE([LFA1_LAND1] ,'"',''),
REPLACE([LFA1_PFACH] ,'"',''),
REPLACE([LFA1_KTOKK] ,'"',''),
REPLACE([LFA1_CONTACTFIRSTNAME] ,'"',''),
REPLACE([LFA1_CONTACTLASTNAME] ,'"',''),
REPLACE([LFA1_TELF1] ,'"',''),
REPLACE([LFA1_TELF2] ,'"',''),
REPLACE([LFA1_TELTX] ,'"',''),
REPLACE([LFA1_TELFX] ,'"',''),
REPLACE([LFA1_SPRAS] ,'"',''),
REPLACE([LFA1_ZWWLS] ,'"',''),
REPLACE([LFA1_SPERR] ,'"',''),
REPLACE([LFA1_SPERM] ,'"',''),
REPLACE([LFA1_SPERZ] ,'"',''),
REPLACE([LFA1_SPERQ] ,'"',''),
REPLACE([LFA1_NODEL] ,'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([LFA1_ERDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([LFA1_ERDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN  TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([LFA1_ERDAT], CHAR(13), ''), CHAR(10), ''),'"','')) 
		ELSE NULL
	END AS [LFA1_ERDAT],
REPLACE([LFA1_LOEVM] ,'"',''),
REPLACE([LFA1_STCD1] ,'"',''),
REPLACE([LFA1_STCD2] ,'"',''),
REPLACE([LFA1_STCEG] ,'"',''),
REPLACE([LFA1_VBUND] ,'"',''),
REPLACE([LFA1_SORTL] ,'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([LFA1_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([LFA1_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN  TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([LFA1_DATUM], CHAR(13), ''), CHAR(10), ''),'"','')) 
		ELSE NULL
	END AS [LFA1_DATUM]
FROM
[dbo].[MD_Supplier_LFA1_ETL]
where [LFA1_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
