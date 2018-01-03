SELECT
  Max( s.Quantity ) AS 最大数量
, cc.CustomerClassID
, cc.CustomerClassName AS 顧客クラス名
FROM
  Sales AS s
,  Customers AS c
,  CustomerClasses AS cc
WHERE
  s.CustomerID = c.CustomerID
  AND
  c.CustomerClassID = cc.CustomerClassID
GROUP BY
  cc.CustomerClassID
;
