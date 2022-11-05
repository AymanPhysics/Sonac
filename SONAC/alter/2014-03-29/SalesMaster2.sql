alter table SalesMaster2 add Flag int not null default(1)
alter table SalesDetails2 add Flag int not null default(1)
go
update SalesMaster2 set Flag=1
update SalesDetails2 set Flag=1

