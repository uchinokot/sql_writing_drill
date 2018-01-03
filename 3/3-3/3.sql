SELECT
  Max( s.Quantity ) AS 最大数量
, cc.CustomerClassID
, cc.CustomerClassName AS 顧客クラス名
FROM
  Sales AS s
    JOIN
  Customers AS c
    ON s.CustomerID = c.CustomerID
      JOIN
    CustomerClasses AS cc
      ON c.CustomerClassID = cc.CustomerClassID
GROUP BY
  cc.CustomerClassID
;
