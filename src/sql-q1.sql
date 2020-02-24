select name carrier, max(price) max_price
from Flights f
left join Carriers c on f.carrier_id = c.cid
where (dest_city = 'Seattle WA' and origin_city = 'New York NY') 
or (dest_city = 'New York NY' and origin_city = 'Seattle WA')
group by name;