-- Ограничить результирующий набор, полученный в п.8.
SELECT "BusinessEntityID" FROM "Sales"."Store" EXCEPT SELECT "CustomerID" FROM "Sales"."Customer" LIMIT 5