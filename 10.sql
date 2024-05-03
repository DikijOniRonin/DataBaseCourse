-- Пропустить 15 строк из результирующего набора, полученного в п.9.
SELECT "BusinessEntityID" FROM "Sales"."Store" EXCEPT SELECT "CustomerID" FROM "Sales"."Customer" LIMIT 5 OFFSET 15