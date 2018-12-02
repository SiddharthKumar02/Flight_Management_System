create table Airport(
AiportID varchar(20),
AirportName varchar(30),
AirportTerminal varchar(10),
Status varchar(20),
primary key(AiportID)
);
create table Capacity(
AirplaneType varchar(20),
capacity numeric(5),
primary key(AirplaneType)
);
create table Airplane(
AirplaneID varchar(20),
OriginAID varchar(20),
DestinationAID varchar(20),
AirlineName varchar(30),
AirplaneType varchar(20),
primary key(AirplaneID),
foreign key(DestinationAID) references Airport,
foreign key(OriginAID) references Airport,
foreign key(AirplaneType) references Capacity
);
create table Schedule(
ScheduleDate date,
AirplaneID varchar(20),
ArrivalTime time,
DepartureTime time,
primary key(ScheduleDate,AirplaneID),
foreign key(AirplaneID) references Airplane
);
create table Employee(
EmpID varchar(20),
EmpName varchar(30),
EmpPosition varchar(20),
primary key(EmpID)
);
create table Crew(
EmpID varchar(20),

ScheduleDate date,
AirplaneID varchar(20),
primary key(EmpID,ScheduleDate),
foreign key(AirplaneID) references Airplane
);
create table Passenger(
PNR varchar(20),
AirplaneId varchar(20),
ScheduleDate date,
Pname varchar(30),
seatno varchar(20),
primary key(PNR),
foreign key(AirplaneID) references Airplane
);
create table Pcontact(
PNR varchar(20),
phone varchar(20),
primary key(phone),
foreign key(PNR) references Passenger
);