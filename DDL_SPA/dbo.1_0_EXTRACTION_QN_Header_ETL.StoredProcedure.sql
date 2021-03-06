USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_EXTRACTION_QN_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Sangy Sangy>
-- Create date: <Jan, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_EXTRACTION_QN_Header_ETL]
AS
BEGIN
	SET NOCOUNT ON;
select
'QMEL_SYSID',
'QMEL_MANDT',
'QMEL_QMNUM',
'QMEL_QMART',
'QMEL_QMTXT',
'QMEL_ERNAM',
'QMEL_ERDAT',
'QMEL_AENAM',
'QMEL_AEDAT',
'QMEL_QMDAT',
'QMEL_QMNAM',
'QMEL_AUFNR',
'QMEL_VBELN',
'QMEL_MAWERK',
'QMEL_PRUEFLOS',
'QMEL_CHARG',
'QMEL_EMATNR',
'QMEL_EBELN',
'QMEL_EBELP',
'QMEL_MJAHR',
'QMEL_MBLNR',
'QMEL_MBLPO',
'QMEL_LS_KDAUF',
'QMEL_LS_KDPOS',
'QMEL_LS_VBELN',
'QMEL_LS_POSNR',
'QMEL_MGEIG',
'QMEL_MGFRD',
'QMEL_BZMNG',
'QMEL_RKMNG',
'QMEL_RGMNG',
'QMEL_RKDAT',
'QMEL_KDMAT',
'QMEL_IDNLF',
'QMEL_SERIALNR',
'QMEL_KZLOESCH',
'QMEL_ZZ_QFART',
'QMEL_ZZ_DELIVERY',
'QMEL_EKORG',
'QMEL_DATUM'
union all
	select	
	CASE WHEN replace([QMEL_SYSID],' ','') = '' then NULL ELSE replace([QMEL_SYSID],' ','') end as [QMEL_SYSID],
	CASE WHEN replace([QMEL_MANDT],' ','') = '' then NULL ELSE replace([QMEL_MANDT],' ','') end as [QMEL_MANDT],
	CASE WHEN replace([QMEL_QMNUM],' ','') = '' then NULL ELSE replace([QMEL_QMNUM],' ','') end as [QMEL_QMNUM],
	CASE WHEN replace([QMEL_QMART],' ','') = '' then NULL ELSE replace([QMEL_QMART],' ','') end as [QMEL_QMART],
	CASE WHEN replace([QMEL_QMTXT],' ','') = '' then NULL ELSE replace([QMEL_QMTXT],' ','') end as [QMEL_QMTXT],
	CASE WHEN replace([QMEL_ERNAM],' ','') = '' then NULL ELSE replace([QMEL_ERNAM],' ','') end as [QMEL_ERNAM],
	CASE WHEN replace([QMEL_ERDAT],' ','') = '' then '00000000' WHEN replace([QMEL_ERDAT],' ','') is null then '00000000' ELSE replace([QMEL_ERDAT],' ','') end as [QMEL_ERDAT],
	CASE WHEN replace([QMEL_AENAM],' ','') = '' then NULL ELSE replace([QMEL_AENAM],' ','') end as [QMEL_AENAM],
	CASE WHEN replace([QMEL_AEDAT],' ','') = '' then '00000000' WHEN replace([QMEL_AEDAT],' ','') is null then '00000000' ELSE replace([QMEL_AEDAT],' ','') end as [QMEL_AEDAT],
	CASE WHEN replace([QMEL_QMDAT],' ','') = '' then '00000000' WHEN replace([QMEL_QMDAT],' ','') is null then '00000000' ELSE replace([QMEL_QMDAT],' ','') end as [QMEL_QMDAT],
	CASE WHEN replace([QMEL_QMNAM],' ','') = '' then NULL ELSE replace([QMEL_QMNAM],' ','') end as [QMEL_QMNAM],
	CASE WHEN replace([QMEL_AUFNR],' ','') = '' then NULL ELSE replace([QMEL_AUFNR],' ','') end as [QMEL_AUFNR],
	CASE WHEN replace([QMEL_VBELN],' ','') = '' then NULL ELSE replace([QMEL_VBELN],' ','') end as [QMEL_VBELN],
	CASE WHEN replace([QMEL_MAWERK],' ','') = '' then NULL ELSE replace([QMEL_MAWERK],' ','') end as [QMEL_MAWERK],
	CASE WHEN replace([QMEL_PRUEFLOS],' ','') = '' then NULL ELSE replace([QMEL_PRUEFLOS],' ','') end as [QMEL_PRUEFLOS],
	CASE WHEN replace([QMEL_CHARG],' ','') = '' then NULL ELSE replace([QMEL_CHARG],' ','') end as [QMEL_CHARG],
	CASE WHEN replace([QMEL_EMATNR],' ','') = '' then NULL ELSE replace([QMEL_EMATNR],' ','') end as [QMEL_EMATNR],
	CASE WHEN replace([QMEL_EBELN],' ','') = '' then NULL ELSE replace([QMEL_EBELN],' ','') end as [QMEL_EBELN],
	CASE WHEN replace([QMEL_EBELP],' ','') = '' then NULL ELSE replace([QMEL_EBELP],' ','') end as [QMEL_EBELP],
	CASE WHEN replace([QMEL_MJAHR],' ','') = '' then NULL ELSE replace([QMEL_MJAHR],' ','') end as [QMEL_MJAHR],
	CASE WHEN replace([QMEL_MBLNR],' ','') = '' then NULL ELSE replace([QMEL_MBLNR],' ','') end as [QMEL_MBLNR],
	CASE WHEN replace([QMEL_MBLPO],' ','') = '' then NULL ELSE replace([QMEL_MBLPO],' ','') end as [QMEL_MBLPO],
	CASE WHEN replace([QMEL_LS_KDAUF],' ','') = '' then NULL ELSE replace([QMEL_LS_KDAUF],' ','') end as [QMEL_LS_KDAUF],
	CASE WHEN replace([QMEL_LS_KDPOS],' ','') = '' then NULL ELSE replace([QMEL_LS_KDPOS],' ','') end as [QMEL_LS_KDPOS],
	CASE WHEN replace([QMEL_LS_VBELN],' ','') = '' then NULL ELSE replace([QMEL_LS_VBELN],' ','') end as [QMEL_LS_VBELN],
	CASE WHEN replace([QMEL_LS_POSNR],' ','') = '' then NULL ELSE replace([QMEL_LS_POSNR],' ','') end as [QMEL_LS_POSNR],
	CASE WHEN replace([QMEL_MGEIG],' ','') = '' then '0.000' WHEN replace([QMEL_MGEIG],' ','') IS NULL THEN '0.000' ELSE replace([QMEL_MGEIG],' ','') end as [QMEL_MGEIG],
	CASE WHEN replace([QMEL_MGFRD],' ','') = '' then '0.000' WHEN replace([QMEL_MGFRD],' ','') IS NULL THEN '0.000' ELSE replace([QMEL_MGFRD],' ','') end as [QMEL_MGFRD],
	CASE WHEN replace([QMEL_BZMNG],' ','') = '' then '0.000' WHEN replace([QMEL_BZMNG],' ','') IS NULL THEN '0.000' ELSE replace([QMEL_BZMNG],' ','') end as [QMEL_BZMNG],
	CASE WHEN replace([QMEL_RKMNG],' ','') = '' then '0.000' WHEN replace([QMEL_RKMNG],' ','') IS NULL THEN '0.000' ELSE replace([QMEL_RKMNG],' ','') end as [QMEL_RKMNG],
	CASE WHEN replace([QMEL_RGMNG],' ','') = '' then '0.000' WHEN replace([QMEL_RGMNG],' ','') IS NULL THEN '0.000' ELSE replace([QMEL_RGMNG],' ','') end as [QMEL_RGMNG],
	CASE WHEN replace([QMEL_RKDAT],' ','') = '' then '00000000' WHEN replace([QMEL_RKDAT],' ','') is null then '00000000' ELSE replace([QMEL_RKDAT],' ','') end as [QMEL_RKDAT],
	CASE WHEN replace([QMEL_KDMAT],' ','') = '' then NULL ELSE replace([QMEL_KDMAT],' ','') end as [QMEL_KDMAT],
	CASE WHEN replace([QMEL_IDNLF],' ','') = '' then NULL ELSE replace([QMEL_IDNLF],' ','') end as [QMEL_IDNLF],
	CASE WHEN replace([QMEL_SERIALNR],' ','') = '' then NULL ELSE replace([QMEL_SERIALNR],' ','') end as [QMEL_SERIALNR],
	CASE WHEN replace([QMEL_KZLOESCH],' ','') = '' then NULL ELSE replace([QMEL_KZLOESCH],' ','') end as [QMEL_KZLOESCH],
	CASE WHEN replace([QMEL_ZZ_QFART],' ','') = '' then NULL ELSE replace([QMEL_ZZ_QFART],' ','') end as [QMEL_ZZ_QFART],
	CASE WHEN replace([QMEL_ZZ_DELIVERY],' ','') = '' then NULL ELSE replace([QMEL_ZZ_DELIVERY],' ','') end as [QMEL_ZZ_DELIVERY],
	CASE WHEN replace([QMEL_EKORG],' ','') = '' then NULL ELSE replace([QMEL_EKORG],' ','') end as [QMEL_EKORG],
	CASE WHEN replace([QMEL_DATUM],' ','') = '' then '00000000' WHEN replace([QMEL_DATUM],' ','') is null then '00000000' ELSE replace([QMEL_DATUM],' ','') end as [QMEL_DATUM]
	from
	[dbo].[QN_Header_ETL]
	WHERE [QMEL_SYSID] not in ('LM3','IE3') 
END

GO
