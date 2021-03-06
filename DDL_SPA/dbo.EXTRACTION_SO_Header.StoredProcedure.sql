USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_SO_Header]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Galli GO>
-- Create date: <Feb, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_SO_Header]
AS
BEGIN
	SET NOCOUNT ON;
select
'VBAK_SYSID',
'VBAK_MANDT',
'VBAK_VBELN',
'VBAK_ERDAT',
'VBAK_ERNAM',
'VBAK_AUDAT',
'VBAK_VBTYP',
'VBAK_TRVOG',
'VBAK_AUART',
'VBAK_AUGRU',
'VBAK_NETWR',
'VBAK_WAERK',
'VBAK_VKBUR',
'VBAK_VDATU',
'VBAK_AWAHR',
'VBAK_BSTDK',
'VBAK_KUNNR',
'VBAK_AEDAT',
'VBAK_PS_PSP_PNR',
'VBAK_VMBDAT',
'VBAK_DATUM'
union all
select	
	CASE WHEN replace([VBAK_SYSID],' ','') = '' then NULL ELSE replace([VBAK_SYSID],' ','') end as [VBAK_SYSID],
	CASE WHEN replace([VBAK_MANDT],' ','') = '' then NULL ELSE replace([VBAK_MANDT],' ','') end as [VBAK_MANDT],
	CASE WHEN replace([VBAK_VBELN],' ','') = '' then NULL ELSE replace([VBAK_VBELN],' ','') end as [VBAK_VBELN],
	CASE WHEN replace([VBAK_ERDAT],' ','') = '' then '00000000' WHEN replace([VBAK_ERDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAK_ERDAT]),'YYYYMMDD'),' ','') end as [VBAK_ERDAT],
	CASE WHEN replace([VBAK_ERNAM],' ','') = '' then NULL ELSE replace([VBAK_ERNAM],' ','') end as [VBAK_ERNAM],
	CASE WHEN replace([VBAK_AUDAT],' ','') = '' then '00000000' WHEN replace([VBAK_AUDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAK_AUDAT]),'YYYYMMDD'),' ','') end as [VBAK_AUDAT],
	CASE WHEN replace([VBAK_VBTYP],' ','') = '' then NULL ELSE replace([VBAK_VBTYP],' ','') end as [VBAK_VBTYP],
	CASE WHEN replace([VBAK_TRVOG],' ','') = '' then NULL ELSE replace([VBAK_TRVOG],' ','') end as [VBAK_TRVOG],
	CASE WHEN replace([VBAK_AUART],' ','') = '' then NULL ELSE replace([VBAK_AUART],' ','') end as [VBAK_AUART],
	CASE WHEN replace([VBAK_AUGRU],' ','') = '' then NULL ELSE replace([VBAK_AUGRU],' ','') end as [VBAK_AUGRU],
	CASE WHEN replace([VBAK_NETWR],' ','') = '' then '0.00' WHEN replace([VBAK_NETWR],' ','') IS NULL THEN '0.00' ELSE replace([VBAK_NETWR],' ','') end as [VBAK_NETWR],
	CASE WHEN replace([VBAK_WAERK],' ','') = '' then NULL ELSE replace([VBAK_WAERK],' ','') end as [VBAK_WAERK],
	CASE WHEN replace([VBAK_VKBUR],' ','') = '' then NULL ELSE replace([VBAK_VKBUR],' ','') end as [VBAK_VKBUR],
	CASE WHEN replace([VBAK_VDATU],' ','') = '' then '00000000' WHEN replace([VBAK_VDATU],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAK_VDATU]),'YYYYMMDD'),' ','') end as [VBAK_VDATU],
	CASE WHEN replace([VBAK_AWAHR],' ','') = '' then NULL ELSE replace([VBAK_AWAHR],' ','') end as [VBAK_AWAHR],
	CASE WHEN replace([VBAK_BSTDK],' ','') = '' then '00000000' WHEN replace([VBAK_BSTDK],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAK_BSTDK]),'YYYYMMDD'),' ','') end as [VBAK_BSTDK],
	CASE WHEN replace([VBAK_KUNNR],' ','') = '' then NULL ELSE replace([VBAK_KUNNR],' ','') end as [VBAK_KUNNR],
	CASE WHEN replace([VBAK_AEDAT],' ','') = '' then '00000000' WHEN replace([VBAK_AEDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAK_AEDAT]),'YYYYMMDD'),' ','') end as [VBAK_AEDAT],
	CASE WHEN replace([VBAK_PS_PSP_PNR],' ','') = '' then NULL ELSE replace([VBAK_PS_PSP_PNR],' ','') end as [VBAK_PS_PSP_PNR],
	CASE WHEN replace([VBAK_VMBDAT],' ','') = '' then '00000000' WHEN replace([VBAK_VMBDAT],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAK_VMBDAT]),'YYYYMMDD'),' ','') end as [VBAK_VMBDAT],
	CASE WHEN replace([VBAK_DATUM],' ','') = '' then '00000000' WHEN replace([VBAK_DATUM],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([VBAK_DATUM]),'YYYYMMDD'),' ','') end as [VBAK_DATUM]
	from
	[dbo].[SO_Header]
	WHERE [VBAK_SYSID] not in ('LM3','IE3') 
	AND
	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
