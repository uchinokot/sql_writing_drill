SELECT
  p.ProductName
, AVG (
        p.price *
        CASE
          WHEN s.Quantity IS NULL THEN 0
          ELSE s.Quantity
        END
      ) AS 平均販売価格
FROM
  Products AS p
    LEFT OUTER JOIN
  Sales AS s
    ON p.ProductID = s.ProductID
GROUP BY
  p.ProductName
;

-- JOINとLEFT OUTER JOINの実行結果の違いを調べる
