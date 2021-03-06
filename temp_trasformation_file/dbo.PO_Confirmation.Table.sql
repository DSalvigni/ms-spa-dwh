USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[PO_Confirmation]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO_Confirmation](
	[EKES_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EKES_UID] [uniqueidentifier] NULL,
	[HASH_PO_CONFIRMATION] [binary](16) NULL,
	[HASH_PO_ITEM] [binary](16) NULL,
	[EKES_SYSID] [nvarchar](255) NULL,
	[EKES_MANDT] [nvarchar](255) NULL,
	[EKES_EBELN] [nvarchar](255) NULL,
	[EKES_EBELP] [nvarchar](255) NULL,
	[EKES_ETENS] [nvarchar](255) NULL,
	[EKES_EBTYP] [nvarchar](255) NULL,
	[EKES_EINDT] [datetime2](7) NULL,
	[EKES_LPEIN] [nvarchar](255) NULL,
	[EKES_UZEIT] [datetime2](7) NULL,
	[EKES_ERDAT] [datetime2](7) NULL,
	[EKES_EZEIT] [datetime2](7) NULL,
	[EKES_MENGE] [decimal](18, 3) NULL,
	[EKES_DABMG] [decimal](18, 3) NULL,
	[EKES_ESTKZ] [nvarchar](255) NULL,
	[EKES_LOEKZ] [nvarchar](255) NULL,
	[EKES_KZDIS] [nvarchar](255) NULL,
	[EKES_XBLNR] [nvarchar](255) NULL,
	[EKES_VBELN] [nvarchar](255) NULL,
	[EKES_VBELP] [nvarchar](255) NULL,
	[EKES_MPROF] [nvarchar](255) NULL,
	[EKES_EMATN] [nvarchar](255) NULL,
	[EKES_MAHNZ] [decimal](18, 2) NULL,
	[EKES_CHARG] [nvarchar](255) NULL,
	[EKES_UECHA] [nvarchar](255) NULL,
	[EKES_REF_ETENS] [nvarchar](255) NULL,
	[EKES_IMWRK] [nvarchar](255) NULL,
	[EKES_VBELN_ST] [nvarchar](255) NULL,
	[EKES_VBELP_ST] [nvarchar](255) NULL,
	[EKES_J_3AETENR] [nvarchar](255) NULL,
	[EKES_ERUSERNAME] [nvarchar](255) NULL,
	[EKES_AEUSERNAME] [nvarchar](255) NULL,
	[EKES_UDATE] [datetime2](7) NULL,
	[EKES_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_PO_Confirmation] PRIMARY KEY CLUSTERED 
(
	[EKES_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PO_Confirmation] ADD  CONSTRAINT [DF__PO_Confir__SSMA___17F790F9]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
