SELECT
  e.EmployeeID
, MAX( e.EmployeeName )AS 社員名
, SUM(
      CASE
        WHEN s.EmployeeID IS NULL THEN 0
        ELSE 1
      END
    ) AS 販売件数
FROM
  Employees AS e
    LEFT OUTER JOIN
  Sales AS s
    ON e.EmployeeID = s.EmployeeID
GROUP BY
  e.EmployeeID
;

-- WHEN s.EmployeeID IS NULL THEN 0の対象の理解がまだできていない
-- なにを基準にLEFT OUTER JOINするか念頭に置く必要がある
