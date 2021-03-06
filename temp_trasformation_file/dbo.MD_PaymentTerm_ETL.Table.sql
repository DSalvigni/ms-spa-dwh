USE [SPA_SQL]
GO
/****** Object:  Table [dbo].[MD_PaymentTerm_ETL]    Script Date: 08.05.2018 14:41:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MD_PaymentTerm_ETL](
	[T052_SYSID] [varchar](max) NULL,
	[T052_MANDT] [varchar](max) NULL,
	[T052_ZTERM] [varchar](max) NULL,
	[T052_SPRAS] [varchar](max) NULL,
	[T052_TEXT1] [varchar](max) NULL,
	[T052_ZTAG1] [varchar](max) NULL,
	[T052_ZPRZ1] [varchar](max) NULL,
	[T052_ZTAG2] [varchar](max) NULL,
	[T052_ZPRZ2] [varchar](max) NULL,
	[T052_ZTAG3] [varchar](max) NULL,
	[T052_ZTAGG] [varchar](max) NULL,
	[T052_DATUM] [varchar](max) NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LAST_UPDATE] [datetime2](7) NULL,
	[UPLOAD_TIME] [datetime2](7) NULL,
	[UPLOAD_BLOCK] [varchar](1) NULL,
 CONSTRAINT [PK_MD_paymentTerm_ETL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[MD_PaymentTerm_ETL] ADD  CONSTRAINT [DF__MD_paymentTerm_ETL_Last_Update]  DEFAULT (getdate()) FOR [LAST_UPDATE]
GO
ALTER TABLE [dbo].[MD_PaymentTerm_ETL] ADD  CONSTRAINT [DF__MD_paymentTerm_ETL_Upload_Time]  DEFAULT (getdate()) FOR [UPLOAD_TIME]
GO
