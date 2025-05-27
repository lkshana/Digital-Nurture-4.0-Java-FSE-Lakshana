
use events_at_cognizant;

select e.city, avg(f.rating) as average_rating --FInds the average for Feedback.rating
from Events e join Feedback f on e.event_id = f.event_id
group by e.city;


-- OUTPUT:
-- city    average_rating
-- Chennai 3.4000
-- Hyderabad       4.6000
-- Bengaluru       4.2500
-- Kochi   3.0000
-- Coimbatore      3.3333
-- Visakhapatnam   4.6000
-- Mysuru  3.6000
-- Trivandrum      3.4000
-- Madurai 4.0000
-- Vijayawada      4.5000
-- Salem   3.0000
-- Tiruchirappalli 4.5000
-- Tirupati        3.5000
-- Kannur  3.5000