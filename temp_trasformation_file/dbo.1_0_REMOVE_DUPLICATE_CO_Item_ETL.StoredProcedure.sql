USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_CO_Item_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Sang>
-- Create date: <han, 2018>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_CO_Item_ETL]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
     select row_number() over(partition by CONCAT([EKPOK_SYSID],[EKPOK_MANDT],[EKPOK_KONNR],[EKPOK_KTPNR]) order by [EKPOK_DATUM] DESC) as row_num
	 from [dbo].[1_0_CO_Item_ETL]
)
delete
from cte
where row_num > 1
;
END

GO
