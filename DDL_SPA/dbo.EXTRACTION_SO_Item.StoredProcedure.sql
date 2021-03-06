USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_SO_Item]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_SO_Item]
AS
BEGIN
	SET NOCOUNT ON;
select
'VBAP_SYSID',
'VBAP_MANDT',
'VBAP_VBELN',
'VBAP_POSNR',
'VBAP_MATKL',
'VBAP_PSTYV',
'VBAP_POSAR',
'VBAP_ABGRU',
'VBAP_KLMENG',
'VBAP_MEINS',
'VBAP_NETWR',
'VBAP_WAERK',
'VBAP_WERKS',
'VBAP_AWAHR',
'VBAP_ERDAT',
'VBAP_ERNAM',
'VBAP_AEDAT',
'VBAP_PRCTR',
'VBAP_PS_PSP_PNR',
'VBAP_DATUM'
union all
select	
	CASE WHEN replace([VBAP_SYSID],' ','') = '' then NULL ELSE replace([VBAP_SYSID],' ','') end as [VBAP_SYSID],
	CASE WHEN replace([VBAP_MANDT],' ','') = '' then NULL ELSE replace([VBAP_MANDT],' ','') end as [VBAP_MANDT],
	CASE WHEN replace([VBAP_VBELN],' ','') = '' then NULL ELSE replace([VBAP_VBELN],' ','') end as [VBAP_VBELN],
	CASE WHEN replace([VBAP_POSNR],' ','') = '' then NULL ELSE replace([VBAP_POSNR],' ','') end as [VBAP_POSNR],
	CASE WHEN replace([VBAP_MATKL],' ','') = '' then NULL ELSE replace([VBAP_MATKL],' ','') end as [VBAP_MATKL],
	CASE WHEN replace([VBAP_PSTYV],' ','') = '' then NULL ELSE replace([VBAP_PSTYV],' ','') end as [VBAP_PSTYV],
	CASE WHEN replace([VBAP_POSAR],' ','') = '' then NULL ELSE replace([VBAP_POSAR],' ','') end as [VBAP_POSAR],
	CASE WHEN replace([VBAP_ABGRU],' ','') = '' then NULL ELSE replace([VBAP_ABGRU],' ','') end as [VBAP_ABGRU],
	CASE WHEN replace([VBAP_KLMENG],' ','') = '' then '0.000' WHEN replace([VBAP_KLMENG],' ','') IS NULL THEN '0.000' ELSE replace([VBAP_KLMENG],' ','') end as [VBAP_KLMENG],
	CASE WHEN replace([VBAP_MEINS],' ','') = '' then NULL ELSE replace([VBAP_MEINS],' ','') end as [VBAP_MEINS],
	CASE WHEN replace([VBAP_NETWR],' ','') = '' then '0.00' WHEN replace([VBAP_NETWR],' ','') IS NULL THEN '0.00' ELSE replace([VBAP_NETWR],' ','') end as [VBAP_NETWR],
	CASE WHEN replace([VBAP_WAERK],' ','') = '' then NULL ELSE replace([VBAP_WAERK],' ','') end as [VBAP_WAERK],
	CASE WHEN replace([VBAP_WERKS],' ','') = '' then NULL ELSE replace([VBAP_WERKS],' ','') end as [VBAP_WERKS],
	CASE WHEN replace([VBAP_AWAHR],' ','') = '' then NULL ELSE replace([VBAP_AWAHR],' ','') end as [VBAP_AWAHR],
	CASE WHEN replace([VBAP_ERDAT],' ','') = '' then '00000000' WHEN replace([VBAP_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAP_ERDAT]),'YYYYMMDD'),' ','') end as [VBAP_ERDAT],
	CASE WHEN replace([VBAP_ERNAM],' ','') = '' then NULL ELSE replace([VBAP_ERNAM],' ','') end as [VBAP_ERNAM],
	CASE WHEN replace([VBAP_AEDAT],' ','') = '' then '00000000' WHEN replace([VBAP_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAP_AEDAT]),'YYYYMMDD'),' ','') end as [VBAP_AEDAT],
	CASE WHEN replace([VBAP_PRCTR],' ','') = '' then NULL ELSE replace([VBAP_PRCTR],' ','') end as [VBAP_PRCTR],
	CASE WHEN replace([VBAP_PS_PSP_PNR],' ','') = '' then NULL ELSE replace([VBAP_PS_PSP_PNR],' ','') end as [VBAP_PS_PSP_PNR],
	CASE WHEN replace([VBAP_DATUM],' ','') = '' then '00000000' WHEN replace([VBAP_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAP_DATUM]),'YYYYMMDD'),' ','') end as [VBAP_DATUM]
	from
	[dbo].[SO_Item]
	WHERE [VBAP_SYSID] not in ('LM3','IE3') 
	AND
	[SSMA_TimeStamp]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
