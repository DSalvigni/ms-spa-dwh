USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_ETL_TOTAL_LINES]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[1_0_ETL_TOTAL_LINES]
AS
BEGIN
select count(*) from [dbo].[1_0_CO_Header_ETL]
select count(*) from [dbo].[1_0_CO_Item_ETL]
select count(*) from [dbo].[1_0_GM_Header_ETL]
select count(*) from [dbo].[1_0_GM_Item_ETL]
select count(*) from [dbo].[1_0_INV_Header_ETL]
select count(*) from [dbo].[1_0_INV_Item_ETL]
select count(*) from [dbo].[1_0_PO_Accounting_ETL]
select count(*) from [dbo].[1_0_PO_Confirmation_ETL]
select count(*) from [dbo].[1_0_PO_Header_ETL]
select count(*) from [dbo].[1_0_PO_History_ETL]
select count(*) from [dbo].[1_0_PO_History_ETL_reducted]
select count(*) from [dbo].[1_0_PO_Item_ETL]
select count(*) from [dbo].[1_0_PO_Schedule_ETL]
select count(*) from [dbo].[1_0_PR_Accounting_ETL]
select count(*) from [dbo].[1_0_PR_ETL]
select count(*) from [dbo].[1_0_Savings_ETL]
select count(*) from [dbo].[1_0_QN_Header_ETL]
END

GO
