USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Network]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_Network]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_Network]
(
[HASH_NETWORK],
[HASH_PRJ_ORDER],
[AUFK_SYSID],
[AUFK_MANDT],
[AUFK_AUFNR],
[AUFK_KTEXT],
[AUFK_LTEXT],
[AUFK_AUART],
[AUFK_AUTYP],
[AUFK_BUKRS],
[AUFK_WERKS],
[AUFK_WAERS],
[AUFK_PRCTR],
[AUFK_FUNC_AREA],
[AUFK_SCOPE],
[AUFK_PSPEL],
[AUFK_KDAUF],
[AUFK_KDPOS],
[AUFK_VERS],
[AUFK_ID_1],
[AUFK_ID_2],
[AUFK_ID_3],
[AUFK_SGE],
[AUFK_PMO],
[AUFK_VALID],
[AUFK_BEA_DAT],
[AUFK_ERNAM],
[AUFK_ERDAT],
[AUFK_AENAM],
[AUFK_AEDAT],
[AUFK_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([AUFK_SYSID],'"',''),' ',''),
CASE
		WHEN REPLACE([AUFK_SYSID],'"','') = 'ADP' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '300'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'E40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'DE3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'ESP' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '300'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'F40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'IE3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'LM3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'O40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'OP3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'P01' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '020'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'P11' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PRD' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '400'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'SP1' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '500'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'U40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '030'	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'MA3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PAS' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '300'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PDA' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 		
		WHEN REPLACE([AUFK_SYSID],'"','') = 'D40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PR1' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '350'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'P71' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '011'	
	ELSE REPLACE([AUFK_MANDT],'"','') END,
REPLACE([dbo].[rem_0](REPLACE([AUFK_AUFNR],'"','')),' ',''))) as [HASH_NETWORK],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([AUFK_SYSID],'"',''),' ',''),
CASE
		WHEN REPLACE([AUFK_SYSID],'"','') = 'ADP' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '300'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'E40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'DE3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'ESP' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '300'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'F40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'IE3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'LM3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'O40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'OP3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'P01' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '020'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'P11' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PRD' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '400'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'SP1' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '500'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'U40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '030'	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'MA3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PAS' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '300'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PDA' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 		
		WHEN REPLACE([AUFK_SYSID],'"','') = 'D40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PR1' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '350'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'P71' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '011'	
	ELSE REPLACE([AUFK_MANDT],'"','') END,
REPLACE(REPLACE([AUFK_PSPEL],'"',''),' ',''))) as [HASH_PRJ_ORDER],
REPLACE([AUFK_SYSID],'"',''),
CASE
		WHEN REPLACE([AUFK_SYSID],'"','') = 'ADP' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '300'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'E40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'DE3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'ESP' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '300'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'F40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'IE3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'LM3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'O40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'OP3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'P01' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '020'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'P11' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PRD' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '400'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'SP1' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '500'	 	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'U40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '030'	
		WHEN REPLACE([AUFK_SYSID],'"','') = 'MA3' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PAS' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '300'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PDA' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '010'	 		
		WHEN REPLACE([AUFK_SYSID],'"','') = 'D40' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '100'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'PR1' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '350'
		WHEN REPLACE([AUFK_SYSID],'"','') = 'P71' AND REPLACE([AUFK_MANDT],'"','') = '' THEN '011'	
	ELSE REPLACE([AUFK_MANDT],'"','')
END as [AUFK_MANDT],
REPLACE([AUFK_AUFNR],'"',''),
REPLACE([AUFK_KTEXT],'"',''),
REPLACE([AUFK_LTEXT],'"',''),
REPLACE([AUFK_AUART],'"',''),
REPLACE([AUFK_AUTYP],'"',''),
[dbo].[add_0](4,REPLACE([AUFK_BUKRS],'"','')),
REPLACE([AUFK_WERKS],'"',''),
REPLACE([AUFK_WAERS],'"',''),
REPLACE([AUFK_PRCTR],'"',''),
REPLACE([AUFK_FUNC_AREA],'"',''),
REPLACE([AUFK_SCOPE],'"',''),
REPLACE([AUFK_PSPEL],'"',''),
REPLACE([AUFK_KDAUF],'"',''),
REPLACE([AUFK_KDPOS],'"',''),
REPLACE([AUFK_VERS],'"',''),
REPLACE([AUFK_ID_1],'"',''),
REPLACE([AUFK_ID_2],'"',''),
REPLACE([AUFK_ID_3],'"',''),
REPLACE([AUFK_SGE],'"',''),
REPLACE([AUFK_PMO],'"',''),
REPLACE([AUFK_VALID],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AUFK_BEA_DAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AUFK_BEA_DAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AUFK_BEA_DAT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [AUFK_BEA_DAT],
REPLACE([AUFK_ERNAM],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AUFK_ERDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AUFK_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AUFK_ERDAT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [AUFK_ERDAT],
REPLACE([AUFK_AENAM],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AUFK_AEDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AUFK_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AUFK_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [AUFK_AEDAT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([AUFK_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([AUFK_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([AUFK_DATUM],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [AUFK_DATUM]
FROM
[dbo].[MD_Network_ETL]
where [AUFK_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
