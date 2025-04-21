create schema pokequeue;

create table pokequeue.MESSAGES(
    id int IDENTITY(1,1) PRIMARY KEY,
    [message] VARCHAR(255) NOT NULL,
)

use pokequeuedb;

INSERT INTO pokequeue.MESSAGES ([message]) VALUES ('POKE QUEUE REQUEST');

SELECT * FROM pokequeue.MESSAGES;

INSERT INTO pokequeue.MESSAGES ([message]) VALUES ('UNAH');

INSERT INTO pokequeue.MESSAGES ([message]) VALUES ('SISTEMAS EXPERTOS');

CREATE LOGIN PokeQueueApp WITH PASSWORD = 'PokeQueue2025!';

use pokequeuedb;

create user PokeQueueAppUser for login PokeQueueApp;

