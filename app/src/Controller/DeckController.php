<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Http\Attribute\IsGranted;

#[Route('/decks')]
class DeckController extends AbstractController
{
    #[Route('/new', name: 'new_deck')]
    #[IsGranted('ROLE_USER')]
    public function new () : Response
    {
        return $this->render('decks/new.html.twig', []);
    }

    #[Route('/{id}', name: 'show_deck')]
    public function show () : Response
    {
        return $this->render('decks/show.html.twig', []);
    }
}