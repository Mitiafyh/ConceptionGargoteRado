CREATE TABLE Categorie(
    id_categorie  SERIAL PRIMARY KEY ,
    nom_categorie VARCHAR(255) 
);


INSERT INTO Categorie(nom_categorie) VALUES 
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');


ALTER TABLE Plat ADD COLUMN id_categorie INTEGER REFERENCES Categorie(id_categorie) on delete CASCADE;

UPDATE Plat SET id_categorie = 1  where nom_categorie = 'Plat malagasy';
UPDATE Plat SET id_categorie = 2  where nom_categorie = 'Plat chinois';
UPDATE Plat SET id_categorie = 3  where nom_categorie = 'Soupe';
UPDATE Plat SET id_categorie = 4 where nom_categorie = 'Dessert et goûter';
UPDATE Plat SET id_categorie = 5  where nom_categorie = 'Boisson';

ALTER TABLE Plat DROP COLUMN nom_categorie;

ALTER TABLE Plat ALTER COLUMN id_categorie SET NOT NULL;