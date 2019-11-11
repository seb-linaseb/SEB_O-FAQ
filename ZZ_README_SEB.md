# MESSAGE A LIRE EN PREMIER

- Les fixtures ne sont pas DU TOUT fonctionnelles
Je n'ai pas effacé les données (AppFixture...).... pour éviter de les resaisir.

- Il faut importer le fichier SQL `ofaq.sql` en BDD manuellement

- les utilisateurs & passwords
     . admin / admin
     . user / user
     . SEB / SEB
     . MUG / MUG
     . Myriam / Myriam
     . Nadia / Nadia
     . Max / Max

J'ai voulu mettre une barre de navigation différente selon les utilisateurs....
mais le fonctionnement n'était pas optimisé.... j'aurai voulu que la nav s'affiche selon le rôle...
Comme ce n'était pas fonctionnel, j'affiche la nav autorisant toutes les fonctionnalités....
A améliorer avec les rôles.

### MON TRELLO -> invitation à rejoindre
https://trello.com/invite/b/esQ3hP1d/85c8430a464b4d8af0b6b7f641fb5ca7/ofaq


# JOURNAL

## Jour 1

### Conception

- Lecture des consignes => Cahier des Charges
- "Création" Wireframes => Copie d'écran Quora & StackOverflow
- User Stories
- Mocodo

## Jour 2

### Conception

- Trello
- User Stories => mise à jour
- Dico des Données
- Routes

+ Code par ci par là

## JOUR 3 - On efface tout .... et on recommence

Après discution très constructive avec Claire sur la méthodologie, suppression et réinstallation de Symfony de zéro.

- Trello => mise à jour
- User Stories => A REVOIR
- Mocodo => mise à jour
- Dico des Données => mise à jour
- Routes => A REVOIR

- Installation Symfony
`composer create-project symfony/website-skeleton app`
- Création BDD User dans PhpMyAdmin
- Modification du .env.dev
- Création de la BDD
`php bin/console doctrine:database:create`
- Création des entités
`php bin/console make:entity`
    . Role
    . User
    . Question
    . Answer
    . Tag
- Création des relations
`php bin/console make:entity`
`relation`
    . User => Role
    . Question => User
    . Answer => User
    . Question => Tag
    . Answer => Question

## JOUR 4 - On avance ENFIN !

- Trello => mise à jour
- User Stories => A REVOIR
- Mocodo => mise à jour
- Dico des Données => mise à jour
- Routes => A REVOIR

- Création des Controller
`php bin/console make:controller`
     . Role
     . User
     . Question
     . Answer
     . Tag
- Modification des Controller
     . Routes
     . Nom de méthode
     . Nom de la vue TWIG
- Saisie manuelle des données dans PhpMyAdmin
     . Role
     . User
     . Question
     . Answer
     . Tag
     . User_Role
     . Question_Tag
- Création Méthode "list" des Controller
     . Role
     . User
     . Question
     . Answer
     . Tag
- Créer les vues TWIG correspondantes
     . Role
     . User
     . Question
     . Answer
     . Tag

## JOUR 5 - Comment bloquer sur les relations ?

- Trello => mise à jour
- User Stories => A REVOIR
- Routes => A REVOIR

- Création de la navigation entre les différentes tables
- Blocage sur la récupération du "role" d'un "user"

## JOUR 6 - J'ai trouvé !

- Trello => mise à jour
- User Stories => A REVOIR
- Routes => A REVOIR

- Affichage du nom du "role" dans la vue List des "user"
- Création Méthode "show" des controllers
     . Role (pas besoin de méthode Show - List suffisant)
     . User
     . Question
     . Answer (pas besoin de méthode Show - Answer va avec Question)
     . Tag (pas besoin de méthode Show - List suffisant)
- Créer les vues TWIG correspondantes
     . Role (pas besoin de méthode Show - List suffisant)
     . User
     . Question
     . Answer (pas besoin de méthode Show - Answer va avec Question)
     . Tag (pas besoin de méthode Show - List suffisant)
- Ajout Bouton de Connexion / Déconnexion

## JOUR 7 - Je bloque sur la connexion utilisateur !

- Trello => mise à jour
- User Stories => A REVOIR
- Routes => A REVOIR

- Impossible d'arriver à se connecter
- Longues recherches....
- Ajout des éléments de Security :
     . SecurityController (src/Controller)
     . LoginFormAuthenticator (src/Security)

Mais ça fonctionne toujours pas !!!

## JOUR 8 - Je suis loggé !

- Trello => mise à jour
- User Stories => A REVOIR
- Routes => A REVOIR

- Je pense que mon problème venait du fait que j'avais laissé ma relation "user"/"role" en ManyToMany
- En corrigeant en ManyToOne => problème corrigé

## JOUR 9 - Séparation Front / Back et méthodes New, Edit, Delete.... (partiel)

- Trello => mise à jour
- User Stories => A REVOIR
- Routes => A REVOIR

- Séparation du FrontEnd et du BackEnd
- Création des méthodes "show" des Controller
     . Tag
     . Role
- Création Formulaire :
     . TagType
     . RoleType
- Création des vues TWIG correspondantes
     . new.html.twig
     . _form.html.twig
