SELECT 
	CASE 
	WHEN Salary BETWEEN 40000 AND 49999 THEN '40k-49k'
        WHEN Salary BETWEEN 50000 AND 69999 THEN '50k-69k'
        WHEN Salary BETWEEN 70000 AND 89999 THEN '70k-89k'
        ELSE '90k and above'
	END AS salarybucket,
	ROUND(CAST(AVG(performancescore) AS NUMERIC), 2) AS AveragePerformanceScore,
	COUNT(*) AS NumberofEmployees
	
FROM employee_performance

GROUP BY salarybucket

ORDER BY salarybucket