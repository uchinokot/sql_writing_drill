SELECT
  EmployeeID AS 社員ID
, SUM ( Amount ) AS 合計
FROM
  Salary
GROUP BY
  EmployeeID
;
