USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_INSERT_PO_Item_ETL_CONTRACT_TMP]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Daniele SanGy>
-- Create date: <December, 2017>
-- Description:	<1.1 to 2.0 SAP data conversion>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_INSERT_PO_Item_ETL_CONTRACT_TMP]
AS
BEGIN
	SET NOCOUNT ON;
insert into
[dbo].[1_0_PO_Item_ETL_CONTRACT_TMP]
(
	[EKPO_EBELN],
	[EKPO_KONNR]

)
select distinct
	[EKPO_EBELN],
	[EKPO_KONNR]
	from
[dbo].[1_0_PO_Item_ETL]
where 
	[EKPO_KONNR]<>''
END

GO
