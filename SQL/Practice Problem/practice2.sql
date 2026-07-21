-- Practice Problem 1
SELECT
	job_id,
    job_title_short,
    job_location,
    job_via, 
    salary_year_avg
FROM
	job_postings_fact
WHERE
	job_location IN ('Tampa, FL');


-- Practice Problem 2
SELECT
	job_id,
    job_title_short,
    job_location,
	job_via,
	salary_year_avg
FROM
	job_postings_fact
WHERE
	job_schedule_type = 'Full-time';
    
  

-- Practice Problem 3
SELECT 
	job_id,
    job_schedule_type,
	job_title_short, 
    job_location, 
    job_via, 
    salary_year_avg
FROM
	job_postings_fact
WHERE
	job_schedule_type <> 'Part-time';

