-- Показать список ID людей (поле BusinessEntityId), в котором указано, работает ли человек в магазине или нет,
-- из таблиц Sales.Store, Person.BusinessEntity, используя RIGHT OUTER JOIN.
SELECT pbe."BusinessEntityID",
       ss."Name" FROM "Person"."BusinessEntity" pbe RIGHT OUTER JOIN "Sales"."Store" ss
           ON pbe."BusinessEntityID" = ss."BusinessEntityID"