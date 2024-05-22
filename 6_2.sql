-- Task 6
-- Написать скрипты на добавление внешнего ключа.
ALTER TABLE "author_books" ADD CONSTRAINT "FK_ab_books" FOREIGN KEY ("book_id") REFERENCES books("id");