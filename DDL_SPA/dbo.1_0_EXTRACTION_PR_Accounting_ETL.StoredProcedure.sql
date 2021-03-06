USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_EXTRACTION_PR_Accounting_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Daniele SanGy>
-- Create date: <December, 2017>
-- Description:	<1.1 to 2.0 SAP data conversion>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_EXTRACTION_PR_Accounting_ETL]
AS
BEGIN
	SET NOCOUNT ON;
select
'EBKN_SYSID',
'EBKN_MANDT',
'EBKN_BANFN',
'EBKN_BNFPO',
'EBKN_ZEBKN',
'EBKN_LOEKZ',
'EBKN_ERDAT',
'EBKN_ERNAM',
'EBKN_MENGE',
'EBKN_VPROZ',
'EBKN_SAKTO',
'EBKN_KOSTL',
'EBKN_VBELN',
'EBKN_VBELP',
'EBKN_VETEN',
'EBKN_ANLN1',
'EBKN_ANLN2',
'EBKN_AUFNR',
'EBKN_WEMPF',
'EBKN_ABLAD',
'EBKN_KOKRS',
'EBKN_KSTRG',
'EBKN_PRCTR',
'EBKN_PS_PSP_PNR',
'EBKN_NPLNR',
'EBKN_AUFPL',
'EBKN_APLZL',
'EBKN_DABRZ',
'EBKN_NETWR',
'EBKN_UDATE',
'EBKN_DATUM'
union all
select
	CASE WHEN replace([EBKN_SYSID],' ','') = '' then NULL ELSE replace([EBKN_SYSID],' ','') end as [EBKN_SYSID],
	CASE WHEN replace([EBKN_MANDT],' ','') = '' then NULL ELSE replace([EBKN_MANDT],' ','') end as [EBKN_MANDT],
	CASE WHEN replace([EBKN_BANFN],' ','') = '' then NULL ELSE replace([EBKN_BANFN],' ','') end as [EBKN_BANFN],
	CASE WHEN replace([EBKN_BNFPO],' ','') = '' then NULL ELSE replace([EBKN_BNFPO],' ','') end as [EBKN_BNFPO],
	CASE WHEN replace([EBKN_ZEBKN],' ','') = '' then NULL ELSE replace([EBKN_ZEBKN],' ','') end as [EBKN_ZEBKN],
	CASE WHEN replace([EBKN_LOEKZ],' ','') = '' then NULL ELSE replace([EBKN_LOEKZ],' ','') end as [EBKN_LOEKZ],
	CASE WHEN replace([EBKN_ERDAT],' ','') = '' then '00000000' WHEN replace([EBKN_ERDAT],' ','') is null then '00000000' ELSE replace([EBKN_ERDAT],' ','') end as [EBKN_ERDAT],
	CASE WHEN replace([EBKN_ERNAM],' ','') = '' then NULL ELSE replace([EBKN_ERNAM],' ','') end as [EBKN_ERNAM],
	CASE WHEN replace([EBKN_MENGE],' ','') = '' then '0.00' WHEN replace([EBKN_MENGE],' ','') IS NULL THEN '0.00' ELSE replace([EBKN_MENGE],' ','') end as [EBKN_MENGE],
	CASE WHEN replace([EBKN_VPROZ],' ','') = '' then '0.0' WHEN replace([EBKN_VPROZ],' ','') IS NULL THEN '0.0' ELSE replace([EBKN_VPROZ],' ','') end as [EBKN_VPROZ],
	CASE WHEN replace([EBKN_SAKTO],' ','') = '' then NULL ELSE replace([EBKN_SAKTO],' ','') end as [EBKN_SAKTO],
	CASE WHEN replace([EBKN_KOSTL],' ','') = '' then NULL ELSE replace([EBKN_KOSTL],' ','') end as [EBKN_KOSTL],
	CASE WHEN replace([EBKN_VBELN],' ','') = '' then NULL ELSE replace([EBKN_VBELN],' ','') end as [EBKN_VBELN],
	CASE WHEN replace([EBKN_VBELP],' ','') = '' then NULL ELSE replace([EBKN_VBELP],' ','') end as [EBKN_VBELP],
	CASE WHEN replace([EBKN_VETEN],' ','') = '' then NULL ELSE replace([EBKN_VETEN],' ','') end as [EBKN_VETEN],
	CASE WHEN replace([EBKN_ANLN1],' ','') = '' then NULL ELSE replace([EBKN_ANLN1],' ','') end as [EBKN_ANLN1],
	CASE WHEN replace([EBKN_ANLN2],' ','') = '' then NULL ELSE replace([EBKN_ANLN2],' ','') end as [EBKN_ANLN2],
	CASE WHEN replace([EBKN_AUFNR],' ','') = '' then NULL ELSE replace([EBKN_AUFNR],' ','') end as [EBKN_AUFNR],
	CASE WHEN replace([EBKN_WEMPF],' ','') = '' then NULL ELSE replace([EBKN_WEMPF],' ','') end as [EBKN_WEMPF],
	CASE WHEN replace([EBKN_ABLAD],' ','') = '' then NULL ELSE replace([EBKN_ABLAD],' ','') end as [EBKN_ABLAD],
	CASE WHEN replace([EBKN_KOKRS],' ','') = '' then NULL ELSE replace([EBKN_KOKRS],' ','') end as [EBKN_KOKRS],
	CASE WHEN replace([EBKN_KSTRG],' ','') = '' then NULL ELSE replace([EBKN_KSTRG],' ','') end as [EBKN_KSTRG],
	CASE WHEN replace([EBKN_PRCTR],' ','') = '' then NULL ELSE replace([EBKN_PRCTR],' ','') end as [EBKN_PRCTR],
	CASE WHEN replace([EBKN_PS_PSP_PNR],' ','') = '' then NULL ELSE replace([EBKN_PS_PSP_PNR],' ','') end as [EBKN_PS_PSP_PNR],
	CASE WHEN replace([EBKN_NPLNR],' ','') = '' then NULL ELSE replace([EBKN_NPLNR],' ','') end as [EBKN_NPLNR],
	CASE WHEN replace([EBKN_AUFPL],' ','') = '' then NULL ELSE replace([EBKN_AUFPL],' ','') end as [EBKN_AUFPL],
	CASE WHEN replace([EBKN_APLZL],' ','') = '' then NULL ELSE replace([EBKN_APLZL],' ','') end as [EBKN_APLZL],
	CASE WHEN replace([EBKN_DABRZ],' ','') = '' then '00000000' WHEN replace([EBKN_DABRZ],' ','') is null then '00000000' ELSE replace([EBKN_DABRZ],' ','') end as [EBKN_DABRZ],
	CASE WHEN replace([EBKN_NETWR],' ','') = '' then NULL ELSE replace([EBKN_NETWR],' ','') end as [EBKN_NETWR],
	CASE WHEN replace([EBKN_UDATE],' ','') = '' then '00000000' WHEN replace([EBKN_UDATE],' ','') is null then '00000000' ELSE replace([EBKN_UDATE],' ','') end as [EBKN_UDATE],
	CASE WHEN replace([EBKN_DATUM],' ','') = '' then '00000000' WHEN replace([EBKN_DATUM],' ','') is null then '00000000' ELSE replace([EBKN_DATUM],' ','') end as [EBKN_DATUM]
	from
	[dbo].[1_0_PR_Accounting_ETL]
	WHERE [EBKN_SYSID] not in ('LM3','IE3') 
END

GO
