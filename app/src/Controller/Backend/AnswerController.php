<?php

namespace App\Controller\Backend;

use App\Entity\Answer;
use App\Repository\AnswerRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * 
 * @Route("/backend/answer", name="backend_")
 */
class AnswerController extends AbstractController
{
    /**
     * @Route("/", name="answer_list")
     */
    public function list(AnswerRepository $answerRepository): Response
    {
        return $this->render('backend/answer/list.html.twig', [
            'answers' => $answerRepository->findAll(),
        ]);
    }

    /**
     * @Route("/{id}", name="answer_show", requirements={"id" = "\d+"})
     */
    public function show(Answer $answer)
    {
        return $this->render('backend/answer/show.html.twig', [
            'answer' => $answer, 
        ]);

    }
}
