USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_MD_Network]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_MD_Network]
AS
BEGIN
	SET NOCOUNT ON;
select
'AUFK_SYSID',
'AUFK_MANDT',
'AUFK_AUFNR',
'AUFK_KTEXT',
'AUFK_LTEXT',
'AUFK_AUART',
'AUFK_AUTYP',
'AUFK_BUKRS',
'AUFK_WERKS',
'AUFK_WAERS',
'AUFK_PRCTR',
'AUFK_FUNC_AREA',
'AUFK_SCOPE',
'AUFK_PSPEL',
'AUFK_KDAUF',
'AUFK_KDPOS',
'AUFK_VERS',
'AUFK_ID_1',
'AUFK_ID_2',
'AUFK_ID_3',
'AUFK_SGE',
'AUFK_PMO',
'AUFK_VALID',
'AUFK_BEA_DAT',
'AUFK_ERNAM',
'AUFK_ERDAT',
'AUFK_AENAM',
'AUFK_AEDAT',
'AUFK_DATUM'
union all
select	
	CASE WHEN replace([AUFK_SYSID],' ','') = '' then NULL ELSE replace([AUFK_SYSID],' ','') end as [AUFK_SYSID],
	CASE WHEN replace([AUFK_MANDT],' ','') = '' then NULL ELSE replace([AUFK_MANDT],' ','') end as [AUFK_MANDT],
	CASE WHEN replace([AUFK_AUFNR],' ','') = '' then NULL ELSE replace([AUFK_AUFNR],' ','') end as [AUFK_AUFNR],
	CASE WHEN replace([AUFK_KTEXT],' ','') = '' then NULL ELSE replace([AUFK_KTEXT],' ','') end as [AUFK_KTEXT],
	CASE WHEN replace([AUFK_LTEXT],' ','') = '' then NULL ELSE replace([AUFK_LTEXT],' ','') end as [AUFK_LTEXT],
	CASE WHEN replace([AUFK_AUART],' ','') = '' then NULL ELSE replace([AUFK_AUART],' ','') end as [AUFK_AUART],
	CASE WHEN replace([AUFK_AUTYP],' ','') = '' then NULL ELSE replace([AUFK_AUTYP],' ','') end as [AUFK_AUTYP],
	CASE WHEN replace([AUFK_BUKRS],' ','') = '' then NULL ELSE replace([AUFK_BUKRS],' ','') end as [AUFK_BUKRS],
	CASE WHEN replace([AUFK_WERKS],' ','') = '' then NULL ELSE replace([AUFK_WERKS],' ','') end as [AUFK_WERKS],
	CASE WHEN replace([AUFK_WAERS],' ','') = '' then NULL ELSE replace([AUFK_WAERS],' ','') end as [AUFK_WAERS],
	CASE WHEN replace([AUFK_PRCTR],' ','') = '' then NULL ELSE replace([AUFK_PRCTR],' ','') end as [AUFK_PRCTR],
	CASE WHEN replace([AUFK_FUNC_AREA],' ','') = '' then NULL ELSE replace([AUFK_FUNC_AREA],' ','') end as [AUFK_FUNC_AREA],
	CASE WHEN replace([AUFK_SCOPE],' ','') = '' then NULL ELSE replace([AUFK_SCOPE],' ','') end as [AUFK_SCOPE],
	CASE WHEN replace([AUFK_PSPEL],' ','') = '' then NULL ELSE replace([AUFK_PSPEL],' ','') end as [AUFK_PSPEL],
	CASE WHEN replace([AUFK_KDAUF],' ','') = '' then NULL ELSE replace([AUFK_KDAUF],' ','') end as [AUFK_KDAUF],
	CASE WHEN replace([AUFK_KDPOS],' ','') = '' then NULL ELSE replace([AUFK_KDPOS],' ','') end as [AUFK_KDPOS],
	CASE WHEN replace([AUFK_VERS],' ','') = '' then NULL ELSE replace([AUFK_VERS],' ','') end as [AUFK_VERS],
	CASE WHEN replace([AUFK_ID_1],' ','') = '' then NULL ELSE replace([AUFK_ID_1],' ','') end as [AUFK_ID_1],
	CASE WHEN replace([AUFK_ID_2],' ','') = '' then NULL ELSE replace([AUFK_ID_2],' ','') end as [AUFK_ID_2],
	CASE WHEN replace([AUFK_ID_3],' ','') = '' then NULL ELSE replace([AUFK_ID_3],' ','') end as [AUFK_ID_3],
	CASE WHEN replace([AUFK_SGE],' ','') = '' then NULL ELSE replace([AUFK_SGE],' ','') end as [AUFK_SGE],
	CASE WHEN replace([AUFK_PMO],' ','') = '' then NULL ELSE replace([AUFK_PMO],' ','') end as [AUFK_PMO],
	CASE WHEN replace([AUFK_VALID],' ','') = '' then NULL ELSE replace([AUFK_VALID],' ','') end as [AUFK_VALID],
	CASE WHEN replace([AUFK_BEA_DAT],' ','') = '' then '00000000' WHEN replace([AUFK_BEA_DAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AUFK_BEA_DAT]),'YYYYMMDD'),' ','') end as [AUFK_BEA_DAT],
	CASE WHEN replace([AUFK_ERNAM],' ','') = '' then NULL ELSE replace(replace([AUFK_ERNAM],' ',''),'?','') end as [AUFK_ERNAM],
	CASE WHEN replace([AUFK_ERDAT],' ','') = '' then '00000000' WHEN replace([AUFK_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AUFK_ERDAT]),'YYYYMMDD'),' ','') end as [AUFK_ERDAT],
	CASE WHEN replace([AUFK_ERNAM],' ','') = '' then NULL ELSE replace(replace([AUFK_ERNAM],' ',''),'?','') end as [AUFK_AENAM],
	CASE WHEN replace([AUFK_ERDAT],' ','') = '' then '00000000' WHEN replace([AUFK_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AUFK_ERDAT]),'YYYYMMDD'),' ','') end as [AUFK_AEDAT],
	CASE WHEN replace([AUFK_DATUM],' ','') = '' then '00000000' WHEN replace([AUFK_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([AUFK_DATUM]),'YYYYMMDD'),' ','') end as [AUFK_DATUM]
	from
	[dbo].[MD_Network]
	WHERE [AUFK_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END


GO
