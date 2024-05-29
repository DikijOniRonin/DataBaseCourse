-- 4
-- Для каждого из продуктов выведите его название и цену, а также название и цену более дорогого продукта("Production"."Product")
SELECT pp1."Name", pp1."ListPrice", pp2."Name" AS more_expensive_product_name,
       pp2."ListPrice" AS more_expensive_product_price FROM "Production"."Product"
           pp1 LEFT JOIN "Production"."Product" pp2 ON pp1."ListPrice" < pp2."ListPrice"