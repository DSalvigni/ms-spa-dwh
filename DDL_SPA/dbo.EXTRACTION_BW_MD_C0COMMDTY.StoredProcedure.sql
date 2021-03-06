USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_BW_MD_C0COMMDTY]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Sangy Sangy>
-- Create date: <Jan, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_BW_MD_C0COMMDTY]
AS
BEGIN
	SET NOCOUNT ON;
select 
'Source System',
'Client',
'ComodityCode',
'ADCCS',
'CommodityFamily',
'Non-EGP',
'CommodityType'
union all
select	distinct
	[Source System],
	[Client],
	[ComodityCode],
	[ADCCS],
	[CommodityFamily],
	[Non-EGP],
	[CommodityType]
from
[dbo].[BW_MD_C0COMMDTY]
END

GO
