USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_CFT_Item]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_CFT_Item]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[CFT_Item]
		(
		[HASH_PO_HEADER],
		[HASH_PO_ITEM],
		[EKPOA_SYSID],
		[EKPOA_MANDT],
		[EKPOA_BUKRS],
		[EKPOA_EBELN],
		[EKPOA_EBELP],
		[EKPOA_WERKS],
		[EKPOA_LOEKZ],
		[EKPOA_PSTYP],
		[EKPOA_UDATE],
		[EKPOA_ORDERDATE],
		[EKPOA_MENGE],
		[EKPOA_MEINS],
		[EKPOA_NETWR],
		[EKPOA_CAMOUNT],
		[EKPOA_EURAMOUNT],
		[EKPOA_WKURS],
		[EKPOA_RATE],
		[EKPOA_LONGTEXT],
		[EKPOA_TXZ01],
		[EKPOA_MATKL],
		[EKPOA_MATNR],
		[EKPOA_REVLV],
		[EKPOA_IDNLF],
		[EKPOA_BANFN],
		[EKPOA_BNFPO],
		[EKPOA_AFNAM],
		[EKPOA_BEDNR],
		[EKPOA_KONNR],
		[EKPOA_KTPNR],
		[EKPOA_WEPOS],
		[EKPOA_EVERS],
		[EKPOA_INSMK],
		[EKPOA_MHDRZ],
		[EKPOA_IPRKZ],
		[EKPOA_SSQSS],
		[EKPOA_PLIFZ],
		[EKPOA_WEBAZ],
		[EKPOA_LEWED],
		[EKPOA_ABLAD],
		[EKPOA_LGORT],
		[EKPOA_NAME1],
		[EKPOA_NAME2],
		[EKPOA_STREET],
		[EKPOA_POST_CODE1],
		[EKPOA_CITY1],
		[EKPOA_REGION],
		[EKPOA_COUNTRY],
		[EKPOA_PO_BOX],
		[EKPOA_KZABS],
		[EKPOA_LABNR],
		[EKPOA_ELIKZ],
		[EKPOA_EREKZ],
		[EKPOA_UEBTO],
		[EKPOA_UEBTK],
		[EKPOA_UNTTO],
		[EKPOA_XOBLR],
		[EKPOA_KNTTP],
		[EKPOA_VRTKZ],
		[EKPOA_INCO1],
		[EKPOA_INCO2],
		[EKPOA_MFRNR],
		[EKPOA_MFRPN],
		[EKPOA_EAN11],
		[EKPOA_ERUSERNAME],
		[EKPOA_AEUSERNAME],
		[EKPOA_AEDAT],
		[EKPOA_DATUM],
		[EKPOA_ZZBP1],
		[EKPOA_ZZCR1],
		[EKPOA_ZZPT1],
		[EKPOA_ZZPD1],
		[EKPOA_ZZBP2],
		[EKPOA_ZZCR2],
		[EKPOA_ZZPT2],
		[EKPOA_ZZPD2],
		[EKPOA_ZZBP3],
		[EKPOA_ZZCR3],
		[EKPOA_ZZPT3],
		[EKPOA_ZZPD3],
		[EKPOA_ZZBP4],
		[EKPOA_ZZCR4],
		[EKPOA_ZZPT4],
		[EKPOA_ZZPD4],
		[EKPOA_ZZBP5],
		[EKPOA_ZZCR5],
		[EKPOA_ZZPT5],
		[EKPOA_ZZPD5],
		[EKPOA_WAERS],
		[EKPOA_ADRNR])
	SELECT
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKPOA_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKPOA_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKPOA_EBELN],'"','')),' ',''))) as [HASH_PO_HEADER],
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EKPOA_SYSID],'"',''),' ',''),REPLACE(REPLACE([EKPOA_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE([EKPOA_EBELN],'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EKPOA_EBELP],'"','')),' ',''))) as [HASH_PO_ITEM],
			REPLACE([EKPOA_SYSID],'"',''),
			REPLACE([EKPOA_MANDT],'"',''),
			[dbo].[add_0](4,REPLACE([EKPOA_BUKRS],'"','')),
			[dbo].[add_0](10,REPLACE([EKPOA_EBELN],'"','')),
			[dbo].[add_0](5,REPLACE([EKPOA_EBELP],'"','')),
			REPLACE([EKPOA_WERKS],'"',''),
			REPLACE([EKPOA_LOEKZ],'"',''),
			REPLACE([EKPOA_PSTYP],'"',''),
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_UDATE],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_UDATE],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_UDATE],CHAR(13),''),CHAR(10),''),'"',''))
			ELSE NULL
			END AS [EKPOA_UDATE],
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_ORDERDATE],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_ORDERDATE],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_ORDERDATE],CHAR(13),''),CHAR(10),''),'"',''))
			ELSE NULL
			END AS [EKPOA_ORDERDATE],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_MENGE],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_MENGE],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,3))
			ELSE NULL
			END AS [EKPOA_MENGE],
			REPLACE([EKPOA_MEINS],'"',''),
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_NETWR],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_NETWR],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_NETWR],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_CAMOUNT],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_CAMOUNT],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_CAMOUNT],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_EURAMOUNT],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_EURAMOUNT],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_EURAMOUNT],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_WKURS],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_WKURS],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,5))
			ELSE NULL
			END AS [EKPOA_WKURS],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_RATE],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_RATE],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,5))
			ELSE NULL
			END AS [EKPOA_RATE],
			REPLACE([EKPOA_LONGTEXT],'"',''),
			REPLACE([EKPOA_TXZ01],'"',''),
			REPLACE([EKPOA_MATKL],'"',''),
			REPLACE([EKPOA_MATNR],'"',''),
			REPLACE([EKPOA_REVLV],'"',''),
			REPLACE([EKPOA_IDNLF],'"',''),
			REPLACE([EKPOA_BANFN],'"',''),
			[dbo].[add_0](5,REPLACE([EKPOA_BNFPO],'"','')),
			REPLACE([EKPOA_AFNAM],'"',''),
			REPLACE([EKPOA_BEDNR],'"',''),
			[dbo].[add_0](10,REPLACE([EKPOA_KONNR],'"','')),
			[dbo].[add_0](5,REPLACE([EKPOA_KTPNR],'"','')),
			REPLACE([EKPOA_WEPOS],'"',''),
			REPLACE([EKPOA_EVERS],'"',''),
			REPLACE([EKPOA_INSMK],'"',''),
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_MHDRZ],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_MHDRZ],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_MHDRZ],
			REPLACE([EKPOA_IPRKZ],'"',''),
			REPLACE([EKPOA_SSQSS],'"',''),
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_PLIFZ],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_PLIFZ],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_PLIFZ],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_WEBAZ],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_WEBAZ],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_WEBAZ],
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_LEWED],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN  TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_LEWED],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_LEWED],CHAR(13),''),CHAR(10),''),'"',''))
			ELSE NULL
			END AS [EKPOA_LEWED],
			REPLACE([EKPOA_ABLAD],'"',''),
			REPLACE([EKPOA_LGORT],'"',''),
			REPLACE([EKPOA_NAME1],'"',''),
			REPLACE([EKPOA_NAME2],'"',''),
			REPLACE([EKPOA_STREET],'"',''),
			REPLACE([EKPOA_POST_CODE1],'"',''),
			REPLACE([EKPOA_CITY1],'"',''),
			REPLACE([EKPOA_REGION],'"',''),
			REPLACE([EKPOA_COUNTRY],'"',''),
			REPLACE([EKPOA_PO_BOX],'"',''),
			REPLACE([EKPOA_KZABS],'"',''),
			REPLACE([EKPOA_LABNR],'"',''),
			REPLACE([EKPOA_ELIKZ],'"',''),
			REPLACE([EKPOA_EREKZ],'"',''),
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_UEBTO],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_UEBTO],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_UEBTO],
			REPLACE([EKPOA_UEBTK],'"',''),
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_UNTTO],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_UNTTO],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_UNTTO],
			REPLACE([EKPOA_XOBLR],'"',''),
			REPLACE([EKPOA_KNTTP],'"',''),
			REPLACE([EKPOA_VRTKZ],'"',''),
			REPLACE([EKPOA_INCO1],'"',''),
			REPLACE([EKPOA_INCO2],'"',''),
			REPLACE([EKPOA_MFRNR],'"',''),
			REPLACE([EKPOA_MFRPN],'"',''),
			REPLACE([EKPOA_EAN11],'"',''),
			REPLACE([EKPOA_ERUSERNAME],'"',''),
			REPLACE([EKPOA_AEUSERNAME],'"',''),
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_AEDAT],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN  TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_AEDAT],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_AEDAT],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
			END AS [EKPOA_AEDAT],
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN  TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
			END AS [EKPOA_DATUM],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP1],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP1],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_ZZBP1],
			REPLACE([EKPOA_ZZCR1],'"',''),
			REPLACE([EKPOA_ZZPT1],'"',''),
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_ZZPD1],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN  TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_ZZPD1],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_ZZPD1],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
			END AS [EKPOA_ZZPD1],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP2],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP2],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_ZZBP2],
			REPLACE([EKPOA_ZZCR2],'"',''),
			REPLACE([EKPOA_ZZPT2],'"',''),
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_ZZPD2],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN  TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_ZZPD2],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_ZZPD2],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
			END AS [EKPOA_ZZPD2],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP3],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP3],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_ZZBP3],
			REPLACE([EKPOA_ZZCR3],'"',''),
			REPLACE([EKPOA_ZZPT3],'"',''),
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_ZZPD3],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN  TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_ZZPD3],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_ZZPD3],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
			END AS [EKPOA_ZZPD3],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP4],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP4],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_ZZBP4],
			REPLACE([EKPOA_ZZCR4],'"',''),
			REPLACE([EKPOA_ZZPT4],'"',''),
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_ZZPD4],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN  TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_ZZPD4],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_ZZPD4],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
			END AS [EKPOA_ZZPD4],
			CASE
			WHEN 
			ISNUMERIC(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP5],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN CAST(REPLACE(REPLACE(REPLACE([EKPOA_ZZBP5],CHAR(13),''),CHAR(10),''),'"','') as decimal(18,2))
			ELSE NULL
			END AS [EKPOA_ZZBP5],
			REPLACE([EKPOA_ZZCR5],'"',''),
			REPLACE([EKPOA_ZZPT5],'"',''),
			CASE 
			WHEN REPLACE(REPLACE(REPLACE([EKPOA_ZZPD5],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN  TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM') 
			WHEN ISDATE(REPLACE(REPLACE(REPLACE([EKPOA_ZZPD5],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EKPOA_ZZPD5],CHAR(13),''),CHAR(10),''),'"','')) 
			ELSE NULL
			END AS [EKPOA_ZZPD5],
			REPLACE([EKPOA_WAERS],'"',''),
			REPLACE([EKPOA_ADRNR],'"','')
			FROM
	[dbo].[CFT_Item_ETL]
	where [EKPOA_MANDT] is not null
	AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
