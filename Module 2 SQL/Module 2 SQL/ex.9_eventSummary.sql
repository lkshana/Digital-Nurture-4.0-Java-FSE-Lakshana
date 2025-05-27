use events_at_cognizant;

select u.user_id, u.full_name, 
-- Count all evens, completed events, cancelled events and upcoming events through status field
COUNT(*) as events, 
COUNT(e.status = "upcoming") as Upcoming_events,
COUNT(e.status = "completed") as Completed_events,
COUNT(e.status = "cancelled") as cancelled_events
from Events e join Users u on e.organizer_id = u.user_id
group by u.user_id;

-- OUTPUT:
-- user_id full_name       events  Upcoming_events Completed_events    cancelled_events
-- 1       Lakshana Srinivasan     1       1       1  1
-- 3       Siva Kumar      1       1       1       1   
-- 2       Manoj Venkat    1       1       1       1   
-- 6       Ananya Iyer     1       1       1       1   
-- 8       Geetha Raj      1       1       1       1   
-- 9       Arun Prasad     1       1       1       1   
-- 10      Deepa Pillai    1       1       1       1   
-- 11      Ramesh Varma    1       1       1       1   
-- 12      Divya Balaji    1       1       1       1   
-- 13      Vikram Rao      1       1       1       1   
-- 14      Sneha Suresh    1       1       1       1   
-- 15      Ajay Narayanan  1       1       1       1   
-- 16      Ritu Sharma     1       1       1       1   
-- 17      Surya Mohan     1       1       1       1   
-- 18      Meena Venkatesh 1       1       1       1   
