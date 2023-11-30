SELECT 
	employeesatisfaction,
	ROUND(CAST(AVG(performancescore) AS NUMERIC), 2) AS AveragePerformanceScore,
	COUNT(*) AS NumberofEmployees
	
FROM employee_performance

GROUP BY employeesatisfaction
	
ORDER BY employeesatisfaction DESC;