SELECT
  ProductID
, ProductName
FROM
  Products AS p
WHERE
  ProductID IN
  (
    SELECT
      ProductID
    FROM
      Sales AS s
    WHERE
      p.ProductID = s.ProductID
    HAVING
      AVG( Quantity ) <= MAX( Quantity ) / 10
  )
ORDER BY
  ProductID
;

-- 理解できていないのでもう一度復習する
