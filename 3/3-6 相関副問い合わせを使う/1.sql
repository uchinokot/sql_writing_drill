SELECT DISTINCT
  s1.ProductID
, p.ProductName
, s1.Quantity
FROM
  Sales AS s1
    JOIN
  Products AS p
    ON s1.ProductID = p.ProductID
WHERE
  s1.Quantity =
  (
   SELECT
     MAX( Quantity )
   FROM
     Sales AS s2
   WHERE
     s1.ProductID = s2.ProductID
  )
ORDER BY
  s1.ProductID
;
