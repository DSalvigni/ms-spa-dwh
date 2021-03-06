USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[2_0_Delete_Duplicate_PR_from_1_0]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[2_0_Delete_Duplicate_PR_from_1_0]
AS
BEGIN
delete
from
[dbo].[1_0_PR_1.11_ETL]
where 
[HASH_PR]  in
(select [HASH_PR] from [dbo].[PR])
delete
from
[dbo].[1_0_PR_1.12_ETL]
where 
[HASH_PR]  in
(select [HASH_PR] from [dbo].[PR])
delete
from
[dbo].[1_0_PR_P11_010_2_ETL]
where 
[HASH_PR]  in
(select [HASH_PR] from [dbo].[PR])
delete
from
[dbo].[1_0_PR_P11_010_ETL]
where 
[HASH_PR]  in
(select [HASH_PR] from [dbo].[PR])
delete
from
[dbo].[1_0_PR_SP1_500_ETL]
where 
[HASH_PR]  in
(select [HASH_PR] from [dbo].[PR])
delete
from
[dbo].[1_0_PR_SP1_530_ETL]
where 
[HASH_PR]  in
(select [HASH_PR] from [dbo].[PR])
END
GO
