USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_LANG_LINES_MD_Part_ETL]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[REMOVE_LANG_LINES_MD_Part_ETL]
AS
BEGIN
	SET NOCOUNT ON;
	delete
	from [dbo].[MD_Part_ETL]
	WHERE
	REPLACE([MARA_SPRAS],'"','') not in	('Z1','Z2','E','D','S','F')
END

GO
