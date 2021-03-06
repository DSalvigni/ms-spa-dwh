USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_QN_Item]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_QN_Item]
AS
BEGIN
	SET NOCOUNT ON;
select
'QMFE_SYSID',
'QMFE_MANDT',
'QMFE_QMNUM',
'QMFE_FENUM',
'QMFE_AEDAT',
'QMFE_AENAM',
'QMFE_AEZEIT',
'QMFE_ANZFEHLER',
'QMFE_ARBPL',
'QMFE_ARBPLWERK',
'QMFE_AUTKZ',
'QMFE_BAUTL',
'QMFE_CROBJTY',
'QMFE_EBORT',
'QMFE_EKORG',
'QMFE_EQUNR',
'QMFE_ERDAT',
'QMFE_ERNAM',
'QMFE_ERZEIT',
'QMFE_FCOAUFNR',
'QMFE_FEART',
'QMFE_FECOD',
'QMFE_FEGRP',
'QMFE_FEHLBEW',
'QMFE_FEKAT',
'QMFE_FENUMORG',
'QMFE_FEQKLAS',
'QMFE_FETXT',
'QMFE_FEVER',
'QMFE_FMGEIG',
'QMFE_FMGEIN',
'QMFE_FMGFRD',
'QMFE_HERPOS',
'QMFE_INDTX',
'QMFE_INFNR',
'QMFE_KOSTL',
'QMFE_KZLOESCH',
'QMFE_KZMLA',
'QMFE_KZORG',
'QMFE_KZSYSFE',
'QMFE_LSTAR',
'QMFE_MATNR',
'QMFE_MENGE',
'QMFE_MERKNR',
'QMFE_OTEIL',
'QMFE_OTGRP',
'QMFE_OTKAT',
'QMFE_OTVER',
'QMFE_PHYNR',
'QMFE_PNLKN',
'QMFE_POSNR',
'QMFE_PROBENR',
'QMFE_PRUEFLINR',
'QMFE_PRZNR',
'QMFE_TPLNR',
'QMFE_UNITFLBEW',
'QMFE_WDFEH',
'QMFE_WERKS',
'QMFE_ZZ_MVA',
'QMFE_DATUM'
union all
	select	
	CASE WHEN replace([QMFE_SYSID],' ','') = '' then NULL ELSE replace([QMFE_SYSID],' ','') end as [QMFE_SYSID],
	CASE WHEN replace([QMFE_MANDT],' ','') = '' then NULL ELSE replace([QMFE_MANDT],' ','') end as [QMFE_MANDT],
	CASE WHEN replace([QMFE_QMNUM],' ','') = '' then NULL ELSE replace([QMFE_QMNUM],' ','') end as [QMFE_QMNUM],
	CASE WHEN replace([QMFE_FENUM],' ','') = '' then NULL ELSE replace([QMFE_FENUM],' ','') end as [QMFE_FENUM],
	CASE WHEN replace([QMFE_AEDAT],' ','') = '' then '00000000' WHEN replace([QMFE_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMFE_AEDAT]),'YYYYMMDD'),' ','') end as [QMFE_AEDAT],
	CASE WHEN replace([QMFE_AENAM],' ','') = '' then NULL ELSE replace([QMFE_AENAM],' ','') end as [QMFE_AENAM],
	CASE WHEN replace([QMFE_AEZEIT],' ','') = '' then '00000000' WHEN replace([QMFE_AEZEIT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMFE_AEZEIT]),'YYYYMMDD'),' ','') end as [QMFE_AEZEIT],
	CASE WHEN replace([QMFE_ANZFEHLER],' ','') = '' then '0' WHEN replace([QMFE_ANZFEHLER],' ','') IS NULL THEN '0' ELSE replace([QMFE_ANZFEHLER],' ','') end as [QMFE_ANZFEHLER],
	CASE WHEN replace([QMFE_ARBPL],' ','') = '' then NULL ELSE replace([QMFE_ARBPL],' ','') end as [QMFE_ARBPL],
	CASE WHEN replace([QMFE_ARBPLWERK],' ','') = '' then NULL ELSE replace([QMFE_ARBPLWERK],' ','') end as [QMFE_ARBPLWERK],
	CASE WHEN replace([QMFE_AUTKZ],' ','') = '' then NULL ELSE replace([QMFE_AUTKZ],' ','') end as [QMFE_AUTKZ],
	CASE WHEN replace([QMFE_BAUTL],' ','') = '' then NULL ELSE replace([QMFE_BAUTL],' ','') end as [QMFE_BAUTL],
	CASE WHEN replace([QMFE_CROBJTY],' ','') = '' then NULL ELSE replace([QMFE_CROBJTY],' ','') end as [QMFE_CROBJTY],
	CASE WHEN replace([QMFE_EBORT],' ','') = '' then NULL ELSE replace([QMFE_EBORT],' ','') end as [QMFE_EBORT],
	CASE WHEN replace([QMFE_EKORG],' ','') = '' then NULL ELSE replace([QMFE_EKORG],' ','') end as [QMFE_EKORG],
	CASE WHEN replace([QMFE_EQUNR],' ','') = '' then NULL ELSE replace([QMFE_EQUNR],' ','') end as [QMFE_EQUNR],
	CASE WHEN replace([QMFE_ERDAT],' ','') = '' then '00000000' WHEN replace([QMFE_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMFE_ERDAT]),'YYYYMMDD'),' ','') end as [QMFE_ERDAT],
	CASE WHEN replace([QMFE_ERNAM],' ','') = '' then NULL ELSE replace([QMFE_ERNAM],' ','') end as [QMFE_ERNAM],
	CASE WHEN replace([QMFE_ERZEIT],' ','') = '' then '00000000' WHEN replace([QMFE_ERZEIT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMFE_ERZEIT]),'YYYYMMDD'),' ','') end as [QMFE_ERZEIT],
	CASE WHEN replace([QMFE_FCOAUFNR],' ','') = '' then NULL ELSE replace([QMFE_FCOAUFNR],' ','') end as [QMFE_FCOAUFNR],
	CASE WHEN replace([QMFE_FEART],' ','') = '' then NULL ELSE replace([QMFE_FEART],' ','') end as [QMFE_FEART],
	CASE WHEN replace([QMFE_FECOD],' ','') = '' then NULL ELSE replace([QMFE_FECOD],' ','') end as [QMFE_FECOD],
	CASE WHEN replace([QMFE_FEGRP],' ','') = '' then NULL ELSE replace([QMFE_FEGRP],' ','') end as [QMFE_FEGRP],
	CASE WHEN replace([QMFE_FEHLBEW],' ','') = '' then '0.0000000000000000' WHEN replace([QMFE_FEHLBEW],' ','') IS NULL THEN '0.0000000000000000' ELSE replace([QMFE_FEHLBEW],' ','') end as [QMFE_FEHLBEW],
	CASE WHEN replace([QMFE_FEKAT],' ','') = '' then NULL ELSE replace([QMFE_FEKAT],' ','') end as [QMFE_FEKAT],
	CASE WHEN replace([QMFE_FENUMORG],' ','') = '' then NULL ELSE replace([QMFE_FENUMORG],' ','') end as [QMFE_FENUMORG],
	CASE WHEN replace([QMFE_FEQKLAS],' ','') = '' then NULL ELSE replace([QMFE_FEQKLAS],' ','') end as [QMFE_FEQKLAS],
	CASE WHEN replace([QMFE_FETXT],' ','') = '' then NULL ELSE replace([QMFE_FETXT],' ','') end as [QMFE_FETXT],
	CASE WHEN replace([QMFE_FEVER],' ','') = '' then NULL ELSE replace([QMFE_FEVER],' ','') end as [QMFE_FEVER],
	CASE WHEN replace([QMFE_FMGEIG],' ','') = '' then '0.000' WHEN replace([QMFE_FMGEIG],' ','') IS NULL THEN '0.000' ELSE replace([QMFE_FMGEIG],' ','') end as [QMFE_FMGEIG],
	CASE WHEN replace([QMFE_FMGEIN],' ','') = '' then NULL ELSE replace([QMFE_FMGEIN],' ','') end as [QMFE_FMGEIN],
	CASE WHEN replace([QMFE_FMGFRD],' ','') = '' then '0.000' WHEN replace([QMFE_FMGFRD],' ','') IS NULL THEN '0.000' ELSE replace([QMFE_FMGFRD],' ','') end as [QMFE_FMGFRD],
	CASE WHEN replace([QMFE_HERPOS],' ','') = '' then NULL ELSE replace([QMFE_HERPOS],' ','') end as [QMFE_HERPOS],
	CASE WHEN replace([QMFE_INDTX],' ','') = '' then NULL ELSE replace([QMFE_INDTX],' ','') end as [QMFE_INDTX],
	CASE WHEN replace([QMFE_INFNR],' ','') = '' then NULL ELSE replace([QMFE_INFNR],' ','') end as [QMFE_INFNR],
	CASE WHEN replace([QMFE_KOSTL],' ','') = '' then NULL ELSE replace([QMFE_KOSTL],' ','') end as [QMFE_KOSTL],
	CASE WHEN replace([QMFE_KZLOESCH],' ','') = '' then NULL ELSE replace([QMFE_KZLOESCH],' ','') end as [QMFE_KZLOESCH],
	CASE WHEN replace([QMFE_KZLOESCH],' ','') = '' then NULL ELSE replace([QMFE_KZLOESCH],' ','') end as [QMFE_KZLOESCH],
	CASE WHEN replace([QMFE_KZORG],' ','') = '' then NULL ELSE replace([QMFE_KZORG],' ','') end as [QMFE_KZORG],
	CASE WHEN replace([QMFE_KZSYSFE],' ','') = '' then NULL ELSE replace([QMFE_KZSYSFE],' ','') end as [QMFE_KZSYSFE],
	CASE WHEN replace([QMFE_LSTAR],' ','') = '' then NULL ELSE replace([QMFE_LSTAR],' ','') end as [QMFE_LSTAR],
	CASE WHEN replace([QMFE_MATNR],' ','') = '' then NULL ELSE replace([QMFE_MATNR],' ','') end as [QMFE_MATNR],
	CASE WHEN replace([QMFE_MENGE],' ','') = '' then '0.000' WHEN replace([QMFE_MENGE],' ','') IS NULL THEN '0.000' ELSE replace([QMFE_MENGE],' ','') end as [QMFE_MENGE],
	CASE WHEN replace([QMFE_MERKNR],' ','') = '' then NULL ELSE replace([QMFE_MERKNR],' ','') end as [QMFE_MERKNR],
	CASE WHEN replace([QMFE_OTEIL],' ','') = '' then NULL ELSE replace([QMFE_OTEIL],' ','') end as [QMFE_OTEIL],
	CASE WHEN replace([QMFE_OTGRP],' ','') = '' then NULL ELSE replace([QMFE_OTGRP],' ','') end as [QMFE_OTGRP],
	CASE WHEN replace([QMFE_OTKAT],' ','') = '' then NULL ELSE replace([QMFE_OTKAT],' ','') end as [QMFE_OTKAT],
	CASE WHEN replace([QMFE_OTVER],' ','') = '' then NULL ELSE replace([QMFE_OTVER],' ','') end as [QMFE_OTVER],
	CASE WHEN replace([QMFE_PHYNR],' ','') = '' then NULL ELSE replace([QMFE_PHYNR],' ','') end as [QMFE_PHYNR],
	CASE WHEN replace([QMFE_PNLKN],' ','') = '' then NULL ELSE replace([QMFE_PNLKN],' ','') end as [QMFE_PNLKN],
	CASE WHEN replace([QMFE_POSNR],' ','') = '' then NULL ELSE replace([QMFE_POSNR],' ','') end as [QMFE_POSNR],
	CASE WHEN replace([QMFE_PROBENR],' ','') = '' then NULL ELSE replace([QMFE_PROBENR],' ','') end as [QMFE_PROBENR],
	CASE WHEN replace([QMFE_PRUEFLINR],' ','') = '' then NULL ELSE replace([QMFE_PRUEFLINR],' ','') end as [QMFE_PRUEFLINR],
	CASE WHEN replace([QMFE_PRZNR],' ','') = '' then NULL ELSE replace([QMFE_PRZNR],' ','') end as [QMFE_PRZNR],
	CASE WHEN replace([QMFE_TPLNR],' ','') = '' then NULL ELSE replace([QMFE_TPLNR],' ','') end as [QMFE_TPLNR],
	CASE WHEN replace([QMFE_UNITFLBEW],' ','') = '' then NULL ELSE replace([QMFE_UNITFLBEW],' ','') end as [QMFE_UNITFLBEW],
	CASE WHEN replace([QMFE_WDFEH],' ','') = '' then NULL ELSE replace([QMFE_WDFEH],' ','') end as [QMFE_WDFEH],
	CASE WHEN replace([QMFE_WERKS],' ','') = '' then NULL ELSE replace([QMFE_WERKS],' ','') end as [QMFE_WERKS],
	CASE WHEN replace([QMFE_ZZ_MVA],' ','') = '' then NULL ELSE replace([QMFE_ZZ_MVA],' ','') end as [QMFE_ZZ_MVA],
	CASE WHEN replace([QMFE_DATUM],' ','') = '' then '00000000' WHEN replace([QMFE_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMFE_DATUM]),'YYYYMMDD'),' ','') end as [QMFE_DATUM]
	from
	[dbo].[QN_Item]
	WHERE [QMFE_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
