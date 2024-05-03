-- Вывести BusinessEntityID, LastReceiptDate и максимальное значение LastReceiptCost
-- для BusinessEntityID с разными LastReceiptDate, предусмотреть вывод общей суммы для всех LastReceiptCost
-- у различных BusinessEntityID из таблицы Purchasing.ProductVendor. (Использовать ROOLUP).
SELECT "BusinessEntityID",
       "LastReceiptCost",
       MAX("LastReceiptCost") AS "MaxLastReceiptCost",
       SUM("LastReceiptCost") AS "TotalLastReceiptCost" FROM "Purchasing"."ProductVendor"
                                                        GROUP BY ROLLUP ("LastReceiptCost", "BusinessEntityID")