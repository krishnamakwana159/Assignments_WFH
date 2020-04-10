--task 2

CREATE VIEW Sales.NewCustomer
AS
SELECT CustomerID, FirstName, LastName FROM Sales.CustomerPII;
GO

SELECT * FROM Sales.NewCustomer 
ORDER BY CustomerID

INSERT INTO Sales.NewCustomer
VALUES (1200,'kbc', 'abc'),
(1201, 'bhc', 'bpc');
GO

SELECT * from Sales.CustomerPII ORDER BY CustomerID