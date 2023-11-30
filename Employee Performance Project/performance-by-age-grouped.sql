SELECT 
	CASE 
		WHEN age BETWEEN 25 AND 29 THEN '20-29'
		WHEN age BETWEEN 30 AND 39 THEN '30-39'
		WHEN age BETWEEN 40 AND 49 THEN '40-49'
		WHEN age BETWEEN 50 AND 59 THEN '50-59'
		ELSE '60+'
	END AS agegroup, 
	ROUND(CAST(AVG(performancescore) AS NUMERIC), 2) AS AveragePerformanceScore,
	COUNT(*) AS NumberofEmployees
	
FROM employee_performance

GROUP BY agegroup

ORDER BY agegroup;
	
