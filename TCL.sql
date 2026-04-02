-- TCL => transaction means groupe of one or more sql statement that are treated as a single unit of work  
-- A tansaction follow the rule all or nothing 
select @@autocommit;
-- create table as select(CTAS)
use ctedb;
create table ctedb.test100 as 
select actor_id,first_name from sakila.actor
where actor_id between 1 and 4;
select *from test100;

-- to start the transaction two ways -- 
create database nikki;
select @@autocommit;
create table nekus(id int,name varchar(5));
insert into nekus values(1,'akash'),(2,'aman'),(3,'ram');
update nekus set name='rohit' where id=1;
select*from nekus;


select @@autocommit;
start transaction;
update test100 set first_name='yash' where actor_id=3;
commit;
select *from test100;


select @@autocommit;
start transaction;
update test100 set first_name='yashsingh' where actor_id=3;
rollback;
select *from test100;

select @@autocommit;
start transaction;  -- set autocommit 
update test100 set first_name='tusharrr' where actor_id=3;
insert into test100 values(10,'ujjwal' );
select *from test100;

savepoint new_checkpoint2;
delete from test100 where actor_id=3;
rollback to new_checkpoint2;
select* from test100;

release savepoint new_checkpoint2;
commit;


assign ment => dcl

