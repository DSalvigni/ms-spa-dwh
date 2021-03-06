USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_Savings_TMP_PERFORMANCE]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_Savings_TMP_PERFORMANCE]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by CONCAT(REPLACE(REPLACE([SAV_SYSID],'"',''),' ',''),REPLACE(REPLACE([SAV_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([SAV_PFUID],'"','')),' ','')) order by SAV_EXTRACT_DATE DESC) as row_num
    from [dbo].[1_0_Savings_TMP]
	 WHERE [SAV_SYSID] NOT IN ('P11')
)
delete
from cte
where row_num > 1
;
END

GO
