use testdb;
drop table cust;
create table cust(id int unique key ,name varchar(20));
insert into cust values(1,'tiger'),(2,'yash');
select*from cust;

create table ord1(id int ,cid int ,price int,foreign key(cid) references cust(id));
insert into ord1 values(100,1,1999),(101,2,154),(102,1,1245);
insert into ord1 values(103,6,1999);
select*from ord1;

-- how to delete row from a table 

create table cust(id int unique key ,name varchar(20));
insert into cust values(1,'tiger'),(2,'yash');

select*from cust;
create table ord1(id int ,cid int ,price int,foreign key(cid) references cust(id)on delete cascade);
insert into ord1 values(100,1,1999),(101,2,2999),(102,1,1899);
select*from ord1;

delete from cust where id=2;
select *from cust;

select*from cust;
create table ord1(id int ,cid int ,price int,foreign key(cid) references cust(id)on delete set null); -- set null
insert into ord1 values(100,1,1999),(101,2,2999),(102,1,1899);
select*from ord1;

delete from cust where id=2;
select *from cust;






