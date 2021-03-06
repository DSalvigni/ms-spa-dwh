USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[CFT_Header_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CFT_Header_ETL](
	[EKKOA_SYSID] [varchar](max) NULL,
	[EKKOA_MANDT] [varchar](max) NULL,
	[EKKOA_BUKRS] [varchar](max) NULL,
	[EKKOA_EBELN] [varchar](max) NULL,
	[EKKOA_LOEKZ] [varchar](max) NULL,
	[EKKOA_AEDAT] [varchar](max) NULL,
	[EKKOA_BEDAT] [varchar](max) NULL,
	[EKKOA_WAERS] [varchar](max) NULL,
	[EKKOA_WKURS] [varchar](max) NULL,
	[EKKOA_KUFIX] [varchar](max) NULL,
	[EKKOA_CWAERS] [varchar](max) NULL,
	[EKKOA_LONGTEXT] [varchar](max) NULL,
	[EKKOA_LIFNR] [varchar](max) NULL,
	[EKKOA_BSTYP] [varchar](max) NULL,
	[EKKOA_BSART] [varchar](max) NULL,
	[EKKOA_INCO1] [varchar](max) NULL,
	[EKKOA_INCO2] [varchar](max) NULL,
	[EKKOA_ZTERM] [varchar](max) NULL,
	[EKKOA_EKORG] [varchar](max) NULL,
	[EKKOA_EKGRP] [varchar](max) NULL,
	[EKKOA_IHREZ] [varchar](max) NULL,
	[EKKOA_UNSEZ] [varchar](max) NULL,
	[EKKOA_KDATB] [varchar](max) NULL,
	[EKKOA_KDATE] [varchar](max) NULL,
	[EKKOA_KONNR] [varchar](max) NULL,
	[EKKOA_ANGNR] [varchar](max) NULL,
	[EKKOA_IHRAN] [varchar](max) NULL,
	[EKKOA_SUBMI] [varchar](max) NULL,
	[EKKOA_STCEG] [varchar](max) NULL,
	[EKKOA_EKGSM] [varchar](max) NULL,
	[EKKOA_UEBDT] [varchar](max) NULL,
	[EKKOA_ERNAM] [varchar](max) NULL,
	[EKKOA_AEUSERNAME] [varchar](max) NULL,
	[EKKOA_UDATE] [varchar](max) NULL,
	[EKKOA_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_CFT_Header_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CFT_Header_ETL] ADD  CONSTRAINT [DF__CFT_Header_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[CFT_Header_ETL] ADD  CONSTRAINT [DF__CFT_Header_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
