SELECT
  AVG( Height ) AS 平均身長
FROM
  Employees
WHERE
  EmployeeName LIKE '%ー%'
;
