SELECT
  ProductID
, ProductName
FROM
  Products AS p
WHERE
  NOT EXISTS
  (
    SELECT
      *
    FROM
      Sales AS s
    WHERE
      p.ProductID = s.ProductID
  )
;
