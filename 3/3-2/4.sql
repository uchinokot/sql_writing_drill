SELECT
  s.Quantity
, c.CustomerName
, p.ProductName
, e.EmployeeName
FROM
  Sales AS s
, Customers AS c
, Employees AS e
, Products AS p
WHERE
  s.CustomerID = c.CustomerID
  AND
  s.EmployeeID = e.EmployeeID
  AND
  s.ProductID = p.ProductID
GROUP BY
  s.SaleID
HAVING
  s.Quantity >= 200
;
