
use events_at_cognizant;

select s.speaker_name , Count(*) as no_of_sessions
from Sessions s group by speaker_name 
having no_of_sessions > 1 order by no_of_sessions DESC; -- TO find the users who have more than one sessinos as speakers


-- Output:
-- speaker_name    no_of_sessions
-- Manoj Venkat    3
-- Arun Prasad     2
-- Surya Mohan     2
-- Ritu Sharma     2
-- Ajay Narayanan  2
-- Sneha Suresh    2
-- Vikram Rao      2
-- Divya Balaji    2
-- Ramesh Varma    2
-- Deepa Pillai    2
-- Lakshana Srinivasan     2
-- Geetha Raj      2
-- Karthik Menon   2
-- Ananya Iyer     2
-- Priya Nair      2
-- Siva Kumar      2