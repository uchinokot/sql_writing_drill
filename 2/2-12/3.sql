SELECT
  ProductID AS 商品ID
, COUNT( * ) AS 売上レコード数
FROM
  Sales
GROUP BY
  ProductID
HAVING
  COUNT( * ) >= 10
;
