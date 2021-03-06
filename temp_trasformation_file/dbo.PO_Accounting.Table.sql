USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_Accounting]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_Accounting](
	[EKKN_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EKKN_UID] [uniqueidentifier] NULL,
	[HASH_PO_ACCOUNTING] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[HASH_PRODORDER] [binary](16) NULL,
	[HASH_SALESORDER_ITEM] [binary](16) NULL,
	[HASH_PRJ_POSID] [binary](16) NULL,
	[HASH_NETWORK] [binary](16) NULL,
	[EKKN_SYSID] [nvarchar](255) NULL,
	[EKKN_MANDT] [nvarchar](255) NULL,
	[EKKN_EBELN] [nvarchar](255) NULL,
	[EKKN_EBELP] [nvarchar](255) NULL,
	[EKKN_LOEKZ] [nvarchar](255) NULL,
	[EKKN_AEDAT] [datetime2](0) NULL,
	[EKKN_MENGE] [decimal](18, 3) NULL,
	[EKKN_VPROZ] [decimal](18, 2) NULL,
	[EKKN_NETWR] [decimal](18, 2) NULL,
	[EKKN_ABLAD] [nvarchar](255) NULL,
	[EKKN_ZEKKN] [nvarchar](255) NULL,
	[EKKN_VETEN] [nvarchar](255) NULL,
	[EKKN_SAKTO] [nvarchar](255) NULL,
	[EKKN_KOSTL] [nvarchar](255) NULL,
	[EKKN_VBELN] [nvarchar](255) NULL,
	[EKKN_VBELP] [nvarchar](255) NULL,
	[EKKN_AUFNR] [nvarchar](255) NULL,
	[EKKN_PRCTR] [nvarchar](255) NULL,
	[EKKN_POSID] [nvarchar](255) NULL,
	[EKKN_NPLNR] [nvarchar](255) NULL,
	[EKKN_ZZBKZ] [nvarchar](255) NULL,
	[EKKN_ANLN1] [nvarchar](255) NULL,
	[EKKN_ANLN2] [nvarchar](255) NULL,
	[EKKN_WEMPF] [nvarchar](255) NULL,
	[EKKN_AA_FINAL_IND] [nvarchar](255) NULL,
	[EKKN_AA_FINAL_QTY] [decimal](18, 3) NULL,
	[EKKN_AA_FINAL_REASON] [nvarchar](255) NULL,
	[EKKN_EREKZ] [nvarchar](255) NULL,
	[EKKN_ERUSERNAME] [nvarchar](255) NULL,
	[EKKN_AEUSERNAME] [nvarchar](255) NULL,
	[EKKN_UDATE] [datetime2](7) NULL,
	[EKKN_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_PO_Accounting] PRIMARY KEY CLUSTERED 
(
	[EKKN_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_Accounting] ADD  CONSTRAINT [DF__PO_Accoun__SSMA___1332DBDC]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
