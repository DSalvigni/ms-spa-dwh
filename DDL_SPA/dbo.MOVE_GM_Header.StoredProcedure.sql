USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_GM_Header]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_GM_Header]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[GM_Header]
(
[HASH_GM_HEADER],
[MKPF_SYSID],
[MKPF_MANDT],
[MKPF_MBLNR],
[MKPF_MJAHR],
[MKPF_VGART],
[MKPF_BLART],
[MKPF_BLDAT],
[MKPF_BUDAT],
[MKPF_CPUDT],
[MKPF_ZZBARCODE],
[MKPF_BKTXT],
[MKPF_XBLNR],
[MKPF_USNAM],
[MKPF_AEDAT],
[MKPF_DATUM]
)
SELECT	
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([MKPF_SYSID],'"',''),' ',''),REPLACE(REPLACE([MKPF_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([MKPF_MBLNR],'"','')),' ',''),REPLACE(REPLACE([MKPF_MJAHR],'"',''),' ',''))) as [HASH_GM_HEADER],	
[HASH_GM_HEADER],
REPLACE([MKPF_SYSID],'"',''),
REPLACE([MKPF_MANDT],'"',''),
[dbo].[add_0](10,REPLACE([MKPF_MBLNR],'"','')),
REPLACE([MKPF_MJAHR],'"',''),
REPLACE([MKPF_VGART],'"',''),
REPLACE([MKPF_BLART],'"',''),
CASE 
WHEN REPLACE(REPLACE(REPLACE([MKPF_BLDAT], CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([MKPF_BLDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MKPF_BLDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [MKPF_BLDAT],
CASE 
WHEN REPLACE(REPLACE(REPLACE([MKPF_BUDAT], CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([MKPF_BUDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MKPF_BUDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [MKPF_BUDAT],
CASE 
WHEN REPLACE(REPLACE(REPLACE([MKPF_CPUDT], CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([MKPF_CPUDT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MKPF_CPUDT], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [MKPF_CPUDT],
dbo.add_0(20,REPLACE([MKPF_ZZBARCODE],'"','')),
REPLACE([MKPF_BKTXT],'"',''),
REPLACE([MKPF_XBLNR],'"',''),
REPLACE([MKPF_USNAM],'"',''),
CASE 
WHEN REPLACE(REPLACE(REPLACE([MKPF_AEDAT], CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([MKPF_AEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MKPF_AEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [MKPF_AEDAT],
CASE 
WHEN REPLACE(REPLACE(REPLACE([MKPF_DATUM], CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([MKPF_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([MKPF_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [MKPF_DATUM]
FROM
[dbo].[GM_Header_ETL]
where [MKPF_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
