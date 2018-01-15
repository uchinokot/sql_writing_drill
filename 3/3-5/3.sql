SELECT
  e1.EmployeeName AS 従業員名1
, e2.EmployeeName AS 従業員名2
FROM
  Employees AS e1
    JOIN
  Employees AS e2
    ON e1.Birthday > e2.Birthday
;
