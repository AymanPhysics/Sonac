
/****** Object:  Table [dbo].[DeletedSalesDetails]    Script Date: 10/23/2013 02:10:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeletedSalesDetails]') AND type in (N'U'))
DROP TABLE [dbo].[DeletedSalesDetails]
GO

CREATE TABLE [dbo].[DeletedSalesDetails](
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[Shift] [int] NULL,
	[ItemId] [int] NULL,
	[ItemName] [nvarchar](1000) NULL,
	[Qty] [decimal](18, 0) NULL,
	[Price] [decimal](18, 2) NULL,
	[QtySub] [decimal](18, 2) NULL,
	[PriceSub] [decimal](18, 2) NULL,
	[Value] [decimal](18, 2) NULL,
	[IsPrinted] [int] NULL,
	[Line] [int] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[UnitId] [int] NULL,
	[UnitQty] [decimal](18, 0) NULL,
	[DeletedDate] [datetime] NULL,
	[UserDelete] [int] NULL,
	[LastLine] [int] NULL,
	[State] [varchar](100) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


