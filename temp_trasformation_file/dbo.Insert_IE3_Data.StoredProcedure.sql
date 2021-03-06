USE [SPA_SQL]
GO
/****** Object:  StoredProcedure [dbo].[Insert_IE3_Data]    Script Date: 08.05.2018 14:41:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insert_IE3_Data]
AS
BEGIN
BULK INSERT [dbo].[CFT_Header_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\CFT_Header.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[CFT_Item_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\CFT_Item.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[CO_Header_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\CO_Header.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[CO_Item_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\CO_Item.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[GM_Header_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\GM_Header.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[GM_Item_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\GM_Item.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[INV_Header_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\INV_Header.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[INV_Item_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\INV_Item.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[PO_Accounting_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PO_Accounting.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[PO_Confirmation_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PO_Confirmation.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)


BULK INSERT [dbo].[PO_Header_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PO_Header.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[PO_History_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PO_History.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[PO_InfoRecord_GE_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PO_InfRecGe.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[PO_InfoRecord_PO_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PO_InfRecPOOrg.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[PO_Item_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PO_Item.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[PO_Schedule_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PO_Schedule.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[PR_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PR.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[PR_Accounting_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\PR_Accounting.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[ProdOrder_Header_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\ProdOrder_Header.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)


BULK INSERT [dbo].[ProdOrder_Item_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\ProdOrder_Item.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[QInfRec_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\QInfRec.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[QN_Action_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\QN_Action.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[QN_Header_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\QN_Header.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[QN_Item_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\QN_Item.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[QN_Measure_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\QN_Measure.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[Savings_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\Savings.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[SO_Header_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\SO_Header.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
BULK INSERT [dbo].[SO_Item_ETL]
FROM 'C:\Programming_Projects\SPA\IE3\IE3_Data\SO_Item.txt'
WITH
(	
	FIRSTROW = 2,
    FIELDTERMINATOR =';',
	ROWTERMINATOR = '\n',
    --rowterminator = '\n',
    tablock
)
END










GO
