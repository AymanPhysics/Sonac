CREATE TABLE [dbo].LabTestItems(
	[TestId] [int] NOT NULL,
	[SubTestId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	RefrenceRange [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


CREATE TABLE [dbo].LabTestItemsResults(
	[TestId] [int] NOT NULL,
	[SubTestId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	Result [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


