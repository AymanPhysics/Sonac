alter table Purchase add Loan float
go
update Purchase set Loan =ISNULL(Loan ,0)
go
