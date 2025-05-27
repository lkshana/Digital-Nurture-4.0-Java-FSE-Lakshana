
use events_at_cognizant;

select u.user_id, u.full_name, e.event_id, e.title, e.description, f.rating, f.comments
from Feedback f join Users u on u.user_id = f.user_id Join Events e on e.event_id = f.event_id
where f.rating < 3; -- ONLy filer out the ratings that are less than 3


-- OUTPUT:
-- user_id full_name       event_id        title   description rating  comments
-- 6       Ananya Iyer     4       Data Science SummitDeep dive into data science.     2       Too basic.  
-- 14      Sneha Suresh    8       Blockchain Meetup  Blockchain beyond crypto.        2       Needs depth.
-- 3       Siva Kumar      13      QA & Testing Bootcamp       Automated testing techniques.   2       Not hands-on.
-- 8       Geetha Raj      1       Tech Innovators Meetup      A meetup for tech enthusiasts.  2       Too short.
-- 18      Meena Venkatesh 7       DevOps Days     CI/CD pipelines and practices.      2       Boring.     
-- 6       Ananya Iyer     11      Big Data Analytics Processing big datasets. 2       Too long.
-- 12      Divya Balaji    15      Container Orchestration     Kubernetes deep dive.   2       Too fast.   
-- 17      Surya Mohan     5       Cybersecurity Workshop      Securing modern web apps.       2       Not for me.
