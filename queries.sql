-- Part 1: Test it with SQL



    -- Table: job
    -- Columns:
    -- id int PK
    -- employer varchar(255)
    -- name varchar(255)
    -- skills varchar(255)


-- SELECT * FROM job;


-- Part 2: Test it with SQL



	-- Verify employer data accessible to database --
	-- SELECT * FROM employer;

	-- Verify skill data accessible to database. --
	-- SELECT * FROM skill;

-- Run GA4 Part 2 Test Query: List the names of the employers in St. Louis City. --

SELECT name FROM employer
WHERE location = "St. Louis City";


-- Part 3: Test it with SQL: Write the SQL statement to remove the job table.

DROP TABLE job;


-- Part 4: Test it with SQL: Write a query to return the names of all skills
-- that are attached to jobs in alphabetical order. If a skill does not have a job listed,
-- it should not be included in the results of this query.

SELECT * FROM skill
INNER JOIN job_skills ON skill.id = job_skills.skills_id
WHERE job_skills.jobs_id IS NOT NULL
ORDER BY name ASC;