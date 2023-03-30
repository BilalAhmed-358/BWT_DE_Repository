-- 3 - Create a view that shows the total revenue generated by each category.
USE northwind
GO
CREATE VIEW CategoryRevenue AS
SELECT C.CategoryName, SUM(OD.UnitPrice * OD.Quantity) AS TotalRevenue
FROM Categories C
JOIN Products P ON C.CategoryID = P.CategoryID
JOIN [Order Details] OD ON P.ProductID = OD.ProductID
GROUP BY C.CategoryName;