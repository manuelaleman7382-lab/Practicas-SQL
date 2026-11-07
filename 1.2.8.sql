SELECT e.FirstName || ' ' || e.LastName AS empleado,
       j.FirstName || ' ' || j.LastName AS jefe
FROM employees e
LEFT JOIN employees j ON j.EmployeeId = e.ReportsTo;