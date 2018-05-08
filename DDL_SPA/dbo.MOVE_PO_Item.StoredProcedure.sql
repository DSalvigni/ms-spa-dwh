USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_PO_Item]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_PO_Item]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- remove ocmment in case of troubles to update
--SET ansi_warnings OFF
-- if we use ansi_warnings as OFF,the error would be suppressed and whatever can fit in the column,would be inserted,the rest would be truncated.
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[PO_Item]
(
[HASH_PO_ITEM],
[HASH_PO_HEADER],
[HASH_PR],
[EKPO_SYSID],
[EKPO_MANDT],
[EKPO_BUKRS],
[EKPO_EBELN],
[EKPO_EBELP],
[EKPO_WERKS],
[EKPO_LOEKZ],
[EKPO_PSTYP],
[EKPO_UDATE],
[EKPO_ORDERDATE],
[EKPO_MENGE],
[EKPO_MEINS],
[EKPO_NETWR],
[EKPO_CAMOUNT],
[EKPO_EURAMOUNT],
[EKPO_WKURS],
[EKPO_RATE],
[EKPO_LONGTEXT],
[EKPO_TXZ01],
[EKPO_MATKL],
[EKPO_MATNR],
[EKPO_REVLV],
[EKPO_IDNLF],
[EKPO_BANFN],
[EKPO_BNFPO],
[EKPO_AFNAM],
[EKPO_BEDNR],
[EKPO_KONNR],
[EKPO_KTPNR],
[EKPO_WEPOS],
[EKPO_EVERS],
[EKPO_INSMK],
[EKPO_MHDRZ],
[EKPO_IPRKZ],
[EKPO_SSQSS],
[EKPO_PLIFZ],
[EKPO_WEBAZ],
[EKPO_LEWED],
[EKPO_ABLAD],
[EKPO_LGORT],
[EKPO_NAME1],
[EKPO_NAME2],
[EKPO_STREET],
[EKPO_POST_CODE1],
[EKPO_CITY1],
[EKPO_REGION],
[EKPO_COUNTRY],
[EKPO_PO_BOX],
[EKPO_KZABS],
[EKPO_LABNR],
[EKPO_ELIKZ],
[EKPO_EREKZ],
[EKPO_UEBTO],
[EKPO_UEBTK],
[EKPO_UNTTO],
[EKPO_XOBLR],
[EKPO_KNTTP],
[EKPO_VRTKZ],
[EKPO_INCO1],
[EKPO_INCO2],
[EKPO_MFRNR],
[EKPO_MFRPN],
[EKPO_EAN11],
[EKPO_ERUSERNAME],
[EKPO_AEUSERNAME],
[EKPO_AEDAT],
[EKPO_DATUM],
[EKPO_ZZBP1],
[EKPO_ZZCR1],
[EKPO_ZZPT1],
[EKPO_ZZPD1],
[EKPO_ZZBP2],
[EKPO_ZZCR2],
[EKPO_ZZPT2],
[EKPO_ZZPD2],
[EKPO_ZZBP3],
[EKPO_ZZCR3],
[EKPO_ZZPT3],
[EKPO_ZZPD3],
[EKPO_ZZBP4],
[EKPO_ZZCR4],
[EKPO_ZZPT4],
[EKPO_ZZPD4],
[EKPO_ZZBP5],
[EKPO_ZZCR5],
[EKPO_ZZPT5],
[EKPO_ZZPD5],
[EKPO_WAERS],
[EKPO_ADRNR],
[EKPO_ADRN2]
)
SELECT
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKPO_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKPO_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKPO_EBELN],'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKPO_EBELP],'"','')),' ',''))) as [HASH_PO_ITEM],
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKPO_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKPO_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKPO_EBELN],'"','')),' ',''))) as [HASH_PO_HEADER],
--HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKPO_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKPO_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EKPO_BANFN],'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKPO_BNFPO],'"','')),' ',''))) as [HASH_PR],
[HASH_PO_ITEM],
[HASH_PO_HEADER],
[HASH_PR],
[EKPO_SYSID],
REPLACE([EKPO_MANDT],'"',''),
[dbo].[add_0](4,REPLACE([EKPO_BUKRS],'"','')),
[dbo].[add_0](10,REPLACE([EKPO_EBELN],'"','')),
[dbo].[add_0](5,REPLACE([EKPO_EBELP],'"','')),
REPLACE([EKPO_WERKS],'"',''),
REPLACE([EKPO_LOEKZ],'"',''),
REPLACE([EKPO_PSTYP],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_UDATE],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_UDATE],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_UDATE],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_UDATE],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_ORDERDATE],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_ORDERDATE],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_ORDERDATE],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ORDERDATE],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_MENGE],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EKPO_MENGE],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_MENGE],
REPLACE([EKPO_MEINS],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_NETWR],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_NETWR],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_NETWR],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_CAMOUNT],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_CAMOUNT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_CAMOUNT],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_EURAMOUNT],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_EURAMOUNT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_EURAMOUNT],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_WKURS],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,5),REPLACE(REPLACE(REPLACE([EKPO_WKURS],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_WKURS],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_RATE],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,5),REPLACE(REPLACE(REPLACE([EKPO_RATE],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_RATE],
[EKPO_LONGTEXT],
REPLACE([EKPO_TXZ01],'"',''),
REPLACE([EKPO_MATKL],'"',''),
REPLACE([EKPO_MATNR],'"',''),
REPLACE([EKPO_REVLV],'"',''),
REPLACE([EKPO_IDNLF],'"',''),
REPLACE([EKPO_BANFN],'"',''),
[dbo].[add_0](5,REPLACE([EKPO_BNFPO],'"','')),
REPLACE([EKPO_AFNAM],'"',''),
REPLACE([EKPO_BEDNR],'"',''),
[dbo].[add_0](10,REPLACE([EKPO_KONNR],'"','')),
[dbo].[add_0](5,REPLACE([EKPO_KTPNR],'"','')),
REPLACE([EKPO_WEPOS],'"',''),
REPLACE([EKPO_EVERS],'"',''),
REPLACE([EKPO_INSMK],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_MHDRZ],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_MHDRZ],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_MHDRZ],
REPLACE([EKPO_IPRKZ],'"',''),
REPLACE([EKPO_SSQSS],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_PLIFZ],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_PLIFZ],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_PLIFZ],	
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_WEBAZ],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_WEBAZ],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_WEBAZ],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_LEWED],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_LEWED],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_LEWED],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_LEWED],
REPLACE([EKPO_ABLAD],'"',''),
REPLACE([EKPO_LGORT],'"',''),
REPLACE([EKPO_NAME1],'"',''),
REPLACE([EKPO_NAME2],'"',''),
REPLACE([EKPO_STREET],'"',''),
REPLACE([EKPO_POST_CODE1],'"',''),
REPLACE([EKPO_CITY1],'"',''),
REPLACE([EKPO_REGION],'"',''),
REPLACE([EKPO_COUNTRY],'"',''),
REPLACE([EKPO_PO_BOX],'"',''),
REPLACE([EKPO_KZABS],'"',''),
REPLACE([EKPO_LABNR],'"',''),
REPLACE([EKPO_ELIKZ],'"',''),
REPLACE([EKPO_EREKZ],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_UEBTO],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_UEBTO],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_UEBTO],
REPLACE([EKPO_UEBTK],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_UNTTO],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_UNTTO],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_UNTTO],
REPLACE([EKPO_XOBLR],'"',''),
REPLACE([EKPO_KNTTP],'"',''),
REPLACE([EKPO_VRTKZ],'"',''),
REPLACE([EKPO_INCO1],'"',''),
REPLACE([EKPO_INCO2],'"',''),
REPLACE([EKPO_MFRNR],'"',''),
REPLACE([EKPO_MFRPN],'"',''),
REPLACE([EKPO_EAN11],'"',''),
REPLACE([EKPO_ERUSERNAME],'"',''),
REPLACE([EKPO_AEUSERNAME],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_AEDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_AEDAT],
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_DATUM],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_DATUM],
	
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_ZZBP1],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_ZZBP1],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZBP1],
REPLACE([EKPO_ZZCR1],'"',''),
REPLACE([EKPO_ZZPT1],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_ZZPD1],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_ZZPD1],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_ZZPD1],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZPD1],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_ZZBP2],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_ZZBP2],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZBP2],
REPLACE([EKPO_ZZCR2],'"',''),
REPLACE([EKPO_ZZPT2],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_ZZPD2],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_ZZPD2],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_ZZPD2],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZPD2],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_ZZBP3],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_ZZBP3],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZBP3],
REPLACE([EKPO_ZZCR3],'"',''),
REPLACE([EKPO_ZZPT3],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_ZZPD3],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_ZZPD3],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_ZZPD3],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZPD3],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_ZZBP4],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_ZZBP4],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZBP4],
REPLACE([EKPO_ZZCR4],'"',''),
REPLACE([EKPO_ZZPT4],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_ZZPD4],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_ZZPD4],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_ZZPD4],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZPD4],
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPO_ZZBP5],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EKPO_ZZBP5],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZBP5],
REPLACE([EKPO_ZZCR5],'"',''),
REPLACE([EKPO_ZZPT5],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([EKPO_ZZPD5],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')  
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPO_ZZPD5],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPO_ZZPD5],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [EKPO_ZZPD5],
REPLACE([EKPO_WAERS],'"',''),
REPLACE([EKPO_ADRNR],'"',''),
REPLACE([EKPO_ADRN2],'"','')
FROM
[dbo].[PO_Item_ETL]
where [EKPO_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
