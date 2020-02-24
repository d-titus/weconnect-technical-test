select distinct flight_num
from Flights f
join Carriers c on f.carrier_id = c.cid
join Weekdays d on d.did = f.day_of_week_id
where origin_city = 'Seattle WA' and dest_city = 'Boston MA'
and name = 'Alaska Airlines Inc.' and day_of_week = 'Monday';