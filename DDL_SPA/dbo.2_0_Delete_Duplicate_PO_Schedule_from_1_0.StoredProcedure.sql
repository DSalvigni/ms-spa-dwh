USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[2_0_Delete_Duplicate_PO_Schedule_from_1_0]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[2_0_Delete_Duplicate_PO_Schedule_from_1_0]
AS
BEGIN
delete
from
[dbo].[1_0_PO_Schedule_1.11_ETL]
where 
[HASH_PO_Schedule]  in
(select [HASH_PO_Schedule] from [dbo].[PO_Schedule])
delete
from
[dbo].[1_0_PO_Schedule_1.12_ETL]
where 
[HASH_PO_Schedule]  in
(select [HASH_PO_Schedule] from [dbo].[PO_Schedule])
delete
from
[dbo].[1_0_PO_Schedule_P11_010_2_ETL]
where 
[HASH_PO_Schedule]  in
(select [HASH_PO_Schedule] from [dbo].[PO_Schedule])
delete
from
[dbo].[1_0_PO_Schedule_P11_010_ETL]
where 
[HASH_PO_Schedule]  in
(select [HASH_PO_Schedule] from [dbo].[PO_Schedule])
delete
from
[dbo].[1_0_PO_Schedule_SP1_500_ETL]
where 
[HASH_PO_Schedule]  in
(select [HASH_PO_Schedule] from [dbo].[PO_Schedule])
delete
from
[dbo].[1_0_PO_Schedule_SP1_530_ETL]
where 
[HASH_PO_Schedule]  in
(select [HASH_PO_Schedule] from [dbo].[PO_Schedule])
END
GO
