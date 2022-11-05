CREATE TABLE [dbo].LeaveRequests(
	[Id] [int] NOT NULL,
	[EmpId] [int] NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	[hh] [int] NULL,
	[mm] [int] NULL,
	[Reason] [nvarchar](4000) NULL,
 CONSTRAINT [PK_LeaveRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].LeaveRequests2(
	[Id] [int] NOT NULL,
	[EmpId] [int] NULL,
	[DayDate] [datetime] NULL,
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL,
	LeaveType int, 
	HalfDay int, 
	FromDate datetime , 
	ToDate datetime ,
	[Reason] [nvarchar](4000) NULL,
 CONSTRAINT [PK_LeaveRequests2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

