use world;
select*from country;

-- coalesce => the coalesce return the fisrt value where the fisrt not null value present
select name ,indepyear,lifeexpectancy,gnpold,coalesce(indepyear,lifeexpectancy,gnpold) from country;

-- ifnull (general function)

select name ,population,if(population>10000,'large p','small p') from country;
--  like a nested if 
select name ,population,if(population>10000,'large p',if(population>5000,'medium p','small p')) from country;
-- in case if the populaton is country grater then  20000 in case country name is started ia a print big country  and grater then 25000 small countery 
select name,population ,if(population>20000 and name like 'a%','very lp',
if(population>25000,'small population ','normal')) from country;

-- syntax of case 

-- select coloumn 
-- case 
--       when condition then expression 
--       when condition then expression 
-- else table name 

select name,population,
case
 when population >25000 then 'V L population '
 when population >15000 then 'Large p'
 else'normal p'
 end from country;
 
 -- select the name .continent and population if the indepyear if from 1600 to 1850 print eraly indep if indepyear 1800 to 1900 to print normal indep
 -- if my indepyear is even to print even year indepdence and else late/ early 
 
 
 select name,continent,polulation,
 case 
     when population between '1600' and '1850' then 'early independence'
     when population between '1800' and '1900' then 'normal independence'
     when indepyear%2=0 then 'even year'
else'late' 
end from country;   

select
      

