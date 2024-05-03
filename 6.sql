-- Показать список продуктов из таблицы Production.Product с таким же цветом как у
-- продукта «ML Road Frame–W – Yellow, 38», используя SELF JOIN.
SELECT * FROM "Production"."Product" pp1 JOIN "Production"."Product" AS pp2 ON pp1."Color"=pp2."Color" WHERE pp1."Name"='ML Road Frame–W – Yellow, 38'