create table LabTests 
(
InvoiceNo int,
DayDate datetime,
CaseId int,
ReferredBy nvarchar(max),
FinalStudy nvarchar(max),

UserName int,
MyGetDate datetime
)
go

create table LabTestsDt 
(
InvoiceNo int,
TestId int,
SubTestId int,
Id int,
Result nvarchar(max),
	[UserName] [int] NULL,
	[MyGetDate] [datetime] NULL
)

