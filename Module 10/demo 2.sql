USE AdventureWorks;

CREATE FUNCTION Sales.GetLastOrdersForCustomer 
(@CustomerID int, @NumberOfOrders int)
RETURNS TABLE
AS
RETURN (SELECT TOP(@NumberOfOrders)
                              soh.SalesOrderID,
                              soh.OrderDate,
                              soh.PurchaseOrderNumber
                FROM Sales.SalesOrderHeader AS soh
                WHERE soh.CustomerID = @CustomerID
                ORDER BY soh.OrderDate DESC
               );

select * from Sales.SalesOrderHeader

-- Returns the last three orders for customer 11001.

SELECT * FROM Sales.GetLastOrdersForCustomer(11001,3);
GO

--   Using Cross Apply
--   Note as a matter of interest that if you scroll to 
--   customer 11012, you will see a customer with less than
--   three orders. The function will still return these customers.

SELECT c.CustomerID,
             c.AccountNumber,
             orders.SalesOrderID,
             orders.OrderDate 
FROM Sales.Customer AS c
CROSS APPLY Sales.GetLastOrdersForCustomer(c.CustomerID,3) AS orders
ORDER BY c.CustomerID, orders.SalesOrderID;

DROP FUNCTION Sales.GetLastOrdersForCustomer;
GO