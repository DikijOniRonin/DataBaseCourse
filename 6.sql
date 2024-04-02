-- Показать список продуктов из таблицы Production.Product с таким же цветом как у
-- продукта «ML Road Frame–W – Yellow, 38», используя SELF JOIN.
SELECT FROM "Production"."ProductInventory" ppi1 JOIN "Production"."ProductInventory" ppi2 ON