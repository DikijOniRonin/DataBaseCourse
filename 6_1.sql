-- Task 6
-- Написать скрипты на добавление внешнего ключа.
ALTER TABLE "author_books" ADD CONSTRAINT "FK_ab_author" FOREIGN KEY ("author_id") REFERENCES authors("id");