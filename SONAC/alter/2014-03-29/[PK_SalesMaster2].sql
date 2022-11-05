alter TABLE [dbo].[SalesMaster2] drop CONSTRAINT [PK_SalesMaster2] 
alter TABLE [dbo].[SalesMaster2] add CONSTRAINT [PK_SalesMaster2] PRIMARY KEY CLUSTERED ([InvoiceNo] ,Flag)

