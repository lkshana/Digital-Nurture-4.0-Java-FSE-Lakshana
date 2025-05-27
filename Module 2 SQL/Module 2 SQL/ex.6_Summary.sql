use events_at_cognizant;

select e.event_id, e.title, 
-- Count the no. of pdfs , images and links
SUM(resource_type = "pdf") as no_of_pdfs, 
SUM(resource_type = "image") as no_of_image,
SUM(resource_type = "link") as no_of_links
from Events e join Resources r on e.event_id = r.event_id
group by e.event_id;



-- OUTPUT:
-- event_id        title   no_of_pdfs      no_of_image     no_of_links
-- 1       Tech Innovators Meetup  1       1       1
-- 2       AI & ML Conference      2       1       1
-- 3       Frontend Dev Bootcamp   1       1       2
-- 4       Data Science Summit     1       2       1
-- 5       Cybersecurity Workshop  1       1       1
-- 6       Cloud Computing Expo    2       1       1
-- 7       DevOps Days     1       2       1
-- 8       Blockchain Meetup       1       1       1
-- 9       VR/AR Conference        1       1       1
-- 10      Mobile Dev Con  1       2       1
-- 11      Big Data Analytics      2       1       1
-- 12      IoT Innovations 1       1       2
-- 13      QA & Testing Bootcamp   1       1       1
-- 15      Container Orchestration 1       1       1