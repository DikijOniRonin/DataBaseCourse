-- Показать номера телефонов (PhoneNumber) и поля PersonType, FirstName, LastName
-- из таблиц Person.Person, Person.PersonPhone.
SELECT pp."PersonType",
       pp."FirstName",
       pp."LastName",
       ppp."PhoneNumber" FROM "Person"."Person" pp join "Person"."PersonPhone" ppp
           ON pp."BusinessEntityID" = ppp."BusinessEntityID"
