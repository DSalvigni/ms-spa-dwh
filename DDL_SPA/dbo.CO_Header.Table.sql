USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[CO_Header]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CO_Header](
	[EKKOK_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[EKKOK_UID] [uniqueidentifier] NULL,
	[HASH_PO_HEADER] [binary](16) NULL,
	[HASH_MD_PGROUP] [binary](16) NULL,
	[HASH_SUPPLIER_LFB1] [binary](16) NULL,
	[HASH_SUPPLIER_LFM1] [binary](16) NULL,
	[EKKOK_SYSID] [nvarchar](255) NULL,
	[EKKOK_MANDT] [nvarchar](255) NULL,
	[EKKOK_BUKRS] [nvarchar](255) NULL,
	[EKKOK_EBELN] [nvarchar](255) NULL,
	[EKKOK_LOEKZ] [nvarchar](255) NULL,
	[EKKOK_AEDAT] [datetime2](7) NULL,
	[EKKOK_BEDAT] [datetime2](7) NULL,
	[EKKOK_WAERS] [nvarchar](255) NULL,
	[EKKOK_WKURS] [decimal](18, 5) NULL,
	[EKKOK_KUFIX] [nvarchar](255) NULL,
	[EKKOK_CWAERS] [nvarchar](255) NULL,
	[EKKOK_LONGTEXT] [text] NULL,
	[EKKOK_LIFNR] [nvarchar](255) NULL,
	[EKKOK_BSTYP] [nvarchar](255) NULL,
	[EKKOK_BSART] [nvarchar](255) NULL,
	[EKKOK_INCO1] [nvarchar](255) NULL,
	[EKKOK_INCO2] [nvarchar](255) NULL,
	[EKKOK_ZTERM] [nvarchar](255) NULL,
	[EKKOK_EKORG] [nvarchar](255) NULL,
	[EKKOK_EKGRP] [nvarchar](255) NULL,
	[EKKOK_IHREZ] [nvarchar](255) NULL,
	[EKKOK_UNSEZ] [nvarchar](255) NULL,
	[EKKOK_KDATB] [datetime2](7) NULL,
	[EKKOK_KDATE] [datetime2](7) NULL,
	[EKKOK_KONNR] [nvarchar](255) NULL,
	[EKKOK_ANGNR] [nvarchar](255) NULL,
	[EKKOK_IHRAN] [datetime2](7) NULL,
	[EKKOK_SUBMI] [nvarchar](255) NULL,
	[EKKOK_STCEG] [nvarchar](255) NULL,
	[EKKOK_EKGSM] [nvarchar](255) NULL,
	[EKKOK_UEBDT] [datetime2](7) NULL,
	[EKKOK_ERNAM] [nvarchar](255) NULL,
	[EKKOK_AEUSERNAME] [nvarchar](255) NULL,
	[EKKOK_UDATE] [datetime2](7) NULL,
	[EKKOK_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_CO_Header] PRIMARY KEY CLUSTERED 
(
	[EKKOK_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO_Header] ADD  CONSTRAINT [DF__CO_Header__SSMA___1A14E395]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
