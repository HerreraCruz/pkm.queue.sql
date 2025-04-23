CREATE PROCEDURE pokequeue.update_poke_request(
    @id INT,
    @status NVARCHAR(255),
    @url NVARCHAR(1000)
)
AS

SET NOCOUNT ON;

UPDATE pokequeue.requests
SET id_status = (select id from pokequeue.status where description = @status),
    url = @url,
    updated = GETDATE()
WHERE id = @id;

SELECT 1 AS completed;


SELECT * FROM pokequeue.requests

SELECT * FROM pokequeue.status

SELECT * FROM pokequeue.MESSAGES