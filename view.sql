CREATE VIEW author_books_expanded AS
SELECT
  ab.id,
  ab.author_id,
  a.first_name AS author_first_name,
  a.second_name AS author_second_name,
  ab.book_id,
  b.title AS book_title,
  ab.role_id,
  r.role_name AS role_name
FROM
  author_books ab
  JOIN authors a ON ab.author_id = a.id
  JOIN books b ON ab.book_id = b.id
  JOIN role r ON ab.role_id = r.id;