SELECT 
	CASE 
		WHEN absences BETWEEN 0 AND 5 THEN '0-5'
		WHEN Absences BETWEEN 6 AND 10 THEN '6-10'
        WHEN Absences BETWEEN 11 AND 15 THEN '11-15'
        WHEN Absences BETWEEN 16 AND 20 THEN '16-20'
        ELSE '21+'
	END AS absencegroup,
	
	ROUND(CAST(AVG(performancescore) AS NUMERIC), 2) AS AveragePerformanceScore,
	COUNT(*) AS NumberofEmployees
	
FROM employee_performance

GROUP BY absencegroup

ORDER BY averageperformancescore DESC;