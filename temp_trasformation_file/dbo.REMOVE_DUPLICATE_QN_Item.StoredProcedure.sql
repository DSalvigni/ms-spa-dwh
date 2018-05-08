USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_DUPLICATE_QN_Item]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[REMOVE_DUPLICATE_QN_Item]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by HASH_QN_ITEM order by QMFE_DATUM DESC) as row_num
    from [dbo].[QN_Item]
)
delete
from cte
where row_num > 1
;
END

GO
