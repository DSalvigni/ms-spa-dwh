USE [SPA_SQL]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Daniele, Salvigni>
-- Create date: <@2018>
-- Description:	<Create UID>
-- =============================================


CREATE TRIGGER [dbo].[CREATE_UPDATE_HASH_PO_Header_ETL]
   ON  [dbo].[PO_Header_ETL] 
   INSTEAD OF INSERT
AS 
BEGIN
	SET NOCOUNT ON;
		INSERT [dbo].[PO_Header_ETL](
		[EKKO_SYSID],
		[EKKO_MANDT],
		[EKKO_BUKRS],
		[EKKO_EBELN],
		[EKKO_LOEKZ],
		[EKKO_AEDAT],
		[EKKO_BEDAT],
		[EKKO_WAERS],
		[EKKO_WKURS],
		[EKKO_KUFIX],
		[EKKO_CWAERS],
		[EKKO_LONGTEXT],
		[EKKO_LIFNR],
		[EKKO_BSTYP],
		[EKKO_BSART],
		[EKKO_INCO1],
		[EKKO_INCO2],
		[EKKO_ZTERM],
		[EKKO_EKORG],
		[EKKO_EKGRP],
		[EKKO_IHREZ],
		[EKKO_UNSEZ],
		[EKKO_KDATB],
		[EKKO_KDATE],
		[EKKO_KONNR],
		[EKKO_ANGNR],
		[EKKO_IHRAN],
		[EKKO_SUBMI],
		[EKKO_STCEG],
		[EKKO_EKGSM],
		[EKKO_UEBDT],
		[EKKO_ERNAM],
		[EKKO_AEUSERNAME],
		[EKKO_UDATE],
		[EKKO_DATUM],
		[HASH_PO_HEADER],
		[HASH_MD_PGROUP],
		[HASH_SUPPLIER_LFA1],
		[HASH_SUPPLIER_LFB1],
		[HASH_SUPPLIER_LFM1]
		)
			SELECT
				i.[EKKO_SYSID],
				i.[EKKO_MANDT],
				[dbo].[add_0](4,REPLACE(i.[EKKO_BUKRS] ,'"','')),
				[dbo].[add_0](10,REPLACE(i.[EKKO_EBELN] ,'"','')),
				i.[EKKO_LOEKZ],
				i.[EKKO_AEDAT],
				i.[EKKO_BEDAT],
				i.[EKKO_WAERS],
				i.[EKKO_WKURS],
				i.[EKKO_KUFIX],
				i.[EKKO_CWAERS],
				i.[EKKO_LONGTEXT],
				[dbo].[rem_0](REPLACE(i.[EKKO_LIFNR],'"','')),
				i.[EKKO_BSTYP],
				i.[EKKO_BSART],
				i.[EKKO_INCO1],
				i.[EKKO_INCO2],
				i.[EKKO_ZTERM],
				i.[EKKO_EKORG],
				i.[EKKO_EKGRP],
				i.[EKKO_IHREZ],
				i.[EKKO_UNSEZ],
				i.[EKKO_KDATB],
				i.[EKKO_KDATE],
				[dbo].[add_0](10,REPLACE(i.[EKKO_KONNR] ,'"','')),
				i.[EKKO_ANGNR],
				i.[EKKO_IHRAN],
				i.[EKKO_SUBMI],
				i.[EKKO_STCEG],
				i.[EKKO_EKGSM],
				i.[EKKO_UEBDT],
				i.[EKKO_ERNAM],
				i.[EKKO_AEUSERNAME],
				i.[EKKO_UDATE],
				i.[EKKO_DATUM],
				HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[EKKO_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[EKKO_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE(i.[EKKO_EBELN] ,'"','')),' ',''))) as [HASH_PO_HEADER],
				HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[EKKO_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[EKKO_MANDT],'"',''),' ',''),REPLACE(REPLACE(i.[EKKO_EKGRP],'"',''),' ',''))) as [HASH_MD_PGROUP],
				HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[EKKO_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[EKKO_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE(i.[EKKO_LIFNR],'"','')),' ',''))) as [HASH_SUPPLIER_LFA1],
				HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[EKKO_SYSID],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE(i.[EKKO_LIFNR],'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE(i.[EKKO_BUKRS] ,'"','')),' ',''))) as [HASH_SUPPLIER_LFB1],
				HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[EKKO_SYSID],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE(i.[EKKO_LIFNR],'"','')),' ',''),REPLACE([dbo].[rem_0](REPLACE(i.[EKKO_EKORG],'"','')),' ',''))) as [HASH_SUPPLIER_LFM1]				
				FROM
			inserted as i;
END


