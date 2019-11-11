# Dictionnaire de données

## ROLE (`role`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant unique du rôle|
|code|VARCHAR(100)|NOT NULL|Le code du rôle|
|name|VARCHAR(100)|NOT NULL|Le nom du rôle|
|created_at|DATETIME|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création du rôle|
|updated_at|DATETIME|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de la dernière mise à jour du rôle|

## USER (`user`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant unique de l'utilisateur|
|username|VARCHAR(255)|NOT NULL|Le nom de l'utilisateur|
|password|VARCHAR(255)|NOT NULL|Le mot de passe de l'utilisateur|
|email|VARCHAR(255)|NOT NULL|Le mail de l'utilisateur|
|status|BOOL|NOT NULL|Le statut (actif/non actif) de l'utilisateur|
|role_id|ENTITY|NOT NULL|Liaison avec la table Role|
|created_at|DATETIME|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création de l'utilisateur|
|updated_at|DATETIME|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de la dernière mise à jour de l'utilisateur|

## QUESTION (`question`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant unique de la question|
|title|VARCHAR(255)|NOT NULL|Le texte de la questions|
|content|TEXT|NOT NULL|Le contenu de la question|
|status|BOOL|NOT NULL|Le statut (bloqué/non bloqué) de la question|
|rate|INT|NOT NULL|La note de la question|
|tag_id|ENTITY|NOT NULL|Liaison avec la table Tag|
|user_id|ENTITY|NOT NULL|Liaison avec la table User|
|created_at|DATETIME|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création de la question|
|updated_at|DATETIME|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de la dernière mise à jour de la question|


## ANSWER (`answer`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant unique de la réponse|
|content|TEXT|NOT NULL|Le contenu de la réponse|
|status|BOOL|NOT NULL|Le statut (bloqué/non bloqué) de la question|
|rate|INT|NOT NULL|La note de la réponse|
|prefered|BOOL|NOT NULL|Statut "réponse préférée" par l'auteur|
|question_id|ENTITY|NOT NULL|Liaison avec la table Question|
|user_id|ENTITY|NOT NULL|Liaison avec la table User|
|created_at|DATETIME|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création de la réponse|
|updated_at|DATETIME|NULL|La date de la dernière mise à jour de la réponse|

## TAG (`tag`)

|Champ|Type|Spécificités|Description|
|-|-|-|-|
|id|INT|PRIMARY KEY, NOT NULL, UNSIGNED, AUTO_INCREMENT|L'identifiant unique du tag|
|name|VARCHAR(100)|NOT NULL|Le nom du tag|
|created_at|DATETIME|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de création du tag|
|updated_at|DATETIME|NOT NULL, DEFAULT CURRENT_TIMESTAMP|La date de la dernière mise à jour du tag|

