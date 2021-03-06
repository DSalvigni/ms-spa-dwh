USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[2_0_Delete_Duplicate_CO_Item_from_1_0]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[2_0_Delete_Duplicate_CO_Item_from_1_0]
AS
BEGIN
delete
from
[dbo].[1_0_CO_Item_1.11_ETL]
where 
REPLACE(CONCAT([EKPOK_SYSID],[EKPOK_MANDT],[EKPOK_KONNR],[EKPOK_KTPNR]),' ','')  in
(select REPLACE(CONCAT([EKPOK_SYSID],[EKPOK_MANDT],[EKPOK_KONNR],[EKPOK_KTPNR]),' ','') from [dbo].[CO_Item]
where
[EKPOK_KONNR]<>'' and [EKPOK_KTPNR] <>''
)
delete
from
[dbo].[1_0_CO_Item_1.12_ETL]
where 
REPLACE(CONCAT([EKPOK_SYSID],[EKPOK_MANDT],[EKPOK_KONNR],[EKPOK_KTPNR]),' ','')  in
(select REPLACE(CONCAT([EKPOK_SYSID],[EKPOK_MANDT],[EKPOK_KONNR],[EKPOK_KTPNR]),' ','') from [dbo].[CO_Item]
where
[EKPOK_KONNR]<>'' and [EKPOK_KTPNR] <>''
)
delete
from
[dbo].[1_0_CO_Item_SP1_500_ETL]
where 
REPLACE(CONCAT([EKPOK_SYSID],[EKPOK_MANDT],[EKPOK_KONNR],[EKPOK_KTPNR]),' ','')  in
(select REPLACE(CONCAT([EKPOK_SYSID],[EKPOK_MANDT],[EKPOK_KONNR],[EKPOK_KTPNR]),' ','') from [dbo].[CO_Item]
where
[EKPOK_KONNR]<>'' and [EKPOK_KTPNR] <>''
)
delete
from
[dbo].[1_0_CO_Item_SP1_530_ETL]
where 
REPLACE(CONCAT([EKPOK_SYSID],[EKPOK_MANDT],[EKPOK_KONNR],[EKPOK_KTPNR]),' ','')  in
(select REPLACE(CONCAT([EKPOK_SYSID],[EKPOK_MANDT],[EKPOK_KONNR],[EKPOK_KTPNR]),' ','') from [dbo].[CO_Item]
where
[EKPOK_KONNR]<>'' and [EKPOK_KTPNR] <>''
)
END

GO
