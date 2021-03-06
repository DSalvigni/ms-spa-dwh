USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[DELETE_SYS_LEN_ERROR]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[DELETE_SYS_LEN_ERROR]
AS
BEGIN
delete 
from [dbo].[CFT_Header]
where
LEN([EKKOA_SYSID])>3
or 
LEN([EKKOA_SYSID])=0
delete 
from [dbo].[CFT_Item]
where
LEN([EKPOA_SYSID])>3
or 
LEN([EKPOA_SYSID])=0
delete 
from [dbo].[CO_Header]
where
LEN([EKKOK_SYSID])>3
or 
LEN([EKKOK_SYSID])=0
delete 
from [dbo].[CO_Item]
where
LEN([EKPOK_SYSID])>3
or 
LEN([EKPOK_SYSID])=0
delete from
[dbo].[GM_Header]
where
LEN([MKPF_SYSID]) > 3
or 
LEN([MKPF_SYSID])=0
delete from
[dbo].[GM_Item]
where
LEN([MSEG_SYSID]) > 3
or 
LEN([MSEG_SYSID])=0
delete from
[dbo].[INV_Header]
where
LEN([BKPF_SYSID]) > 3
or 
LEN([BKPF_SYSID])=0
delete from
[dbo].[INV_Item]
where
LEN([BSEG_SYSID]) > 3
or 
LEN([BSEG_SYSID])=0
delete from
[dbo].[MD_Account]
where
LEN([SKA1_SYSID]) > 3
or 
LEN([SKA1_SYSID])=0
delete from
[dbo].[MD_Commodity]
where
LEN([T023T_SYSID]) > 3
or 
LEN([T023T_SYSID])=0
delete from
[dbo].[MD_CostCenter]
where
LEN([CSKS_SYSID]) > 3
or 
LEN([CSKS_SYSID])=0

delete from
[dbo].[MD_Currency]
where
LEN([TCURC_SYSID]) > 3
or 
LEN([TCURC_SYSID])=0
delete from
[dbo].[MD_Network]
where
LEN([AUFK_SYSID]) > 3
or 
LEN([AUFK_SYSID])=0
delete from
[dbo].[MD_Part]
where
LEN([MARA_SYSID]) > 3
or 
LEN([MARA_SYSID])=0
delete from
[dbo].[MD_PaymentTerm]
where
LEN([T052_SYSID]) > 3
or 
LEN([T052_SYSID])=0
delete from
[dbo].[MD_Plant]
where
LEN([T001W_SYSID]) > 3
or 
LEN([T001W_SYSID])=0

delete from
[dbo].[MD_ProfitCenter]
where
LEN([CEPC_SYSID]) > 3
or 
LEN([CEPC_SYSID])=0

delete from
[dbo].[MD_Project]
where
LEN([PROJ_SYSID]) > 3
or 
LEN([PROJ_SYSID])=0
delete from
[dbo].[MD_PurchasingGroup]
where
LEN([T024_SYSID]) > 3
or 
LEN([T024_SYSID])=0
delete from
[dbo].[MD_Supplier_LFA1]
where
LEN([LFA1_SYSID]) > 3
or 
LEN([LFA1_SYSID])=0
delete from
[dbo].[MD_Supplier_LFB1]
where
LEN([LFB1_SYSID]) > 3
or 
LEN([LFB1_SYSID])=0
delete from
[dbo].[MD_Supplier_LFM1]
where
LEN([LFM1_SYSID]) > 3
or 
LEN([LFM1_SYSID])=0
delete from
[dbo].[MD_UOM]
where
LEN([T006_SYSID]) > 3
or 
LEN([T006_SYSID])=0
delete from
[dbo].[MD_User]
where
LEN([USR03_SYSID]) > 3
or 
LEN([USR03_SYSID])=0
delete from
[dbo].[PO_Accounting]
where
LEN([EKKN_SYSID]) > 3
or 
LEN([EKKN_SYSID])=0
delete from
[dbo].[PO_Confirmation]
where
LEN([EKES_SYSID]) > 3
or 
LEN([EKES_SYSID])=0
delete from
[dbo].[PO_Header]
where
LEN([EKKO_SYSID]) > 3
or 
LEN([EKKO_SYSID])=0
delete 
from
[dbo].[PO_History]
where
LEN([EKBE_SYSID])>3
or 
LEN([EKBE_SYSID])=0
delete 
from
[dbo].[PO_InfoRecord_GE]
where
LEN([EINA_SYSID])>3
or 
LEN([EINA_SYSID])=0
delete 
from
[dbo].[PO_InfoRecord_PO]
where
LEN([EINE_SYSID])>3
or 
LEN([EINE_SYSID])=0
delete
from
[dbo].[PO_Item]
where
LEN([EKPO_SYSID])>3
or 
LEN([EKPO_SYSID])=0
delete
from
[dbo].[PO_Schedule]
where
LEN([EKET_SYSID])>3
or 
LEN([EKET_SYSID])=0
delete
from[dbo].[PR]
where
LEN([EBAN_SYSID])>3
or 
LEN([EBAN_SYSID])=0
delete
[dbo].[PR_Accounting]
where
LEN([EBKN_SYSID])>3
or 
LEN([EBKN_SYSID])=0
delete
[dbo].[ProdOrder_Header]
where
LEN([AFKO_SYSID])>3
or 
LEN([AFKO_SYSID])=0
delete
[dbo].[ProdOrder_Item]
where
LEN([AFPO_SYSID])>3
or 
LEN([AFPO_SYSID])=0
delete
[dbo].[QInfRec]
where
LEN([QINF_SYSID])>3
or 
LEN([QINF_SYSID])=0
delete
[dbo].[QN_Action]
where
LEN([QMMA_SYSID])>3
or 
LEN([QMMA_SYSID])=0
delete
from
[dbo].[QN_Header]
where
LEN([QMEL_SYSID])>3
or 
LEN([QMEL_SYSID])=0
delete
from
[dbo].[QN_Item]
where
LEN([QMFE_SYSID])>3
or 
LEN([QMFE_SYSID])=0
delete
from
[dbo].[QN_Measure]
where
LEN([QMSM_SYSID])>3
or 
LEN([QMSM_SYSID])=0
delete
from
[dbo].[Savings]
where
LEN([SAV_SYSID])>3
or 
LEN([SAV_SYSID])=0
delete
from
[dbo].[SO_Header]
where
LEN([VBAK_SYSID])>3
or 
LEN([VBAK_SYSID])=0
delete
from
[dbo].[SO_Item]
where
LEN([VBAP_SYSID])>3
or 
LEN([VBAP_SYSID])=0
END

GO
