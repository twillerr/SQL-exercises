create database Cluedo;
use cluedo;
create table suspects (
fullname varchar(50),
salutation varchar(50),
gender varchar(1),
age int(1),
tokencolour varchar(20)
);
-- created table after use cluedo


-- inserting data into table
insert into suspects
values
("scarlett", "miss","f", 42, "red"),
("Green", "reverend", "m", 50, "green"),
("mustard","colonel","m",65,"yellow"),
("plum","professor","m",37,"purple"),
("orchid","doctor","f",32,"pink");

select * from suspects;

select fullname from suspects where gender = "f";

select * from suspects where age>40;
