<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;
use Symfony\Bundle\SecurityBundle\Security;

#[Route('/cards')]
class CardController extends AbstractController
{
    #[Route('/', name: 'list_card')]
    public function list () : Response
    {
        return $this->render('cards/list.html.twig', []);
    }

    #[Route('/{id}', name: 'show_card')]
    public function show (
        Security $security
    ) : Response
    {
        $user = $this->getUser();

        return $this->render('cards/show.html.twig', [
            'user' => $user
        ]);
    }
}