CREATE TABLE client(
    id_client SERIAL PRIMARY KEY,
    nom_client VARCHAR(50)
);

ALTER TABLE commande ADD COLUMN id_client INTEGER REFERENCES client(id_client) on delete CASCADE;