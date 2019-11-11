# Routes

| URL | Titre | Description de la page | Méthode HTTP | Controller | Méthode | commentaire |
|--|--|--|--|--|--|--|
| `/` | Accueil | liste des questions | GET | MainController | / |  |
| `/login` | Login | Page de connexion | POST | UserController | login |  |
| `/logout` | Logout | Page de déconnexion | GET | UserController | logout |  |
| `/accueil` | Accueil (connecté) | Liste des quiz | GET | MainController | accueil |  |
| `/question/[id]` | Question N° [id] | Affichage de la question N° [id] | GET | QuestionController | question |  |
| `/send-answer` | Envoi Formulaire | Envoi d'une réponse à une question | POST | QuestionController | sendAnswer |  |
|  |  |  |  |  |  |  |

  backend_tag_index                   GET        ANY      ANY    /backend/tag/
  backend_tag_new                     GET|POST   ANY      ANY    /backend/tag/new
  backend_tag_show                    GET        ANY      ANY    /backend/tag/{id}
  backend_tag_edit                    GET|POST   ANY      ANY    /backend/tag/{id}/edit
  backend_tag_delete                  DELETE     ANY      ANY    /backend/tag/{id}

  backend_question_index              GET        ANY      ANY    /backend/question/
  backend_question_new                GET|POST   ANY      ANY    /backend/question/new
  backend_question_show               GET        ANY      ANY    /backend/question/{id}
  backend_question_edit               GET|POST   ANY      ANY    /backend/question/{id}/edit
  backend_question_delete             DELETE     ANY      ANY    /backend/question/{id}

  backend_answer_index                GET        ANY      ANY    /backend/answer/
  backend_answer_new                  GET|POST   ANY      ANY    /backend/answer/new
  backend_answer_show                 GET        ANY      ANY    /backend/answer/{id}
  backend_answer_edit                 GET|POST   ANY      ANY    /backend/answer/{id}/edit
  backend_answer_delete               DELETE     ANY      ANY    /backend/answer/{id}

OK  question_list                      GET|POST   ANY      ANY    /
  question_show                       GET        ANY      ANY    /movie/{id}
  app_login                           ANY        ANY      ANY    /login
  app_logout                          ANY        ANY      ANY    /logout
  backend_user_index                  GET        ANY      ANY    /backend/user/
  backend_user_new                    GET|POST   ANY      ANY    /backend/user/new
  backend_user_show                   GET        ANY      ANY    /backend/user/{id}
  backend_user_edit                   GET|POST   ANY      ANY    /backend/user/{id}/edit
  backend_user_delete                 DELETE     ANY      ANY    /backend/user/{id}
  easyadmin                           ANY        ANY      ANY    /easyadmin/
