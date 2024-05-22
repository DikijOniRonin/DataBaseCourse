-- Task 6
-- Написать скрипты на добавление внешнего ключа.
alter table "author_books" add constraint "FK_ab_role" foreign key ("role_id") references role("id");
