-- 3
-- Посчитать сумму StandartPrice шести уникальных BusinessEntityID с самим большим значением ("Purchasing"."ProductVendor")
SELECT SUM("StandardPrice") FROM "Purchasing"."ProductVendor" WHERE "BusinessEntityID" IN (
                                                                                            SELECT DISTINCT ("BusinessEntityID")
                                                                                            FROM "Purchasing"."ProductVendor"
                                                                                            ORDER BY "BusinessEntityID"
                                                                                            LIMIT 6
                                                                                          )
