-- Which department has the highest average performance score? (Max 5)

SELECT 
	department, 
	ROUND(CAST(AVG(performancescore) AS NUMERIC), 2) AS AveragePerformanceScore
	
FROM 
	employee_performance
	
GROUP BY 
	department
	
ORDER BY 
	AveragePerformanceScore DESC;