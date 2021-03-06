USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_SO_Item]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_SO_Item]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[SO_Item]
(
[HASH_SALESORDER_ITEM],
[HASH_SALESORDER_HEADER],
[HASH_PRJ_ORDER],
[VBAP_SYSID],
[VBAP_MANDT],
[VBAP_VBELN],
[VBAP_POSNR],
[VBAP_MATKL],
[VBAP_PSTYV],
[VBAP_POSAR],
[VBAP_ABGRU],
[VBAP_KLMENG],
[VBAP_MEINS],
[VBAP_NETWR],
[VBAP_WAERK],
[VBAP_WERKS],
[VBAP_AWAHR],
[VBAP_ERDAT],
[VBAP_ERNAM],
[VBAP_AEDAT],
[VBAP_PRCTR],
[VBAP_PS_PSP_PNR],
[VBAP_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([VBAP_SYSID],'"',''),' ',''),REPLACE(REPLACE([VBAP_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([VBAP_VBELN] ,'"','')),' ',''),REPLACE(REPLACE([VBAP_POSNR],'"',''),' ',''))) as [HASH_SALESORDER_ITEM],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([VBAP_SYSID],'"',''),' ',''),REPLACE(REPLACE([VBAP_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([VBAP_VBELN] ,'"','')),' ',''))) as [HASH_SALESORDER_HEADER],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([VBAP_SYSID],'"',''),' ',''),REPLACE(REPLACE([VBAP_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](8,REPLACE([VBAP_PS_PSP_PNR] ,'"','')),' ',''))) as [HASH_PRJ_ORDER],
REPLACE([VBAP_SYSID],'"',''),
REPLACE([VBAP_MANDT],'"',''),
[dbo].[add_0](10,REPLACE([VBAP_VBELN] ,'"','')),
REPLACE([VBAP_POSNR],'"',''),
REPLACE([VBAP_MATKL],'"',''),
REPLACE([VBAP_PSTYV],'"',''),
REPLACE([VBAP_POSAR],'"',''),
REPLACE([VBAP_ABGRU],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([VBAP_KLMENG], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([VBAP_KLMENG], CHAR(13), ''), CHAR(10), ''),'"','') as decimal(18,3))
		ELSE NULL
	END AS [VBAP_KLMENG],
REPLACE([VBAP_MEINS],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([VBAP_NETWR], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([VBAP_NETWR], CHAR(13), ''), CHAR(10), ''),'"','') as decimal(18,2))
		ELSE NULL
	END AS [VBAP_NETWR],
REPLACE([VBAP_WAERK],'"',''),
REPLACE([VBAP_WERKS],'"',''),
REPLACE([VBAP_AWAHR],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([VBAP_ERDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAP_ERDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAP_ERDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [VBAP_ERDAT],
REPLACE([VBAP_ERNAM],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([VBAP_AEDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAP_AEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAP_AEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [VBAP_AEDAT],
REPLACE([VBAP_PRCTR],'"',''),
[dbo].[add_0](8,REPLACE([VBAP_PS_PSP_PNR] ,'"','')),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([VBAP_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAP_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAP_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
		ELSE NULL
	END AS [VBAP_DATUM]
FROM
[dbo].[SO_Item_ETL]
where [VBAP_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
