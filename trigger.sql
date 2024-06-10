CREATE OR REPLACE FUNCTION prevent_table_deletion()
RETURNS EVENT_TRIGGER AS $$
BEGIN
    RAISE EXCEPTION 'Удаление таблицы запрещено!';
END;
$$ LANGUAGE plpgsql;

CREATE EVENT TRIGGER prevent_table_deletion_trigger
ON sql_drop
EXECUTE FUNCTION prevent_table_deletion();