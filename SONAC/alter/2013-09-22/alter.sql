
CREATE TABLE [dbo].MainJobs(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO

CREATE TABLE [dbo].SubJobs(
	MainJobId [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO

alter table employees add MainJobId int,SubJobId int
alter table SalaryHistory add MainJobId int,SubJobId int
go
CREATE TABLE [dbo].[Loans](
	[InvoiceNo] [int] NOT NULL,
	[EmpId] [int] NULL,
	[Value] [decimal](12, 2) NULL,
	[DayDate] [datetime] NULL,
	DedStartMonth int, 
	DedStartYear int,
	[Notes] [nvarchar](4000) NULL,
	[DedCount] [int] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_Loans] PRIMARY KEY CLUSTERED 
(
	[InvoiceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



alter table Nolon add Payments decimal(18,2),OtherPayments decimal(18,2)
go
update Nolon set Payments=ISNULL(Payments,0),OtherPayments=ISNULL(OtherPayments,0)
go

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentTypes]') AND type in (N'U'))
DROP TABLE [dbo].[PaymentTypes]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PaymentTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PaymentTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[PaymentTypes] ([Id], [Name], [UserName], [MyGetDate]) VALUES (1, N'·„ Ì „ «· ‰›Ì–', 1, CAST(0x00008EAC00000000 AS DateTime))
INSERT [dbo].[PaymentTypes] ([Id], [Name], [UserName], [MyGetDate]) VALUES (2, N' „ «· ‰›Ì– Ã“∆Ì«', 1, CAST(0x00008EAC00000000 AS DateTime))
INSERT [dbo].[PaymentTypes] ([Id], [Name], [UserName], [MyGetDate]) VALUES (3, N' „ «· ‰›Ì– ﬂ·Ì«', 1, CAST(0x00008EAC00000000 AS DateTime))

go
alter table Employees add SpAllowance  decimal(18,2)
go
alter table salaryhistory add SpAllowance  decimal(18,2)
go
alter table Attendance  add hh decimal(18,0),mm decimal(18,0)

alter table Attendance  add HourValue decimal(18,2)

alter table Attendance  add DelayMinutes decimal(18,2)
alter table Attendance  add OverMinutes decimal(18,2)
alter table Attendance  add DayPerc decimal(18,2)
alter table Attendance  add Month int,Year int
alter table Attendance  add Day int

alter table salaryhistory add Bonus decimal(18,2),Allowance decimal(18,2),Insurance decimal(18,2)

alter table salaryhistory add TotalBonus decimal(18,2),TotalCut decimal(18,2)

go
CREATE TABLE [dbo].[DirectCut](
	[Id] [int] NOT NULL,
	[EmpId] [int] NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[hh] [int] NULL,
	[mm] [int] NULL,
	[Reason] [nvarchar](4000) NULL,
	[IsVal] [varchar](1) NULL,
	[value] [decimal](12, 2) NULL,
 CONSTRAINT [PK_DirectCut] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [dbo].[DirectBonus](
	[Id] [int] NOT NULL,
	[EmpId] [int] NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[hh] [int] NULL,
	[mm] [int] NULL,
	[Reason] [nvarchar](4000) NULL,
	[IsVal] [varchar](1) NULL,
	[value] [decimal](12, 2) NULL,
 CONSTRAINT [PK_DirectBonus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[NolonAttachments](
	[InvoiceNo] [int] NOT NULL,
	[AttachedName] [varchar](1000) NOT NULL,
	[Image] [image] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


alter table employees add DelayValue decimal(18,2),OvertimeValue decimal(18,2)
go
update employees set DelayValue =1,OvertimeValue =1 where DelayValue  is null
go
create table CustomerCompanies
(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	CustId [int] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
) ON [PRIMARY]

GO

alter TABLE [dbo].[NolonPrices] drop column [Name] 
alter TABLE [dbo].[NolonPrices] drop column [Name2] 

go
alter TABLE [dbo].[NolonPrices] add 
	[CountryId] [int] NULL,
	[CityId] [int] NULL,
	[AreaId] [int] NULL,
	[CountryId1] [int] NULL,
	[CityId1] [int] NULL,
	[AreaId1] [int] NULL

go
alter table CustomerInvoices add CertificationNo varchar(100)
alter table Nolon add Value2 decimal(18,2),Tips2 decimal(18,2)
alter table Nolon add DocNo varchar(100),Docdate datetime
go
alter table Employees add IsFixedHours int,TotalHours int,TotalMinutes int
alter table Attendance   add IsFixedHours int,TotalHours int,TotalMinutes int
go
alter table  dbo.CustomerInvoices add SuppPersonId int
go

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NolonPriceTypes]') AND type in (N'U'))
DROP TABLE [dbo].[NolonPriceTypes]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NolonPriceTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NolonPriceTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
 CONSTRAINT [PK_NolonPriceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[NolonPriceTypes] ([Id], [Name], [UserName], [MyGetDate]) VALUES (1, N'1 * 40', 1, CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[NolonPriceTypes] ([Id], [Name], [UserName], [MyGetDate]) VALUES (2, N'1 * 20', 1, CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[NolonPriceTypes] ([Id], [Name], [UserName], [MyGetDate]) VALUES (3, N'2 * 20', 1, CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[NolonPriceTypes] ([Id], [Name], [UserName], [MyGetDate]) VALUES (4, N'1 * 20 ÀﬁÌ·', 1, CAST(0x0000000000000000 AS DateTime))

go
CREATE TABLE [dbo].[CustomerInvoiceAttachments](
	InvoiceNo [int] NOT NULL,
	[AttachedName] [varchar](1000) NOT NULL,
	[Image] [image] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[LastUpdate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


