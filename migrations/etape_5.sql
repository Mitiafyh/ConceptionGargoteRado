CREATE TABLE serveurs(
    id_serveur SERIAL PRIMARY KEY,
    nom varchar(50),
    prenom varchar(50)
);

INSERT INTO serveurs(nom,prenom) VALUES 
('Njaka','Rakoto'),
('Lalao','Rasoa');

CREATE TABLE tables(
    id_table SERIAL PRIMARY KEY,
    nom_table varchar(50)
);
insert into tables(nom_table) values
('Table1'),
('Table2'),
('Table3'),
('Table4'),
('Table5'),
('Table6'),
('Table7'),
('Table8');


ALTER TABLE commande ADD COLUMN id_serveur INTEGER REFERENCES serveurs(id_serveur) on delete CASCADE;

UPDATE Commande SET id_serveur=1 where id_commande=1;
UPDATE Commande SET id_serveur=1 where id_commande=2;
UPDATE Commande SET id_serveur=2 where id_commande=3;


ALTER TABLE Commande ALTER COLUMN id_serveur SET NOT NULL;

ALTER TABLE commande ADD COLUMN id_table INTEGER REFERENCES tables(id_table) on delete CASCADE;

UPDATE Commande SET id_table=1 where id_commande=1;
UPDATE Commande SET id_table=2 where id_commande=3;

