alter table chart add bal0 float
go
update chart set bal0 =isnull(bal0 ,0)
go
