SELECT
  BloodType AS 血液型
, COUNT( * ) ASデータ件数
FROM
  Employees
WHERE
  Height >= 165
GROUP BY
  BloodType
HAVING
  COUNT( * ) >= 5
;
