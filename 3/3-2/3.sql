SELECT
  s.ProductID
, p.ProductName
, SUM( s.Quantity ) AS 数量合計
FROM
  Sales AS s
    JOIN
  Products AS p
    ON s.ProductID = p.ProductID
GROUP BY
  s.ProductID
HAVING
  SUM( s.Quantity ) >= 300
;
