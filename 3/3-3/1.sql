SELECT
  p.CategoryID
, c.CategoryName AS カテゴリ名
, SUM( s.Quantity ) AS 数量合計
FROM
  Sales AS s
    JOIN
  Products AS p
    ON s.ProductID = p.ProductID
      JOIN
    Categories AS c
      ON p.CategoryID = c.CategoryID
GROUP BY
  p.CategoryID
;
