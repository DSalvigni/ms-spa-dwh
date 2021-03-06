USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_CFT_Header]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_CFT_Header]
AS
BEGIN
	SET NOCOUNT ON;
select
'EKKOA_SYSID',
'EKKOA_MANDT',
'EKKOA_BUKRS',
'EKKOA_EBELN',
'EKKOA_LOEKZ',
'EKKOA_AEDAT',
'EKKOA_BEDAT',
'EKKOA_WAERS',
'EKKOA_WKURS',
'EKKOA_KUFIX',
'EKKOA_CWAERS',
'EKKOA_LONGTEXT',
'EKKOA_LIFNR',
'EKKOA_BSTYP',
'EKKOA_BSART',
'EKKOA_INCO1',
'EKKOA_INCO2',
'EKKOA_ZTERM',
'EKKOA_EKORG',
'EKKOA_EKGRP',
'EKKOA_IHREZ',
'EKKOA_UNSEZ',
'EKKOA_KDATB',
'EKKOA_KDATE',
'EKKOA_KONNR',
'EKKOA_ANGNR',
'EKKOA_IHRAN',
'EKKOA_SUBMI',
'EKKOA_STCEG',
'EKKOA_EKGSM',
'EKKOA_UEBDT',
'EKKOA_ERNAM',
'EKKOA_AEUSERNAME',
'EKKOA_UDATE',
'EKKOA_DATUM'
union all
select	
	CASE WHEN replace([EKKOA_SYSID],' ','') = '' then NULL ELSE replace([EKKOA_SYSID],' ','') end as [EKKOA_SYSID],
	CASE WHEN replace([EKKOA_MANDT],' ','') = '' then NULL ELSE replace([EKKOA_MANDT],' ','') end as [EKKOA_MANDT],
	CASE WHEN replace([EKKOA_BUKRS],' ','') = '' then NULL ELSE replace([EKKOA_BUKRS],' ','') end as [EKKOA_BUKRS],
	CASE WHEN replace([EKKOA_EBELN],' ','') = '' then NULL ELSE replace([EKKOA_EBELN],' ','') end as [EKKOA_EBELN],
	CASE WHEN replace([EKKOA_LOEKZ],' ','') = '' then NULL ELSE replace([EKKOA_LOEKZ],' ','') end as [EKKOA_LOEKZ],
	CASE WHEN replace([EKKOA_AEDAT],' ','') = '' then '00000000' WHEN replace([EKKOA_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKOA_AEDAT]),'YYYYMMDD'),' ','') end as [EKKOA_AEDAT],
	CASE WHEN replace([EKKOA_BEDAT],' ','') = '' then '00000000' WHEN replace([EKKOA_BEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKOA_BEDAT]),'YYYYMMDD'),' ','') end as [EKKOA_BEDAT],
	CASE WHEN replace([EKKOA_WAERS],' ','') = '' then NULL ELSE replace([EKKOA_WAERS],' ','') end as [EKKOA_WAERS],
	CASE WHEN replace([EKKOA_WKURS],' ','') = '' then '0.00000' WHEN replace([EKKOA_WKURS],' ','') IS NULL THEN '0.00000' ELSE replace([EKKOA_WKURS],' ','') end as [EKKOA_WKURS],
	CASE WHEN replace([EKKOA_KUFIX],' ','') = '' then NULL ELSE replace([EKKOA_KUFIX],' ','') end as [EKKOA_KUFIX],
	CASE WHEN replace([EKKOA_CWAERS],' ','') = '' then NULL ELSE replace([EKKOA_CWAERS],' ','') end as [EKKOA_CWAERS],
	CASE WHEN replace([EKKOA_CWAERS],' ','') = '' then NULL ELSE replace([EKKOA_CWAERS],' ','') end as [EKKOA_LONGTEXT],
	CASE WHEN replace([EKKOA_LIFNR],' ','') = '' then NULL ELSE replace([EKKOA_LIFNR],' ','') end as [EKKOA_LIFNR],
	CASE WHEN replace([EKKOA_BSTYP],' ','') = '' then NULL ELSE replace([EKKOA_BSTYP],' ','') end as [EKKOA_BSTYP],
	CASE WHEN replace([EKKOA_BSART],' ','') = '' then NULL ELSE replace([EKKOA_BSART],' ','') end as [EKKOA_BSART],
	CASE WHEN replace([EKKOA_INCO1],' ','') = '' then NULL ELSE replace([EKKOA_INCO1],' ','') end as [EKKOA_INCO1],
	CASE WHEN replace([EKKOA_INCO2],' ','') = '' then NULL ELSE replace([EKKOA_INCO2],' ','') end as [EKKOA_INCO2],
	CASE WHEN replace([EKKOA_ZTERM],' ','') = '' then NULL ELSE replace([EKKOA_ZTERM],' ','') end as [EKKOA_ZTERM],
	CASE WHEN replace([EKKOA_EKORG],' ','') = '' then NULL ELSE replace([EKKOA_EKORG],' ','') end as [EKKOA_EKORG],
	CASE WHEN replace([EKKOA_EKGRP],' ','') = '' then NULL ELSE replace([EKKOA_EKGRP],' ','') end as [EKKOA_EKGRP],
	CASE WHEN replace([EKKOA_IHREZ],' ','') = '' then NULL ELSE replace([EKKOA_IHREZ],' ','') end as [EKKOA_IHREZ],
	CASE WHEN replace([EKKOA_UNSEZ],' ','') = '' then NULL ELSE replace([EKKOA_UNSEZ],' ','') end as [EKKOA_UNSEZ],
	CASE WHEN replace([EKKOA_KDATB],' ','') = '' then '00000000' WHEN replace([EKKOA_KDATB],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKOA_KDATB]),'YYYYMMDD'),' ','') end as [EKKOA_KDATB],
	CASE WHEN replace([EKKOA_KDATE],' ','') = '' then '00000000' WHEN replace([EKKOA_KDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKOA_KDATE]),'YYYYMMDD'),' ','') end as [EKKOA_KDATE],
	CASE WHEN replace([EKKOA_KONNR],' ','') = '' then NULL ELSE replace([EKKOA_KONNR],' ','') end as [EKKOA_KONNR],
	CASE WHEN replace([EKKOA_ANGNR],' ','') = '' then NULL ELSE replace([EKKOA_ANGNR],' ','') end as [EKKOA_ANGNR],
	CASE WHEN replace([EKKOA_IHRAN],' ','') = '' then '00000000' WHEN replace([EKKOA_IHRAN],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKOA_IHRAN]),'YYYYMMDD'),' ','') end as [EKKOA_IHRAN],
	CASE WHEN replace([EKKOA_SUBMI],' ','') = '' then NULL ELSE replace([EKKOA_SUBMI],' ','') end as [EKKOA_SUBMI],
	CASE WHEN replace([EKKOA_STCEG],' ','') = '' then NULL ELSE replace([EKKOA_STCEG],' ','') end as [EKKOA_STCEG],
	CASE WHEN replace([EKKOA_EKGSM],' ','') = '' then NULL ELSE replace([EKKOA_EKGSM],' ','') end as [EKKOA_EKGSM],
	CASE WHEN replace([EKKOA_UEBDT],' ','') = '' then '00000000' WHEN replace([EKKOA_UEBDT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKOA_UEBDT]),'YYYYMMDD'),' ','') end as [EKKOA_UEBDT],
	CASE WHEN replace([EKKOA_ERNAM],' ','') = '' then NULL ELSE replace([EKKOA_ERNAM],' ','') end as [EKKOA_ERNAM],
	CASE WHEN replace([EKKOA_AEUSERNAME],' ','') = '' then NULL ELSE replace([EKKOA_AEUSERNAME],' ','') end as [EKKOA_AEUSERNAME],
	CASE WHEN replace([EKKOA_UDATE],' ','') = '' then '00000000' WHEN replace([EKKOA_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKOA_UDATE]),'YYYYMMDD'),' ','') end as [EKKOA_UDATE],
	CASE WHEN replace([EKKOA_DATUM],' ','') = '' then '00000000' WHEN replace([EKKOA_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EKKOA_DATUM]),'YYYYMMDD'),' ','') end as [EKKOA_DATUM]
	from
	[dbo].[CFT_Header]
	WHERE [EKKOA_SYSID] not in ('LM3','IE3') 
	AND 
	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
