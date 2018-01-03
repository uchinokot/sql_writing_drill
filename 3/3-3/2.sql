SELECT
  SUM( s.Quantity ) AS 合計数量
, p.PrefecturalID
, p.PrefecturalName AS 県名
FROM
  Sales AS s
    JOIN
  Customers AS c
    ON s.CustomerID = c.CustomerID
      JOIN
    Prefecturals AS p
      ON c.PrefecturalID = p.PrefecturalID
GROUP BY
  p.PrefecturalID
;
