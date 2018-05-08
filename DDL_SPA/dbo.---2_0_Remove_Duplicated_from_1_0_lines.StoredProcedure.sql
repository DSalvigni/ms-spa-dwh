USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[---2_0_Remove_Duplicated_from_1_0_lines]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[---2_0_Remove_Duplicated_from_1_0_lines]
AS
BEGIN
exec [dbo].[2_0_Delete_Duplicate_CO_Header_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_CO_Item_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_GM_Header_from_1_0]
--exec [dbo].[2_0_Delete_Duplicate_GM_item_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_INV_Header_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_INV_Item_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_PO_Accounting_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_PO_Confirmation_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_PO_Header_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_PO_History_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_PO_Item_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_PO_Schedule_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_PR_Accounting_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_PR_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_QN_Header_from_1_0]
exec [dbo].[2_0_Delete_Duplicate_Savings_from_1_0]
END
GO
