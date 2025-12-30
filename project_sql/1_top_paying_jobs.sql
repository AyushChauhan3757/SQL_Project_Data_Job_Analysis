/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/

SELECT
    J.job_id,
    J.job_title,
    J.job_location,
    J.job_schedule_type,
    J.salary_year_avg,
    J.job_posted_date,
    C.name AS company_name
FROM
    job_postings_fact J
JOIN
    company_dim C 
ON 
    J.company_id = C.company_id
WHERE
    job_title_short = 'Data Analyst'
AND
    job_location = 'Anywhere'
AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10