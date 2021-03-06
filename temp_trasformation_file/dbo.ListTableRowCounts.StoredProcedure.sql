USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[ListTableRowCounts]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Daniele Salvigni>
-- Description:	<Number of linbs per table>
-- =============================================
 CREATE PROCEDURE [dbo].[ListTableRowCounts] 
    AS 
    BEGIN 
        SET NOCOUNT ON 

        CREATE TABLE #TableCounts
        ( 
            TableName VARCHAR(500), 
            CountOf INT 
        ) 

        INSERT #TableCounts
            EXEC sp_msForEachTable 
                'SELECT PARSENAME(''?'', 1), 
                COUNT(*) FROM ? WITH (NOLOCK)' 

        SELECT TableName , CountOf 
            FROM #TableCounts
            ORDER BY TableName 

        DROP TABLE #TableCounts
    END
GO
