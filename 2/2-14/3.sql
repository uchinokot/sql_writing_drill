SELECT
  CustomerID AS 顧客ID
, SUM(
      CASE
        WHEN MONTH( SaleDate ) = 9 THEN Quantity
        ELSE 0
      END
     ) AS "9月"
, SUM(
      CASE
        WHEN MONTH( SaleDate ) = 10 THEN Quantity
        ELSE 0
      END
     ) AS "10月"
, SUM(
      CASE
        WHEN MONTH( SaleDate ) = 11 THEN Quantity
        ELSE 0
      END
     ) AS "11月"
FROM
  Sales
WHERE
  YEAR( SaleDate ) = 2006
GROUP BY
  CustomerID
;
