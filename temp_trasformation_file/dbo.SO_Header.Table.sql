USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[SO_Header]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SO_Header](
	[VBAK_UNIQU] [int] IDENTITY(1,1) NOT NULL,
	[VBAK_UID] [uniqueidentifier] NULL,
	[HASH_SALESORDER_HEADER] [binary](16) NULL,
	[HASH_PRJ_ORDER] [binary](16) NULL,
	[VBAK_SYSID] [nvarchar](255) NULL,
	[VBAK_MANDT] [nvarchar](255) NULL,
	[VBAK_VBELN] [nvarchar](255) NULL,
	[VBAK_ERDAT] [datetime2](7) NULL,
	[VBAK_ERNAM] [nvarchar](255) NULL,
	[VBAK_AUDAT] [datetime2](7) NULL,
	[VBAK_VBTYP] [nvarchar](255) NULL,
	[VBAK_TRVOG] [nvarchar](255) NULL,
	[VBAK_AUART] [nvarchar](255) NULL,
	[VBAK_AUGRU] [nvarchar](255) NULL,
	[VBAK_NETWR] [decimal](18, 2) NULL,
	[VBAK_WAERK] [nvarchar](255) NULL,
	[VBAK_VKBUR] [nvarchar](255) NULL,
	[VBAK_VDATU] [datetime2](7) NULL,
	[VBAK_AWAHR] [nvarchar](255) NULL,
	[VBAK_BSTDK] [datetime2](7) NULL,
	[VBAK_KUNNR] [nvarchar](255) NULL,
	[VBAK_AEDAT] [datetime2](7) NULL,
	[VBAK_PS_PSP_PNR] [nvarchar](255) NULL,
	[VBAK_VMBDAT] [datetime2](7) NULL,
	[VBAK_DATUM] [datetime2](7) NULL,
	[SSMA_TimeStamp] [datetime2](7) NOT NULL,
	[SSMA_LAST_TS] [datetime2](7) NULL,
 CONSTRAINT [PK_SO_Header] PRIMARY KEY CLUSTERED 
(
	[VBAK_UNIQU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SO_Header] ADD  CONSTRAINT [DF__SO_Header__SSMA___607251E5]  DEFAULT (getdate()) FOR [SSMA_TimeStamp]
GO
