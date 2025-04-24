CREATE PROCEDURE pokequeue.delete_poke_request
    @id INT
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM pokequeue.requests
    WHERE id = @id;

    -- Return a confirmation
    SELECT 1 AS completed;
END;


EXEC pokequeue.delete_poke_request '29';

SELECT * FROM pokequeue.requests;