USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_NOT_MD_Data]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Delete_All_NOT_MD_Data]
AS
BEGIN
--DELETE FROM [dbo].[CFT_Header]
--DELETE FROM [dbo].[CFT_Item]
--DELETE FROM [dbo].[CO_Header]
--DELETE FROM [dbo].[CO_Item]
--DELETE FROM [dbo].[GM_Header]
--DELETE FROM [dbo].[GM_Item]
--DELETE FROM [dbo].[INV_Header]
--DELETE FROM [dbo].[INV_Item]
--DELETE FROM [dbo].[PO_Accounting]
--DELETE FROM [dbo].[PO_Confirmation]
--DELETE FROM [dbo].[PO_Header]
--DELETE FROM [dbo].[PO_History]
--DELETE FROM [dbo].[PO_InfRecGE]
--DELETE FROM [dbo].[PO_InfRecPOOrg]
--DELETE FROM [dbo].[PO_Item]
--DELETE FROM [dbo].[PO_Schedule]
--DELETE FROM [dbo].[PR]
--DELETE FROM [dbo].[PR_Accounting]
--DELETE FROM [dbo].[ProdOrder_Header]
--DELETE FROM [dbo].[ProdOrder_Item]
--DELETE FROM [dbo].[QInfRec]
--DELETE FROM [dbo].[QN_Action]
--DELETE FROM [dbo].[QN_Header]
--DELETE FROM [dbo].[QN_Item]
--DELETE FROM [dbo].[QN_Measure]
--DELETE FROM [dbo].[Savings]
--DELETE FROM [dbo].[SO_Header]
--DELETE FROM [dbo].[SO_Item]
DELETE FROM [dbo].[User]
END

GO
