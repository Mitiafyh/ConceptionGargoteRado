CREATE TABLE menu(
    id_menu SERIAL PRIMARY KEY,
    nom_menu varchar(100),
    prix INTEGER
);
CREATE TABLE plat_menu(
    id_plat_menu SERIAL PRIMARY KEY,
    id_menu INTEGER NOT NULL,
    id_plat INTEGER NOT NULL
);

INSERT INTO menu(nom_menu,prix) VALUES 
('Romazava',8000);

INSERT INTO plat_menu(id_menu,id_plat) VALUES
(1,1),
(1,6),
(1,7);
