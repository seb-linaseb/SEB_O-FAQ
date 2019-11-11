<?php

namespace App\Controller\Backend;

use App\Entity\User;
use App\Entity\Role;
use App\Repository\UserRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * 
 * @Route("/backend/user", name="backend_")
 */
class UserController extends AbstractController
{
    /**
     * @Route("/", name="user_list")
     */
    public function list(UserRepository $userRepository): Response
    {
        return $this->render('backend/user/list.html.twig', [
            'users' => $userRepository->findAll(),
        ]);
    }

    /**
     * @Route("/{username}", name="user_show", methods={"GET"})
     */
    public function show(User $user): Response
    {
        
        return $this->render('backend/user/show.html.twig', [
            'user' => $user,
        ]);
    }

}


