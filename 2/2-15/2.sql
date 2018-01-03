SELECT
  SaleID
, Quantity
, CustomerID
, ProductID
, SaleDate
FROM
  Sales
ORDER BY
  CustomerID
, ProductID
, SaleDate DESC
;
