USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_Duplicates_FINAL_TBLs]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <December, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[Delete_All_Duplicates_FINAL_TBLs]
AS
BEGIN
    EXEC [dbo].[REMOVE_DUPLICATE_CFT_Header]
    EXEC [dbo].[REMOVE_DUPLICATE_CFT_Item]
	EXEC [dbo].[REMOVE_DUPLICATE_CO_Header]
	EXEC [dbo].[REMOVE_DUPLICATE_CO_Item]
	EXEC [dbo].[REMOVE_DUPLICATE_GM_Header]
	EXEC [dbo].[REMOVE_DUPLICATE_GM_Item]
	EXEC [dbo].[REMOVE_DUPLICATE_INV_Header]
	EXEC [dbo].[REMOVE_DUPLICATE_INV_Item]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_Account]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_Commodity]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_CostCenter]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_CurrencyMap]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_Network]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_Part]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_PaymentTerm]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_Plant]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_ProfitCenter]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_Project]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_PurchasingGroup]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_Supplier_LFA1]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_Supplier_LFB1]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_Supplier_LFM1]
	EXEC [dbo].[REMOVE_DUPLICATE_MD_UOM]
	EXEC [dbo].[REMOVE_DUPLICATE_PO_Accounting]
	EXEC [dbo].[REMOVE_DUPLICATE_PO_Confirmation]
	EXEC [dbo].[REMOVE_DUPLICATE_PO_Header]
	EXEC [dbo].[REMOVE_DUPLICATE_PO_History]
	EXEC [dbo].[REMOVE_DUPLICATE_PO_InfoRecord_GE]
	EXEC [dbo].[REMOVE_DUPLICATE_PO_InfoRecord_PO]
	EXEC [dbo].[REMOVE_DUPLICATE_PO_Item]
	EXEC [dbo].[REMOVE_DUPLICATE_PO_Schedule]
	EXEC [dbo].[REMOVE_DUPLICATE_PR]
	EXEC [dbo].[REMOVE_DUPLICATE_PR_Accounting]
	EXEC [dbo].[REMOVE_DUPLICATE_ProdOrder_Header]
	EXEC [dbo].[REMOVE_DUPLICATE_ProdOrder_Item]
	EXEC [dbo].[REMOVE_DUPLICATE_QInfRec]
	EXEC [dbo].[REMOVE_DUPLICATE_QN_Action]
	EXEC [dbo].[REMOVE_DUPLICATE_QN_Header]
	EXEC [dbo].[REMOVE_DUPLICATE_QN_Item]
	EXEC [dbo].[REMOVE_DUPLICATE_QN_Measure]
	EXEC [dbo].[REMOVE_DUPLICATE_Savings]
	EXEC [dbo].[REMOVE_DUPLICATE_SO_Header]
	EXEC [dbo].[REMOVE_DUPLICATE_SO_Item]
	EXEC [dbo].[REMOVE_DUPLICATE_User]
END

GO
