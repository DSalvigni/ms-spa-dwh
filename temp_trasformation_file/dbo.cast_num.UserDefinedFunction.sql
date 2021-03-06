USE [SPA_SQL]
GO
/****** Object:  UserDefinedFunction [dbo].[cast_num]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[cast_num]
(
    @InputStr varchar(8000)
)
RETURNS varchar(8000)
AS
BEGIN
declare @ResultStr varchar(8000)
set @ResultStr = CAST(LEFT(@InputStr, CHARINDEX('.', @InputStr) - 1) + '.' + SUBSTRING(@InputStr,(CHARINDEX('.',@InputStr)+1),3) AS DECIMAL(13,6))
return @ResultStr
END
GO
