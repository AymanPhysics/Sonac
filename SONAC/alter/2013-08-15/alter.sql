alter table employees add 
Bonus decimal(18,2),
LateAllowance decimal(18,2),
Insurance decimal(18,2),
Annual decimal(18,0),
NoofDaysOff decimal(18,0),
NoofMonthlyExecuses decimal(18,0),
HolidayWorkValue decimal(18,2)
go
alter table employees alter column Allowance decimal(18,2)
go
update employees set
Bonus=0,
LateAllowance=Allowance,
Allowance=0,
Insurance=0,
Annual=21,
NoofDaysOff=7,
NoofMonthlyExecuses=2,
HolidayWorkValue=2,

Saturday=1,
Sunday=1,
Monday=1,
Tuesday=1,
Wednesday=1,
Thursday=1,
Friday=0


