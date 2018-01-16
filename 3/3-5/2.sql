SELECT
  c1.CustomerName AS 顧客名1
, c2.CustomerName AS 顧客名2
FROM
  Customers AS c1
    JOIN
  Customers AS c2
    ON c1.CustomerID < c2.CustomerID
    AND c1.PrefecturalID = c2.PrefecturalID
    AND c1.CustomerClassID = c2.CustomerClassID
;
