CREATE TABLE ingredient(
    id_ingredient SERIAL PRIMARY KEY,
    nom_ingredient varchar(50) NOT NULL UNIQUE,
    unite varchar(20) NOT NULL,
    stock INTEGER NOT NULL
);
CREATE TABLE plat_ingredient(
    id_plat_ingredient SERIAL PRIMARY KEY,
    id_plat INTEGER NOT NULL,
    id_ingredient INTEGER NOT NULL,
    quantite INT NOT NULL 
);
INSERT INTO ingredient (nom_ingredient, unite, stock) VALUES 
('Riz', 'g', 10000),
('Viande de zébu', 'g', 5000),
('Brèdes mafana', 'g', 2000),

('Ravitoto', 'g', 8000),         
('Viande de porc', 'g', 8000),   
('Poulet', 'g', 7000),           
('Lait de coco', 'ml', 5000),    
('Nouilles', 'g', 5000),         
('Légumes (assortis)', 'g', 4000),
('Farine de riz', 'g', 5000),    
('Sucre', 'g', 3000);   

INSERT INTO plat_ingredient (id_plat, id_ingredient, quantite) VALUES 
-- Plat 1 : Romazava
(1, 1, 250), -- Riz (250g)
(1, 2, 150), -- Viande de zébu (150g)
(1, 3, 100), -- Brèdes mafana (100g)

-- Plat 2 : Ravitoto sy henakisoa
(2, 1, 250), -- Riz (250g)
(2, 4, 200), -- Ravitoto (200g)
(2, 5, 150), -- Viande de porc (150g)

-- Plat 3 : Akoho sy voanio
(3, 1, 250), -- Riz (250g)
(3, 6, 200), -- Poulet (200g)
(3, 7, 100), -- Lait de coco (100ml)

-- Plat 4 : Mi sao
(4, 8, 200), -- Nouilles (200g)
(4, 9, 100), -- Légumes (100g)

-- Plat 5 : Soupe chinoise
(5, 8, 100), -- Nouilles (100g)
(5, 9, 80),  -- Légumes (80g)

-- Plat 6 : Mofo gasy (les 4)
(6, 10, 120), -- Farine de riz (120g)
(6, 11, 30),  -- Sucre (30g)

-- Plat 7 : Ranon'ampango
(7, 1, 50);   -- Riz (50g - pour l'eau de riz grillé)      