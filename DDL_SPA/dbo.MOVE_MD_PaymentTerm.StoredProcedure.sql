USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[MOVE_MD_PaymentTerm]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Salvigni - SanGy - Daniele>
-- Create date: <Januaryr, 2018>
-- Status:  ヾ(⌐■_■)ノ
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[MOVE_MD_PaymentTerm]
AS
BEGIN
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SET DATEFORMAT DMY;
INSERT INTO
[dbo].[MD_PaymentTerm]
(
[HASH_MD_PAYMENTTERM],
[T052_SYSID],
[T052_MANDT],
[T052_ZTERM],
[T052_SPRAS],
[T052_TEXT1],
[T052_ZTAG1],
[T052_ZPRZ1],
[T052_ZTAG2],
[T052_ZPRZ2],
[T052_ZTAG3],
[T052_ZTAGG],
[T052_DATUM]
)
SELECT
HASHBYTES('MD5',CONCAT(REPLACE(REPLACE([T052_SYSID],'"',''),' ',''),REPLACE(REPLACE([T052_MANDT],'"',''),' ',''),REPLACE(REPLACE([T052_ZTERM],'"',''),' ',''),REPLACE(REPLACE([T052_ZTAGG],'"',''),' ',''))) as [HASH_MD_PAYMENTTERM],
REPLACE([T052_SYSID],'"',''),
REPLACE([T052_MANDT],'"',''),
REPLACE([T052_ZTERM],'"',''),
REPLACE([T052_SPRAS],'"',''),
REPLACE([T052_TEXT1],'"',''),
REPLACE([T052_ZTAG1],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([T052_ZPRZ1],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([T052_ZPRZ1],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [T052_ZPRZ1],
REPLACE([T052_ZTAG2],'"',''),
CASE
	WHEN 
		ISNUMERIC(REPLACE(REPLACE(REPLACE([T052_ZPRZ2],CHAR(13),''),CHAR(10),''),'"','')) = 1 THEN TRY_CONVERT(decimal(18,2),REPLACE(REPLACE(REPLACE([T052_ZPRZ2],CHAR(13),''),CHAR(10),''),'"',''))
		ELSE NULL
	END AS [T052_ZPRZ2],
REPLACE([T052_ZTAG3],'"',''),
REPLACE([T052_ZTAGG],'"',''),
CASE 
	WHEN REPLACE(REPLACE(REPLACE([T052_DATUM],CHAR(13),''),CHAR(10),''),'"','')='00000000' THEN TRY_CONVERT(datetime2,'01-01-1900 00:00:00 AM')
		WHEN ISDATE(REPLACE(REPLACE(REPLACE([T052_DATUM],CHAR(13),''),CHAR(10),''),'"',''))=1 THEN TRY_CONVERT(datetime2,REPLACE(REPLACE(REPLACE([T052_DATUM],CHAR(13),''),CHAR(10),''),'"','')) 
		ELSE NULL
	END AS [T052_DATUM]
FROM
[dbo].[MD_PaymentTerm_ETL]
where [T052_MANDT] is not null
AND [UPLOAD_TIME] > DATEADD(day,-2,TRY_CONVERT(datetime2,GETDATE()))
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
END

GO
