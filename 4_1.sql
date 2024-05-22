-- Task 3
-- Создать файлы со скриптами для изменений таблиц.
ALTER TABLE "books" ALTER COLUMN "title" SET NOT NULL;
ALTER TABLE "books" ALTER COLUMN "author" SET NOT NULL;
ALTER TABLE "books" ALTER COLUMN "publishing_date" SET NOT NULL;