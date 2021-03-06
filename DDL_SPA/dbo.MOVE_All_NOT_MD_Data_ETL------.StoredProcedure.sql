USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_All_NOT_MD_Data_ETL------]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[MOVE_All_NOT_MD_Data_ETL------]
AS
BEGIN
EXEC [dbo].[MOVE_CFT_Header]
EXEC [dbo].[MOVE_CFT_Item]
EXEC [dbo].[MOVE_CO_Header]
EXEC [dbo].[MOVE_CO_Item]
EXEC [dbo].[MOVE_GM_Header]
EXEC [dbo].[MOVE_GM_Item]
EXEC [dbo].[MOVE_GM_Item_ESP]
EXEC [dbo].[MOVE_INV_Header]
EXEC [dbo].[MOVE_INV_Item]
EXEC [dbo].[MOVE_INV_Item_ESP]
EXEC [dbo].[MOVE_PO_Accounting]
EXEC [dbo].[MOVE_PO_Confirmation]
EXEC [dbo].[MOVE_PO_Header]
EXEC [dbo].[MOVE_PO_History]
EXEC [dbo].[MOVE_PO_InfRecGe]
EXEC [dbo].[MOVE_PO_InfRecPOOrg]
EXEC [dbo].[MOVE_PO_Item]
EXEC [dbo].[MOVE_PO_Schedule]
EXEC [dbo].[MOVE_PR]
EXEC [dbo].[MOVE_PR_Accounting]
EXEC [dbo].[MOVE_ProdOrder_Header]
EXEC [dbo].[MOVE_ProdOrder_Item]
EXEC [dbo].[MOVE_QInfRef]
EXEC [dbo].[MOVE_QN_Action]
EXEC [dbo].[MOVE_QN_Header]
EXEC [dbo].[MOVE_QN_Item]
EXEC [dbo].[MOVE_QN_Measure]
EXEC [dbo].[MOVE_Savings]
EXEC [dbo].[MOVE_SO_Header]
EXEC [dbo].[MOVE_SO_Item]
END

GO
