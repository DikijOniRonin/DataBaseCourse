-- 4
-- Для каждого из продуктов выведите его название и цену, а также название и цену более дорогого продукта("Production"."Product")
SELECT pp1."Name", pp1."ListPrice",
       (SELECT pp2."Name" FROM "Production"."Product" pp2
        WHERE pp2."ListPrice" > pp1."ListPrice"
        ORDER BY pp2."ListPrice" LIMIT 1) AS more_expensive_product_name,
       (SELECT pp2."ListPrice" FROM "Production"."Product" pp2
        WHERE pp2."ListPrice" > pp1."ListPrice"
        ORDER BY pp2."ListPrice" LIMIT 1) AS more_expensive_product_price
FROM "Production"."Product" pp1
