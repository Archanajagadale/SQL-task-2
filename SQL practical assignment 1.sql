create database bookstore_db;

use bookstore_db;

create table customers(customer_id int primary key,
full_name varchar (200) not null, 
email varchar (200) unique, 
phone int , 
city varchar(200), 
created_date date);


Create table books (book_id int primary key, 
title varchar (200) not null,
author varchar(200),
category varchar(200), 
price float check (price>=0),
stock_qty int check (Stock_qty>=0));

Create table orders (order_id int primary key, 
customer_id int, 
order_date date, 
status varchar (200) default "pending");

create table order_items (order_item_id int primary key,
 order_id int, 
 book_id int, 
 quantity int check (quantity>=0));

select * from customers;
select *from books;
select *from orders;
Select *from order_items;

alter table customers add column country varchar(200);
alter table order_items add column Discount float;
Alter table customers modify phone varchar (50);
Alter table books rename column stock_qty to stock_quantity;

alter table books drop column Stock_qty;
alter table books add column stock_qty int;
Alter table books rename column stock_qty to stock_quantity;
Alter table books add constraint c_k check (stock_quantity >=0);

insert into books value (1,"wings_of_fire","APJ","motivational",9,5);
insert into customers value(5,null,"hjhhgf@gmail.com",55846976945,"nagpur","2026-09-07","india");

Insert into customers value (8,"XYZ","XYZ@gmail.com",2454268535,"satara","2026-08-05","India");

insert into customers value (9,"gfeufg","ghdfhs",3598598659,"pune","2026-02-06","India");
insert into customers value (10,"jytdrfg","ehftri",454656522,"pune","2026-01-23","India");
insert into customers value (11,"uyyft","ftruyoi",65656532,"pune","2026-01-16","India");
insert into customers value (12,"lpiiyy","suyuigj",6553359869,"pune","2026-08-07","India");
insert into customers value (13,"saeeyu","sjhlkp",56956326866,"pune","2026-03-11","India");

insert into books value (2,"gdgjdsogk","dfgjllJ","dfjidfj",70,6);
Select * from books;    
Alter table  order_items

add constraint F_order
foreign key (order_id)
references orders(order_id);

Alter table orders add column book_id int;

Alter table  orders
add constraint F_korder
foreign key (book_id)
references books (book_id);

INSERT INTO books (book_id, title, author, category, price, stock_quantity)
VALUES
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 450.00, 30),
(4, 'Ikigai', 'Hector Garcia', 'Self-Help', 350.00, 35),
(5, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 420.00, 20),
(6, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Biography', 300.00, 50),
(7, 'Think and Grow Rich', 'Napoleon Hill', 'Personal Development', 375.00, 28),
(8, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 550.00, 15),
(9, 'Sherlock Holmes', 'Arthur Conan Doyle', 'Mystery', 450.00, 22),
(10, 'Python Crash Course', 'Eric Matthes', 'Programming', 650.00, 18);

Select * from Books;
