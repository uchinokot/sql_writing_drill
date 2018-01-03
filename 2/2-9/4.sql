SELECT
  EmployeeName
, Height
FROM
  Employees
WHERE
  EmployeeName LIKE '%リ%'
  AND Height <= 160
;
