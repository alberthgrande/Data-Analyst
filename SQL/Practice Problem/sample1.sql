SELECT
    job_title_short,
    job_location,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE
	job_title_short = 'Data Analyst'
ORDER BY
	salary_year_avg DESC;
    
    
-- Practice Problem 1 
SELECT DISTINCT
	job_location
FROM
	job_postings_fact
ORDER BY 
	job_location ASC;

-- Practice Problem 2
SELECT
	job_id,
    job_title_short,
    job_location, 
    job_via
 FROM 
 	job_postings_fact
 ORDER BY
 	job_location ASC;

-- Practice Problem 3
SELECT 
	job_id,
	job_title_short, 
    job_location,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE
	job_title_short = 'Data Engineer';
 