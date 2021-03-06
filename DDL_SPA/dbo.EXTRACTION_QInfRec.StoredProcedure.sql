USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_QInfRec]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_QInfRec]
AS
BEGIN
	SET NOCOUNT ON;
select
'QINF_SYSID',
'QINF_MANDT',
'QINF_MATNR',
'QINF_ZAEHL',
'QINF_REVLV',
'QINF_AENDERDAT',
'QINF_AENDERER',
'QINF_BEST_MG',
'QINF_CERTCONTROL',
'QINF_DAT_RUECK',
'QINF_ERSTELLDAT',
'QINF_ERSTELLER',
'QINF_FREI_DAT',
'QINF_FREI_MGKZ',
'QINF_FREI_MNG',
'QINF_LIEFERANT',
'QINF_LOEKZ',
'QINF_LTEXTKZ',
'QINF_ME',
'QINF_NOINSP',
'QINF_NOINSPABN',
'QINF_OBJNR',
'QINF_PLOS',
'QINF_PLOS2',
'QINF_QSSYSDAT',
'QINF_QSSYSFAM',
'QINF_QVVORH',
'QINF_SPERRFKT',
'QINF_SPERRGRUND',
'QINF_SPRACHE',
'QINF_SPRAS',
'QINF_STSMA',
'QINF_VARIABNAHM',
'QINF_VORLABN',
'QINF_WERK',
'QINF_LFA1_SPERQ',
'QINF_LFA1_QSSYS',
'QINF_LFA1_QSSYSDAT',
'QINF_DATUM'
union all
	select	
	CASE WHEN replace([QINF_SYSID],' ','') = '' then NULL ELSE replace([QINF_SYSID],' ','') end as [QINF_SYSID],
	CASE WHEN replace([QINF_MANDT],' ','') = '' then NULL ELSE replace([QINF_MANDT],' ','') end as [QINF_MANDT],
	CASE WHEN replace([QINF_MATNR],' ','') = '' then NULL ELSE replace([QINF_MATNR],' ','') end as [QINF_MATNR],
	CASE WHEN replace([QINF_ZAEHL],' ','') = '' then '0' WHEN replace([QINF_ZAEHL],' ','') IS NULL THEN '0' ELSE replace([QINF_ZAEHL],' ','') end as [QINF_ZAEHL],
	CASE WHEN replace([QINF_REVLV],' ','') = '' then NULL ELSE replace([QINF_REVLV],' ','') end as [QINF_REVLV],
	CASE WHEN replace([QINF_AENDERDAT],' ','') = '' then '00000000' WHEN replace([QINF_AENDERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QINF_AENDERDAT]),'YYYYMMDD'),' ','') end as [QINF_AENDERDAT],
	CASE WHEN replace([QINF_AENDERER],' ','') = '' then NULL ELSE replace([QINF_AENDERER],' ','') end as [QINF_AENDERER],
	CASE WHEN replace([QINF_BEST_MG],' ','') = '' then '0.000' WHEN replace([QINF_BEST_MG],' ','') IS NULL THEN '0.000' ELSE replace([QINF_BEST_MG],' ','') end as [QINF_BEST_MG],
	CASE WHEN replace([QINF_CERTCONTROL],' ','') = '' then NULL ELSE replace([QINF_CERTCONTROL],' ','') end as [QINF_CERTCONTROL],
	CASE WHEN replace([QINF_DAT_RUECK],' ','') = '' then '00000000' WHEN replace([QINF_DAT_RUECK],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QINF_DAT_RUECK]),'YYYYMMDD'),' ','') end as [QINF_DAT_RUECK],
	CASE WHEN replace([QINF_ERSTELLDAT],' ','') = '' then '00000000' WHEN replace([QINF_ERSTELLDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QINF_ERSTELLDAT]),'YYYYMMDD'),' ','') end as [QINF_ERSTELLDAT],
	CASE WHEN replace([QINF_ERSTELLER],' ','') = '' then NULL ELSE replace([QINF_ERSTELLER],' ','') end as [QINF_ERSTELLER],
	CASE WHEN replace([QINF_FREI_DAT],' ','') = '' then '00000000' WHEN replace([QINF_FREI_DAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QINF_FREI_DAT]),'YYYYMMDD'),' ','') end as [QINF_FREI_DAT],
	CASE WHEN replace([QINF_FREI_MGKZ],' ','') = '' then NULL ELSE replace([QINF_FREI_MGKZ],' ','') end as [QINF_FREI_MGKZ],
	CASE WHEN replace([QINF_FREI_MNG],' ','') = '' then '0.000' WHEN replace([QINF_FREI_MNG],' ','') IS NULL THEN '0.000' ELSE replace([QINF_FREI_MNG],' ','') end as [QINF_FREI_MNG],
	CASE WHEN replace([QINF_LIEFERANT],' ','') = '' then NULL ELSE replace([QINF_LIEFERANT],' ','') end as [QINF_LIEFERANT],
	CASE WHEN replace([QINF_LOEKZ],' ','') = '' then NULL ELSE replace([QINF_LOEKZ],' ','') end as [QINF_LOEKZ],
	CASE WHEN replace([QINF_LTEXTKZ],' ','') = '' then NULL ELSE replace([QINF_LTEXTKZ],' ','') end as [QINF_LTEXTKZ],
	CASE WHEN replace([QINF_ME],' ','') = '' then NULL ELSE replace([QINF_ME],' ','') end as [QINF_ME],
	CASE WHEN replace([QINF_NOINSP],' ','') = '' then NULL ELSE replace([QINF_NOINSP],' ','') end as [QINF_NOINSP],
	CASE WHEN replace([QINF_NOINSPABN],' ','') = '' then NULL ELSE replace([QINF_NOINSPABN],' ','') end as [QINF_NOINSPABN],
	CASE WHEN replace([QINF_OBJNR],' ','') = '' then NULL ELSE replace([QINF_OBJNR],' ','') end as [QINF_OBJNR],
	CASE WHEN replace([QINF_PLOS],' ','') = '' then NULL ELSE replace([QINF_PLOS],' ','') end as [QINF_PLOS],
	CASE WHEN replace([QINF_PLOS2],' ','') = '' then NULL ELSE replace([QINF_PLOS2],' ','') end as [QINF_PLOS2],
	CASE WHEN replace([QINF_QSSYSDAT],' ','') = '' then '00000000' WHEN replace([QINF_QSSYSDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QINF_QSSYSDAT]),'YYYYMMDD'),' ','') end as [QINF_QSSYSDAT],
	CASE WHEN replace([QINF_QSSYSFAM],' ','') = '' then NULL ELSE replace([QINF_QSSYSFAM],' ','') end as [QINF_QSSYSFAM],
	CASE WHEN replace([QINF_QVVORH],' ','') = '' then NULL ELSE replace([QINF_QVVORH],' ','') end as [QINF_QVVORH],
	CASE WHEN replace([QINF_SPERRFKT],' ','') = '' then NULL ELSE replace([QINF_SPERRFKT],' ','') end as [QINF_SPERRFKT],
	CASE WHEN replace([QINF_SPERRGRUND],' ','') = '' then NULL ELSE replace([QINF_SPERRGRUND],' ','') end as [QINF_SPERRGRUND],
	CASE WHEN replace([QINF_SPRACHE],' ','') = '' then NULL ELSE replace([QINF_SPRACHE],' ','') end as [QINF_SPRACHE],
	CASE WHEN replace([QINF_SPRAS],' ','') = '' then NULL ELSE replace([QINF_SPRAS],' ','') end as [QINF_SPRAS],
	CASE WHEN replace([QINF_STSMA],' ','') = '' then NULL ELSE replace([QINF_STSMA],' ','') end as [QINF_STSMA],
	CASE WHEN replace([QINF_VARIABNAHM],' ','') = '' then NULL ELSE replace([QINF_VARIABNAHM],' ','') end as [QINF_VARIABNAHM],
	CASE WHEN replace([QINF_VORLABN],' ','') = '' then '0' WHEN replace([QINF_VORLABN],' ','') IS NULL THEN '0' ELSE replace([QINF_VORLABN],' ','') end as [QINF_VORLABN],
	CASE WHEN replace([QINF_WERK],' ','') = '' then NULL ELSE replace([QINF_WERK],' ','') end as [QINF_WERK],
	CASE WHEN replace([QINF_LFA1_SPERQ],' ','') = '' then NULL ELSE replace([QINF_LFA1_SPERQ],' ','') end as [QINF_LFA1_SPERQ],
	CASE WHEN replace([QINF_LFA1_QSSYS],' ','') = '' then NULL ELSE replace([QINF_LFA1_QSSYS],' ','') end as [QINF_LFA1_QSSYS],
	CASE WHEN replace([QINF_LFA1_QSSYSDAT],' ','') = '' then '00000000' WHEN replace([QINF_LFA1_QSSYSDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QINF_LFA1_QSSYSDAT]),'YYYYMMDD'),' ','') end as [QINF_LFA1_QSSYSDAT],
	CASE WHEN replace([QINF_DATUM],' ','') = '' then '00000000' WHEN replace([QINF_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QINF_DATUM]),'YYYYMMDD'),' ','') end as [QINF_DATUM]
	from
	[dbo].[QInfRec]
	WHERE [QINF_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
