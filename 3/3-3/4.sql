SELECT
  SUM( s.Quantity ) AS 合計数量
, p.PrefecturalID
, p.PrefecturalName AS 県名
FROM
  Sales AS s
,  Customers AS c
,  Prefecturals AS p
WHERE
  s.CustomerID = c.CustomerID
  AND
  c.PrefecturalID = p.PrefecturalID
GROUP BY
  p.PrefecturalID
;
