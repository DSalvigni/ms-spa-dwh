USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_PO_InfRecPOOrg]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_PO_InfRecPOOrg]
AS
BEGIN
	SET NOCOUNT ON;
select
'EINE_SYSID',
'EINE_MANDT',
'EINE_INFNR',
'EINE_EKORG',
'EINE_ESOKZ',
'EINE_WERKS',
'EINE_ERDAT',
'EINE_ERNAM',
'EINE_EKGRP',
'EINE_WAERS',
'EINE_BONUS',
'EINE_MGBON',
'EINE_MINBM',
'EINE_NORBM',
'EINE_BSTMA',
'EINE_APLFZ',
'EINE_EBELN',
'EINE_EBELP',
'EINE_DATLB',
'EINE_ANGNR',
'EINE_ANGDT',
'EINE_ANFNR',
'EINE_ANFPS',
'EINE_ABSKZ',
'EINE_UNTTO',
'EINE_UEBTK',
'EINE_UEBTO',
'EINE_BSTYP',
'EINE_BWTAR',
'EINE_LOEKZ',
'EINE_MHDRZ',
'EINE_NETPR',
'EINE_PEINH',
'EINE_BPRME',
'EINE_PRDAT',
'EINE_KZABS',
'EINE_BPUMZ',
'EINE_BPUMN',
'EINE_INCO1',
'EINE_INCO2',
'EINE_ERUSERNAME',
'EINE_AEUSERNAME',
'EINE_UDATE',
'EINE_DATUM'
union all
select	
	CASE WHEN replace([EINE_SYSID],' ','') = '' then NULL ELSE replace([EINE_SYSID],' ','') end as [EINE_SYSID],
	CASE WHEN replace([EINE_MANDT],' ','') = '' then NULL ELSE replace([EINE_MANDT],' ','') end as [EINE_MANDT],
	CASE WHEN replace([EINE_INFNR],' ','') = '' then NULL ELSE replace([EINE_INFNR],' ','') end as [EINE_INFNR],
	CASE WHEN replace([EINE_EKORG],' ','') = '' then NULL ELSE replace([EINE_EKORG],' ','') end as [EINE_EKORG],
	CASE WHEN replace([EINE_ESOKZ],' ','') = '' then NULL ELSE replace([EINE_ESOKZ],' ','') end as [EINE_ESOKZ],
	CASE WHEN replace([EINE_WERKS],' ','') = '' then NULL ELSE replace([EINE_WERKS],' ','') end as [EINE_WERKS],
	CASE WHEN replace([EINE_ERDAT],' ','') = '' then '00000000' WHEN replace([EINE_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINE_ERDAT]),'YYYYMMDD'),' ','') end as [EINE_ERDAT],
	CASE WHEN replace([EINE_ERNAM],' ','') = '' then NULL ELSE replace([EINE_ERNAM],' ','') end as [EINE_ERNAM],
	CASE WHEN replace([EINE_EKGRP],' ','') = '' then NULL ELSE replace([EINE_EKGRP],' ','') end as [EINE_EKGRP],
	CASE WHEN replace([EINE_WAERS],' ','') = '' then NULL ELSE replace([EINE_WAERS],' ','') end as [EINE_WAERS],
	CASE WHEN replace([EINE_BONUS],' ','') = '' then NULL ELSE replace([EINE_BONUS],' ','') end as [EINE_BONUS],
	CASE WHEN replace([EINE_MGBON],' ','') = '' then NULL ELSE replace([EINE_MGBON],' ','') end as [EINE_MGBON],
	CASE WHEN replace([EINE_MINBM],' ','') = '' then '0.000' WHEN replace([EINE_MINBM],' ','') IS NULL THEN '0.000' ELSE replace([EINE_MINBM],' ','') end as [EINE_MINBM],
	CASE WHEN replace([EINE_NORBM],' ','') = '' then '0.000' WHEN replace([EINE_NORBM],' ','') IS NULL THEN '0.000' ELSE replace([EINE_NORBM],' ','') end as [EINE_NORBM],
	CASE WHEN replace([EINE_BSTMA],' ','') = '' then '0.000' WHEN replace([EINE_BSTMA],' ','') IS NULL THEN '0.000' ELSE replace([EINE_BSTMA],' ','') end as [EINE_BSTMA],
	CASE WHEN replace([EINE_APLFZ],' ','') = '' then '0' WHEN replace([EINE_APLFZ],' ','') IS NULL THEN '0' ELSE replace([EINE_APLFZ],' ','') end as [EINE_APLFZ],
	CASE WHEN replace([EINE_EBELN],' ','') = '' then NULL ELSE replace([EINE_EBELN],' ','') end as [EINE_EBELN],
	CASE WHEN replace([EINE_EBELP],' ','') = '' then NULL ELSE replace([EINE_EBELP],' ','') end as [EINE_EBELP],
	CASE WHEN replace([EINE_DATLB],' ','') = '' then '00000000' WHEN replace([EINE_DATLB],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINE_DATLB]),'YYYYMMDD'),' ','') end as [EINE_DATLB],
	CASE WHEN replace([EINE_ANGNR],' ','') = '' then NULL ELSE replace([EINE_ANGNR],' ','') end as [EINE_ANGNR],
	CASE WHEN replace([EINE_ANGDT],' ','') = '' then '00000000' WHEN replace([EINE_ANGDT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINE_ANGDT]),'YYYYMMDD'),' ','') end as [EINE_ANGDT],
	CASE WHEN replace([EINE_ANFNR],' ','') = '' then NULL ELSE replace([EINE_ANFNR],' ','') end as [EINE_ANFNR],
	CASE WHEN replace([EINE_ANFPS],' ','') = '' then NULL ELSE replace([EINE_ANFPS],' ','') end as [EINE_ANFPS],
	CASE WHEN replace([EINE_ABSKZ],' ','') = '' then NULL ELSE replace([EINE_ABSKZ],' ','') end as [EINE_ABSKZ],
	CASE WHEN replace([EINE_UNTTO],' ','') = '' then '0.0' WHEN replace([EINE_UNTTO],' ','') IS NULL THEN '0.0' ELSE replace([EINE_UNTTO],' ','') end as [EINE_UNTTO],
	CASE WHEN replace([EINE_UEBTK],' ','') = '' then NULL ELSE replace([EINE_UEBTK],' ','') end as [EINE_UEBTK],
	CASE WHEN replace([EINE_UEBTO],' ','') = '' then '0.0' WHEN replace([EINE_UEBTO],' ','') IS NULL THEN '0.0' ELSE replace([EINE_UEBTO],' ','') end as [EINE_UEBTO],
	CASE WHEN replace([EINE_BSTYP],' ','') = '' then NULL ELSE replace([EINE_BSTYP],' ','') end as [EINE_BSTYP],
	CASE WHEN replace([EINE_BWTAR],' ','') = '' then NULL ELSE replace([EINE_BWTAR],' ','') end as [EINE_BWTAR],
	CASE WHEN replace([EINE_LOEKZ],' ','') = '' then NULL ELSE replace([EINE_LOEKZ],' ','') end as [EINE_LOEKZ],
	CASE WHEN replace([EINE_MHDRZ],' ','') = '' then '0.000' WHEN replace([EINE_MHDRZ],' ','') IS NULL THEN '0.000' ELSE replace([EINE_MHDRZ],' ','') end as [EINE_MHDRZ],
	CASE WHEN replace([EINE_NETPR],' ','') = '' then '0.00' WHEN replace([EINE_NETPR],' ','') IS NULL THEN '0.00' ELSE replace([EINE_NETPR],' ','') end as [EINE_NETPR],
	CASE WHEN replace([EINE_PEINH],' ','') = '' then '0' WHEN replace([EINE_PEINH],' ','') IS NULL THEN '0' ELSE replace([EINE_PEINH],' ','') end as [EINE_PEINH],
	CASE WHEN replace([EINE_BPRME],' ','') = '' then NULL ELSE replace([EINE_BPRME],' ','') end as [EINE_BPRME],
	CASE WHEN replace([EINE_PRDAT],' ','') = '' then '00000000' WHEN replace([EINE_PRDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINE_PRDAT]),'YYYYMMDD'),' ','') end as [EINE_PRDAT],
	CASE WHEN replace([EINE_KZABS],' ','') = '' then NULL ELSE replace([EINE_KZABS],' ','') end as [EINE_KZABS],
	CASE WHEN replace([EINE_BPUMZ],' ','') = '' then '0' WHEN replace([EINE_BPUMZ],' ','') IS NULL THEN '0' ELSE replace([EINE_BPUMZ],' ','') end as [EINE_BPUMZ],
	CASE WHEN replace([EINE_BPUMN],' ','') = '' then '0' WHEN replace([EINE_BPUMN],' ','') IS NULL THEN '0' ELSE replace([EINE_BPUMN],' ','') end as [EINE_BPUMN],
	CASE WHEN replace([EINE_INCO1],' ','') = '' then NULL ELSE replace([EINE_INCO1],' ','') end as [EINE_INCO1],
	CASE WHEN replace([EINE_INCO2],' ','') = '' then NULL ELSE replace([EINE_INCO2],' ','') end as [EINE_INCO2],
	CASE WHEN replace([EINE_ERUSERNAME],' ','') = '' then NULL ELSE replace([EINE_ERUSERNAME],' ','') end as [EINE_ERUSERNAME],
	CASE WHEN replace([EINE_AEUSERNAME],' ','') = '' then NULL ELSE replace([EINE_AEUSERNAME],' ','') end as [EINE_AEUSERNAME],
	CASE WHEN replace([EINE_UDATE],' ','') = '' then '00000000' WHEN replace([EINE_UDATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINE_UDATE]),'YYYYMMDD'),' ','') end as [EINE_UDATE],
	CASE WHEN replace([EINE_DATUM],' ','') = '' then '00000000' WHEN replace([EINE_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([EINE_DATUM]),'YYYYMMDD'),' ','') end as [EINE_DATUM]
	from
	[dbo].[PO_InfRecPOOrg]
	WHERE [EINE_SYSID] not in ('LM3','IE3')
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
	 
END

GO
