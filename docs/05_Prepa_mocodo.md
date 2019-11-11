# ENTITES

- question -> question
Il peut y avoir plusieurs questions

- reponse -> answer
Il peut y avoir plusieurs réponses

- visiteur (non enregistré) => pas d'entité
- utilisateur -> user

- role -> role

- tag -> tag

## QUESTION

- intitulé
- corps de la question
- status (blocked/unblocked)
- rate (note - bouton +1)
- auteur => foreign key
- tag => foreign key


## ANSWER

- corps de la réponse
- status (blocked/unblocked)
- rate (note - bouton +1)
- auteur => foreign key
- question => foreign key


## USER

- username
- email
- password
- status (actif/non_actif)
- role => foreign key


## ROLE

- name
- code

## TAG

- name

# MOCODO

## APPLICATION EN MOCODO

ROLE: name, code
HAS, 1N USER, 1N ROLE

QUESTION: title, content, status, rate
WRITE1, 0N USER, 11 QUESTION
USER: username, password, email, status
WRITE2, 0N USER, 11 ANSWER
ANSWER: content, status, rate

OWN, 0N QUESTION, 11 ANSWER

APPLY, 0N QUESTION, ON TAG
TAG: name

Retouches à appliquer
APPLY => 47 / 302
Palette de couleurs => brewer+5