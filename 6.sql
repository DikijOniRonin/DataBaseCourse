-- Изменить запрос п.5 использовать CUBE. Отделить строки, созданные с
-- помощью агрегатных функций от строк из фактической таблицы.
SELECT "BusinessEntityID",
       "LastReceiptCost",
       MAX("LastReceiptCost") AS "MaxLastReceiptCost",
       SUM("LastReceiptCost") AS "TotalLastReceiptCost" FROM "Purchasing"."ProductVendor"
                                                        GROUP BY CUBE ("LastReceiptCost", "BusinessEntityID")