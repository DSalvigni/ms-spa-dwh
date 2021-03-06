USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_CFT_Header]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_CFT_Header]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO 
[dbo].[CFT_Header]
		(
		[HASH_PO_HEADER],
		[HASH_MD_PGROUP],
		[HASH_SUPPLIER_LFA1],
		[HASH_SUPPLIER_LFB1],
		[HASH_SUPPLIER_LFM1],
		[EKKOA_SYSID] ,
		[EKKOA_MANDT] ,
		[EKKOA_BUKRS] ,
		[EKKOA_EBELN] ,
		[EKKOA_LOEKZ] ,
		[EKKOA_AEDAT] ,
		[EKKOA_BEDAT] ,
		[EKKOA_WAERS] ,
		[EKKOA_WKURS] ,
		[EKKOA_KUFIX] ,
		[EKKOA_CWAERS] ,
		[EKKOA_LONGTEXT] ,
		[EKKOA_LIFNR] ,
		[EKKOA_BSTYP] ,
		[EKKOA_BSART] ,
		[EKKOA_INCO1] ,
		[EKKOA_INCO2] ,
		[EKKOA_ZTERM] ,
		[EKKOA_EKORG] ,
		[EKKOA_EKGRP] ,
		[EKKOA_IHREZ] ,
		[EKKOA_UNSEZ] ,
		[EKKOA_KDATB] ,
		[EKKOA_KDATE] ,
		[EKKOA_KONNR] ,
		[EKKOA_ANGNR] ,
		[EKKOA_IHRAN] ,
		[EKKOA_SUBMI] ,
		[EKKOA_STCEG] ,
		[EKKOA_EKGSM] ,
		[EKKOA_UEBDT] ,
		[EKKOA_ERNAM] ,
		[EKKOA_AEUSERNAME] ,
		[EKKOA_UDATE] ,
		[EKKOA_DATUM])
			SELECT  
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKOA_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKKOA_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKKOA_EBELN] ,'"','')),' ',''))) as [HASH_PO_HEADER],
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKOA_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKKOA_MANDT],'"',''),' ',''),REPLACE(REPLACE([EKKOA_EKGRP],'"',''),' ',''))) as [HASH_MD_PGROUP],
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKOA_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKKOA_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EKKOA_LIFNR],'"','')),' ',''))) as [HASH_SUPPLIER_LFA1],
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKOA_SYSID],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EKKOA_LIFNR],'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE([EKKOA_BUKRS] ,'"','')),' ',''))) as [HASH_SUPPLIER_LFB1],
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKKOA_SYSID],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EKKOA_LIFNR],'"','')),' ',''),REPLACE([dbo].[rem_0](REPLACE([EKKOA_EKORG],'"','')),' ',''))) as [HASH_SUPPLIER_LFM1],
			REPLACE([EKKOA_SYSID],'"',''),
			REPLACE([EKKOA_MANDT],'"','') ,
			[dbo].[add_0](4,REPLACE([EKKOA_BUKRS] ,'"','')),
			[dbo].[add_0](10,REPLACE([EKKOA_EBELN] ,'"','')) ,
			REPLACE([EKKOA_LOEKZ],'"','') ,
			CASE 
			 WHEN REPLACE(REPLACE(REPLACE([EKKOA_AEDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
			 ELSE TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKOA_AEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
			END AS [EKKOA_AEDAT],
			CASE 
			 WHEN REPLACE(REPLACE(REPLACE([EKKOA_BEDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			 ELSE TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKOA_BEDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
			END AS [EKKOA_BEDAT],
			REPLACE([EKKOA_WAERS],'"',''),
			CASE
			WHEN 			
				ISNUMERIC(REPLACE(REPLACE(REPLACE([EKKOA_WKURS], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKKOA_WKURS], CHAR(13), ''), CHAR(10), ''),'"','') as decimal(18,5))
			ELSE NULL
			END AS [EKKOA_WKURS],
			REPLACE([EKKOA_KUFIX],'"','') ,
			REPLACE([EKKOA_CWAERS],'"','') ,
			REPLACE([EKKOA_LONGTEXT],'"','') ,
			[dbo].[rem_0](REPLACE([EKKOA_LIFNR],'"','')),
			REPLACE([EKKOA_BSTYP],'"','') ,
			REPLACE([EKKOA_BSART],'"','') ,
			REPLACE([EKKOA_INCO1],'"','') ,
			REPLACE([EKKOA_INCO2],'"','') ,
			REPLACE([EKKOA_ZTERM],'"','') ,
			REPLACE([EKKOA_EKORG],'"','') ,
			REPLACE([EKKOA_EKGRP],'"','') ,
			REPLACE([EKKOA_IHREZ] ,'"',''),
			REPLACE([EKKOA_UNSEZ],'"','') ,
			CASE 
			 WHEN REPLACE(REPLACE(REPLACE([EKKOA_KDATB] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			 ELSE TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKOA_KDATB], CHAR(13), ''), CHAR(10), ''),'"',''))
			END AS [EKKOA_KDATB],
			CASE 
			 WHEN REPLACE(REPLACE(REPLACE([EKKOA_KDATE] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			 ELSE TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKOA_KDATE], CHAR(13), ''), CHAR(10), ''),'"',''))
			END AS [EKKOA_KDATE],
			[dbo].[add_0](10,REPLACE([EKKOA_KONNR] ,'"','')),
			REPLACE([EKKOA_ANGNR],'"','') ,
			CASE 
			 WHEN REPLACE(REPLACE(REPLACE([EKKOA_IHRAN] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			 ELSE TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKOA_IHRAN], CHAR(13), ''), CHAR(10), ''),'"',''))
			END AS [EKKOA_IHRAN],
			REPLACE([EKKOA_SUBMI],'"','') ,
			REPLACE([EKKOA_STCEG],'"','') ,
			REPLACE([EKKOA_EKGSM],'"','') ,
			CASE 
			 WHEN REPLACE(REPLACE(REPLACE([EKKOA_UEBDT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			 ELSE TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKOA_UEBDT], CHAR(13), ''), CHAR(10), ''),'"',''))
			END AS [EKKOA_UEBDT],
			REPLACE([EKKOA_ERNAM],'"','') ,
			REPLACE([EKKOA_AEUSERNAME],'"','') ,
			CASE 
			 WHEN REPLACE(REPLACE(REPLACE([EKKOA_UDATE] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			 ELSE TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKOA_UDATE], CHAR(13), ''), CHAR(10), ''),'"',''))
			END AS [EKKOA_UDATE],
			CASE 
			 WHEN REPLACE(REPLACE(REPLACE([EKKOA_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
			 ELSE TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKKOA_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
			END AS [EKKOA_DATUM]
			FROM 
			[dbo].[CFT_Header_ETL]
			where [EKKOA_MANDT] is not null
			AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END
GO
