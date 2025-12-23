CREATE DATABASE REGEX;
USE REGEX;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);



INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'),
(5, 'Eva', 'Phoenix'),
(6, 'Frank', 'Philadelphia'),
(7, 'Grace', 'San Antonio'),
(8, 'Henry', 'San Diego'),
(9, 'Ivy', 'Dallas'),
(10, 'Jack', 'San Jose');


INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2024-01-05', 250.00),
(102, 2, '2024-01-06', 150.00),
(103, 3, '2024-01-07', 300.00),
(104, 1, '2024-01-10', 120.00),
(105, 5, '2024-01-12', 450.00),
(106, 6, '2024-01-15', 200.00),
(107, 2, '2024-01-18', 175.00),
(108, 8, '2024-01-20', 500.00),
(109, 11, '2024-01-22', 90.00),
(110, 12, '2024-01-25', 60.00);


use REGEX;
-- join => join is used to join two table 
-- 1 inner join -> inner join access the common table in both table 
-- 2 outer join -> outer join include the all value in table 
select *from customers;
select*from orders;
select c.customer_id ,c.customer_name,o.order_id,o.amount from customers as c 
join orders as o 
on c.customer_id =o.customer_id;

select c.customer_id ,c.customer_name,o.order_id,o.amount from customers as c right
join orders as o 
on c.customer_id =o.customer_id;

select c.customer_id ,c.customer_name,o.order_id,o.amount from customers as c left
join orders as o 
on c.customer_id =o.customer_id;
-- natural join ( common coloumn in inner join)
select*from orders;
select *from customers;
select c.customer_id ,c.customer_name,o.order_id,o.amount from customers as c 
join orders as o
on c.customer_id=o.customer_id;
-- find the both coloumn actor id ,actor name and how many film crated by him 
use sakila;
select* from actor;
select * from film actor;
select a.actor_id,a.first_name,count(fa.film_id) from actor as a 
join film_actor as fa 
where a.actor_id=fa.actor_id group by a.actor_id;
-- what is normalazation in sql ,what is one nf and two nf 3nf




