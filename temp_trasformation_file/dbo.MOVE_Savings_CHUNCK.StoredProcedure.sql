USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_Savings_CHUNCK]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Galli GO>
-- Create date: <March, 2018>
-- Status:  ヾ(⌐■_■)ノ
-- Description:	<INSERT/SELECT by Chunck>
-- =============================================
CREATE PROCEDURE [dbo].[MOVE_Savings_CHUNCK]
AS
--We start the dance...
SET IDENTITY_INSERT [dbo].[Savings] ON
WHILE 1=1
BEGIN
--We declare a TMP tab where to save the unique numeric id generated in the fast import
DECLARE @TempSavings Table ([SAV_UNIQU] int not null)

--we insert the chunk block from top select
SET DATEFORMAT DMY;
INSERT INTO
				[dbo].[Savings]
				(
				[SAV_UNIQU],
				[HASH_SAVINGS],
				[SAV_SYSID],
				[SAV_MANDT],
				[SAV_BUKRS],
				[SAV_WERKS],
				[SAV_PFUID],
				[SAV_CREA_DATE],
				[SAV_CREA_TIME],
				[SAV_PFU_CREATOR],
				[SAV_UPDA_DATE],
				[SAV_UPDA_TIME],
				[SAV_PFU_MODIFIER],
				[SAV_STATUS],
				[SAV_TITLE],
				[SAV_BGID],
				[SAV_BGNAME],
				[SAV_BUSINESS_ADMIN],
				[SAV_SC1],
				[SAV_SC2],
				[SAV_SC3],
				[SAV_SC1_DESC],
				[SAV_SC2_DESC],
				[SAV_SC3_DESC],
				[SAV_COMM_CODE],
				[SAV_SUPPLIER_ID],
				[SAV_SUPPLIER_NAME],
				[SAV_PROJECT_ID],
				[SAV_PROJECT_NAME],
				[SAV_CLASS],
				[SAV_BU],
				[SAV_LOB],
				[SAV_YEAR],
				[SAV_BUDGET_PLANNED],
				[SAV_TARGET_PLANNED],
				[SAV_FINAL_CONTRACT],
				[SAV_SAVINGS_SECURED],
				[SAV_NRC],
				[SAV_NET_SAVINGS_SEC],
				[SAV_NET_SAVINGS_ACT],
				[SAV_COST_TO_MARKET],
				[SAV_PROFIT_IMPACT],
				[SAV_PROJECT_MANAGER],
				[SAV_SUB_PROJECT_ID],
				[SAV_SUB_PROJECT_NAME],
				[SAV_REFERENCE],
				[SAV_SEARCH_ITEM],
				[SAV_POID],
				[SAV_EXTRACT_DATE]
				)
    OUTPUT INSERTED.[SAV_UNIQU]
    INTO @TempSavings
	SELECT TOP 100000
					[ID],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([SAV_SYSID],'"',''),' ',''),REPLACE(REPLACE([SAV_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([SAV_PFUID],'"','')),' ',''))) as [HASH_SAVINGS],
					REPLACE([SAV_SYSID],'"',''),
					REPLACE([SAV_MANDT],'"',''),
					[dbo].[add_0](4,REPLACE([SAV_BUKRS] ,'"','')),
					REPLACE([SAV_WERKS],'"',''),
					REPLACE([SAV_PFUID],'"',''),
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([SAV_CREA_DATE] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([SAV_CREA_DATE], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([SAV_CREA_DATE], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_CREA_DATE],
					REPLACE([SAV_CREA_TIME],'"',''),
					REPLACE([SAV_PFU_CREATOR],'"',''),
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([SAV_UPDA_DATE] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([SAV_UPDA_DATE], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([SAV_UPDA_DATE], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_UPDA_DATE],
					REPLACE([SAV_UPDA_TIME],'"',''),
					REPLACE([SAV_PFU_MODIFIER],'"',''),
					REPLACE([SAV_STATUS],'"',''),
					REPLACE([SAV_TITLE],'"',''),
					REPLACE([SAV_BGID],'"',''),
					REPLACE([SAV_BGNAME],'"',''),
					REPLACE([SAV_BUSINESS_ADMIN],'"',''),
					REPLACE([SAV_SC1],'"',''),
					REPLACE([SAV_SC2],'"',''),
					REPLACE([SAV_SC3],'"',''),
					REPLACE([SAV_SC1_DESC],'"',''),
					REPLACE([SAV_SC2_DESC],'"',''),
					REPLACE([SAV_SC3_DESC],'"',''),
					REPLACE([SAV_COMM_CODE],'"',''),
					REPLACE([SAV_SUPPLIER_ID],'"',''),
					REPLACE([SAV_SUPPLIER_NAME],'"',''),
					REPLACE([SAV_PROJECT_ID],'"',''),
					REPLACE([SAV_PROJECT_NAME],'"',''),
					REPLACE([SAV_CLASS],'"',''),
					REPLACE([SAV_BU],'"',''),
					REPLACE([SAV_LOB],'"',''),
					REPLACE([SAV_YEAR],'"',''),
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([SAV_BUDGET_PLANNED], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([SAV_BUDGET_PLANNED], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_BUDGET_PLANNED],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([SAV_TARGET_PLANNED], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([SAV_TARGET_PLANNED], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_TARGET_PLANNED],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([SAV_FINAL_CONTRACT], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([SAV_FINAL_CONTRACT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_FINAL_CONTRACT],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([SAV_SAVINGS_SECURED], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([SAV_SAVINGS_SECURED], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_SAVINGS_SECURED],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([SAV_NRC], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([SAV_NRC], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_NRC],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([SAV_NET_SAVINGS_SEC], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([SAV_NET_SAVINGS_SEC], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_NET_SAVINGS_SEC],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([SAV_NET_SAVINGS_ACT], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([SAV_NET_SAVINGS_ACT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_NET_SAVINGS_ACT],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([SAV_COST_TO_MARKET], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([SAV_COST_TO_MARKET], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_COST_TO_MARKET],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([SAV_PROFIT_IMPACT], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([SAV_PROFIT_IMPACT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_PROFIT_IMPACT],
					REPLACE([SAV_PROJECT_MANAGER],'"',''),
					REPLACE([SAV_SUB_PROJECT_ID],'"',''),
					REPLACE([SAV_SUB_PROJECT_NAME],'"',''),
					REPLACE([SAV_REFERENCE],'"',''),
					REPLACE([SAV_SEARCH_ITEM],'"',''),
					[dbo].[add_0](10,REPLACE([SAV_POID] ,'"','')),
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([SAV_EXTRACT_DATE] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([SAV_EXTRACT_DATE], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([SAV_EXTRACT_DATE], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [SAV_EXTRACT_DATE]
					FROM
					[dbo].[Savings_ETL]
					where [SAV_MANDT] is not null
					AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))

--we delete the imported ID for every 
DELETE [dbo].[Savings_ETL]
    FROM [dbo].[Savings_ETL]
        INNER JOIN @TempSavings as t ON [dbo].[Savings_ETL].[ID]=t.[SAV_UNIQU] 
		IF (@@ROWCOUNT = 0)
		BREAK;
END 
GO
