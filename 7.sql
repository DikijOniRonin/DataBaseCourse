-- Показать поля PersonType, NameStyle, Title, FirstName, MiddleName, LastName из таблицы Person.Person. Неизвестные
-- значения поля Title заменить на 'Dear' (уважаемый). Названия полей оставить без изменений.
SELECT "PersonType", "NameStyle", COALESCE("Title", 'Dear') AS "Title" , "FirstName", "MiddleName", "LastName" FROM "Person"."Person"