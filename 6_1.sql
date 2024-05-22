-- Task 6
-- Написать скрипты на добавление внешнего ключа.
alter table "author_books" add constraint "FK_ab_author" foreign key ("author_id") references authors("id");