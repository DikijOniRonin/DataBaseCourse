-- Показать список складов (LocationID), на которых содержатся несколько продуктов (ProductID),
-- из таблицы Production.ProductInventory, используя SELF JOIN.
SELECT DISTINCT(ppi1."LocationID") FROM "Production"."ProductInventory" ppi1 JOIN "Production"."ProductInventory" ppi2
    ON ppi1."ProductID"<>ppi2."ProductID" AND ppi1."LocationID"=ppi2."LocationID"