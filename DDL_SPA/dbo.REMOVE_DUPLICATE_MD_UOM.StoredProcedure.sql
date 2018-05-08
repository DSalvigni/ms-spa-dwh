USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_DUPLICATE_MD_UOM]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[REMOVE_DUPLICATE_MD_UOM]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by HASH_MD_UOM order by T006_DATUM DESC) as row_num --Added language as partition in order not to deduplicate languages
    from [dbo].[MD_UOM]
)
delete
from cte
where row_num > 1
;
END

GO
