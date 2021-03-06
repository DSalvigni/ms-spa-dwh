USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_PR_Accounting_CHUNCK]    Script Date: 08.05.2018 14:41:33 ******/
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
CREATE PROCEDURE [dbo].[MOVE_PR_Accounting_CHUNCK]
AS
--We start the dance...
SET IDENTITY_INSERT [dbo].[PR_Accounting] ON
WHILE 1=1
BEGIN
--We declare a TMP tab where to save the unique numeric id generated in the fast import
DECLARE @TempPRAccounting Table ([EBKN_UNIQU] int not null)

--we insert the chunk block from top select
SET DATEFORMAT DMY;
INSERT INTO
				[dbo].[PR_Accounting]
				(
				[EBKN_UNIQU],
				[HASH_PR_ACCOUNTING],
				[HASH_PR],
				[EBKN_SYSID],
				[EBKN_MANDT],
				[EBKN_BANFN],
				[EBKN_BNFPO],
				[EBKN_ZEBKN],
				[EBKN_LOEKZ],
				[EBKN_ERDAT],
				[EBKN_ERNAM],
				[EBKN_MENGE],
				[EBKN_VPROZ],
				[EBKN_SAKTO],
				[EBKN_KOSTL],
				[EBKN_VBELN],
				[EBKN_VBELP],
				[EBKN_VETEN],
				[EBKN_ANLN1],
				[EBKN_ANLN2],
				[EBKN_AUFNR],
				[EBKN_WEMPF],
				[EBKN_ABLAD],
				[EBKN_KOKRS],
				[EBKN_KSTRG],
				[EBKN_PRCTR],
				[EBKN_PS_PSP_PNR],
				[EBKN_NPLNR],
				[EBKN_AUFPL],
				[EBKN_APLZL],
				[EBKN_DABRZ],
				[EBKN_NETWR],
				[EBKN_UDATE],
				[EBKN_DATUM]
				)
    OUTPUT INSERTED.[EBKN_UNIQU]
    INTO @TempPRAccounting
	SELECT TOP 100000
					[ID],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EBKN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EBKN_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EBKN_BANFN],'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EBKN_BNFPO] ,'"','')),' ',''),REPLACE([dbo].[add_0](2,REPLACE([EBKN_ZEBKN] ,'"','')),' ',''))) as [HASH_PR_ACCOUNTING],
					HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([EBKN_SYSID],'"',''),' ',''),REPLACE(REPLACE([EBKN_MANDT],'"',''),' ',''),REPLACE([dbo].[rem_0](REPLACE([EBKN_BANFN],'"','')),' ',''),REPLACE([dbo].[add_0](5,REPLACE([EBKN_BNFPO] ,'"','')),' ',''))) as [HASH_PR],
					REPLACE([EBKN_SYSID] ,'"',''),
					REPLACE([EBKN_MANDT] ,'"',''),
					REPLACE([EBKN_BANFN] ,'"',''),
					[dbo].[add_0](5,REPLACE([EBKN_BNFPO] ,'"','')),
					[dbo].[add_0](2,REPLACE([EBKN_ZEBKN] ,'"','')),
					REPLACE([EBKN_LOEKZ] ,'"',''),
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EBKN_ERDAT] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EBKN_ERDAT], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EBKN_ERDAT], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBKN_ERDAT],
					REPLACE([EBKN_ERNAM] ,'"',''),
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBKN_MENGE], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,3),REPLACE(REPLACE(REPLACE([EBKN_MENGE], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBKN_MENGE],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBKN_VPROZ], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EBKN_VPROZ], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBKN_VPROZ],
					REPLACE([EBKN_SAKTO] ,'"',''),
					REPLACE([EBKN_KOSTL] ,'"',''),
					[dbo].[add_0](10,REPLACE([EBKN_VBELN] ,'"','')),
					[dbo].[add_0](6,REPLACE([EBKN_VBELP] ,'"','')),
					REPLACE([EBKN_VETEN] ,'"',''),
					REPLACE([EBKN_ANLN1] ,'"',''),
					REPLACE([EBKN_ANLN2] ,'"',''),
					REPLACE([EBKN_AUFNR] ,'"',''),
					REPLACE([EBKN_WEMPF] ,'"',''),
					REPLACE([EBKN_ABLAD] ,'"',''),
					REPLACE([EBKN_KOKRS] ,'"',''),
					REPLACE([EBKN_KSTRG] ,'"',''),
					REPLACE([EBKN_PRCTR] ,'"',''),
					[dbo].[add_0](8,REPLACE([EBKN_PS_PSP_PNR] ,'"','')),
					[dbo].[add_0](12,REPLACE([EBKN_NPLNR] ,'"','')),
					REPLACE([EBKN_AUFPL] ,'"',''),
					REPLACE([EBKN_APLZL] ,'"',''),
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EBKN_DABRZ] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EBKN_DABRZ], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EBKN_DABRZ], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBKN_DABRZ],
					CASE
						WHEN 
							ISNUMERIC(REPLACE(REPLACE(REPLACE([EBKN_NETWR], CHAR(13), ''), CHAR(10), ''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([EBKN_NETWR], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBKN_NETWR],
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EBKN_UDATE] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EBKN_UDATE], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EBKN_UDATE], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBKN_UDATE],
					CASE 
						WHEN REPLACE(REPLACE(REPLACE([EBKN_DATUM] , CHAR(13), ''), CHAR(10), ''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
							WHEN ISDATE(REPLACE(REPLACE(REPLACE([EBKN_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([EBKN_DATUM], CHAR(13), ''), CHAR(10), ''),'"',''))
							ELSE NULL
						END AS [EBKN_DATUM]
					FROM
					[dbo].[PR_Accounting_ETL]
					where [EBKN_MANDT] is not null
					AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))

--we delete the imported ID for every 
DELETE [dbo].[PR_Accounting_ETL]
    FROM [dbo].[PR_Accounting_ETL]
        INNER JOIN @TempPRAccounting as t ON [dbo].[PR_Accounting_ETL].[ID]=t.[EBKN_UNIQU] 
		IF (@@ROWCOUNT = 0)
		BREAK;
END 
GO
