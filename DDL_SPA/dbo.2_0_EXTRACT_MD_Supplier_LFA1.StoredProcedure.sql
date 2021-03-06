USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[2_0_EXTRACT_MD_Supplier_LFA1]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Pedro Morand>
-- Create date: <November, 2017>
-- Description:	<Deduplication>
-- =============================================
CREATE PROCEDURE [dbo].[2_0_EXTRACT_MD_Supplier_LFA1]
AS
BEGIN
	SET NOCOUNT ON;
select
	'LFA1_SYSID',
	'LFA1_MANDT',
	'LFA1_LIFNR',
	'LFA1_KRAUS',
	'LFA1_NAME1',
	'LFA1_NAME2',
	'LFA1_NAME3',
	'LFA1_NAME4',
	'LFA1_STRAS',
	'LFA1_PSTLZ',
	'LFA1_ORT01',
	'LFA1_REGIO',
	'LFA1_LAND1',
	'LFA1_PFACH',
	'LFA1_KTOKK',
	'LFA1_CONTACTFIRSTNAME',
	'LFA1_CONTACTLASTNAME',
	'LFA1_TELF1',
	'LFA1_TELF2',
	'LFA1_TELTX',
	'LFA1_TELFX',
	'LFA1_SPRAS',
	'LFA1_ZWWLS',
	'LFA1_SPERR',
	'LFA1_SPERM',
	'LFA1_SPERZ',
	'LFA1_SPERQ',
	'LFA1_NODEL',
	'LFA1_ERDAT',
	'LFA1_LOEVM',
	'LFA1_STCD1',
	'LFA1_STCD2',
	'LFA1_STCEG',
	'LFA1_VBUND',
	'LFA1_SORTL',
	'LFA1_DATUM'
