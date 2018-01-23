SELECT DISTINCT
  s.ProductID
, p.ProductName
, s.Quantity
FROM
  (
    SELECT
      ProductID
    , MAX ( Quantity ) AS Quantity
    FROM
      Sales
    GROUP BY
      ProductID
  ) AS s
    JOIN
  Products AS p
    ON s.ProductID = p.ProductID
ORDER BY
  s.ProductID
;
