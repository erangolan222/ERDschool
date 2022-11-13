create table gym(
  gname char(20),
  gymId int,
  gymtype char(15),
  description char(30),
  primary key(gymId));



create table trainee(
  name char(20), 
  memberID int,
  phonenum int ,
  email char(20),
  gymId int,
  gymtype char(15),
  gname char(20),
  primary key (memberID),
  foreign key (gymId, gymtype,name) references gym(gymId, gymtype, gname));
  
 
  


create table trainer(
  name char(20),
  speciality char(20),
  trainerID int ,
  phonenum int , 
  gymId int,
  gymtype char(15),
  gname char(20),
  primary key (trainerID),
  foreign key (gymId, gymtype,name) references gym(gymId, gymtype, gname));
  
 


create table payment(
  payID int,
  pay_amount int,
  description char(40),
  primary key (payID));



create table traineePaymentRelation(
  payDate date,
  memberID int,
  payID int,
  primary key (memberID, payID,payDate));

