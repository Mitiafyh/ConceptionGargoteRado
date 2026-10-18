CREATE DATABASE gargoterado;
\c gargoterado;

CREATE TABLE Plat(
    id_plat  SERIAL PRIMARY KEY ,
    nom_plat VARCHAR(255),
    nom_categorie VARCHAR(255),
    prix INTEGER
);
INSERT INTO Plat(nom_plat,nom_categorie,prix) VALUES 
('Romazava','Plat malagasy',7000),
('Ravitoto sy henakisoa','Plat malagasy',8000),
('Akoho sy voanio','Plat malagasy',8500),
('Mi sao','Plat chinois',6000),
('Soupe chinoise','Soupe',5000),
('Mofo gasy (les 4)','Dessert et goûter',1000),
('Ranon ampango','Boisson',500);