union all
select
CASE WHEN replace([LFA1_SYSID],' ','') = '' then NULL ELSE replace([LFA1_SYSID],' ','') end as [LFA1_SYSID],
CASE WHEN replace([LFA1_MANDT],' ','') = '' then NULL ELSE replace([LFA1_MANDT],' ','') end as [LFA1_MANDT],
CASE WHEN replace([LFA1_LIFNR],' ','') = '' then NULL ELSE replace([LFA1_LIFNR],' ','') end as [LFA1_LIFNR],
CASE WHEN replace([LFA1_KRAUS],' ','') = '' then NULL ELSE replace([LFA1_KRAUS],' ','') end as [LFA1_KRAUS],
CASE WHEN replace([LFA1_NAME1],' ','') = '' then NULL ELSE replace([LFA1_NAME1],' ','') end as [LFA1_NAME1],
CASE WHEN replace([LFA1_NAME2],' ','') = '' then NULL ELSE replace([LFA1_NAME2],' ','') end as [LFA1_NAME2],
CASE WHEN replace([LFA1_NAME3],' ','') = '' then NULL ELSE replace([LFA1_NAME3],' ','') end as [LFA1_NAME3],
CASE WHEN replace([LFA1_NAME4],' ','') = '' then NULL ELSE replace([LFA1_NAME4],' ','') end as [LFA1_NAME4],
CASE WHEN replace([LFA1_STRAS],' ','') = '' then NULL ELSE replace([LFA1_STRAS],' ','') end as [LFA1_STRAS],
CASE WHEN replace([LFA1_PSTLZ],' ','') = '' then NULL ELSE replace([LFA1_PSTLZ],' ','') end as [LFA1_PSTLZ],
CASE WHEN replace([LFA1_ORT01],' ','') = '' then NULL ELSE replace([LFA1_ORT01],' ','') end as [LFA1_ORT01],
CASE WHEN replace([LFA1_REGIO],' ','') = '' then NULL ELSE replace([LFA1_REGIO],' ','') end as [LFA1_REGIO],
CASE WHEN replace([LFA1_LAND1],' ','') = '' then NULL ELSE replace([LFA1_LAND1],' ','') end as [LFA1_LAND1],
CASE WHEN replace([LFA1_PFACH],' ','') = '' then NULL ELSE replace([LFA1_PFACH],' ','') end as [LFA1_PFACH],
CASE WHEN replace([LFA1_KTOKK],' ','') = '' then NULL ELSE replace([LFA1_KTOKK],' ','') end as [LFA1_KTOKK],
CASE WHEN replace([LFA1_CONTACTFIRSTNAME],' ','') = '' then NULL ELSE replace([LFA1_CONTACTFIRSTNAME],' ','') end as [LFA1_CONTACTFIRSTNAME],
CASE WHEN replace([LFA1_CONTACTLASTNAME],' ','') = '' then NULL ELSE replace([LFA1_CONTACTLASTNAME],' ','') end as [LFA1_CONTACTLASTNAME],
CASE WHEN replace([LFA1_TELF1],' ','') = '' then NULL ELSE replace([LFA1_TELF1],' ','') end as [LFA1_TELF1],
CASE WHEN replace([LFA1_TELF2],' ','') = '' then NULL ELSE replace([LFA1_TELF2],' ','') end as [LFA1_TELF2],
CASE WHEN replace([LFA1_TELTX],' ','') = '' then NULL ELSE replace([LFA1_TELTX],' ','') end as [LFA1_TELTX],
CASE WHEN replace([LFA1_TELFX],' ','') = '' then NULL ELSE replace([LFA1_TELFX],' ','') end as [LFA1_TELFX],
CASE WHEN replace([LFA1_SPRAS],' ','') = '' then NULL ELSE replace([LFA1_SPRAS],' ','') end as [LFA1_SPRAS],
CASE WHEN replace([LFA1_ZWWLS],' ','') = '' then NULL ELSE replace([LFA1_ZWWLS],' ','') end as [LFA1_ZWWLS],
CASE WHEN replace([LFA1_SPERR],' ','') = '' then NULL ELSE replace([LFA1_SPERR],' ','') end as [LFA1_SPERR],
CASE WHEN replace([LFA1_SPERM],' ','') = '' then NULL ELSE replace([LFA1_SPERM],' ','') end as [LFA1_SPERM],
CASE WHEN replace([LFA1_SPERZ],' ','') = '' then NULL ELSE replace([LFA1_SPERZ],' ','') end as [LFA1_SPERZ],
CASE WHEN replace([LFA1_SPERQ],' ','') = '' then NULL ELSE replace([LFA1_SPERQ],' ','') end as [LFA1_SPERQ],
CASE WHEN replace([LFA1_NODEL],' ','') = '' then NULL ELSE replace([LFA1_NODEL],' ','') end as [LFA1_NODEL],
CASE WHEN replace([LFA1_ERDAT],' ','') = '' then NULL ELSE replace([LFA1_ERDAT],' ','') end as [LFA1_ERDAT],
CASE WHEN replace([LFA1_LOEVM],' ','') = '' then NULL ELSE replace([LFA1_LOEVM],' ','') end as [LFA1_LOEVM],
CASE WHEN replace([LFA1_STCD1],' ','') = '' then NULL ELSE replace([LFA1_STCD1],' ','') end as [LFA1_STCD1],
CASE WHEN replace([LFA1_STCD2],' ','') = '' then NULL ELSE replace([LFA1_STCD2],' ','') end as [LFA1_STCD2],
CASE WHEN replace([LFA1_STCEG],' ','') = '' then NULL ELSE replace([LFA1_STCEG],' ','') end as [LFA1_STCEG],
CASE WHEN replace([LFA1_VBUND],' ','') = '' then NULL ELSE replace([LFA1_VBUND],' ','') end as [LFA1_VBUND],
CASE WHEN replace([LFA1_SORTL],' ','') = '' then NULL ELSE replace([LFA1_SORTL],' ','') end as [LFA1_SORTL],
CASE 
WHEN replace([LFA1_DATUM],' ','') = ' ' then '00000000'
WHEN replace([LFA1_DATUM],' ','') = '' then NULL 
ELSE replace([LFA1_DATUM],' ','') end as [LFA1_DATUM]
from
[dbo].[MD_Supplier_LFA1]
WHERE
REPLACE([LFA1_SPRAS] ,'"','') in
('A',
'B',
'C',
'D',
'E',
'F',
'G',
'H',
'I',
'J',
'K',
'L',
'M',
'N',
'O',
'P',
'Q',
'R',
'S',
'T',
'U',
'V',
'W',
'X',
'Y')

AND
--exclusion of LM3 and IE3 for BW because automated
[LFA1_SYSID] not in ('LM3','IE3')
;
END
GO
