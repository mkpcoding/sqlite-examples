-- SQLite

--1--
SELECT COUNT(*) 
FROM Suppliers;

--2-- No Salary 

--3--
SELECT MIN(UnitPrice) 
FROM Products;

--4
SELECT AVG(UnitPrice) 
FROM Products;

--5
SELECT MAX(UnitPrice) 
FROM Products;

--6
SELECT SupplierID, COUNT(*) 
FROM Products 
GROUP BY SupplierID;

--7--
SELECT CategoryID, AVG(UnitPrice) 
FROM Products 
GROUP BY CategoryID;

--8--
SELECT SupplierID, COUNT(*)
FROM Products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

--9--
SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM Products
ORDER BY InventoryValue DESC, ProductName ASC;
