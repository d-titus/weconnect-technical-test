create temp table connections as 
select distinct dest_city as origin_city from flights
where origin_city = 'Seattle WA';

select distinct origin_city
from flights
where origin_city not in(
select distinct origin_city
from flights f1
where dest_city = 'Seattle WA'
or origin_city in (select origin_city from connections)
or dest_city in (select origin_city from connections));