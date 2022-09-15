create database finance;

Set sql_safe_updates = 0;

use finance;

create table customer (
fullname varchar(50),
address varchar(100),
balance int,
credit int,
debit int
);

insert into customer 
values
("Polly Moore","123 Fake Street, Bristol, BS1 5BB",10, null, 15),
("Jonathan Lindfield", "1 Made up St, London, LN1 5TB", 15, Null, 11),
("Lewis Hendry", "1 Fictitious Avenue, Glasgow, GL1 6HH", 20,20,20);

select * from customer;

update customer
set balance = 50
where fullname = "Polly Moore";

update customer
set address = "22 Not Real Lane, Glasgow, GL7 5BW"
where fullname = "Lewis Hendry";

delete from customer
where balance = 20;

select * from customer;