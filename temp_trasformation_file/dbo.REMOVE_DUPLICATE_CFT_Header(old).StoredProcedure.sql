USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_DUPLICATE_CFT_Header(old)]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Daniele, Salvigni>
-- Create date: <@2017>
-- Description:	<Create UID>
-- =============================================
CREATE PROCEDURE [dbo].[REMOVE_DUPLICATE_CFT_Header(old)]
AS
BEGIN
	SET NOCOUNT ON;

;WITH x AS 
(
  SELECT [EKKOA_SYSID],[EKKOA_MANDT],[EKKOA_EBELN], rn = ROW_NUMBER() OVER 
      (PARTITION BY [EKKOA_SYSID],[EKKOA_MANDT],[EKKOA_EBELN] ORDER BY [EKKOA_UID])
  FROM [dbo].[CFT_Header] 
)
DELETE x WHERE rn > 1;
END
GO
