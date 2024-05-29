-- Сформировать таблицу, которая имеет дубликаты строк. Удалить дубликаты.
INSERT INTO "authors" VALUES (1, 'Ivanov', 'ivan', ''), (2, 'ivanov', 'ivan', '');
DELETE FROM "authors" WHERE "first_name" NOT IN (SELECT "first_name" FROM authors GROUP BY authors.first_name)