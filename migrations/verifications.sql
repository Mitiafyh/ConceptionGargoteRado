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