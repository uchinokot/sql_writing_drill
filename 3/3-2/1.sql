SELECT
  e.EmployeeName
, s.PayDate
, s.Amount
FROM
  Salary AS s
    JOIN
  Employees AS e
    ON s.EmployeeID = e.EmployeeID
ORDER BY
  s.EmployeeID ASC
;
