USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[REMOVE_DUPLICATE_PO_Schedule_ETL]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATe PROCEDURE [dbo].[REMOVE_DUPLICATE_PO_Schedule_ETL]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by [HASH_PO_SCHEDULE] order by [EKET_DATUM] DESC) as row_num
    from [dbo].[PO_Schedule_ETL]
)
delete
from cte
where row_num > 1
;
END

GO
