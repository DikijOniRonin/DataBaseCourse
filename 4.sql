-- Показать список продуктов (ProductID), которые содержатся на нескольких складах (LocationID),
-- из таблицы Production.ProductInventory, используя SELF JOIN.
SELECT ppi1."ProductID" FROM "Production"."ProductInventory" ppi1 JOIN  "Production"."ProductInventory" ppi2
    ON ppi1."ProductID"<>ppi2."ProductID" AND ppi1."LocationID"=ppi2."ProductID"