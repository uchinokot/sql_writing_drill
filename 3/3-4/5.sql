SELECT
  e.EmployeeName
, (
    CASE
      WHEN s.Amount IS NULL THEN 0
      ELSE s.Amount
    END
  ) AS 支給額
FROM
  Employees AS e
    LEFT OUTER JOIN
  (
    SELECT
      EmployeeID
    , Amount
    FROM
      Salary
    WHERE
      PayDate = '2007-02-25'
  ) AS s
    ON e.EmployeeID = s.EmployeeID
;
