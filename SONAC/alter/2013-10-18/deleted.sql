
/****** Object:  Table [dbo].[DeletedSalesMaster]    Script Date: 10/21/2013 03:52:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DeletedSalesMaster]') AND type in (N'U'))
DROP TABLE [dbo].[DeletedSalesMaster]
GO

CREATE TABLE [dbo].[DeletedSalesMaster](
	[Flag] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[DayDate] [datetime] NULL,
	[Shift] [int] NULL,
	[TableId] [int] NULL,
	[TableSubId] [int] NULL,
	[UserName] [int] NULL,
	[IsClosed] [int] NULL,
	[NoOfPersons] [int] NULL,
	[MinPerPerson] [decimal](18, 2) NULL,
	[CancelMinPerPerson] [int] NULL,
	[WithService] [int] NULL,
	[WithTax] [int] NULL,
	[ServiceValue] [decimal](18, 2) NULL,
	[Taxvalue] [decimal](18, 2) NULL,
	[PaymentType] [int] NULL,
	[CashValue] [decimal](18, 2) NULL,
	[DiscountPerc] [decimal](18, 2) NULL,
	[DiscountValue] [decimal](18, 2) NULL,
	[ToId] [int] NULL,
	[WaiterId] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[OpennedDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
	[ClosedDate] [datetime] NULL,
	[IsCashierPrinted] [int] NULL,
	[Cashier] [int] NULL,
	[DeliverymanId] [int] NULL,
	[Total] [decimal](12, 2) NULL,
	[DocNo] [nvarchar](100) NULL,
	[AccNo1] [int] NULL,
	[Per1] [decimal](18, 2) NULL,
	[Val1] [decimal](18, 2) NULL,
	[AccNo2] [int] NULL,
	[Per2] [decimal](18, 2) NULL,
	[Val2] [decimal](18, 2) NULL,
	[AccNo3] [int] NULL,
	[Per3] [decimal](18, 2) NULL,
	[Val3] [decimal](18, 2) NULL,
	[AccNo4] [int] NULL,
	[Per4] [decimal](18, 2) NULL,
	[Val4] [decimal](18, 2) NULL,
	[AccType1] [int] NULL,
	[AccType2] [int] NULL,
	[AccType3] [int] NULL,
	[AccType4] [int] NULL,
	[TotalAfterDiscount] [decimal](18, 2) NULL,
	[DeletedDate] [datetime] NULL,
	[UserDelete] [int] NULL,
	[LastLine] [int] NULL,
	[State] [varchar](100) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


