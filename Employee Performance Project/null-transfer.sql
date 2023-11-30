/* Moving Null Values to employee_performance_nulls Table*/ 

INSERT INTO employee_performance_nulls
SELECT * FROM employee_performance
WHERE EmployeeSatisfaction IS NULL 
   OR DateHired IS NULL 
   OR LastPromotionDate IS NULL 
   OR PerformanceScore IS NULL 
   OR Absences IS NULL 
   OR EmployeeID IS NULL 
   OR Age IS NULL 
   OR Salary IS NULL 
   OR FirstName IS NULL 
   OR LastName IS NULL 
   OR EducationLevel IS NULL 
   OR Department IS NULL 
   OR JobTitle IS NULL;