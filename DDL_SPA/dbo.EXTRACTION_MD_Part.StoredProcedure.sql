USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_Part]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_Part]
AS
BEGIN
	SET NOCOUNT ON;
select
'MARA_SYSID',
'MARA_MANDT',
'MARA_WERKS',
'MARA_MATNR',
'MARA_SPRAS',
'MARA_MAKTX',
'MARA_ZZKT2',
'MARA_MEINS',
'MARA_EKGRP',
'MARA_MATKL',
'MARA_MSTAE',
'MARA_MTART',
'MARA_MTBEZ',
'MARA_ATTYP',
'MARA_DDTEXT',
'MARA_NORMT',
'MARA_PROFL',
'MARA_STOFF',
'MARA_KZUMW',
'MARA_ITARK',
'MARA_MFRNR',
'MARA_MFRPN',
'MARA_MPROF',
'MARA_STPRS',
'MARA_WAERS',
'MARA_PLIFZ',
'MARA_PRDHA',
'MARA_PRCTR',
'MARA_ERSDA',
'MARA_LAEDA',
'MARA_DATUM'
union all
select	
	CASE WHEN replace([MARA_SYSID],' ','') = '' then NULL ELSE replace([MARA_SYSID],' ','') end as [MARA_SYSID],
	CASE WHEN replace([MARA_MANDT],' ','') = '' then NULL ELSE replace([MARA_MANDT],' ','') end as [MARA_MANDT],
	CASE WHEN replace([MARA_WERKS],' ','') = '' then NULL ELSE replace([MARA_WERKS],' ','') end as [MARA_WERKS],
	CASE WHEN replace([MARA_MATNR],' ','') = '' then NULL ELSE replace([MARA_MATNR],' ','') end as [MARA_MATNR],
	CASE WHEN replace([MARA_SPRAS],' ','') = '' then NULL ELSE replace([MARA_SPRAS],' ','') end as [MARA_SPRAS],
	CASE WHEN replace([MARA_MAKTX],' ','') = '' then NULL ELSE replace([MARA_MAKTX],' ','') end as [MARA_MAKTX],
	CASE WHEN replace([MARA_ZZKT2],' ','') = '' then NULL ELSE replace([MARA_ZZKT2],' ','') end as [MARA_ZZKT2],
	CASE WHEN replace([MARA_MEINS],' ','') = '' then NULL ELSE replace([MARA_MEINS],' ','') end as [MARA_MEINS],
	CASE WHEN replace([MARA_EKGRP],' ','') = '' then NULL ELSE replace([MARA_EKGRP],' ','') end as [MARA_EKGRP],
	CASE WHEN replace([MARA_MATKL],' ','') = '' then NULL ELSE replace([MARA_MATKL],' ','') end as [MARA_MATKL],
	CASE WHEN replace([MARA_MSTAE],' ','') = '' then NULL ELSE replace([MARA_MSTAE],' ','') end as [MARA_MSTAE],
	CASE WHEN replace([MARA_MTART],' ','') = '' then NULL ELSE replace([MARA_MTART],' ','') end as [MARA_MTART],
	CASE WHEN replace([MARA_MTBEZ],' ','') = '' then NULL ELSE replace([MARA_MTBEZ],' ','') end as [MARA_MTBEZ],
	CASE WHEN replace([MARA_ATTYP],' ','') = '' then NULL ELSE replace([MARA_ATTYP],' ','') end as [MARA_ATTYP],
	CASE WHEN replace([MARA_DDTEXT],' ','') = '' then NULL ELSE replace([MARA_DDTEXT],' ','') end as [MARA_DDTEXT],
	CASE WHEN replace([MARA_NORMT],' ','') = '' then NULL ELSE replace([MARA_NORMT],' ','') end as [MARA_NORMT],
	CASE WHEN replace([MARA_PROFL],' ','') = '' then NULL ELSE replace([MARA_PROFL],' ','') end as [MARA_PROFL],
	CASE WHEN replace([MARA_STOFF],' ','') = '' then NULL ELSE replace([MARA_STOFF],' ','') end as [MARA_STOFF],
	CASE WHEN replace([MARA_KZUMW],' ','') = '' then NULL ELSE replace([MARA_KZUMW],' ','') end as [MARA_KZUMW],
	CASE WHEN replace([MARA_ITARK],' ','') = '' then NULL ELSE replace([MARA_ITARK],' ','') end as [MARA_ITARK],
	CASE WHEN replace([MARA_MFRNR],' ','') = '' then NULL ELSE replace([MARA_MFRNR],' ','') end as [MARA_MFRNR],
	CASE WHEN replace([MARA_MFRPN],' ','') = '' then NULL ELSE replace([MARA_MFRPN],' ','') end as [MARA_MFRPN],
	CASE WHEN replace([MARA_MPROF],' ','') = '' then NULL ELSE replace([MARA_MPROF],' ','') end as [MARA_MPROF],
	CASE WHEN replace([MARA_STPRS],' ','') = '' then '0.00' WHEN replace([MARA_STPRS],' ','') IS NULL THEN '0.00' ELSE replace([MARA_STPRS],' ','') end as [MARA_STPRS],
	CASE WHEN replace([MARA_WAERS],' ','') = '' then NULL ELSE replace([MARA_WAERS],' ','') end as [MARA_WAERS],
	CASE WHEN replace([MARA_PLIFZ],' ','') = '' then '0' WHEN replace([MARA_PLIFZ],' ','') IS NULL THEN '0' ELSE replace([MARA_PLIFZ],' ','') end as [MARA_PLIFZ],
	CASE WHEN replace([MARA_PRDHA],' ','') = '' then NULL ELSE replace([MARA_PRDHA],' ','') end as [MARA_PRDHA],
	CASE WHEN replace([MARA_PRCTR],' ','') = '' then NULL ELSE replace([MARA_PRCTR],' ','') end as [MARA_PRCTR],
	CASE WHEN replace([MARA_ERSDA],' ','') = '' then '00000000' WHEN replace([MARA_ERSDA],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([MARA_ERSDA]),'YYYYMMDD'),' ','') end as [MARA_ERSDA],
	CASE WHEN replace([MARA_LAEDA],' ','') = '' then '00000000' WHEN replace([MARA_LAEDA],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([MARA_LAEDA]),'YYYYMMDD'),' ','') end as [MARA_LAEDA],
	CASE WHEN replace([MARA_DATUM],' ','') = '' then '00000000' WHEN replace([MARA_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([MARA_DATUM]),'YYYYMMDD'),' ','') end as [MARA_DATUM]
	from
	[dbo].[MD_Part]
	WHERE [MARA_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
