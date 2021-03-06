USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_MD_Data_per_SYS_CLN]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[Delete_All_MD_Data_per_SYS_CLN]
AS
BEGIN

DELETE FROM [dbo].[MD_Account] 
WHERE 
[SKA1_SYSID] in ('SP1') 
AND 
([SKA1_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_Commodity]
WHERE 
[T023T_SYSID] in ('SP1')
AND
([T023T_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_CostCenter]
WHERE 
[CSKS_SYSID] in ('SP1')
AND
([CSKS_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_CurrencyMap]
WHERE 
[TCURC_SYSID] in ('SP1')
AND 
([TCURC_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_Network]
WHERE 
[AUFK_SYSID] in ('SP1')
AND 
([AUFK_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_Part]
WHERE 
[MARA_SYSID] in ('SP1')
AND 
([MARA_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_PaymentTerm]
WHERE 
[T052_SYSID] in ('SP1')
AND 
( [T052_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_Plant]
WHERE 
[T001W_SYSID] in ('SP1')
AND 
([T001W_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_ProfitCenter]
WHERE 
[CEPC_SYSID] in ('SP1')
AND 
([CEPC_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_Project]
WHERE 
[PROJ_SYSID] in ('SP1')
AND 
([PROJ_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_PurchasingGroup]
WHERE 
[T024_SYSID] in ('SP1')
AND 
([T024_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_Supplier_LFA1]
WHERE 
[LFA1_SYSID] in ('SP1')
AND 
([LFA1_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_Supplier_LFB1]
WHERE 
[LFB1_SYSID] in ('SP1')
AND 
([LFB1_MANDT] in ('500','530')) 

DELETE FROM [dbo].[MD_Supplier_LFM1]
WHERE 
[LFM1_SYSID] in ('SP1')
AND 
([LFM1_MANDT] in ('500','530')) 
DELETE FROM [dbo].[MD_UOM]
WHERE 
[T006_SYSID] in ('SP1')
AND 
([T006_MANDT] in ('500','530')) 
DELETE FROM [dbo].[MD_User]
WHERE 
[USR03_SYSID] in ('SP1')
AND 
([USR03_MANDT] in ('500','530')) 
END
GO
