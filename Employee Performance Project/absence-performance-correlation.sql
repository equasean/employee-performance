-- What is the correlation between absence and performance score?

SELECT 
	CORR(absences, performancescore) as CorrelationCoefficient
FROM employee_performance

/*
    A correlation close to 1 implies a strong positive correlation.
    A correlation close to -1 implies a strong negative correlation.
    A correlation close to 0 implies no correlation or a very weak correlation.
*/