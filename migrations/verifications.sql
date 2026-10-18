-- ETAPES 1
-- afficher les plats du plus cher au moins cher
SELECT * FROM Plat ORDER BY prix DESC;

-- Quel type choisissez-vous pour le prix ?
INTEGER
-- Quel identifiant choisissez-vous?
id_plat


-- ETAPES 2
-- categorie sans plat (pour le test)
INSERT INTO Categorie(nom_categorie) VALUES ('Plat coreen');

-- nombre de plats par catégorie
SELECT c.nom_categorie,count(p.nom_plat) 
FROM Plat as p RIGHT JOIN Categorie as c 
ON c.id_categorie=p.id_categorie
GROUP BY c.nom_categorie;

Piege : ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des
plats parce que si on fait cela à chaque fois qu on va inserer un plat on doit taper la categorie et si on fait une faute de frappe, on va avoir 2 categorie different
ex:  Plat 1:Romazava Catégorie :Plat malagasy
Plat 2:Ravitoto Catégorie :Plat malgache
on va avoir 2 categorie Plat malagasy et Plat malgache alors que c est la meme chose
si on veut avoir tous les plats malagasy plat malgache ne sera pas pris en compte


-- ETAPES 3
SELECT c.daty, SUM(cp.quantite*p.prix) FROM Commande_Plat as cp 
JOIN Commande as c
ON cp.id_commande=c.id_commande 
JOIN Plat as p 
ON cp.id_plat=p.id_plat
GROUP BY c.id_commande;

-- Où placez-vous la quantité
-> dans Commande_Plat

-- ETAPES 4
INSERT INTO client (nom_client) values ('Mitia');

UPDATE commande SET id_client = 1 where id_commande = 1;

select c.daty , case 
    when c.id_client is null then 'client de passage'
    else cl.nom_client
    end as nom_client
 from commande as c
left join client as cl on c.id_client = cl.id_client;


ma clé étrangère n est pas NOT NULL
-- Quelle jointure faut-il pour ne perdre aucune commande?
-> left join

-- ETAPES 5

select f.nom,count(f.id_commande) as nb_commande,sum(total) as CA from (SELECT c.id_commande,s.nom, SUM(cp.quantite*p.prix) as total FROM Commande_Plat as cp 
JOIN Commande as c
ON cp.id_commande=c.id_commande 
JOIN Plat as p 
ON cp.id_plat=p.id_plat
RIGHT JOIN serveurs as s
on s.id_serveur=c.id_serveur
GROUP BY c.id_commande,s.nom) as f
group by f.nom;


le nom table pose un problème en SQL car 'table' est une commande en sql
ce qui crée une confusion de la base en pensant que c est une erreur de syntax

-- ETAPES 6

WITH total_commande as(
    SELECT c.daty,c.id_commande,SUM(cp.quantite*p.prix) as total 
    FROM commande_plat as cp 
JOIN Commande as c ON cp.id_commande=c.id_commande 
JOIN plat as p ON cp.id_plat=p.id_plat
GROUP BY c.id_commande,c.daty
),
total_paye as(
    SELECT c.id_commande,sum(p.montant) as paye from commande as c
LEFT JOIN paiement as p ON c.id_commande=p.id_commande
group by c.id_commande

)
SELECT tc.id_commande,tc.total,COALESCE(tp.paye,0),(tc.total-COALESCE(tp.paye,0)) as reste 
from total_commande as tc
JOIN total_paye as tp ON tc.id_commande=tp.id_commande
WHERE (tc.total-COALESCE(tp.paye,0))>0;

montant_paye dans la table des commandes ne suffit  pas car on ne pourra pas avoir l historique de paiment de chaque commande


-- ETAPE 7
UPDATE plat SET prix=7500 WHERE nom_plat='Romazava';

Pour la commande 1, on constate que le facture a augmenté 

