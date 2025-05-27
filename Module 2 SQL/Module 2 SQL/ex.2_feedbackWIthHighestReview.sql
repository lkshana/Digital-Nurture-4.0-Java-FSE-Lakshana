use events_at_cognizant;

select e.event_id, e.title, e.description, e.city, 
count(f.feedback_id) as feedbacks, avg(f.rating) as averate_rating -- FInd the no. of feedbacks using COUNT function and the average of all ratings ussing AVG function
from Events e Join Feedback f on e.event_id = f.event_id
group by e.event_id having Count(f.feedback_id) >= 10 -- ONly select the records with more than 10 feedbacks
order by averate_rating DESC;

-- OUTPUT: 
-- Note: Output generated with condition of atleast 5 feedbacks to run.

-- event_id        title   description     city    feedbacks   averate_rating
-- 2       AI & ML Conference      Conference on AI and ML advancements.       Hyderabad       5       4.6000
-- 6       Cloud Computing Expo    Explore the cloud ecosystem.        Visakhapatnam   5       4.6000      
-- 7       DevOps Days     CI/CD pipelines and practices.      Mysuru  5       3.6000
-- 1       Tech Innovators Meetup  A meetup for tech enthusiasts.      Chennai 5       3.4000
-- 8       Blockchain Meetup       Blockchain beyond crypto.   Trivandrum      5       3.4000
