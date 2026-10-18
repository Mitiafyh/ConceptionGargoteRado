## Etape 1
Plat(**id_plat**,nom_plat,nom_categorie,prix)

## Etape 2
Plat(**id_plat**,nom_plat,#id_categorie,prix) (modifié)
Categorie(**id_categorie**,nom_categorie) (nouveau)

## Etape 3
Commande(**id_commande** ,date)(nouveau)
Commande_Plat(**id_commande_plat**,#id_commande,#id_plat,quantite)(nouveau)

## Etape 4
client(**id_client** ,nom_client)(nouveau)
Commande(**id_commande** ,date,#id_client) (modifié)

##Etape 5
serveurs(**id_serveur**,nom,prenom)(nouveau)
tables(**id_table**,nom_table)(nouveau)
Commande(**id_commande** ,date,#id_client,#id_serveur,#id_table) (modifié)