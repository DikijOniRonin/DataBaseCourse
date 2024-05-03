-- Изменить запрос п.5 использовать GROUPING SETS. Отделить строки,
-- созданные с помощью агрегатных функций от строк из фактической таблицы.
SELECT "BusinessEntityID",
       "LastReceiptCost",
       MAX("LastReceiptCost") AS "MaxLastReceiptCost",
       SUM("LastReceiptCost") AS "TotalLastReceiptCost",
       GROUPING("LastReceiptCost") AS "LastReceiptCost GROUPING" FROM "Purchasing"."ProductVendor"
       GROUP BY GROUPING SETS (ROLLUP ("LastReceiptCost", "BusinessEntityID"))