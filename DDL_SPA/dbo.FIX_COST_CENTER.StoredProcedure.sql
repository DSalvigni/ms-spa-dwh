USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[FIX_COST_CENTER]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Daniele SanGy>
-- Create date: <December, 2017>
-- Description:	<1.1 to 2.0 SAP data conversion>
-- =============================================
CREATE PROCEDURE [dbo].[FIX_COST_CENTER]
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE [dbo].[MD_CostCenter]
	SET [CSKS_DATAB]=DATEADD(YEAR,-1,[CSKS_DATAB])
		where
		CSKS_KOSTL in ('1L116','1L503')
		and
		[CSKS_DATAB] > [CSKS_DATBI]
		
END

GO
