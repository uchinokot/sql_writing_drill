SELECT
  SaleID AS 販売ID
, CASE
    WHEN Quantity < 10 THEN 'B'
    ELSE 'A'
  END AS ランク
FROM
  Sales
;
