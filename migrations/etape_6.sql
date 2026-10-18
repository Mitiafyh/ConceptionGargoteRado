CREATE TABLE mode_paiement(
    id_mode_paiement SERIAL PRIMARY KEY,
    mode_paiement VARCHAR(50)
);
INSERT INTO mode_paiement(mode_paiement) VALUES
('espece'),
('MVola'),
('Orange_Money'),
('Airtel_Money');

CREATE TABLE paiement(
    id_paiement SERIAL PRIMARY KEY,
    id_commande INTEGER NOT NULL REFERENCES commande(id_commande),
    id_mode_paiement INTEGER NOT NULL REFERENCES mode_paiement(id_mode_paiement),
    montant INTEGER,
    reference_transaction VARCHAR(100) NULL,
    daty date
);

INSERT INTO paiement (id_commande,id_mode_paiement,montant,reference_transaction,daty) VALUES 
(1,1,10000,NULL,'2026-10-10'),
(1,2,5000,NULL,'2026-10-10'),

(2,3,6000, 'OM20261018002','2026-10-11');
