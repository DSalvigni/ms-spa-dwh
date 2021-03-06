USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[Delete_All_MD_Data_ETL]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Delete_All_MD_Data_ETL]
AS
BEGIN
DELETE FROM [dbo].[MD_Account_ETL]
DELETE FROM [dbo].[MD_Commodity_ETL]
DELETE FROM [dbo].[MD_CompanyCode_ETL]
DELETE FROM [dbo].[MD_CostCenter_ETL]
DELETE FROM [dbo].[MD_CurrencyMap_ETL]
DELETE FROM [dbo].[MD_ManagementUnit_ETL]
DELETE FROM [dbo].[MD_Network_ETL]
DELETE FROM [dbo].[MD_Part_ETL]
DELETE FROM [dbo].[MD_PaymentTerm_ETL]
DELETE FROM [dbo].[MD_Plant_ETL]
DELETE FROM [dbo].[MD_ProfitCenter_ETL]
DELETE FROM [dbo].[MD_Project_ETL]
DELETE FROM [dbo].[MD_PurchasingGroup_ETL]
DELETE FROM [dbo].[MD_Supplier_LFM1_ETL]
DELETE FROM [dbo].[MD_Supplier_LFB1_ETL]
DELETE FROM [dbo].[MD_Supplier_LFA1_ETL]
DELETE FROM [dbo].[MD_UOM_ETL]
DELETE FROM [dbo].[MD_User_ETL]
END

GO
