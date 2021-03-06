USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_EXTRACTION_CO_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Sangy Sangy>
-- Create date: <Jan, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_EXTRACTION_CO_Header_ETL]
AS
BEGIN
	SET NOCOUNT ON;
select
'EKKOK_SYSID',
'EKKOK_MANDT',
'EKKOK_BUKRS',
'EKKOK_EBELN',
'EKKOK_LOEKZ',
'EKKOK_AEDAT',
'EKKOK_BEDAT',
'EKKOK_WAERS',
'EKKOK_WKURS',
'EKKOK_KUFIX',
'EKKOK_CWAERS',
'EKKOK_LONGTEXT',
'EKKOK_LIFNR',
'EKKOK_BSTYP',
'EKKOK_BSART',
'EKKOK_INCO1',
'EKKOK_INCO2',
'EKKOK_ZTERM',
'EKKOK_EKORG',
'EKKOK_EKGRP',
'EKKOK_IHREZ',
'EKKOK_UNSEZ',
'EKKOK_KDATB',
'EKKOK_KDATE',
'EKKOK_KONNR',
'EKKOK_ANGNR',
'EKKOK_IHRAN',
'EKKOK_SUBMI',
'EKKOK_STCEG',
'EKKOK_EKGSM',
'EKKOK_UEBDT',
'EKKOK_ERNAM',
'EKKOK_AEUSERNAME',
'EKKOK_UDATE',
'EKKOK_DATUM'
union all
select	
	CASE WHEN replace([EKKOK_SYSID],' ','') = '' then NULL ELSE replace([EKKOK_SYSID],' ','') end as [EKKOK_SYSID],
	CASE WHEN replace([EKKOK_MANDT],' ','') = '' then NULL ELSE replace([EKKOK_MANDT],' ','') end as [EKKOK_MANDT],
	CASE WHEN replace([EKKOK_BUKRS],' ','') = '' then NULL ELSE replace([EKKOK_BUKRS],' ','') end as [EKKOK_BUKRS],
	CASE WHEN replace([EKKOK_EBELN],' ','') = '' then NULL ELSE replace([EKKOK_EBELN],' ','') end as [EKKOK_EBELN],
	CASE WHEN replace([EKKOK_LOEKZ],' ','') = '' then NULL ELSE replace([EKKOK_LOEKZ],' ','') end as [EKKOK_LOEKZ],
	CASE WHEN replace([EKKOK_AEDAT],' ','') = '' then '00000000' WHEN replace([EKKOK_AEDAT],' ','') is null then '00000000' ELSE replace([EKKOK_AEDAT],' ','') end as [EKKOK_AEDAT],
	CASE WHEN replace([EKKOK_BEDAT],' ','') = '' then '00000000' WHEN replace([EKKOK_BEDAT],' ','') is null then '00000000' ELSE replace([EKKOK_BEDAT],' ','') end as [EKKOK_BEDAT],
	CASE WHEN replace([EKKOK_WAERS],' ','') = '' then NULL ELSE replace([EKKOK_WAERS],' ','') end as [EKKOK_WAERS],
	CASE WHEN replace([EKKOK_WKURS],' ','') = '' then '0.00000' WHEN replace([EKKOK_WKURS],' ','') IS NULL THEN '0.00000' ELSE replace([EKKOK_WKURS],' ','') end as [EKKOK_WKURS],
	CASE WHEN replace([EKKOK_KUFIX],' ','') = '' then NULL ELSE replace([EKKOK_KUFIX],' ','') end as [EKKOK_KUFIX],
	CASE WHEN replace([EKKOK_CWAERS],' ','') = '' then NULL ELSE replace([EKKOK_CWAERS],' ','') end as [EKKOK_CWAERS],
	[EKKOK_LONGTEXT],
	CASE WHEN replace([EKKOK_LIFNR],' ','') = '' then NULL ELSE replace([EKKOK_LIFNR],' ','') end as [EKKOK_LIFNR],
	CASE WHEN replace([EKKOK_BSTYP],' ','') = '' then NULL ELSE replace([EKKOK_BSTYP],' ','') end as [EKKOK_BSTYP],
	CASE WHEN replace([EKKOK_BSART],' ','') = '' then NULL ELSE replace([EKKOK_BSART],' ','') end as [EKKOK_BSART],
	CASE WHEN replace([EKKOK_INCO1],' ','') = '' then NULL ELSE replace([EKKOK_INCO1],' ','') end as [EKKOK_INCO1],
	CASE WHEN replace([EKKOK_INCO2],' ','') = '' then NULL ELSE replace([EKKOK_INCO2],' ','') end as [EKKOK_INCO2],
	CASE WHEN replace([EKKOK_ZTERM],' ','') = '' then NULL ELSE replace([EKKOK_ZTERM],' ','') end as [EKKOK_ZTERM],
	CASE WHEN replace([EKKOK_EKORG],' ','') = '' then NULL ELSE replace([EKKOK_EKORG],' ','') end as [EKKOK_EKORG],
	CASE WHEN replace([EKKOK_EKGRP],' ','') = '' then NULL ELSE replace([EKKOK_EKGRP],' ','') end as [EKKOK_EKGRP],
	CASE WHEN replace([EKKOK_IHREZ],' ','') = '' then NULL ELSE replace([EKKOK_IHREZ],' ','') end as [EKKOK_IHREZ],
	CASE WHEN replace([EKKOK_UNSEZ],' ','') = '' then NULL ELSE replace([EKKOK_UNSEZ],' ','') end as [EKKOK_UNSEZ],
	CASE WHEN replace([EKKOK_KDATB],' ','') = '' then '00000000' WHEN replace([EKKOK_KDATB],' ','') is null then '00000000' ELSE replace([EKKOK_KDATB],' ','') end as [EKKOK_KDATB],
	CASE WHEN replace([EKKOK_KDATE],' ','') = '' then '00000000' WHEN replace([EKKOK_KDATE],' ','') is null then '00000000' ELSE replace([EKKOK_KDATE],' ','') end as [EKKOK_KDATE],
	CASE WHEN replace([EKKOK_KONNR],' ','') = '' then NULL ELSE replace([EKKOK_KONNR],' ','') end as [EKKOK_KONNR],
	CASE WHEN replace([EKKOK_ANGNR],' ','') = '' then NULL ELSE replace([EKKOK_ANGNR],' ','') end as [EKKOK_ANGNR],
	CASE WHEN replace([EKKOK_IHRAN],' ','') = '' then '00000000' WHEN replace([EKKOK_IHRAN],' ','') is null then '00000000' ELSE replace([EKKOK_IHRAN],' ','') end as [EKKOK_IHRAN],
	CASE WHEN replace([EKKOK_SUBMI],' ','') = '' then NULL ELSE replace([EKKOK_SUBMI],' ','') end as [EKKOK_SUBMI],
	CASE WHEN replace([EKKOK_STCEG],' ','') = '' then NULL ELSE replace([EKKOK_STCEG],' ','') end as [EKKOK_STCEG],
	CASE WHEN replace([EKKOK_EKGSM],' ','') = '' then NULL ELSE replace([EKKOK_EKGSM],' ','') end as [EKKOK_EKGSM],
	CASE WHEN replace([EKKOK_UEBDT],' ','') = '' then '00000000' WHEN replace([EKKOK_UEBDT],' ','') is null then '00000000' ELSE replace([EKKOK_UEBDT],' ','') end as [EKKOK_UEBDT],
	CASE WHEN replace([EKKOK_ERNAM],' ','') = '' then NULL ELSE replace([EKKOK_ERNAM],' ','') end as [EKKOK_ERNAM],
	CASE WHEN replace([EKKOK_AEUSERNAME],' ','') = '' then NULL ELSE replace([EKKOK_AEUSERNAME],' ','') end as [EKKOK_AEUSERNAME],
	CASE WHEN replace([EKKOK_UDATE],' ','') = '' then '00000000' WHEN replace([EKKOK_UDATE],' ','') is null then '00000000' ELSE replace([EKKOK_UDATE],' ','') end as [EKKOK_UDATE],
	CASE WHEN replace([EKKOK_DATUM],' ','') = '' then '00000000' WHEN replace([EKKOK_DATUM],' ','') is null then '00000000' ELSE replace([EKKOK_DATUM],' ','') end as [EKKOK_DATUM]
	from
	[dbo].[1_0_CO_Header_ETL]
	WHERE [EKKOK_SYSID] not in ('LM3','IE3') 
END

GO
