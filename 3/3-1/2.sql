SELECT
  SaleID
, Quantity
, CustomerID
, (
    SELECT
      CustomerName
    FROM
      Customers
    WHERE
      Sales.CustomerID = Customers.CustomerID
  ) AS 顧客名
FROM
  Sales
WHERE
  Quantity >= 100
;
