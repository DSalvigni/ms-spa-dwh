USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[INV_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INV_Header_ETL](
	[BKPF_SYSID] [varchar](max) NULL,
	[BKPF_MANDT] [varchar](max) NULL,
	[BKPF_GJAHR] [varchar](max) NULL,
	[BKPF_BELNR] [varchar](max) NULL,
	[BKPF_BUKRS] [varchar](max) NULL,
	[BKPF_BUDAT] [varchar](max) NULL,
	[BKPF_CPUDT] [varchar](max) NULL,
	[BKPF_BLDAT] [varchar](max) NULL,
	[BKPF_WAERS] [varchar](max) NULL,
	[BKPF_KURSF] [varchar](max) NULL,
	[BKPF_WWERT] [varchar](max) NULL,
	[BKPF_HWAER] [varchar](max) NULL,
	[BKPF_BKTXT] [varchar](max) NULL,
	[BKPF_BLART] [varchar](max) NULL,
	[BKPF_XBLNR] [varchar](max) NULL,
	[BKPF_BSTAT] [varchar](max) NULL,
	[BKPF_STJAH] [varchar](max) NULL,
	[BKPF_STBLG] [varchar](max) NULL,
	[BKPF_XREVERSAL] [varchar](max) NULL,
	[BKPF_ERUSERNAME] [varchar](max) NULL,
	[BKPF_AEUSERNAME] [varchar](max) NULL,
	[BKPF_AEDAT] [varchar](max) NULL,
	[BKPF_DATUM] [varchar](max) NULL,
	[BKPF_AUSBK] [varchar](max) NULL,
	[HASH_INV_HEADER_UNIQUE] [binary](16) NULL,
	[HASH_INV_HEADER] [binary](16) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_INV_header_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[INV_Header_ETL] ADD  CONSTRAINT [DF__INV_header_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[INV_Header_ETL] ADD  CONSTRAINT [DF__INV_header_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
