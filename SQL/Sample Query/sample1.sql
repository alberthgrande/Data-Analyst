-- Comparision operation
SELECT
	job_id,
    job_title_short,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE NOT
	job_title_short = 'Data Analyst';

  
 SELECT
	job_id,
    job_title_short,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	job_title_short <> 'Data Analyst';
    
-- > & >= 
SELECT
	job_id,
    job_title_short,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	salary_year_avg > 60000
ORDER BY
	salary_year_avg;
    
 
-- < & <= 
SELECT
	job_id,
    job_title_short,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	salary_year_avg < 60000
ORDER BY
	salary_year_avg;
    
    
-- AND
SELECT
	job_id,
    job_title_short,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	job_title_short = 'Data Analyst'
    AND salary_year_avg > 100000
ORDER BY
	salary_year_avg;
    
    
 -- OR
SELECT
	job_id,
    job_title_short,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	job_title_short = 'Data Analyst'
    OR salary_year_avg > 100000
ORDER BY
	salary_year_avg;
    
 -- BETWEEN
SELECT
	job_id,
    job_title_short,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	salary_year_avg BETWEEN 60000 AND 90000
ORDER BY
	salary_year_avg;


 -- IN
SELECT
	job_id,
    job_title_short,
    job_via,
    salary_year_avg
FROM 
	job_postings_fact
WHERE 
	job_title_short IN ('Data Analyst', 'Data Engineer');
--	job_title_short = 'Data Analyst' OR job_title_short = 'Data Engineer'
