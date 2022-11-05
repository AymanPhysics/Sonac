
CREATE TABLE [dbo].[GroupsPackaged](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
)

CREATE TABLE [dbo].[TypesPackaged](
	[GroupId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
)

CREATE TABLE [dbo].[GroupsFinal](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
)

CREATE TABLE [dbo].[TypesFinal](
	[GroupId] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
)

CREATE TABLE [dbo].[ItemsPackaged](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[GroupId] [int] NULL,
	[TypeId] [int] NULL,
	[Unit] [nvarchar](1000) NULL,
	[Price] [decimal](18, 2) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Image] [image] NULL,
)

CREATE TABLE [dbo].[ItemsFinal](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[GroupId] [int] NULL,
	[TypeId] [int] NULL,
	[Unit] [nvarchar](1000) NULL,
	[Price] [decimal](18, 2) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[Image] [image] NULL,
)
