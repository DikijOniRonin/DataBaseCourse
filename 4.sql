-- Показать уникальные названия городов (City) из таблицы Person.Address, у которых известен ("AddressLine2").
SELECT DISTINCT "City"  FROM "Person"."Address" WHERE "AddressLine2" IS NOT NULL