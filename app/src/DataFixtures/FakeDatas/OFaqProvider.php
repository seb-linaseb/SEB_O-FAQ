<?php

namespace App\DataFixtures\FakeData;

class OFaqProvider extends \Faker\Provider\Base{


    protected static $roles = [
      [
        'name' => 'Administrateur',
        'code' => 'ROLE_ADMIN',
      ],
      [
        'name' => 'Modérateur',
        'code' => 'ROLE_MODERATOR',
      ],
      [
        'name' => 'Utilisateur',
        'code' => 'ROLE_USER',
      ],
    ];



    protected static $users = [
        'admin',
        'user',
        'MUG',
        'SEB',
        'Myriam',
        'Nadia',
        'Max',
    ];

    protected static $questions = [
      'Quand est-ce qu\'on reçoit le MUG ?',
      'De quel couleur est le MUG ?',
      'Combien on reçoit de MUG ?',
      'La blague sur le MUG est-elle drôle ?',
      'Qui a volé mon MUG ?',
    ];

    protected static $answers = [
      'Un jour, peut être...',
      'Quand tu seras sage....',
      'Jamais !',
      'Noir',
      'Rouge',
      'Vert',
      'Aucun !',
      '1 seul !',
      'Une palette !',
      'Je suis mort de rire !',
      'Bof bof',
      'Pas vraiment, non !',
      'SEB',
      'Ben O\'Clock !',
      'Guillaume O\'Clock... d\'ailleurs il a disparu depuis qu`il a volé le MUG de SEB',
    ];

    protected static $tags = [
      'SYMFO',
      'REACT',
      'WORDPRESS',
      'WIX',
      'WORD',
    ];

public static function tagName(){
        return static::randomElement(static::$tags);
    }

}