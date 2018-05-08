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


CREATE TRIGGER [dbo].[CREATE_UPDATE_HASH_MD_Part_ETL]
   ON  [dbo].[MD_Part_ETL] 
   INSTEAD OF INSERT
AS 
BEGIN
	SET NOCOUNT ON;
		INSERT [dbo].[MD_Part_ETL](
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
		[MARA_DATUM],
		[HASH_MD_PART],
		[HASH_MD_PLANT],
		[HASH_MD_PGROUP],
		[HASH_MD_CURRENCY]
		)
			SELECT
			i.[MARA_SYSID],
			i.[MARA_MANDT],
			i.[MARA_WERKS],
			i.[MARA_MATNR],
			i.[MARA_SPRAS],
			i.[MARA_MAKTX],
			i.[MARA_ZZKT2],
			i.[MARA_MEINS],
			i.[MARA_EKGRP],
			i.[MARA_MATKL],
			i.[MARA_MSTAE],
			i.[MARA_MTART],
			i.[MARA_MTBEZ],
			i.[MARA_ATTYP],
			i.[MARA_DDTEXT],
			i.[MARA_NORMT],
			i.[MARA_PROFL],
			i.[MARA_STOFF],
			i.[MARA_KZUMW],
			i.[MARA_ITARK],
			i.[MARA_MFRNR],
			i.[MARA_MFRPN],
			i.[MARA_MPROF],
			i.[MARA_STPRS],
			i.[MARA_WAERS],
			i.[MARA_PLIFZ],
			i.[MARA_PRDHA],
			i.[MARA_PRCTR],
			i.[MARA_ERSDA],
			i.[MARA_LAEDA],
			i.[MARA_DATUM],
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[MARA_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_MANDT],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_WERKS],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_MATNR],'"',''),' ',''))) as [HASH_MD_PART],
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[MARA_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_MANDT],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_WERKS],'"',''),' ',''))) as [HASH_MD_PLANT],
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[MARA_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_MANDT],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_EKGRP],'"',''),' ',''))) as [HASH_MD_PGROUP],
			HASHBYTES('MD5',CONCAT(REPLACE(REPLACE(i.[MARA_SYSID],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_MANDT],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_WAERS],'"',''),' ',''),REPLACE(REPLACE(i.[MARA_SPRAS],'"',''),' ',''))) as [HASH_MD_CURRENCY]
			FROM
			inserted as i;
END


