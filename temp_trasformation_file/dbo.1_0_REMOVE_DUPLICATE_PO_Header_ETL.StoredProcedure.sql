USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_PO_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_PO_Header_ETL]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by [HASH_PO_HEADER] order by [EKKO_DATUM] DESC) as row_num
    from [dbo].[1_0_PO_Header_ETL]
)
delete
from cte
where row_num > 1
;
END

GO
