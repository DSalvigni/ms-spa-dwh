USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[2_0_Delete_Duplicate_PO_History_1.12_from_1_0_TMP_04]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[2_0_Delete_Duplicate_PO_History_1.12_from_1_0_TMP_04]
AS
BEGIN
delete
from
[dbo].[1_0_PO_History_1.12_04_TMP]
where 
[HASH_PO_HISTORY] in
(select [HASH_PO_HISTORY] from [dbo].[PO_History])
END
GO
