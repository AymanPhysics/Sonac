CREATE TABLE [dbo].AccTypes(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


insert AccTypes select 1,'Œ’„',1,'1900-1-1'
insert AccTypes select 2,'≈÷«›…',1,'1900-1-1'