USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[1_0_REMOVE_DUPLICATE_GM_Header_TMP_PERFORMANCE]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<SanGy>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[1_0_REMOVE_DUPLICATE_GM_Header_TMP_PERFORMANCE]
AS
BEGIN
	SET NOCOUNT ON;

;with cte as (
    select row_number() over(partition by CONCAT(REPLACE(REPLACE([MKPF_SYSID],'"',''),' ',''),REPLACE(REPLACE([MKPF_MANDT],'"',''),' ',''),REPLACE(dbo.add_0(10,REPLACE([MKPF_MBLNR],'"','')),' ',''),REPLACE(REPLACE([MKPF_MJAHR],'"',''),' ','')) order by [MKPF_DATUM] DESC) as row_num
    from [dbo].[1_0_GM_Header_TMP]
)
delete
from cte
where row_num > 1
;
END

GO
