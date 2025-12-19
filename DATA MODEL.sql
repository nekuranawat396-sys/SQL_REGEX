 -- data model 
 use world;
 -- city (id pk),countrycode is the foreign key 
 select*from city;
 describe city; 
 select* from country;
 -- code(pk)
 use world;
 select count(code),count(distinct code)from country;
 select cy.id,cy.name,cy.countrycode from city as cy;
 -- join two table 
 select cy.id,cy.name,cy.countrycode,cnt.code,cnt.name,cnt.continent from city as cy join country as cnt
 where cy.countrycode=cnt.code;
 
 -- find the city name the population the country name along with the govenrment form for each city
 -- get the cpuntry name its population and the langauge is spoken with the persent for the each langauge
 show tables;
 
 select*from countrylangauge;
 select ctcd.name ,ctcd.population,ctry.percentage, ctry.language from countrylanguage as ctry 
 join
 country as ctcd
 where ctcd.code=ctry.countrycode;
 
 
 