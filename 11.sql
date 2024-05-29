--Показать работу с оператором MERGE.
MERGE INTO "role_copy" USING "role" ON ("role_copy".id = role.id)
    WHEN MATCHED THEN UPDATE SET "role_name" = "role"."role_name"
    WHEN NOT MATCHED THEN INSERT VALUES (1, 'hi!');