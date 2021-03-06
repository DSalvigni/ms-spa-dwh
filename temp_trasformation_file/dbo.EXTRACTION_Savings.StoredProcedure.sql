USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_Savings]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Daniele SanGy>
-- Create date: <December, 2017>
-- Description:	<1.1 to 2.0 SAP data conversion>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_Savings]
AS
BEGIN
	SET NOCOUNT ON;
select
	'SAV_SYSID',
	'SAV_MANDT',
	'SAV_BUKRS',
	'SAV_WERKS',
	'SAV_PFUID',
	'SAV_CREA_DATE',
	'SAV_CREA_TIME',
	'SAV_PFU_CREATOR',
	'SAV_UPDA_DATE',
	'SAV_UPDA_TIME',
	'SAV_PFU_MODIFIER',
	'SAV_STATUS',
	'SAV_TITLE',
	'SAV_BGID',
	'SAV_BGNAME',
	'SAV_BUSINESS_ADMIN',
	'SAV_SC1',
	'SAV_SC2',
	'SAV_SC3',
	'SAV_SC1_DESC',
	'SAV_SC2_DESC',
	'SAV_SC3_DESC',
	'SAV_COMM_CODE',
	'SAV_SUPPLIER_ID',
	'SAV_SUPPLIER_NAME',
	'SAV_PROJECT_ID',
	'SAV_PROJECT_NAME',
	'SAV_CLASS',
	'SAV_BU',
	'SAV_LOB',
	'SAV_YEAR',
	'SAV_BUDGET_PLANNED',
	'SAV_TARGET_PLANNED',
	'SAV_FINAL_CONTRACT',
	'SAV_SAVINGS_SECURED',
	'SAV_NRC',
	'SAV_NET_SAVINGS_SEC',
	'SAV_NET_SAVINGS_ACT',
	'SAV_COST_TO_MARKET',
	'SAV_PROFIT_IMPACT',
	'SAV_PROJECT_MANAGER',
	'SAV_SUB_PROJECT_ID',
	'SAV_SUB_PROJECT_NAME',
	'SAV_REFERENCE',
	'SAV_SEARCH_ITEM',
	'SAV_POID',
	'SAV_EXTRACT_DATE'
