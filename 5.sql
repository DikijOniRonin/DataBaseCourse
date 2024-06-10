-- 5
-- Для каждого "Product" вывести отклонение от средней "StandartCost". Таблциа "Production"."Product"
SELECT "ProductID", "ListPrice", "StandardCost", ("ListPrice" - AVG("StandardCost")) AS deviation  FROM "Production"."Product"
                                                    GROUP BY "ProductID", "ListPrice", "StandardCost" ORDER BY deviation