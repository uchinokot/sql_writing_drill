SELECT
  ProductID
, ProductName
FROM
  Products AS p
WHERE
  EXISTS
  (
   SELECT
    *
   FROM
    Sales AS s
   WHERE
    p.ProductID = s.ProductID
  )
;
