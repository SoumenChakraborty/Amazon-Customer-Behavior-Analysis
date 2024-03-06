create database amazon_survey;
use amazon_survey;

-- Total number of Surveys
select count(*) from customer_behavior_survey;



-- Insights
-- Total Purchase based on  gender, age
select Purchase_Frequency, count(Gender)
from customer_behavior_survey
where Gender = "Male"
group by Purchase_Frequency;

select Purchase_Frequency, count(Gender)
from customer_behavior_survey
where Gender = "Female"
group by Purchase_Frequency;

select Purchase_Frequency, count(Gender)
from customer_behavior_survey
where Gender = "others"
group by Purchase_Frequency;

select Purchase_Frequency, count(Gender)
from customer_behavior_survey
where Gender = "Prefer Not to say"
group by Purchase_Frequency;

select Purchase_Frequency,
case 
WHEN age BETWEEN 0 AND 15 THEN '0 - 15'
WHEN age BETWEEN 16 AND 30 THEN '16 - 30'
WHEN age BETWEEN 31 AND 45 THEN '31 - 45'
WHEN age BETWEEN 45 AND 60 THEN '45 - 60'
WHEN age > 60 THEN '60 +'
end as age_group, count(Purchase_Frequency)
from customer_behavior_survey
group by Purchase_Frequency, age_group
order by age_group;


-- Product Puchase Freequency (Based on gender, age)
select Purchase_Categories, count(Gender)
from customer_behavior_survey
where Gender = "Male"
group by Purchase_Categories
order by count(Gender) desc;

select Purchase_Categories, count(Gender)
from customer_behavior_survey
where Gender = "Female"
group by Purchase_Categories
order by count(Gender) desc;

select Purchase_Categories, count(Gender)
from customer_behavior_survey
where Gender = "others"
group by Purchase_Categories
order by count(Gender) desc;

select Purchase_Categories, count(Gender)
from customer_behavior_survey
where Gender = "Prefer not to say"
group by Purchase_Categories
order by count(Gender) desc;

select Purchase_Categories,
case 
WHEN age BETWEEN 0 AND 15 THEN '0 - 15'
WHEN age BETWEEN 16 AND 30 THEN '16 - 30'
WHEN age BETWEEN 31 AND 45 THEN '31 - 45'
WHEN age BETWEEN 45 AND 60 THEN '45 - 60'
WHEN age > 60 THEN '60 +'
end as age_group, count(Purchase_Categories)
from customer_behavior_survey
group by Purchase_categories, age_group
order by count(Purchase_Categories) desc;


-- Browsing Freequency (Based on gender, age)
select Browsing_Frequency, count(Gender)
from customer_behavior_survey
where Gender = "Male"
group by Browsing_Frequency;

select Browsing_Frequency, count(Gender)
from customer_behavior_survey
where Gender = "Female"
group by Browsing_Frequency;

select Browsing_Frequency, count(Gender)
from customer_behavior_survey
where Gender = "others"
group by Browsing_Frequency;

select Browsing_Frequency, count(Gender)
from customer_behavior_survey
where Gender = "Prefer Not to say"
group by Browsing_Frequency;

select Browsing_Frequency,
case 
WHEN age BETWEEN 0 AND 15 THEN '0 - 15'
WHEN age BETWEEN 16 AND 30 THEN '16 - 30'
WHEN age BETWEEN 31 AND 45 THEN '31 - 45'
WHEN age BETWEEN 45 AND 60 THEN '45 - 60'
WHEN age > 60 THEN '60 +'
end as age_group, count(Browsing_Frequency)
from customer_behavior_survey
group by Browsing_Frequency, age_group
order by age_group;


-- Resaons of service appreciation
select Service_Appreciation, count(Service_Appreciation)
from customer_behavior_survey
group by Service_Appreciation
order by count(Service_Appreciation) desc;

-- If reccomendations were helpful
select Recommendation_Helpfulness, count(Recommendation_Helpfulness)
from customer_behavior_survey
group by Recommendation_Helpfulness;

-- Recommmendation for improvement
select Improvement_Areas, count(Improvement_Areas)
from customer_behavior_survey
group by Improvement_Areas 
order by count(Improvement_Areas) desc;