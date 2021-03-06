USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_Delete_SYS_LEN_ERROR]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[1_0_Delete_SYS_LEN_ERROR]
AS
BEGIN
delete
from[dbo].[1_0_PR_ETL]
where
LEN([EBAN_SYSID])>3
or 
LEN([EBAN_SYSID])=0
delete 
from
[dbo].[1_0_PO_History_ETL_reducted]
where
LEN([EKBE_SYSID])>3
or 
LEN([EKBE_SYSID])=0
--delete from
--[dbo].[1_0_CO_Header_ETL]
--where
--LEN([EKKOK_SYSID]) > 3
--or 
--LEN([EKKOK_SYSID])=0
--delete from
--[dbo].[1_0_CO_Item_ETL]
--where
--LEN([EKPOK_SYSID]) > 3
--or 
--LEN([EKPOK_SYSID])=0
delete from
[dbo].[1_0_GM_Header_ETL]
where
LEN([MKPF_SYSID]) > 3
or 
LEN([MKPF_SYSID])=0
delete from
[dbo].[1_0_GM_Item_ETL]
where
LEN([MSEG_SYSID]) > 3
or 
LEN([MSEG_SYSID])=0
delete from
[dbo].[1_0_INV_Header_ETL]
where
LEN([BKPF_SYSID]) > 3
or 
LEN([BKPF_SYSID])=0
delete from
[dbo].[1_0_INV_Item_ETL]
where
LEN([BSEG_SYSID]) > 3
or 
LEN([BSEG_SYSID])=0
delete from
[dbo].[1_0_PO_Confirmation_ETL]
where
LEN([EKES_SYSID]) > 3
or 
LEN([EKES_SYSID])=0
delete
from
[dbo].[1_0_PO_Item_ETL]
where
LEN([EKPO_SYSID])>3
or 
LEN([EKPO_SYSID])=0
delete
from
[dbo].[1_0_PO_Schedule_ETL]
where
LEN([EKET_SYSID])>3
or 
LEN([EKET_SYSID])=0
--delete
--from
--[dbo].[1_0_QN_Header_ETL]
--where
--LEN([QMEL_SYSID])>3
--or 
--LEN([QMEL_SYSID])=0
--delete
--from
--[dbo].[1_0_Savings_ETL]
--where
--LEN([SAV_SYSID])>3
--or 
--LEN([SAV_SYSID])=0
delete from
[dbo].[1_0_PO_Header_ETL]
where
LEN([EKKO_SYSID]) > 3
or 
LEN([EKKO_SYSID])=0
delete from
[dbo].[1_0_PO_Accounting_ETL]
where
LEN([EKKN_SYSID]) > 3
or 
LEN([EKKN_SYSID])=0
END

GO
