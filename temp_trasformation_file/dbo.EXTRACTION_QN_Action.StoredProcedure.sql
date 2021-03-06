USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_QN_Action]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_QN_Action]
AS
BEGIN
	SET NOCOUNT ON;
select
'QMMA_SYSID',
'QMMA_MANDT',
'QMMA_QMNUM',
'QMMA_FENUM',
'QMMA_AEDAT',
'QMMA_AENAM',
'QMMA_AEZEIT',
'QMMA_AUTKZ',
'QMMA_ERDAT',
'QMMA_ERNAM',
'QMMA_ERZEIT',
'QMMA_FUNKTION',
'QMMA_INDTX',
'QMMA_KLAKZ',
'QMMA_KZACTIONBOX',
'QMMA_KZLOESCH',
'QMMA_KZMLA',
'QMMA_MAKLS',
'QMMA_MANUM',
'QMMA_MATXT',
'QMMA_MNCOD',
'QMMA_MNGFA',
'QMMA_MNGRP',
'QMMA_MNKAT',
'QMMA_MNVER',
'QMMA_PETER',
'QMMA_PETUR',
'QMMA_PSTER',
'QMMA_PSTUR',
'QMMA_QMANUM',
'QMMA_URNUM',
'QMMA_DATUM'
union all
	select	
	CASE WHEN replace([QMMA_SYSID],' ','') = '' then NULL ELSE replace([QMMA_SYSID],' ','') end as [QMMA_SYSID],
	CASE WHEN replace([QMMA_MANDT],' ','') = '' then NULL ELSE replace([QMMA_MANDT],' ','') end as [QMMA_MANDT],
	CASE WHEN replace([QMMA_QMNUM],' ','') = '' then NULL ELSE replace([QMMA_QMNUM],' ','') end as [QMMA_QMNUM],
	CASE WHEN replace([QMMA_FENUM],' ','') = '' then NULL ELSE replace([QMMA_FENUM],' ','') end as [QMMA_FENUM],
	CASE WHEN replace([QMMA_AEDAT],' ','') = '' then '00000000' WHEN replace([QMMA_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMMA_AEDAT]),'YYYYMMDD'),' ','') end as [QMMA_AEDAT],
	CASE WHEN replace([QMMA_AENAM],' ','') = '' then NULL ELSE replace([QMMA_AENAM],' ','') end as [QMMA_AENAM],
	CASE WHEN replace([QMMA_AEZEIT],' ','') = '' then '00000000' WHEN replace([QMMA_AEZEIT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMMA_AEZEIT]),'YYYYMMDD'),' ','') end as [QMMA_AEZEIT],
	CASE WHEN replace([QMMA_AUTKZ],' ','') = '' then NULL ELSE replace([QMMA_AUTKZ],' ','') end as [QMMA_AUTKZ],
	CASE WHEN replace([QMMA_ERDAT],' ','') = '' then '00000000' WHEN replace([QMMA_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMMA_ERDAT]),'YYYYMMDD'),' ','') end as [QMMA_ERDAT],
	CASE WHEN replace([QMMA_ERNAM],' ','') = '' then NULL ELSE replace([QMMA_ERNAM],' ','') end as [QMMA_ERNAM],
	CASE WHEN replace([QMMA_ERZEIT],' ','') = '' then '00000000' WHEN replace([QMMA_ERZEIT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMMA_ERZEIT]),'YYYYMMDD'),' ','') end as [QMMA_ERZEIT],
	CASE WHEN replace([QMMA_FUNKTION],' ','') = '' then NULL ELSE replace([QMMA_FUNKTION],' ','') end as [QMMA_FUNKTION],
	CASE WHEN replace([QMMA_INDTX],' ','') = '' then NULL ELSE replace([QMMA_INDTX],' ','') end as [QMMA_INDTX],
	CASE WHEN replace([QMMA_KLAKZ],' ','') = '' then NULL ELSE replace([QMMA_KLAKZ],' ','') end as [QMMA_KLAKZ],
	CASE WHEN replace([QMMA_KZACTIONBOX],' ','') = '' then NULL ELSE replace([QMMA_KZACTIONBOX],' ','') end as [QMMA_KZACTIONBOX],
	CASE WHEN replace([QMMA_KZLOESCH],' ','') = '' then NULL ELSE replace([QMMA_KZLOESCH],' ','') end as [QMMA_KZLOESCH],
	CASE WHEN replace([QMMA_KZMLA],' ','') = '' then NULL ELSE replace([QMMA_KZMLA],' ','') end as [QMMA_KZMLA],
	CASE WHEN replace([QMMA_MAKLS],' ','') = '' then NULL ELSE replace([QMMA_MAKLS],' ','') end as [QMMA_MAKLS],
	CASE WHEN replace([QMMA_MANUM],' ','') = '' then NULL ELSE replace([QMMA_MANUM],' ','') end as [QMMA_MANUM],
	CASE WHEN replace([QMMA_MATXT],' ','') = '' then NULL ELSE replace([QMMA_MATXT],' ','') end as [QMMA_MATXT],
	CASE WHEN replace([QMMA_MNCOD],' ','') = '' then NULL ELSE replace([QMMA_MNCOD],' ','') end as [QMMA_MNCOD],
	CASE WHEN replace([QMMA_MNGFA],' ','') = '' then NULL ELSE replace([QMMA_MNGFA],' ','') end as [QMMA_MNGFA],
	CASE WHEN replace([QMMA_MNGRP],' ','') = '' then NULL ELSE replace([QMMA_MNGRP],' ','') end as [QMMA_MNGRP],
	CASE WHEN replace([QMMA_MNKAT],' ','') = '' then NULL ELSE replace([QMMA_MNKAT],' ','') end as [QMMA_MNKAT],
	CASE WHEN replace([QMMA_MNVER],' ','') = '' then NULL ELSE replace([QMMA_MNVER],' ','') end as [QMMA_MNVER],
	CASE WHEN replace([QMMA_PETER],' ','') = '' then '00000000' WHEN replace([QMMA_PETER],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMMA_PETER]),'YYYYMMDD'),' ','') end as [QMMA_PETER],
	CASE WHEN replace([QMMA_PETUR],' ','') = '' then '00000000' WHEN replace([QMMA_PETUR],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMMA_PETUR]),'YYYYMMDD'),' ','') end as [QMMA_PETUR],
	CASE WHEN replace([QMMA_PSTER],' ','') = '' then '00000000' WHEN replace([QMMA_PSTER],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMMA_PSTER]),'YYYYMMDD'),' ','') end as [QMMA_PSTER],
	CASE WHEN replace([QMMA_PSTUR],' ','') = '' then '00000000' WHEN replace([QMMA_PSTUR],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMMA_PSTUR]),'YYYYMMDD'),' ','') end as [QMMA_PSTUR],
	CASE WHEN replace([QMMA_QMANUM],' ','') = '' then NULL ELSE replace([QMMA_QMANUM],' ','') end as [QMMA_QMANUM],
	CASE WHEN replace([QMMA_URNUM],' ','') = '' then NULL ELSE replace([QMMA_URNUM],' ','') end as [QMMA_URNUM],
	CASE WHEN replace([QMMA_DATUM],' ','') = '' then '00000000' WHEN replace([QMMA_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([QMMA_DATUM]),'YYYYMMDD'),' ','') end as [QMMA_DATUM]
	from
	[dbo].[QN_Action]
	WHERE [QMMA_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
