
use events_at_cognizant;


select u.user_id, u.full_name, u.email, COUNT(f.feedback_id) as No_of_feedbacks 
from Users u join Feedback f on f.user_id = u.user_id
group by u.user_id order by No_of_feedbacks DESC LIMIT 5; --Only filters the top 5 users with the highest no. of feedbacks

-- OUTPUT:
-- user_id full_name       email   No_of_feedbacks
-- 1       Lakshana Srinivasan     lakshana@example.com    3
-- 2       Manoj Venkat    manoj@example.com       3
-- 3       Siva Kumar      siva@example.com        3
-- 4       Priya Nair      priya@example.com       3
-- 5       Ravi Reddy      ravi@example.com        3