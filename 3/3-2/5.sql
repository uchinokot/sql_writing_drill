SELECT
  c.CustomerName
, p.PrefecturalName
, cc.CustomerClassName
FROM
  Customers AS c
, Prefecturals AS p
, CustomerClasses AS cc
WHERE
  c.PrefecturalID = p.PrefecturalID
  AND
  c.CustomerClassID = cc.CustomerClassID
ORDER BY
  c.PrefecturalID ASC
;
