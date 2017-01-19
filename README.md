# Projet Echec J2E Restful
Il s'agit d'un site web permettant de jouer aux echec en multijoueur ou contre l'IA.

# Installation
En local:
- il faut dézipper l'archive puis ouvrir le projet dans Netbeans.
- puis importer le fichier .sql dans un moteur de base de données mysql et nommer la base **webechecs** (par exemple WAMP)
- lancer le jeu !

Par URL:
- Le site est déployé sur : http://fr.teebbo.com:8080/echecs/

Pour toutes les fonctionnalités utilisant la BDD, il est préférable de tester en local (incapacité de se connecter à l'URL de connexion pour le site)

#Spécification du protocole REST d’accès au service

##GET
- (TEXT_HTML) http://localhost:8080/AOSechecs/webresources/echec/status/{status} : initialise le jeu (retourne le dessin du jeu et le zoom)
- (APPLICATION_JSON) http://localhost:8080/AOSechecs/webresources/echec/options/{option} : permet de changer les options (retourne plusieurs paramètre selon l'option)
- (APPLICATION_JSON) http://localhost:8080/AOSechecs/webresources/echec/play/{coord} : indique la case sur laquelle on clique au serveur (retourne le dessin du jeu)
- (APPLICATION_JSON) http://localhost:8080/AOSechecs/webresources/echec/executedialogload/{type} : charge la partie selectionnée (retourne le nouvel échuiquier chargé) 

##PUT
- (APPLICATION_JSON) http://localhost:8080/AOSechecs/webresources/echec/executedialogsave/{type} : sauvegarde la partie en cours (retourne une confirmation ou non)

##DELETE 
- (APPLICATION_JSON) http://localhost:8080/AOSechecs/webresources/echec/executedialogdelete/{type} : supprime la partie selectionnée (retourne une confirmation)
