USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[2_0_Delete_Duplicate_CO_Header_from_1_0]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[2_0_Delete_Duplicate_CO_Header_from_1_0]
AS
BEGIN
delete
from
[dbo].[1_0_CO_Header_1.11_ETL]
where 
REPLACE(CONCAT([EKKOK_SYSID],[EKKOK_MANDT],[EKKOK_KONNR]),' ','')  in
(select distinct REPLACE(CONCAT([EKKOK_SYSID],[EKKOK_MANDT],[EKKOK_KONNR]),' ','') from [dbo].[CO_Header]
where [EKKOK_KONNR] <> ''
)
delete
from
[dbo].[1_0_CO_Header_1.12_ETL]
where 
REPLACE(CONCAT([EKKOK_SYSID],[EKKOK_MANDT],[EKKOK_KONNR]),' ','')  in
(select distinct REPLACE(CONCAT([EKKOK_SYSID],[EKKOK_MANDT],[EKKOK_KONNR]),' ','') from [dbo].[CO_Header]
where [EKKOK_KONNR] <> ''
)
delete
from
[dbo].[1_0_CO_Header_SP1_500_ETL]
where 
REPLACE(CONCAT([EKKOK_SYSID],[EKKOK_MANDT],[EKKOK_KONNR]),' ','')  in
(select distinct REPLACE(CONCAT([EKKOK_SYSID],[EKKOK_MANDT],[EKKOK_KONNR]),' ','') from [dbo].[CO_Header]
where [EKKOK_KONNR] <> ''
)
delete
from
[dbo].[1_0_CO_Header_SP1_530_ETL]
where 
REPLACE(CONCAT([EKKOK_SYSID],[EKKOK_MANDT],[EKKOK_KONNR]),' ','')  in
(select distinct REPLACE(CONCAT([EKKOK_SYSID],[EKKOK_MANDT],[EKKOK_KONNR]),' ','') from [dbo].[CO_Header]
where [EKKOK_KONNR] <> ''
)
END
GO
