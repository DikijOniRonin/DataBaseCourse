-- 2
-- Ранжирование сотрудников по дате приема на работу в порядке от самого старого до самого нового сотрудника("HumanResources"."Employee").
-- Примечание к ранжированию - ранг может начинаться с произвольного числа (например, 2 или 5), главное - ранг не должен уменьшаться
select "BusinessEntityID","HireDate", ROW_NUMBER() OVER (ORDER BY "HireDate") as Rank from "HumanResources"."Employee"