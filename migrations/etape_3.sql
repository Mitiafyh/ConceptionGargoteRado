CREATE TABLE Commande(
    id_commande SERIAL PRIMARY KEY ,
    daty date
);
CREATE TABLE Commande_Plat(
    id_commande_plat SERIAL PRIMARY KEY,
    id_commande INTEGER REFERENCES Commande(id_commande) on delete CASCADE NOT NULL,
    id_plat INTEGER REFERENCES Plat(id_plat) on delete CASCADE NOT NULL,
    quantite INTEGER NOT NULL
);

INSERT INTO Commande (daty) VALUES
('2026-10-10'),
('2026-10-11'),
('2026-10-12');


INSERT INTO Commande_Plat (id_commande, id_plat, quantite) VALUES
-- Commande 1
(1, 1, 2),
(1, 5, 1),
(1, 7, 2),

-- Commande 2
(2, 2, 1),
(2, 3, 2),
(2, 6, 4),

-- Commande 3
(3, 4, 2),
(3, 5, 2),
(3, 7, 3);


