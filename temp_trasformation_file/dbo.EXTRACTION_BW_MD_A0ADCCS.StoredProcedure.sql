USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[EXTRACTION_BW_MD_A0ADCCS]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Sangy Sangy>
-- Create date: <Jan, 2018>
-- Description:	<ETL>
-- =============================================
CREATE PROCEDURE [dbo].[EXTRACTION_BW_MD_A0ADCCS]
AS
BEGIN
	SET NOCOUNT ON;

select
'ADCCS Code',
'AGCCS',
'Main Sub-commodity allocation (Orlando)',
'Commodity Manager (Orlando)',
'ADCCS CLUSTER',
'ADCCS CLUSTER (EEE)',
'[Main Sub-commodity allocation (EEE)',
'Commodity Manager (EEE)',
'Main Sub-commodity allocation (Production)',
'Commodity Manager (Production)',
'Main Sub-commodity allocation (CS/MRO)',
'Commodity Manager (CS/MRO)',
'Text'
union all
select distinct
[ADCCS Code],
[AGCCS],
[Main Sub-commodity allocation (Orlando)],
[Commodity Manager (Orlando)],
[ADCCS CLUSTER],
[ADCCS CLUSTER (EEE)],
[Main Sub-commodity allocation (EEE)	],
[Commodity Manager (EEE)],
[Main Sub-commodity allocation (Production)],
[Commodity Manager (Production)],
[Main Sub-commodity allocation (CS/MRO)],
[Commodity Manager (CS/MRO)],
[Text]
from
[dbo].[BW_MD_A0ADCCS]
END

GO
