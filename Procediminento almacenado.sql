ALTER PROCEDURE pokequeue.create_poke_request(
    @type NVARCHAR(255)
    , @sample_size INT = NULL
)
AS

SET NOCOUNT ON;

INSERT INTO pokequeue.requests(
    [type]
    , [url]
    , id_status
    , sample_size
) VALUES (
    @type
    , ''
    , (SELECT id FROM pokequeue.status WHERE description = 'sent')
    , @sample_size
)

DECLARE @InsertedId INT = SCOPE_IDENTITY();

    SELECT id, sample_size 
    FROM pokequeue.requests 
    WHERE id = @InsertedId;



EXEC pokequeue.create_poke_request 'fire';