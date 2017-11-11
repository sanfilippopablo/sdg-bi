USE [TDC history sales]
GO

/****** Object:  Table [dbo].[Billing]    Script Date: 11/11/2017 17:48:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Billing](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[billing_id] [int] NULL,
	[date] [smalldatetime] NULL,
	[customer_id] [int] NULL,
	[employee_id] [int] NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL,
	[region] [varchar](45) NULL,
 CONSTRAINT [PK_LineasVentas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


