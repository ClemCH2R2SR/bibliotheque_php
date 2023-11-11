# Projet bibliotheque en ligne

## Conception de la BDD
Utilisation chat GPT pour remplir la base de données avec un grand nombre d'ouvrage accompagné de leur date, autheur et des categories aléatoires.

## Connexion à la BDD
Fonction askToDb() pour se connecter et envoyer une requete mise en place
Les requete sont préparés dans des constantes

## Affichage livres page d'accueil
Affichage des données dynamiquement, je ne pouvais pas importer un tableau contenant directement les livres avec toutes leurs informations
car je voulais rendre possible le cas de figures de multiples categories par livres, mais la table de croisement "books_categories" à compliqué
le transfert de toutes informations car il a fallu 2 requetes pour qu'il n'y ai pas de livres en doublon dans le tableau "books", j'ai donc supprimé les doublons du champs "id_book" dans un nouveau tableau "newCategories" en rassemblant les categories dans un tableaux "categories"
présent dans chaque "newCategories".
Puis en faisant correspondre les valeurs de clés "id_book" et book_id" des tableaux "books" et "newCategories" j'integre un tableau categories avec le nom des categories dans chaque tableau du tableaux book correspondant.
Désolé pour le pavé

## Affichage des livres individuels
Perte de temps avec le reconstruction du tableau "books" pour un affichage dynamique.
requete à la base de données aussi abandonné
A la place, utilisation de la superglobale $_GET pour passer les informations des livres dans leurs pages individuelles
difficulté rencontrée --> Envoie et reception du tableau de categorie present dans chaque tableaux, das le but d'un affichage dynamique
Le nombre de categories pour un livre peut donc etre modifié sans probleme

## Mise en place des différents filtres pour la page d'accueil
Le choix s'est porté sur 3 barres de recherches séparées destinées à chercher par auteur, année de parution et titre.
Si aucun parametre GET n'existe parmis les 3 filtres cités alors tout le catalogue s'affichera.
### Filtre des années
Une variable stocke un parametre GET['releaseYear'], ce parametre filtre tout les book du tableaux books et stock ce ayant une valeur de
clé ['release_year_date'] identique dans un nouveaux tableau filtredBooksPerYear que l'on affiche tous en tant que book
### Filtre des titres et des auteurs
La meme démarche a été effectuée avec les filtres des titres et des auteurs, en utilisant la fonction stipos pour trier selon un mot/nom
(peu importe les majuscules) présent dans une string.

## Inscription
Inscription mise en place en renseignant pseudo, mail, MDP et confimation MDP
Mise en place d'une page de rebond ['subscription_process.php'].
Les messages d'erreurs et succes sont appelés via les constantes de Class Utils pour etre renvoyé à la page d'input via des parametres GET
lors de la redirection.
