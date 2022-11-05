select * from Statics


select * from chart order by CAST(ID as varchar(10))
go

alter table Statics add 
S_AccNo int,R_S_AccNo int,P_AccNo int,R_P_AccNo int,
S_AccNo1 int,S_Per1 decimal(18,2),S_AccType1 int,
S_AccNo2 int,S_Per2 decimal(18,2),S_AccType2 int,
S_AccNo3 int,S_Per3 decimal(18,2),S_AccType3 int,
S_AccNo4 int,S_Per4 decimal(18,2),S_AccType4 int,
P_AccNo1 int,P_Per1 decimal(18,2),P_AccType1 int,
P_AccNo2 int,P_Per2 decimal(18,2),P_AccType2 int,
P_AccNo3 int,P_Per3 decimal(18,2),P_AccType3 int,
P_AccNo4 int,P_Per4 decimal(18,2),P_AccType4 int
go
update Statics set 
S_AccNo =411,
R_S_AccNo =331,
P_AccNo =311,
R_P_AccNo =431,

S_AccNo1=1302,S_Per1=10,S_AccType1=2,
S_AccNo2=1303,S_Per2=1,S_AccType2=2,
S_AccNo3=321,S_Per3=0,S_AccType3=1,
S_AccNo4=0,S_Per4=0,S_AccType4=0,
P_AccNo1=2201,P_Per1=10,P_AccType1=2,
P_AccNo2=2205,P_Per2=1,P_AccType2=2,
P_AccNo3=421,P_Per3=0,P_AccType3=1,
P_AccNo4=0,P_Per4=0,P_AccType4=0


go
alter table SalesMaster add 
AccNo1 int,Per1 decimal(18,2),Val1 decimal(18,2),
AccNo2 int,Per2 decimal(18,2),Val2 decimal(18,2),
AccNo3 int,Per3 decimal(18,2),Val3 decimal(18,2),
AccNo4 int,Per4 decimal(18,2),Val4 decimal(18,2)
go
alter table DeletedSalesMaster add 
AccNo1 int,Per1 decimal(18,2),Val1 decimal(18,2),
AccNo2 int,Per2 decimal(18,2),Val2 decimal(18,2),
AccNo3 int,Per3 decimal(18,2),Val3 decimal(18,2),
AccNo4 int,Per4 decimal(18,2),Val4 decimal(18,2)
go


go
alter table SalesMaster add AccType1 int,AccType2 int,AccType3 int,AccType4 int
go
alter table DeletedSalesMaster add AccType1 int,AccType2 int,AccType3 int,AccType4 int



go
update SalesMaster set AccType1 =0,AccType2 =0,AccType3 =0,AccType4 =0,
AccNo1 =0,Per1 =0,Val1 =0,
AccNo2 =0,Per2 =0,Val2 =0,
AccNo3 =0,Per3 =0,Val3 =0,
AccNo4 =0,Per4 =0,Val4 =0
