-- Показать список продуктов (поле Name), в котором указано, есть ли продукта название модели или нет,
-- из таблиц Production.ProductionModel, Production.Product, используя LEFT OUTER JOIN.
SELECT pp."Name" AS "Product", ppm."Name" AS "Model" FROM "Production"."ProductModel" ppm LEFT OUTER JOIN "Production"."Product" pp ON ppm."ProductModelID" = pp."ProductModelID"