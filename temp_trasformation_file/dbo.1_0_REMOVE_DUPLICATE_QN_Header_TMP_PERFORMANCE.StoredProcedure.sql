USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_QN_Header_TMP_PERFORMANCE]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_QN_Header_TMP_PERFORMANCE]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by CONCAT(REPLACE(REPLACE([QMEL_SYSID],'"',''),' ',''),REPLACE(REPLACE([QMEL_MANDT],'"',''),' ',''),REPLACE([dbo].[add_0](12,REPLACE([QMEL_QMNUM],'"','')),' ',''))
 order by [QMEL_DATUM] DESC) as row_num
    from [dbo].[1_0_QN_Header_TMP]
)
delete
from cte
where row_num > 1
;
END

GO
