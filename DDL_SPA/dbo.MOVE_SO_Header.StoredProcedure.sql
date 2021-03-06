USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_SO_Header]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_SO_Header]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[SO_Header]
(
[HASH_SALESORDER_HEADER],
[HASH_PRJ_ORDER],
[VBAK_SYSID] ,
[VBAK_MANDT] ,
[VBAK_VBELN] ,
[VBAK_ERDAT] ,
[VBAK_ERNAM] ,
[VBAK_AUDAT] ,
[VBAK_VBTYP] ,
[VBAK_TRVOG] ,
[VBAK_AUART] ,
[VBAK_AUGRU] ,
[VBAK_NETWR] ,
[VBAK_WAERK] ,
[VBAK_VKBUR] ,
[VBAK_VDATU] ,
[VBAK_AWAHR] ,
[VBAK_BSTDK] ,
[VBAK_KUNNR] ,
[VBAK_AEDAT] ,
[VBAK_PS_PSP_PNR] ,
[VBAK_VMBDAT] ,
[VBAK_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([VBAK_SYSID],'"',''),' ',''),REPLACE(REPLACE([VBAK_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([VBAK_VBELN] ,'"','')),' ',''))) as [HASH_SALESORDER_HEADER],
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([VBAK_SYSID],'"',''),' ',''),REPLACE(REPLACE([VBAK_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](8,REPLACE([VBAK_PS_PSP_PNR] ,'"','')),' ',''))) as [HASH_PRJ_ORDER],
REPLACE([VBAK_SYSID] ,'"',''),
REPLACE([VBAK_MANDT] ,'"',''),
[dbo].[add_0](10,REPLACE([VBAK_VBELN] ,'"','')),
CASE 
WHEN REPLACE(REPLACE(REPLACE([VBAK_ERDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAK_ERDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAK_ERDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [VBAK_ERDAT],
REPLACE([VBAK_ERNAM] ,'"',''),
CASE 
WHEN REPLACE(REPLACE(REPLACE([VBAK_AUDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAK_AUDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAK_AUDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [VBAK_AUDAT],
REPLACE([VBAK_VBTYP] ,'"',''),
REPLACE([VBAK_TRVOG] ,'"',''),
REPLACE([VBAK_AUART] ,'"',''),
REPLACE([VBAK_AUGRU] ,'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([VBAK_NETWR], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([VBAK_NETWR], CHAR(13), ''), CHAR(10), ''),'"','') as decimal(18,2))
		ELSE NULL
	END AS [VBAK_NETWR],
REPLACE([VBAK_WAERK] ,'"',''),
REPLACE([VBAK_VKBUR] ,'"',''),
CASE 
WHEN REPLACE(REPLACE(REPLACE([VBAK_VDATU] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAK_VDATU], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAK_VDATU], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [VBAK_VDATU],
REPLACE([VBAK_AWAHR] ,'"',''),
CASE 
WHEN REPLACE(REPLACE(REPLACE([VBAK_BSTDK] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAK_BSTDK], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAK_BSTDK], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [VBAK_BSTDK],
REPLACE([VBAK_KUNNR] ,'"',''),
CASE 
WHEN REPLACE(REPLACE(REPLACE([VBAK_AEDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAK_AEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAK_AEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [VBAK_AEDAT],
[dbo].[add_0](8,REPLACE([VBAK_PS_PSP_PNR] ,'"','')),
CASE 
WHEN REPLACE(REPLACE(REPLACE([VBAK_VMBDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAK_VMBDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAK_VMBDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [VBAK_VMBDAT],
CASE 
WHEN REPLACE(REPLACE(REPLACE([VBAK_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
WHEN ISDATE(REPLACE(REPLACE(REPLACE([VBAK_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([VBAK_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
ELSE NULL
END AS [VBAK_DATUM]
FROM
[dbo].[SO_Header_ETL]
where [VBAK_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
