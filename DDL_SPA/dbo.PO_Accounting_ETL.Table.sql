USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_Accounting_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_Accounting_ETL](
	[EKKN_SYSID] [varchar](max) NULL,
	[EKKN_MANDT] [varchar](max) NULL,
	[EKKN_EBELN] [varchar](max) NULL,
	[EKKN_EBELP] [varchar](max) NULL,
	[EKKN_LOEKZ] [varchar](max) NULL,
	[EKKN_AEDAT] [varchar](max) NULL,
	[EKKN_MENGE] [varchar](max) NULL,
	[EKKN_VPROZ] [varchar](max) NULL,
	[EKKN_NETWR] [varchar](max) NULL,
	[EKKN_ABLAD] [varchar](max) NULL,
	[EKKN_ZEKKN] [varchar](max) NULL,
	[EKKN_VETEN] [varchar](max) NULL,
	[EKKN_SAKTO] [varchar](max) NULL,
	[EKKN_KOSTL] [varchar](max) NULL,
	[EKKN_VBELN] [varchar](max) NULL,
	[EKKN_VBELP] [varchar](max) NULL,
	[EKKN_AUFNR] [varchar](max) NULL,
	[EKKN_PRCTR] [varchar](max) NULL,
	[EKKN_POSID] [varchar](max) NULL,
	[EKKN_NPLNR] [varchar](max) NULL,
	[EKKN_ZZBKZ] [varchar](max) NULL,
	[EKKN_ANLN1] [varchar](max) NULL,
	[EKKN_ANLN2] [varchar](max) NULL,
	[EKKN_WEMPF] [varchar](max) NULL,
	[EKKN_AA_FINAL_IND] [varchar](max) NULL,
	[EKKN_AA_FINAL_QTY] [varchar](max) NULL,
	[EKKN_AA_FINAL_REASON] [varchar](max) NULL,
	[EKKN_EREKZ] [varchar](max) NULL,
	[EKKN_ERUSERNAME] [varchar](max) NULL,
	[EKKN_AEUSERNAME] [varchar](max) NULL,
	[EKKN_UDATE] [varchar](max) NULL,
	[EKKN_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_PO_accounting_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_Accounting_ETL] ADD  CONSTRAINT [DF__PO_accounting_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[PO_Accounting_ETL] ADD  CONSTRAINT [DF__PO_accounting_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
