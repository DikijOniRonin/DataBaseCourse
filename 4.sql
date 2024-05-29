-- Создать таблицу по условию
SELECT 'role_name' INTO TABLE
    "role_name_copy" FROM "role" WHERE "role_name" LIKE '%2%';
