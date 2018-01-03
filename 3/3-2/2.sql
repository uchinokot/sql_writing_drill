SELECT
  s.Quantity
, c.CustomerName
, p.ProductName
, e.EmployeeName
FROM
  Sales AS s
    JOIN
  Customers AS c
    ON s.CustomerID = c.CustomerID
      JOIN
    Employees AS e
      ON s.EmployeeID = e.EmployeeID
        JOIN
      Products AS p
        ON s.ProductID = p.ProductID
GROUP BY
  s.SaleID
HAVING
  s.Quantity >= 200
;
