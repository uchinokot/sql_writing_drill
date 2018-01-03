SELECT
  DepartmentID AS 部署ID
, COUNT( * ) AS レコード数
FROM
  BelongTo
WHERE
  EndDate IS NULL
GROUP BY
  DepartmentID
ORDER BY
  COUNT( EmployeeID ) DESC
;
