USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_Part]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_MD_Part]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_Part]
(
[HASH_MD_PART],
[HASH_MD_PLANT],
[HASH_MD_PGROUP],
[HASH_MD_CURRENCY],
[MARA_SYSID],
[MARA_MANDT],
[MARA_WERKS],
[MARA_MATNR],
[MARA_SPRAS],
[MARA_MAKTX],
[MARA_ZZKT2],
[MARA_MEINS],
[MARA_EKGRP],
[MARA_MATKL],
[MARA_MSTAE],
[MARA_MTART],
[MARA_MTBEZ],
[MARA_ATTYP],
[MARA_DDTEXT],
[MARA_NORMT],
[MARA_PROFL],
[MARA_STOFF],
[MARA_KZUMW],
[MARA_ITARK],
[MARA_MFRNR],
[MARA_MFRPN],
[MARA_MPROF],
[MARA_STPRS],
[MARA_WAERS],
[MARA_PLIFZ],
[MARA_PRDHA],
[MARA_PRCTR],
[MARA_ERSDA],
[MARA_LAEDA],
[MARA_DATUM]
)
SELECT
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MARA_SYSID],'"',''),' ',''),REPLACE(REPLACE([MARA_MANDT],'"',''),' ',''),REPLACE(REPLACE([MARA_WERKS],'"',''),' ',''),REPLACE(REPLACE([MARA_MATNR],'"',''),' ',''))) as [HASH_MD_PART],
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MARA_SYSID],'"',''),' ',''),REPLACE(REPLACE([MARA_MANDT],'"',''),' ',''),REPLACE(REPLACE([MARA_WERKS],'"',''),' ',''))) as [HASH_MD_PLANT],
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MARA_SYSID],'"',''),' ',''),REPLACE(REPLACE([MARA_MANDT],'"',''),' ',''),REPLACE(REPLACE([MARA_EKGRP],'"',''),' ',''))) as [HASH_MD_PGROUP],
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MARA_SYSID],'"',''),' ',''),REPLACE(REPLACE([MARA_MANDT],'"',''),' ',''),REPLACE(REPLACE([MARA_WAERS],'"',''),' ',''),REPLACE(REPLACE([MARA_SPRAS],'"',''),' ',''))) as [HASH_MD_CURRENCY],
[HASH_MD_PART],
[HASH_MD_PLANT],
[HASH_MD_PGROUP],
[HASH_MD_CURRENCY],
REPLACE([MARA_SYSID],'"',''),
REPLACE([MARA_MANDT],'"',''),
REPLACE([MARA_WERKS],'"',''),
REPLACE([MARA_MATNR],'"',''),
REPLACE([MARA_SPRAS],'"',''),
REPLACE([MARA_MAKTX],'"',''),
REPLACE([MARA_ZZKT2],'"',''),
REPLACE([MARA_MEINS],'"',''),
REPLACE([MARA_EKGRP],'"',''),
REPLACE([MARA_MATKL],'"',''),
REPLACE([MARA_MSTAE],'"',''),
REPLACE([MARA_MTART],'"',''),
REPLACE([MARA_MTBEZ],'"',''),
REPLACE([MARA_ATTYP],'"',''),
REPLACE([MARA_DDTEXT],'"',''),
REPLACE([MARA_NORMT],'"',''),
REPLACE([MARA_PROFL],'"',''),
REPLACE([MARA_STOFF],'"',''),
REPLACE([MARA_KZUMW],'"',''),
REPLACE([MARA_ITARK],'"',''),
REPLACE([MARA_MFRNR],'"',''),
REPLACE([MARA_MFRPN],'"',''),
REPLACE([MARA_MPROF],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([MARA_STPRS],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([MARA_STPRS],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
		ELSE NULL
	END AS [MARA_STPRS],
REPLACE([MARA_WAERS],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([MARA_PLIFZ],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([MARA_PLIFZ],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
		ELSE NULL
	END AS [MARA_PLIFZ],
REPLACE([MARA_PRDHA],'"',''),
REPLACE([MARA_PRCTR],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([MARA_ERSDA],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([MARA_ERSDA],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MARA_ERSDA],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [MARA_ERSDA],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([MARA_LAEDA],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([MARA_LAEDA],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MARA_LAEDA],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [MARA_LAEDA],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([MARA_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([MARA_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MARA_DATUM],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [MARA_DATUM]
FROM
[dbo].[MD_Part_ETL]
WHERE
REPLACE([MARA_SPRAS],'"','') in
('Z1',
'Z2',
'E',
'D',
'S',
'F')
AND
[MARA_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
