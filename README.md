# Projet Echec J2E Restful
Il s'agit d'un site web permettant de jouer aux echec en multijoueur ou contre l'IA.

**Différents modes de jeu :**
- Contre l'IA (IA difficulté simple)
- Multijoueur sur le même écran
- Multijoueur sur plusieurs clients (reste à implémenter pour cause d'accès a la base)

**Différents paramètres**
- Sauvegarder
- Charger
- Zoomer
- Afficher / masquer l'aide de jeu
- Annuler le coup (à améliorer)

# Installation
**En local:**
- Télécharger le fichier zip (s'il est bloqué par sécurité, télécharger le .txt et le renommer en .zip)
- Dézipper l'archive puis ouvrir le projet dans Netbeans.
- Importer le fichier .sql dans un moteur de base de données mysql et nommer la base **_webechecs_** (par exemple WAMP)
- Lancer le jeu !

**Par URL:**
- Le site est déployé sur : http://fr.teebbo.com:8080/echecs/

Le site peut malfonctionner avec IE voire avec certaines versions de Edge qui gèrent mal ou bloquent l'utilisation des sessions

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
