
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesMaster]') AND type in (N'U'))
DROP TABLE [dbo].[SalesMaster]
GO

CREATE TABLE [dbo].[SalesMaster](
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
 CONSTRAINT [PK_SalesMaster] PRIMARY KEY CLUSTERED 
(
	[Flag] ASC,
	[StoreId] ASC,
	[InvoiceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


