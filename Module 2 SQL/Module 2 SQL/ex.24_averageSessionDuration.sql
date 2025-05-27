use events_at_cognizant;


select e.title, e.description, s.event_id, 
AVG( --Find the difference between the start time and end time in minutes 
    TIMESTAMPDIFF(
        MINUTE,
        s.start_time,
        s.end_time
    )
) as averate_duration
from Sessions s join Events e on e.event_id = s.event_id
group by s.event_id ;

-- OUTPUT:
-- title   description     event_id        averate_duration
-- Tech Innovators Meetup  A meetup for tech enthusiasts.  1       71.2500
-- AI & ML Conference      Conference on AI and ML advancements.   2     90.0000
-- Frontend Dev Bootcamp   Hands-on training on frontend tech.     3     135.0000
-- Data Science Summit     Deep dive into data science.    4       105.0000
-- Cybersecurity Workshop  Securing modern web apps.       5       90.0000
-- Cloud Computing Expo    Explore the cloud ecosystem.    6       97.5000
-- DevOps Days     CI/CD pipelines and practices.  7       90.0000        
-- Blockchain Meetup       Blockchain beyond crypto.       8       82.5000
-- VR/AR Conference        Immersive tech sessions.        9       90.0000
-- Mobile Dev Con  Mobile app trends and frameworks.       10      90.0000
-- Big Data Analytics      Processing big datasets.        11      90.0000
-- IoT Innovations Connecting devices at scale.    12      90.0000        
-- QA & Testing Bootcamp   Automated testing techniques.   13      90.0000
-- Container Orchestration Kubernetes deep dive.   15      96.0000        
