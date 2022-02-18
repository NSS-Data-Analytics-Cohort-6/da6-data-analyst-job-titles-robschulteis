-- 1) How many rows are in the data_analyst_jobs table? 1793
	-- SELECT Count(*) FROM data_analyst_jobs;

-- 2) Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row? ExxonMobil
	-- SELECT * from data_analyst_jobs LIMIT 10;

-- 3) How many postings are in Tennessee? (21) How many are there in either Tennessee or Kentucky? (27)
	--SELECT Count(location) FROM data_analyst_jobs WHERE location = 'TN';
	--SELECT Count(location) FROM data_analyst_jobs WHERE location = 'TN' OR location = 'KY';
	
-- 4) How many postings in Tennessee have a star rating above 4? 3

	--SELECT COUNT(location) FROM data_analyst_jobs WHERE location = 'TN' AND star_rating > 4;
	
-- 5) How many postings in the dataset have a review count between 500 and 1000? 151
	--SELECT COUNT(*) FROM data_analyst_jobs WHERE review_count BETWEEN 500 AND 1000;
	
-- 6) Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating? NE
	-- 	SELECT location AS state, AVG(star_rating) AS avg_rating FROM data_analyst_jobs
	-- 	WHERE location IS NOT NULL and star_rating IS NOT NULL
	-- 	GROUP BY state
	-- 	ORDER BY avg_rating DESC;
	
