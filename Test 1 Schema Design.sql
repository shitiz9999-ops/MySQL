drop database if exists shoping_managment;
create database shoping_managment;
use shoping_managment;

CREATE TABLE customers (
customer_id int primary key auto_increment,
customer_name varchar (100) not null,
email_id varchar (100) not null,
phone_number char (10) not null,
age tinyint check (age>=0),
gender enum ('Male','Female','Others'),
country varchar (50) default 'india',
city varchar (50),
pincode char (6) default '201301',
registration_date date default (current_date),
registration_time time default (current_time),
created_at timestamp default (current_timestamp),
address varchar (250) unique,
customer_status enum ('active','inactive','blocked') default 'active',
customer_notes varchar (999)

);

create table orders (
order_id int primary key auto_increment,
customer_id int not null,
order_date date default (current_date),
order_amount decimal (10,2) not null,
order_status enum ('pending','processing','shiped','dilivered') default 'pending',
payment_method enum ('cash','card','upi','net banking'),
payment_status enum ('pending','paid','faild') default 'pending',
shipping_adress varchar (250),
dilivery_pincode char (6),
quantity int unsigned,
discount_amount decimal (10,2) default '0',
dilivery_date date,
created_at timestamp default (current_timestamp),
tracking_number varchar (30) not null,
delivery_states enum ('Not Dispatched','Intransit','Dilivered','Returned') default 'Not dispatched',
order_notes varchar (999),

FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

select * from  customers;
select * from orders;






