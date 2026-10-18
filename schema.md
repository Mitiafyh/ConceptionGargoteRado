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

## Etape 5
serveurs(**id_serveur**,nom,prenom)(nouveau)
tables(**id_table**,nom_table)(nouveau)
Commande(**id_commande** ,date,#id_client,#id_serveur,#id_table) (modifié)

## Etape 6
mode_paiement(**id_mode_paiement**,mode_paiement)(nouveau)
paiement(**id_paiement**,#id_commande,#id_mode_paiement,montant,reference_transaction,daty) (nouveau)

## Etape 7
Commande_Plat(**id_commande_plat**,#id_commande,#id_plat,quantite,prix_umitaire)(modifié)
histo_prix_plat(**id_histo_prix_plat**,#id_plat,prix_unitaire,daty) (nouveau)


## Etape 8
ingredient(**id_ingredient**,nom_ingredient,unite,stock) (nouveau)
plat_ingredient(**id_plat_ingredient**,#id_plat,#id_ingredient) (nouveau)