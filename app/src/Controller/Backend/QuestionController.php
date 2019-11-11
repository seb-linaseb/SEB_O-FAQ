<?php

namespace App\Controller\Backend;


use App\Entity\Question;
use App\Repository\AnswerRepository;
use App\Repository\QuestionRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

/**
 * 
 * @Route("/backend/question", name="backend_")
 */
class QuestionController extends AbstractController
{
    /**
     * @Route("/", name="question_list")
     */
    public function list(QuestionRepository $questionRepository): Response
    {
        return $this->render('backend/question/list.html.twig', [
            'questions' => $questionRepository->findAll(),
        ]);
    }

    /**
     * @Route("/{id}", name="question_show", methods={"GET"})
     */
    public function show(Question $question): Response
    {
        
        return $this->render('backend/question/show.html.twig', [
            'question' => $question,
        ]);
    }
}
