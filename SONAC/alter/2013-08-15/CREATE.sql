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
