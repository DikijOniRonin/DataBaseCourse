-- Для каждого пола (Gender) найти суммарное количество часов
-- отпуска из таблицы (поставить фильтр: работник был принят до 2008года) HumanResources.Employee,
-- не учитывать пустые значения.
SELECT "Gender", COUNT("VacationHours") FROM "HumanResources"."Employee" WHERE date_part('year', "HireDate") <= 2008 GROUP BY "Gender"