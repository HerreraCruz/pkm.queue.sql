SELECT MAX(id) as id from pokequeue.requests

SELECT * FROM pokequeue.requests;

DELETE FROM pokequeue.requests WHERE id BETWEEN 5 AND 10;

DELETE FROM pokequeue.requests WHERE id < 29;

SELECT * FROM pokequeue.status;


SELECT * FROM pokequeue.MESSAGES;

SELECT 
    r.id as ReportId
    , s.description as Status
    , r.type as PokemonType
    , r.url
    , r.created
    , r.updated
FROM pokequeue.requests r
INNER JOIN pokequeue.status s
ON r.id_status = s.id