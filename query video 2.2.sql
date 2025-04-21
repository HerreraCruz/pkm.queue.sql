CREATE TABLE pokequeue.[status](
    id int IDENTITY(1,1) PRIMARY KEY,
    [description] VARCHAR(255) NOT NULL,
)

INSERT INTO pokequeue.[status] ([description])
VALUES ('sent'), ('inprogress'), ('completed'), ('failed');

select * from pokequeue.[status]

CREATE TABLE pokequeue.[requests](
    id int IDENTITY(1,1) PRIMARY KEY,
    [type] VARCHAR(255) NOT NULL,
    id_status int NOT NULL,
    [url] VARCHAR(1000),
    created DATETIME DEFAULT GETDATE(),
    UPDATED DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (id_status) REFERENCES pokequeue.[status](id)
)