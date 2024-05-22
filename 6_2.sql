-- Task 6
-- Написать скрипты на добавление внешнего ключа.
alter table "author_books" add constraint "FK_ab_books" foreign key ("book_id") references books("id");