USE [SPA_SQL]
GO
/****** Object:  User [DSMAIN\P2.OTN618q_INSTPCH1_SPA_SQL.DBO]    Script Date: 08.05.2018 14:41:31 ******/
CREATE USER [DSMAIN\P2.OTN618q_INSTPCH1_SPA_SQL.DBO] FOR LOGIN [DSMAIN\P2.OTN618q_INSTPCH1_SPA_SQL.DBO] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [DSMAIN\P2.OTN618q_INSTPCH1_SPA_SQL.DBO]
GO
