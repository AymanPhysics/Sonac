CREATE TABLE Gender(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO


delete Gender
insert Gender select 1,'���',1,'1900-1-1'
insert Gender select 2,'����',1,'1900-1-1'
update Cases set Gender=0