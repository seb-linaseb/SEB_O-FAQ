<?php

namespace App\Security;

use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use Symfony\Component\Security\Core\Authentication\Token\TokenInterface;
use Symfony\Component\Security\Core\Exception\CustomUserMessageAuthenticationException;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Core\Exception\InvalidCsrfTokenException;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Security\Core\User\UserProviderInterface;
use Symfony\Component\Security\Csrf\CsrfToken;
use Symfony\Component\Security\Csrf\CsrfTokenManagerInterface;
use Symfony\Component\Security\Guard\Authenticator\AbstractFormLoginAuthenticator;
use Symfony\Component\Security\Http\Util\TargetPathTrait;


class LoginFormAuthenticator extends AbstractFormLoginAuthenticator
{
    use TargetPathTrait;

    private $entityManager;
    private $urlGenerator;
    private $csrfTokenManager;
    private $passwordEncoder;

    public function __construct(EntityManagerInterface $entityManager, UrlGeneratorInterface $urlGenerator, CsrfTokenManagerInterface $csrfTokenManager, UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->entityManager = $entityManager;
        $this->urlGenerator = $urlGenerator;
        $this->csrfTokenManager = $csrfTokenManager;
        $this->passwordEncoder = $passwordEncoder;
    }

    //cette fonction permet de verifier que l'utilisateur souhaite s'authentifier sur le la route app_login et que le formulaire envoyé est bien en post
    public function supports(Request $request)
    {
        return 'app_login' === $request->attributes->get('_route')
            && $request->isMethod('POST');
    }

    //cette fonction permet d'exposer comment symfony recupere les données d'authentification et va aller stocker le user en session
    public function getCredentials(Request $request)
    {
        $credentials = [
            'username' => $request->request->get('username'),
            'password' => $request->request->get('password'),
            'csrf_token' => $request->request->get('_csrf_token'),
        ];
        $request->getSession()->set(
            Security::LAST_USERNAME,
            $credentials['username']
        );

        return $credentials;
    }

    //cette fonction expose la facon dont symfony recupere le user associé a la verification de mot de passe + gere les erreurs du form login
    public function getUser($credentials, UserProviderInterface $userProvider)
    {
        $token = new CsrfToken('authenticate', $credentials['csrf_token']);
        if (!$this->csrfTokenManager->isTokenValid($token)) {
            throw new InvalidCsrfTokenException();
        }

        //cette requete permet de recuperer la main sur le test effectué par symfo avant la mise en session
        // peux etre customisée si on a la volonté de tester le username ET l'email

        /* 

         ex Max merci ! 

        Pour la gestion du username valide avec username OU email  on pourrait remplacer le code ci dessous par : 

        $user = $this->entityManager->getRepository(User::class)->findOneBy(['email' => $credentials['username']]);

        if(is_null($user)){
             $user = $this->entityManager->getRepository(User::class)->findOneBy(['username' => $credentials['username']]);
        }
        
        */
        $user = $this->entityManager->getRepository(User::class)->findOneBy(['username' => $credentials['username']]);

        //c'est ici aussi que symfony , gere le message d'erreur qu'il recupere sans SecurityController => login() => $error = $authenticationUtils->getLastAuthenticationError();
        if (!$user) {
            // fail authentication with a custom error
            throw new CustomUserMessageAuthenticationException('Username could not be found.');
        }

        return $user;
    }

    //verifie si le mot de passe de l'utilisateur est valide selon ce que l'ona  definit en terme d'encode
    public function checkCredentials($credentials, UserInterface $user)
    {
        return $this->passwordEncoder->isPasswordValid($user, $credentials['password']);
    }

    //cette fonction permet de gerer le comportement de symfony en cas de succes
    // la commande de la console nous demande explicitement d'aller gerer la redirection souhaitée
    public function onAuthenticationSuccess(Request $request, TokenInterface $token, $providerKey)
    {
        if ($targetPath = $this->getTargetPath($request->getSession(), $providerKey)) {
            return new RedirectResponse($targetPath);
        }

        // For example : return new RedirectResponse($this->urlGenerator->generate('some_route'));
        //throw new \Exception('TODO: provide a valid redirect inside '.__FILE__);

        //je recupere le code proposé et definit ma route a rediriger par defaut

        return new RedirectResponse($this->urlGenerator->generate('backend_user_show', ['username' => $request->request->get('username')]));
    }

    protected function getLoginUrl()
    {
        return $this->urlGenerator->generate('app_login');
    }
}
