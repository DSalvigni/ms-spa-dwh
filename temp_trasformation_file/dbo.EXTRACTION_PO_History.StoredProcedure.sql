USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_PO_History]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Daniele SanGy>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================[dbo].[1_0_EXTRACTION_INV_Item_ETL]
CREATE PROCEDURE [dbo].[EXTRACTION_PO_History]
AS
BEGIN
SET NOCOUNT ON;
select
'EKBE_SYSID',
'EKBE_MANDT',
'EKBE_EBELN',
'EKBE_EBELP',
'EKBE_AREWB',
'EKBE_AREWR',
'EKBE_AREWR_POP',
'EKBE_AREWW',
'EKBE_BAMNG',
'EKBE_BEKKN',
'EKBE_BELNR',
'EKBE_BEWTP',
'EKBE_BLDAT',
'EKBE_BPMNG',
'EKBE_BPMNG_POP',
'EKBE_BPWEB',
'EKBE_BPWES',
'EKBE_BUDAT',
'EKBE_BUZEI',
'EKBE_BWART',
'EKBE_BWTAR',
'EKBE_CHARG',
'EKBE_CPUDT',
'EKBE_CPUTM',
'EKBE_DMBTR',
'EKBE_DMBTR_POP',
'EKBE_ELIKZ',
'EKBE_EMATN',
'EKBE_ERNAM',
'EKBE_ET_UPD',
'EKBE_ETENS',
'EKBE_EVERE',
'EKBE_GJAHR',
'EKBE_GRUND',
'EKBE_HSWAE',
'EKBE_INTROW',
'EKBE_KNUMV',
'EKBE_KUDIF',
'EKBE_LEMIN',
'EKBE_LFBNR',
'EKBE_LFGJA',
'EKBE_LFPOS',
'EKBE_LSMEH',
'EKBE_LSMNG',
'EKBE_MATNR',
'EKBE_MENGE',
'EKBE_MENGE_POP',
'EKBE_MWSKZ',
'EKBE_PACKNO',
'EKBE_REEWR',
'EKBE_REFWR',
'EKBE_RETAMT_FC',
'EKBE_RETAMT_LC',
'EKBE_RETAMTP_FC',
'EKBE_RETAMTP_LC',
'EKBE_REWRB',
'EKBE_SAPRL',
'EKBE_SHKZG',
'EKBE_SRVPOS',
'EKBE_VGABE',
'EKBE_WAERS',
'EKBE_WEORA',
'EKBE_WERKS',
'EKBE_WESBB',
'EKBE_WESBS',
'EKBE_WKURS',
'EKBE_WRBTR',
'EKBE_WRBTR_POP',
'EKBE_XBLNR',
'EKBE_XMACC',
'EKBE_XUNPL',
'EKBE_XWOFF',
'EKBE_XWSBR',
'EKBE_ZEKKN',
'EKBE_ERUSERNAME',
'EKBE_AEUSERNAME',
'EKBE_UDATE',
'EKBE_DATUM'
union all
select
	CASE WHEN replace([EKBE_SYSID],' ','') = '' then NULL ELSE replace([EKBE_SYSID],' ','') end as [EKBE_SYSID],
	CASE WHEN replace([EKBE_MANDT],' ','') = '' then NULL ELSE replace([EKBE_MANDT],' ','') end as [EKBE_MANDT],
	CASE WHEN replace([EKBE_EBELN],' ','') = '' then NULL ELSE replace([EKBE_EBELN],' ','') end as [EKBE_EBELN],
	CASE WHEN replace([EKBE_EBELP],' ','') = '' then '00000' WHEN replace([EKBE_EBELP],' ','') IS NULL then '00000'  ELSE replace([EKBE_EBELP],' ','') end as [EKBE_EBELP],		
	CASE WHEN replace([EKBE_AREWB],' ','') = '' then '0.00' WHEN replace([EKBE_AREWB],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_AREWB],' ','') end as [EKBE_AREWB],
	CASE WHEN replace([EKBE_AREWR],' ','') = '' then '0.00' WHEN replace([EKBE_AREWR],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_AREWR],' ','') end as [EKBE_AREWR],
	CASE WHEN replace([EKBE_AREWR_POP],' ','') = '' then '0.00' WHEN replace([EKBE_AREWR_POP],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_AREWR_POP],' ','') end as [EKBE_AREWR_POP],
	CASE WHEN replace([EKBE_AREWW],' ','') = '' then '0.00' WHEN replace([EKBE_AREWW],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_AREWW],' ','') end as [EKBE_AREWW],
	CASE WHEN replace([EKBE_BAMNG],' ','') = '' then '0.000' WHEN replace([EKBE_BAMNG],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_BAMNG],' ','') end as [EKBE_BAMNG],		
	CASE WHEN replace([EKBE_BEKKN],' ','') = '' then NULL ELSE replace([EKBE_BEKKN],' ','') end as [EKBE_BEKKN],
	CASE WHEN replace([EKBE_BELNR],' ','') = '' then NULL ELSE replace([EKBE_BELNR],' ','') end as [EKBE_BELNR],
	CASE WHEN replace([EKBE_BEWTP],' ','') = '' then NULL ELSE replace([EKBE_BEWTP],' ','') end as [EKBE_BEWTP],
	CASE WHEN replace([EKBE_BLDAT],' ','') = '' then '00000000' WHEN replace([EKBE_BLDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKBE_BLDAT]),'YYYYMMDD'),' ','') end as [EKBE_BLDAT],		
	CASE WHEN replace([EKBE_BPMNG],' ','') = '' then '0.000' WHEN replace([EKBE_BPMNG],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_BPMNG],' ','') end as [EKBE_BPMNG],
	CASE WHEN replace([EKBE_BPMNG_POP],' ','') = '' then '0.000' WHEN replace([EKBE_BPMNG_POP],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_BPMNG_POP],' ','') end as [EKBE_BPMNG_POP],
	CASE WHEN replace([EKBE_BPWEB],' ','') = '' then '0.000' WHEN replace([EKBE_BPWEB],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_BPWEB],' ','') end as [EKBE_BPWEB],
	CASE WHEN replace([EKBE_BPWES],' ','') = '' then '0.000' WHEN replace([EKBE_BPWES],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_BPWES],' ','') end as [EKBE_BPWES],
	CASE WHEN replace([EKBE_BUDAT],' ','') = '' then '00000000' WHEN replace([EKBE_BUDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKBE_BUDAT]),'YYYYMMDD'),' ','') end as [EKBE_BUDAT],
	CASE WHEN replace([EKBE_BUZEI],' ','') = '' then NULL ELSE replace([EKBE_BUZEI],' ','') end as [EKBE_BUZEI],
	CASE WHEN replace([EKBE_BWART],' ','') = '' then NULL ELSE replace([EKBE_BWART],' ','') end as [EKBE_BWART],
	CASE WHEN replace([EKBE_BWTAR],' ','') = '' then NULL ELSE replace([EKBE_BWTAR],' ','') end as [EKBE_BWTAR],
	CASE WHEN replace([EKBE_CHARG],' ','') = '' then NULL ELSE replace([EKBE_CHARG],' ','') end as [EKBE_CHARG],		
	CASE WHEN replace([EKBE_CPUDT],' ','') = '' then '00000000' WHEN replace([EKBE_CPUDT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKBE_CPUDT]),'YYYYMMDD'),' ','') end as [EKBE_CPUDT],
	CASE WHEN replace([EKBE_CPUTM],' ','') = '' then NULL ELSE replace([EKBE_CPUTM],' ','') end as [EKBE_CPUTM],	
	CASE WHEN replace([EKBE_DMBTR],' ','') = '' then '0.00' WHEN replace([EKBE_DMBTR],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_DMBTR],' ','') end as [EKBE_DMBTR],
	CASE WHEN replace([EKBE_DMBTR_POP],' ','') = '' then '0.00' WHEN replace([EKBE_DMBTR_POP],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_DMBTR_POP],' ','') end as [EKBE_DMBTR_POP],
	CASE WHEN replace([EKBE_ELIKZ],' ','') = '' then NULL ELSE replace([EKBE_ELIKZ],' ','') end as [EKBE_ELIKZ],
	CASE WHEN replace([EKBE_EMATN],' ','') = '' then NULL ELSE replace([EKBE_EMATN],' ','') end as [EKBE_EMATN],
	CASE WHEN replace([EKBE_ERNAM],' ','') = '' then NULL ELSE replace([EKBE_ERNAM],' ','') end as [EKBE_ERNAM],
	CASE WHEN replace([EKBE_ET_UPD],' ','') = '' then NULL ELSE replace([EKBE_ET_UPD],' ','') end as [EKBE_ET_UPD],
	CASE WHEN replace([EKBE_ETENS],' ','') = '' then NULL ELSE replace([EKBE_ETENS],' ','') end as [EKBE_ETENS],
	CASE WHEN replace([EKBE_EVERE],' ','') = '' then NULL ELSE replace([EKBE_EVERE],' ','') end as [EKBE_EVERE],
	CASE WHEN replace([EKBE_GJAHR],' ','') = '' then NULL ELSE replace([EKBE_GJAHR],' ','') end as [EKBE_GJAHR],
	CASE WHEN replace([EKBE_GRUND],' ','') = '' then NULL ELSE replace([EKBE_GRUND],' ','') end as [EKBE_GRUND],
	CASE WHEN replace([EKBE_HSWAE],' ','') = '' then NULL ELSE replace([EKBE_HSWAE],' ','') end as [EKBE_HSWAE],
	CASE WHEN replace([EKBE_INTROW],' ','') = '' then NULL ELSE replace([EKBE_INTROW],' ','') end as [EKBE_INTROW],
	CASE WHEN replace([EKBE_KNUMV],' ','') = '' then NULL ELSE replace([EKBE_KNUMV],' ','') end as [EKBE_KNUMV],
	CASE WHEN replace([EKBE_KUDIF],' ','') = '' then '0.00000' WHEN replace([EKBE_KUDIF],' ','') IS NULL THEN '0.00000' ELSE replace([EKBE_KUDIF],' ','') end as [EKBE_KUDIF],
	CASE WHEN replace([EKBE_LEMIN],' ','') = '' then NULL ELSE replace([EKBE_LEMIN],' ','') end as [EKBE_LEMIN],
	CASE WHEN replace([EKBE_LFBNR],' ','') = '' then NULL ELSE replace([EKBE_LFBNR],' ','') end as [EKBE_LFBNR],
	CASE WHEN replace([EKBE_LFGJA],' ','') = '' then NULL ELSE replace([EKBE_LFGJA],' ','') end as [EKBE_LFGJA],
	CASE WHEN replace([EKBE_LFPOS],' ','') = '' then NULL ELSE replace([EKBE_LFPOS],' ','') end as [EKBE_LFPOS],
	CASE WHEN replace([EKBE_LSMEH],' ','') = '' then NULL ELSE replace([EKBE_LSMEH],' ','') end as [EKBE_LSMEH],
	CASE WHEN replace([EKBE_LSMNG],' ','') = '' then '0.000' WHEN replace([EKBE_LSMNG],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_LSMNG],' ','') end as [EKBE_LSMNG],
	CASE WHEN replace([EKBE_MATNR],' ','') = '' then NULL ELSE replace([EKBE_MATNR],' ','') end as [EKBE_MATNR],
	CASE WHEN replace([EKBE_MENGE],' ','') = '' then '0.000' WHEN replace([EKBE_MENGE],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_MENGE],' ','') end as [EKBE_MENGE],
	CASE WHEN replace([EKBE_MENGE_POP],' ','') = '' then '0.000' WHEN replace([EKBE_MENGE_POP],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_MENGE_POP],' ','') end as [EKBE_MENGE_POP],
	CASE WHEN replace([EKBE_MWSKZ],' ','') = '' then NULL ELSE replace([EKBE_MWSKZ],' ','') end as [EKBE_MWSKZ],
	CASE WHEN replace([EKBE_PACKNO],' ','') = '' then NULL ELSE replace([EKBE_PACKNO],' ','') end as [EKBE_PACKNO],
	CASE WHEN replace([EKBE_REEWR],' ','') = '' then '0.00' WHEN replace([EKBE_REEWR],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_REEWR],' ','') end as [EKBE_REEWR],
	CASE WHEN replace([EKBE_REFWR],' ','') = '' then '0.00' WHEN replace([EKBE_REFWR],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_REFWR],' ','') end as [EKBE_REFWR],
	CASE WHEN replace([EKBE_RETAMT_FC],' ','') = '' then '0.00' WHEN replace([EKBE_RETAMT_FC],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_RETAMT_FC],' ','') end as [EKBE_RETAMT_FC],
	CASE WHEN replace([EKBE_RETAMT_LC],' ','') = '' then '0.00' WHEN replace([EKBE_RETAMT_LC],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_RETAMT_LC],' ','') end as [EKBE_RETAMT_LC],
	CASE WHEN replace([EKBE_RETAMTP_FC],' ','') = '' then '0.00' WHEN replace([EKBE_RETAMTP_FC],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_RETAMTP_FC],' ','') end as [EKBE_RETAMTP_FC],
	CASE WHEN replace([EKBE_RETAMTP_LC],' ','') = '' then '0.00' WHEN replace([EKBE_RETAMTP_LC],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_RETAMTP_LC],' ','') end as [EKBE_RETAMTP_LC],
	CASE WHEN replace([EKBE_REWRB],' ','') = '' then '0.00' WHEN replace([EKBE_REWRB],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_REWRB],' ','') end as [EKBE_REWRB],
	CASE WHEN replace([EKBE_SAPRL],' ','') = '' then NULL ELSE replace([EKBE_SAPRL],' ','') end as [EKBE_SAPRL],
	CASE WHEN replace([EKBE_SHKZG],' ','') = '' then NULL ELSE replace([EKBE_SHKZG],' ','') end as [EKBE_SHKZG],
	CASE WHEN replace([EKBE_SRVPOS],' ','') = '' then NULL ELSE replace([EKBE_SRVPOS],' ','') end as [EKBE_SRVPOS],
	CASE WHEN replace([EKBE_VGABE],' ','') = '' then NULL ELSE replace([EKBE_VGABE],' ','') end as [EKBE_VGABE],
	CASE WHEN replace([EKBE_WAERS],' ','') = '' then NULL ELSE replace([EKBE_WAERS],' ','') end as [EKBE_WAERS],
	CASE WHEN replace([EKBE_WEORA],' ','') = '' then NULL ELSE replace([EKBE_WEORA],' ','') end as [EKBE_WEORA],
	CASE WHEN replace([EKBE_WERKS],' ','') = '' then NULL ELSE replace([EKBE_WERKS],' ','') end as [EKBE_WERKS],	
	CASE WHEN replace([EKBE_WESBB],' ','') = '' then '0.000' WHEN replace([EKBE_WESBB],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_WESBB],' ','') end as [EKBE_WESBB],
	CASE WHEN replace([EKBE_WESBS],' ','') = '' then '0.000' WHEN replace([EKBE_WESBS],' ','') IS NULL THEN '0.000' ELSE replace([EKBE_WESBS],' ','') end as [EKBE_WESBS],
	CASE WHEN replace([EKBE_WKURS],' ','') = '' then '0.00000' WHEN replace([EKBE_WKURS],' ','') IS NULL THEN '0.00000' ELSE replace([EKBE_WKURS],' ','') end as [EKBE_WKURS],
	CASE WHEN replace([EKBE_WRBTR],' ','') = '' then '0.00' WHEN replace([EKBE_WRBTR],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_WRBTR],' ','') end as [EKBE_WRBTR],
	CASE WHEN replace([EKBE_WRBTR_POP],' ','') = '' then '0.00' WHEN replace([EKBE_WRBTR_POP],' ','') IS NULL THEN '0.00' ELSE replace([EKBE_WRBTR_POP],' ','') end as [EKBE_WRBTR_POP],
	CASE WHEN replace([EKBE_XBLNR],' ','') = '' then NULL ELSE replace([EKBE_XBLNR],' ','') end as [EKBE_XBLNR],
	CASE WHEN replace([EKBE_XMACC],' ','') = '' then NULL ELSE replace([EKBE_XMACC],' ','') end as [EKBE_XMACC],
	CASE WHEN replace([EKBE_XUNPL],' ','') = '' then NULL ELSE replace([EKBE_XUNPL],' ','') end as [EKBE_XUNPL],
	CASE WHEN replace([EKBE_XWOFF],' ','') = '' then NULL ELSE replace([EKBE_XWOFF],' ','') end as [EKBE_XWOFF],
	CASE WHEN replace([EKBE_XWSBR],' ','') = '' then NULL ELSE replace([EKBE_XWSBR],' ','') end as [EKBE_XWSBR],
	CASE WHEN replace([EKBE_ZEKKN],' ','') = '' then NULL ELSE replace([EKBE_ZEKKN],' ','') end as [EKBE_ZEKKN],
	CASE WHEN replace([EKBE_ERUSERNAME],' ','') = '' then NULL ELSE replace([EKBE_ERUSERNAME],' ','') end as [EKBE_ERUSERNAME],
	CASE WHEN replace([EKBE_AEUSERNAME],' ','') = '' then NULL ELSE replace([EKBE_AEUSERNAME],' ','') end as [EKBE_AEUSERNAME],
	CASE WHEN replace([EKBE_UDATE],' ','') = '' then '00000000' WHEN replace([EKBE_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKBE_UDATE]),'YYYYMMDD'),' ','') end as [EKBE_UDATE],
	CASE WHEN replace([EKBE_DATUM],' ','') = '' then '00000000' WHEN replace([EKBE_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKBE_DATUM]),'YYYYMMDD'),' ','') end as [EKBE_DATUM]
	from
	[dbo].[PO_History]
	WHERE [EKBE_SYSID] not in ('LM3','IE3')
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))

END

GO
