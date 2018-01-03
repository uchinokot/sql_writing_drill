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
, (
    SELECT
      ProductName
    FROM
      Products
    WHERE
      Sales.ProductID = Products.ProductID
  ) AS 商品名
FROM
  Sales
WHERE
  Quantity >= 100
;
