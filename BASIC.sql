use world;
show tables;
describe country;
select *from country;
select name,continent,region,indepyear from country;
select * from country where name like 'A%';
create database ram;
show databases;
use ram;
create table neku(num int(20),salary int(50));
show tables;
describe neku;
show databases;
use world;
show tables;
describe country;
select*from country; -- sql is not case sensitive but " data is case sensitive "
select region, name ,continent,indepyear,indepyear+50 as 'new indepyear' from country; -- new duplicated coloumn  use by "as"
-- like operator [find the pettern]
-- % special / wild character 
-- % zero or more character
-- write element in 'A '
-- underscore ( _ ) only one character
--  (____) take only four character
-- in and between operater
-- %r% means r is anywhere available

select*from country;
select name from country where name like'a%a';
select name,continent from country where name  like 'a%' and continent like 'a%'; -- use between 'and '
select continent from country where continent like 'a%';
select region from country where region like 'a%';
select name from country where name like '%p_';
select name from country where name like '____';
select continent from country where continent like'__c%sia';
select name,indepyear from country where indepyear not in (1991,1961);
select name,population from country where population   between 10000 and 300000;
select name from country where name like'_a%';
select name,population from country where population between 200000 and 500000;
select name,continent from country where continent in('asia','africa');
select name from country where name like '_____';
select name from country where name  like 'm%' or name like 'd%';
select name,indepyear,continent from country where continent in('asia','africa')and indepyear =1961;
select name from country where name like'%ra%' and name  not like '%ral%';
select name from country where length(name) between 4 and 6;
select name from country where name like'__c%a_';
select name,region,continent from country where continent in('north america','south america');
select name,upper(name)as newest from country;
select name,lower(region) from country;
select name,upper(name) as up,lower(region) as low from country;
select name, region,indepyear,concat(region,' ',indepyear) from country;
select name, region,indepyear,concat(region,'$',indepyear,'#','neku') from country;
select name, region,indepyear,concat_ws('**',region,indepyear,continent) from country; -- with seperator
-- left() -- find the first character of the string in tables
select name,continent,population from country where left(name,1) = left(continent,1); -- find first character of the string
select name,left(name,5)from country;
select name,region,continent from country where left(region,2)=left(continent,2);
-- lengh() find the lenght of the list 
select name,length(name) from country;
select name,region,length( region)from country;
select max(indepyear)from country; -- find maximum values
select max(population) from country;
select sum(population) from country; -- sum of the values
select avg(population)as average from country; -- average of the values
select round(474.678,1);
select name,region,continent from country
where region like concat('%',continent);
select name,region from country where name like region; -- like also(=)
select name,region,population from country where left(name,1) like left(region,1); -- "like" and "="
-- substr() is found the number of the possition and extract(take out) its
select name,substr(name,1,2), substr(region,1,3) from country;
select name,substr(name,-4), substr(name,-3,2) from country;
select name,region,substr(name,1,1),substr(region,1,1) from country where
substr(name,1,1) =substr(region,1,1);
-- instr() find the string of position of number
select name,instr(name,'o')from country;
select name,instr(name,'i')from country;
-- char_lenght - it is find to lenght of character
select name,char_length(name)from country;
 -- trim -> the trim funtion delete the wide space in the string
 select  char_length('    tushar    ');
 select char_length(trim('    tushar    '));
 select trim(both 'z' from '   ramramzzzzz');
 select name,trim(both 'A' from name)from country; -- data is the case sensitve
 -- rpad and lpad use to create the fixed sized 
 select name,population,lpad(population,15,0)from country;
 select name,indepyear,rpad(indepyear,6,5)from country;
 -- aggregate function (multi line function)v => will give some result 
 -- distinct is a keyword  -- is will be return unique value cannot raturn repeat value
 use world;
 describe country;
  select distinct continent from country;
  select distinct continent,region from country;
  -- aggregate => to apply some calculate over set of rows
  -- count(coloum) -> only data represent will be counted not null
select count(indepyear) from country;
select count(*)from country;
-- max(),sum().avg(), ---------------------

 -- get the tpotal number of country the unique region along with the total population the heighest life expecency rante with total capital for the country starting with lateer a and d
 select count(name),count(distinct region),sum(population),sum(capital)from country where name like'a%' or name like'd%';
 
 -- asia (total country)
 select count(name) from country where continent='asia';
  -- group by stetement (similar value collect in the group)
  select count(name),continent from country group by continent;
  
  -- uniqui to find  out the total country and the total polpulation fir each independent year
  select count(distinct name),sum(population)from country ;
  -- where clause only filter the name only it contain the table 
  -- use  having filter the data only aggrigate data 
  select continent,count(name) from country group by continent having count(name)> 30;
  select continent ,sum(population) from country group by continent having sum(population)>100;
  select indepyear,count(name) from country where indepyear>1930 group by indepyear having count(name)>2;
  -- you need to govenmment form and the toatal number of country for each govenmmemt form where the total number of country should greater then 20;
   -- you need to govenmment form and the toatal number of country for each govenmmemt form where the country should have capital >30
   -- get the number of country region and the total polation where the life expentyr greter then 38 and the polpulatuon in each continent should be grater then 300000
   use world;
   select governmentform,count(name)from country group by governmentform having count(name)>20;
select governmentform,count(name)from country where capital >30 group by governmentform;
select count(name),region,sum(population),count(region) country where  lifeExpectancy > 38 group by continent  having sum(population)>30;
-- 17/12/25
use sakila;
show tables;
select*from payment;
select count(*) from payment where amount=2.99;
select amount ,count(*)from payment group by amount;
select customer_id,sum(amount) from payment where amount>3 group by customer_id;


-- you need to find out the maximum acoont of transaction the average transaction amount and the total tranasaction amount done by each staff
use sakila;
select staff_id ,sum(amount),max(amount),avg(amount) from payment group by staff_id;
-- get the amount and the total taransaction done for each amount only for payment only done staff id 1 and total number of tansaction should be greaten the 30
select amount,count(amount) from payment where staff_id=1 group by amount having count(amount)>30;
-- find out the number of customer served avg amount and the total amount spend and each month for ataff id 1 and staff id 2 ,
-- find out the number of customer served avg amount and the total amount spend and each month for ataff id 1 and staff id 2 and the each year;
select month(payment_date),count(customer_id),avg(amount),sum(amount) from payment where staff_id=1 or staff_id=2 group by month(payment_date);
   
  
  
 
 













