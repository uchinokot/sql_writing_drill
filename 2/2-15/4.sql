SELECT
  EmployeeID AS 社員ID
, SUM( Amount ) AS 給与合計
FROM
  Salary
GROUP BY
  EmployeeID
ORDER BY
  給与合計 DESC
;