union all
select
	CASE WHEN replace([SAV_SYSID],' ','') = '' then NULL ELSE replace([SAV_SYSID],' ','') end as [SAV_SYSID],
	CASE WHEN replace([SAV_MANDT],' ','') = '' then NULL ELSE replace([SAV_MANDT],' ','') end as [SAV_MANDT],
	CASE WHEN replace([SAV_BUKRS],' ','') = '' then NULL ELSE replace([SAV_BUKRS],' ','') end as [SAV_BUKRS],
	CASE WHEN replace([SAV_WERKS],' ','') = '' then NULL ELSE replace([SAV_WERKS],' ','') end as [SAV_WERKS],
	CASE WHEN replace([SAV_PFUID],' ','') = '' then NULL ELSE replace([SAV_PFUID],' ','') end as [SAV_PFUID],
	CASE WHEN replace([SAV_CREA_DATE],' ','') = '' then '00000000' WHEN replace([SAV_CREA_DATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([SAV_CREA_DATE]),'YYYYMMDD'),' ','') end as [SAV_CREA_DATE],
	CASE WHEN replace([SAV_CREA_TIME],' ','') = '' then '000000' WHEN replace([SAV_CREA_TIME],' ','') is null then '000000' ELSE replace([SAV_CREA_TIME],' ','') end as [SAV_CREA_TIME],
	CASE WHEN replace([SAV_PFU_CREATOR],' ','') = '' then NULL ELSE replace([SAV_PFU_CREATOR],' ','') end as [SAV_PFU_CREATOR],	
	CASE WHEN replace([SAV_UPDA_DATE],' ','') = '' then '00000000' WHEN replace([SAV_UPDA_DATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([SAV_UPDA_DATE]),'YYYYMMDD'),' ','') end as [SAV_UPDA_DATE],
	CASE WHEN replace([SAV_UPDA_TIME],' ','') = '' then '000000' WHEN replace([SAV_UPDA_TIME],' ','') is null then '000000' ELSE replace([SAV_UPDA_TIME],' ','') end as [SAV_UPDA_TIME],
	CASE WHEN replace([SAV_PFU_MODIFIER],' ','') = '' then NULL ELSE replace([SAV_PFU_MODIFIER],' ','') end as [SAV_PFU_MODIFIER],
	CASE WHEN replace([SAV_STATUS],' ','') = '' then NULL ELSE replace([SAV_STATUS],' ','') end as [SAV_STATUS],
	CASE WHEN replace([SAV_TITLE],' ','') = '' then NULL ELSE replace([SAV_TITLE],' ','') end as [SAV_TITLE],
	CASE WHEN replace([SAV_BGID],' ','') = '' then NULL ELSE replace([SAV_BGID],' ','') end as [SAV_BGID],
	CASE WHEN replace([SAV_BGNAME],' ','') = '' then NULL ELSE replace([SAV_BGNAME],' ','') end as [SAV_BGNAME],
	CASE WHEN replace([SAV_BUSINESS_ADMIN],' ','') = '' then NULL ELSE replace([SAV_BUSINESS_ADMIN],' ','') end as [SAV_BUSINESS_ADMIN],
	CASE WHEN replace([SAV_SC1],' ','') = '' then NULL ELSE replace([SAV_SC1],' ','') end as [SAV_SC1],
	CASE WHEN replace([SAV_SC2],' ','') = '' then NULL ELSE replace([SAV_SC2],' ','') end as [SAV_SC2],
	CASE WHEN replace([SAV_SC3],' ','') = '' then NULL ELSE replace([SAV_SC3],' ','') end as [SAV_SC3],
	CASE WHEN replace([SAV_SC1_DESC],' ','') = '' then NULL ELSE replace([SAV_SC1_DESC],' ','') end as [SAV_SC1_DESC],
	CASE WHEN replace([SAV_SC2_DESC],' ','') = '' then NULL ELSE replace([SAV_SC2_DESC],' ','') end as [SAV_SC2_DESC],
	CASE WHEN replace([SAV_SC3_DESC],' ','') = '' then NULL ELSE replace([SAV_SC3_DESC],' ','') end as [SAV_SC3_DESC],
	CASE WHEN replace([SAV_COMM_CODE],' ','') = '' then NULL ELSE replace([SAV_COMM_CODE],' ','') end as [SAV_COMM_CODE],
	CASE WHEN replace([SAV_SUPPLIER_ID],' ','') = '' then NULL ELSE replace([SAV_SUPPLIER_ID],' ','') end as [SAV_SUPPLIER_ID],
	CASE WHEN replace([SAV_SUPPLIER_NAME],' ','') = '' then NULL ELSE replace([SAV_SUPPLIER_NAME],' ','') end as [SAV_SUPPLIER_NAME],
	CASE WHEN replace([SAV_PROJECT_ID],' ','') = '' then NULL ELSE replace([SAV_PROJECT_ID],' ','') end as [SAV_PROJECT_ID],
	CASE WHEN replace([SAV_PROJECT_NAME],' ','') = '' then NULL ELSE replace([SAV_PROJECT_NAME],' ','') end as [SAV_PROJECT_NAME],
	CASE WHEN replace([SAV_CLASS],' ','') = '' then NULL ELSE replace([SAV_CLASS],' ','') end as [SAV_CLASS],
	CASE WHEN replace([SAV_BU],' ','') = '' then NULL ELSE replace([SAV_BU],' ','') end as [SAV_BU],
	CASE WHEN replace([SAV_LOB],' ','') = '' then NULL ELSE replace([SAV_LOB],' ','') end as [SAV_LOB],
	CASE WHEN replace([SAV_YEAR],' ','') = '' then NULL ELSE replace([SAV_YEAR],' ','') end as [SAV_YEAR],
	CASE WHEN replace([SAV_BUDGET_PLANNED],' ','') = '' then '0.00' WHEN replace([SAV_BUDGET_PLANNED],' ','') IS NULL THEN '0.00' ELSE replace([SAV_BUDGET_PLANNED],' ','') end as [SAV_BUDGET_PLANNED],
	CASE WHEN replace([SAV_TARGET_PLANNED],' ','') = '' then '0.00' WHEN replace([SAV_TARGET_PLANNED],' ','') IS NULL THEN '0.00' ELSE replace([SAV_TARGET_PLANNED],' ','') end as [SAV_TARGET_PLANNED],
	CASE WHEN replace([SAV_FINAL_CONTRACT],' ','') = '' then '0.00' WHEN replace([SAV_FINAL_CONTRACT],' ','') IS NULL THEN '0.00' ELSE replace([SAV_FINAL_CONTRACT],' ','') end as [SAV_FINAL_CONTRACT],
	CASE WHEN replace([SAV_SAVINGS_SECURED],' ','') = '' then '0.00' WHEN replace([SAV_SAVINGS_SECURED],' ','') IS NULL THEN '0.00' ELSE replace([SAV_SAVINGS_SECURED],' ','') end as [SAV_SAVINGS_SECURED],
	CASE WHEN replace([SAV_NRC],' ','') = '' then '0.00' WHEN replace([SAV_NRC],' ','') IS NULL THEN '0.00' ELSE replace([SAV_NRC],' ','') end as [SAV_NRC],
	CASE WHEN replace([SAV_NET_SAVINGS_SEC],' ','') = '' then '0.00' WHEN replace([SAV_NET_SAVINGS_SEC],' ','') IS NULL THEN '0.00' ELSE replace([SAV_NET_SAVINGS_SEC],' ','') end as [SAV_NET_SAVINGS_SEC],
	CASE WHEN replace([SAV_NET_SAVINGS_ACT],' ','') = '' then '0.00' WHEN replace([SAV_NET_SAVINGS_ACT],' ','') IS NULL THEN '0.00' ELSE replace([SAV_NET_SAVINGS_ACT],' ','') end as [SAV_NET_SAVINGS_ACT],
	CASE WHEN replace([SAV_COST_TO_MARKET],' ','') = '' then '0.00' WHEN replace([SAV_COST_TO_MARKET],' ','') IS NULL THEN '0.00' ELSE replace([SAV_COST_TO_MARKET],' ','') end as [SAV_COST_TO_MARKET],
	CASE WHEN replace([SAV_PROFIT_IMPACT],' ','') = '' then '0.00' WHEN replace([SAV_PROFIT_IMPACT],' ','') IS NULL THEN '0.00' ELSE replace([SAV_PROFIT_IMPACT],' ','') end as [SAV_PROFIT_IMPACT],
	CASE WHEN replace([SAV_PROJECT_MANAGER],' ','') = '' then NULL ELSE replace([SAV_PROJECT_MANAGER],' ','') end as [SAV_PROJECT_MANAGER],
	CASE WHEN replace([SAV_SUB_PROJECT_ID],' ','') = '' then NULL ELSE replace([SAV_SUB_PROJECT_ID],' ','') end as [SAV_SUB_PROJECT_ID],
	CASE WHEN replace([SAV_SUB_PROJECT_NAME],' ','') = '' then NULL ELSE replace([SAV_SUB_PROJECT_NAME],' ','') end as [SAV_SUB_PROJECT_NAME],
	CASE WHEN replace([SAV_REFERENCE],' ','') = '' then NULL ELSE replace([SAV_REFERENCE],' ','') end as [SAV_REFERENCE],
	CASE WHEN replace([SAV_SEARCH_ITEM],' ','') = '' then NULL ELSE replace([SAV_SEARCH_ITEM],' ','') end as [SAV_SEARCH_ITEM],
	CASE WHEN replace([SAV_POID],' ','') = '' then NULL ELSE replace([SAV_POID],' ','') end as [SAV_POID],
	CASE WHEN replace([SAV_EXTRACT_DATE],' ','') = '' then '00000000' WHEN replace([SAV_EXTRACT_DATE],' ','') is null then '00000000' ELSE replace([dbo].fnFormatDate(([SAV_EXTRACT_DATE]),'YYYYMMDD'),' ','') end as [SAV_EXTRACT_DATE]
	from
	[dbo].[Savings]
	WHERE [SAV_SYSID] not in ('LM3','IE3') 
	AND	[SSMA_LAST_TS]> DATEADD(day,-3,TRY_CONVERT(datetime2,GETDATE()))
END

GO
