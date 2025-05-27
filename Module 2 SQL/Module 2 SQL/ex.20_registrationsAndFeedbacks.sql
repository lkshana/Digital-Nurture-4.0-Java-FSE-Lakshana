use events_at_cognizant;

select u.user_id, u.full_name, u.email,
COUNT( Distinct r.event_id) as no_of_events_registered, --COUNTs the no. of registrations
COUNT( f.feedback_id) as no_of_feedbacks_given  -- COunts the no. of registrations
from Users u
 left join Registrations r on u.user_id = r.user_id
left join Feedback f on u.user_id = f.user_id group by u.user_id;



-- OUTPUT:
-- user_id full_name       email   no_of_events_registered no_of_feedbacks_given
-- 1       Lakshana Srinivasan     lakshana@example.com    5       15     
-- 2       Manoj Venkat    manoj@example.com       5       15
-- 3       Siva Kumar      siva@example.com        6       18
-- 4       Priya Nair      priya@example.com       5       15
-- 5       Ravi Reddy      ravi@example.com        5       15
-- 6       Ananya Iyer     ananya@example.com      6       18
-- 7       Karthik Menon   karthik@example.com     5       15
-- 8       Geetha Raj      geetha@example.com      5       15
-- 9       Arun Prasad     arun@example.com        5       15
-- 10      Deepa Pillai    deepa@example.com       5       15
-- 11      Ramesh Varma    ramesh@example.com      5       15
-- 12      Divya Balaji    divya@example.com       6       18
-- 13      Vikram Rao      vikram@example.com      5       15
-- 14      Sneha Suresh    sneha@example.com       5       15
-- 15      Ajay Narayanan  ajay@example.com        4       12
-- 16      Ritu Sharma     ritu@example.com        5       15
-- 17      Surya Mohan     surya@example.com       5       15
-- 18      Meena Venkatesh meena@example.com       4       15
-- 19      Tarun Nambiar   tarun@example.com       4       12
-- 20      Aarthi Babu     aarthi@example.com      4       12
-- 21      Srinivasn       srilog.ed@gmail.com     0       0