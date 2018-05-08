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


CREATE TRIGGER [dbo].[CREATE_UPDATE_HASH_PO_Schedule_ETL]
   ON  [dbo].[PO_Schedule_ETL] 
   INSTEAD OF INSERT
AS 
BEGIN
	SET NOCOUNT ON;
		INSERT [dbo].[PO_Schedule_ETL](
		[EKET_SYSID],
		[EKET_MANDT],
		[EKET_EBELN],
		[EKET_EBELP],
		[EKET_ETENR],
		[EKET_ESTKZ],
		[EKET_CHARG],
		[EKET_LICHA],
		[EKET_BEDAT],
		[EKET_EINDT],
		[EKET_SLFDT],
		[EKET_MENGE],
		[EKET_WEMNG],
		[EKET_DABMG],
		[EKET_BANFN],
		[EKET_BNFPO],
		[EKET_MAHNZ],
		[EKET_GLMNG],
		[EKET_AMENG],
		[EKET_WAMNG],
		[EKET_FIXKZ],
		[EKET_ERUSERNAME],
		[EKET_AEUSERNAME],
		[EKET_UDATE],
		[EKET_DATUM],
		[HASH_PO_SCHEDULE],
		[HASH_PO_ITEM]
		)
			SELECT
				i.[EKET_SYSID],
				i.[EKET_MANDT],
				[dbo].[add_0](10,REPLACE(i.[EKET_EBELN] ,'"','')),
				[dbo].[add_0](5,REPLACE(i.[EKET_EBELP] ,'"','')),
				[dbo].[add_0](4,REPLACE(i.[EKET_ETENR] ,'"','')),
				i.[EKET_ESTKZ],
				i.[EKET_CHARG],
				i.[EKET_LICHA],
				i.[EKET_BEDAT],
				i.[EKET_EINDT],
				i.[EKET_SLFDT],
				i.[EKET_MENGE],
				i.[EKET_WEMNG],
				i.[EKET_DABMG],
				i.[EKET_BANFN],
				[dbo].[add_0](5,REPLACE(i.[EKET_BNFPO] ,'"','')),
				i.[EKET_MAHNZ],
				i.[EKET_GLMNG],
				i.[EKET_AMENG],
				i.[EKET_WAMNG],
				i.[EKET_FIXKZ],
				i.[EKET_ERUSERNAME],
				i.[EKET_AEUSERNAME],
				i.[EKET_UDATE],
				i.[EKET_DATUM],
				HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[EKET_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[EKET_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE(i.[EKET_EBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE(i.[EKET_EBELP] ,'"','')),' ',''),REPLACE([dbo].[add_0](4,REPLACE(i.[EKET_ETENR] ,'"','')),' ',''))) as [HASH_PO_SCHEDULE],
				HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[EKET_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[EKET_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](10,REPLACE(i.[EKET_EBELN] ,'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE(i.[EKET_EBELP] ,'"','')),' ',''))) as [HASH_PO_ITEM]
				FROM
			inserted as i;
END


