<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{
    /**
     * @Route("/login", name="app_login")
     */
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        // if ($this->getUser()) {
        //    $this->redirectToRoute('target_path');
        // }

        // verifie si la personne qui a essayé de s'authentifier a effectuer des erreurs
        $error = $authenticationUtils->getLastAuthenticationError();

        //permet de retourner notamment en cas d'erreur le dernier user saisit pour reaaficher correctement le form
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', ['last_username' => $lastUsername, 'error' => $error]);
    }

    /**
     * @Route("/logout", name="app_logout")
     */
    public function logout()
    {
        //ne s'affichera jamais car logout est intercepté par sa definition grace a security.yml clef logout
        throw new \Exception('This method can be blank - it will be intercepted by the logout key on your firewall');
    }
}
