-- docker exec -i iplsqlserver mysql -u root -pipl123 --port=3308  < ex.1.sql

use events_at_cognizant;


select u.full_name, e.title As Event_title, u.city, e.start_date, e.end_date  
from Users u join Registrations r on u.user_id = r.user_id --Joining on the user_id
join Events e on r.event_id = e.event_id
where e.status = 'upcoming' and u.city = e.city  -- Only select records which status is 'upcoming' and have the same city as the user.
order by e.start_date asc;


-- OUTPUT
-- full_name       Event_title     city    start_date      end_date
-- Sneha Suresh    Big Data Analytics      Salem   2025-06-05 09:00:00     2025-06-05 17:00:00
-- Lakshana Srinivasan     Tech Innovators Meetup  Chennai 2025-06-10 10:00:002025-06-10 16:00:00
-- Manoj Venkat    Frontend Dev Bootcamp   Bengaluru       2025-07-01 10:00:002025-07-03 16:00:00
-- Ravi Reddy      Frontend Dev Bootcamp   Bengaluru       2025-07-01 10:00:002025-07-03 16:00:00
-- Deepa Pillai    DevOps Days     Mysuru  2025-07-15 09:00:00     2025-07-15 17:00:00
-- Ajay Narayanan  IoT Innovations Tiruchirappalli 2025-08-01 10:00:00     2025-08-01 16:00:00
-- Arun Prasad     Cloud Computing Expo    Visakhapatnam   2025-08-05 09:00:002025-08-05 18:00:00

