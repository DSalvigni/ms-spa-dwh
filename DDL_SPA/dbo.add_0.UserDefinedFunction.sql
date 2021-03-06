USE [SPA_SQL]
GO
/****** Object:  UserDefinedFunction [dbo].[add_0]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[add_0]
(
	@lenght int, 
	@field VARCHAR(MAX)
)
RETURNS VARCHAR(MAX)
AS BEGIN
    DECLARE @field_func VARCHAR(MAX)
	DECLARE @lenght_func int

    SET @field_func = @field
	SET @lenght_func = @lenght

    SET @field_func = 
		CASE WHEN @field_func = '' then @field_func
		ELSE replicate('0', @lenght_func - len(@field_func))+@field_func   
		END
    RETURN @field_func
END
GO
