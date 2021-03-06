USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_Delete_All_TMP_Data]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[1_0_Delete_All_TMP_Data]
AS
BEGIN
delete from [dbo].[1_0_CO_Header_TMP]
delete from [dbo].[1_0_CO_Item_TMP]
delete from [dbo].[1_0_GM_Header_TMP]
delete from [dbo].[1_0_GM_Item_TMP]
delete from [dbo].[1_0_INV_Header_TMP]
delete from [dbo].[1_0_INV_Item_TMP]
delete from [dbo].[1_0_PO_Accounting_TMP]
delete from [dbo].[1_0_PO_Confirmation_TMP]
delete from [dbo].[1_0_PO_Header_TMP]
--delete from [dbo].[1_0_PO_History_TMP]
delete from [dbo].[1_0_PO_Item_TMP]
delete from [dbo].[1_0_PO_Schedule_TMP]
delete from [dbo].[1_0_PR_Accounting_TMP]
delete from [dbo].[1_0_QN_Header_TMP]
delete from [dbo].[1_0_PR_TMP]
delete from [dbo].[1_0_Savings_TMP]
END

GO
