-- DML language => insert .delete, update 

-- delete 
use testdb;
create table cust2(id int primary key,name varchar(20));
insert into cust2 values(1,'tiger'),(2,'yash'),(3,'naina');
select *from cust2;
delete from cust2 where id=1;


--  you have to delete the  row which have same name 
create table cust3(id int primary key,name varchar(20));
insert into cust3 values(1,'tiger'),(2,'yash'),(3,'naina'),(4,'naina'),(5,'tiger'),(6,'yash');
select *from cust3;
select c1.id,c1.name,c2.id,c2.name from cust3 as c1 join cust3 as c2
where c1.name=c2.name and c1.id<c2.id;

delete c2 from cust3 as c1 inner join cust3 as c2
on c1.name=c2.name where c1.id<c2.id;
select*from cust3;

-- update

drop table cust3;
create table cust3(id int primary key,name varchar(20));
insert into cust3 values(1,'tiger'),(2,'yash'),(3,'naina'),(4,'naina'),(5,'tiger'),(6,'yash');
select *from cust3;
update cust3 set name ='heena' ,id=1000 where name='yash';
select*from cust3;

-- 4 star complate on hacker rank 
-- what is transation control langauge 
-- what are the roles of commit roleback 
-- normalization ,1nf,2nf ,3nf


