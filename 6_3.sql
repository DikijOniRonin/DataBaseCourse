-- Task 6
-- Написать скрипты на добавление внешнего ключа.
ALTER TABLE "author_books" ADD CONSTRAINT "FK_ab_role" FOREIGN KEY ("role_id") REFERENCES role("id");
