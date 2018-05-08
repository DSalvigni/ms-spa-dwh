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
CREATE TRIGGER [dbo].[CREATE_UPDATE_HASH_INV_Header_ETL]
   ON  [dbo].[INV_Header_ETL] 
   INSTEAD OF INSERT
AS 
BEGIN
	SET NOCOUNT ON;
		INSERT [dbo].[INV_Header_ETL](
		[BKPF_SYSID],
		[BKPF_MANDT],
		[BKPF_GJAHR],
		[BKPF_BELNR],
		[BKPF_BUKRS],
		[BKPF_BUDAT],
		[BKPF_CPUDT],
		[BKPF_BLDAT],
		[BKPF_WAERS],
		[BKPF_KURSF],
		[BKPF_WWERT],
		[BKPF_HWAER],
		[BKPF_BKTXT],
		[BKPF_BLART],
		[BKPF_XBLNR],
		[BKPF_BSTAT],
		[BKPF_STJAH],
		[BKPF_STBLG],
		[BKPF_XREVERSAL],
		[BKPF_ERUSERNAME],
		[BKPF_AEUSERNAME],
		[BKPF_AEDAT],
		[BKPF_DATUM],
		[BKPF_AUSBK],
		[HASH_INV_HEADER_UNIQUE],
		[HASH_INV_HEADER]
		)
			SELECT
				i.[BKPF_SYSID],
				i.[BKPF_MANDT],
				i.[BKPF_GJAHR],
				[dbo].[add_0](10,REPLACE(i.[BKPF_BELNR],'"','')),
				[dbo].[add_0](4,REPLACE(i.[BKPF_BUKRS],'"','')),
				i.[BKPF_BUDAT],
				i.[BKPF_CPUDT],
				i.[BKPF_BLDAT],
				i.[BKPF_WAERS],
				i.[BKPF_KURSF],
				i.[BKPF_WWERT],
				i.[BKPF_HWAER],
				i.[BKPF_BKTXT],
				i.[BKPF_BLART],
				i.[BKPF_XBLNR],
				i.[BKPF_BSTAT],
				i.[BKPF_STJAH],
				i.[BKPF_STBLG],
				i.[BKPF_XREVERSAL],
				i.[BKPF_ERUSERNAME],
				i.[BKPF_AEUSERNAME],
				i.[BKPF_AEDAT],
				i.[BKPF_DATUM],
				i.[BKPF_AUSBK],
				HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[BKPF_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[BKPF_MANDT],'"',''),' ',''),REPLACE(REPLACE(i.[BKPF_GJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE(i.[BKPF_BELNR],'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE(i.[BKPF_BUKRS],'"','')),' ',''))) as [HASH_INV_HEADER_UNIQUE],
				HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[BKPF_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[BKPF_MANDT],'"',''),' ',''),REPLACE(REPLACE(i.[BKPF_GJAHR],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE(i.[BKPF_BELNR],'"','')),' ',''))) as [HASH_INV_HEADER]	
			FROM
			inserted as i;
END


