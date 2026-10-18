ALTER TABLE commande_plat ADD COLUMN prix_unitaire INTEGER;

UPDATE commande_plat as cp SET prix_unitaire=p.prix 
FROM plat as p
where cp.id_plat=p.id_plat;

ALTER TABLE commande_plat ALTER COLUMN prix_unitaire SET NOT NULL;

CREATE TABLE histo_prix_plat(
    id_histo_prix_plat SERIAL PRIMARY KEY,
    id_plat INTEGER,
    prix_unitaire INTEGER,
    daty date
);
