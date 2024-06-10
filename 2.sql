-- 2
-- Ранжирование сотрудников по дате приема на работу в порядке от самого старого до самого нового сотрудника("HumanResources"."Employee").
-- Примечание к ранжированию - ранг может начинаться с произвольного числа (например, 2 или 5), главное - ранг не должен уменьшаться
SELECT "BusinessEntityID", "HireDate", (SELECT COUNT(*) FROM "HumanResources"."Employee" e2 WHERE e2."HireDate" <= e1."HireDate") as Rank FROM  "HumanResources"."Employee" e1 ORDER BY  "HireDate";
