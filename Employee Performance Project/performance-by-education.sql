SELECT 
	educationlevel,
	ROUND(CAST(AVG(performancescore) AS NUMERIC), 2) AS AveragePerformanceScore,
	COUNT (*) AS NumberofEmployees
	
FROM employee_performance

GROUP BY educationlevel
	
ORDER BY AveragePerformanceScore DESC;