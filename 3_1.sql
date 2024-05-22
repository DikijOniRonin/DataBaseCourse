-- Task 3
-- Создать файлы со скриптами для изменений таблиц.
alter table "books" alter column "title" set not null;
alter table "books" alter column "author" set not null;
alter table "books" alter column "publishing_date" set not null;