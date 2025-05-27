use events_at_cognizant;

select e.event_id, e.title, e.description, COUNT(s.session_id) as total_sessions -- Count the no.of Sessions
from Events e join Sessions s on e.event_id = s.event_id 
where e.status = "upcoming" --Only upcoming events
group by e.event_id;

-- OUTPUT:
-- ent_id        title   description     total_sessions
-- 1       Tech Innovators Meetup  A meetup for tech enthusiasts.  4
-- 3       Frontend Dev Bootcamp   Hands-on training on frontend tech.     4   
-- 4       Data Science Summit     Deep dive into data science.    4
-- 6       Cloud Computing Expo    Explore the cloud ecosystem.    4
-- 7       DevOps Days     CI/CD pipelines and practices.  2
-- 8       Blockchain Meetup       Blockchain beyond crypto.       2
-- 10      Mobile Dev Con  Mobile app trends and frameworks.       2
-- 11      Big Data Analytics      Processing big datasets.        3
-- 12      IoT Innovations Connecting devices at scale.    2
-- 15      Container Orchestration Kubernetes deep dive.   5
