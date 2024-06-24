<?php

// src/Command/ImportCardCommand.php
namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Doctrine\ORM\EntityManagerInterface;

use App\Entity\Card;
use App\Repository\FactionRepository;
use App\Repository\RarityRepository;
use App\Repository\CardTypeRepository;
use App\Repository\CardSetRepository;
use App\Repository\CardRepository;

#[AsCommand(name: 'app:import-card')]
class ImportCardCommand extends Command
{
    public function __construct(
        private HttpClientInterface $client,
        private EntityManagerInterface $entityManager,
        private FactionRepository $factionRepository,
        private RarityRepository $rarityRepository,
        private CardTypeRepository $cardTypeRepository,
        private CardSetRepository $cardSetRepository,
        private CardRepository $cardRepository
    ) {
        parent::__construct();
    }

    protected function configure(): void
    {
        $this
            ->setDescription('Import card.')
            ->setHelp('This command import all the card in the database...')
        ;
    }

    protected function execute(
        InputInterface $input, 
        OutputInterface $output
    ): int
    {
        $output->writeln([
            'Import Card v1',
            '==============',
            '',
        ]);

        $response = $this->client->request(
            'GET',
            'https://api.altered.gg/cards?itemsPerPage=400'
        );

        $statusCode = $response->getStatusCode();

        $output->writeln([
            'StatusCode:',
            $statusCode
        ]);

        $reponseArray = $response->toArray();
        
        $cards = $reponseArray['hydra:member'];

        foreach($cards as $card) {
            $card_o = $this->cardRepository->findOneBy([
                'altered_id'    =>  $card['id']
            ]);

            if ($card_o == null) {
                $card_o = new Card();
            }

            $card_o->setReference($card['reference']);
            $card_o->setAlteredId($card['id']);
            $card_o->setName($card['name']);
            $card_o->setRarity($this->rarityRepository->findOneBy([
                'altered_id'    =>  $card['rarity']['id']
            ]));
            $card_o->setMainFaction($this->factionRepository->findOneBy([
                'altered_id'    =>  $card['mainFaction']['id']
            ]));
            $card_o->setCardType($this->cardTypeRepository->findOneBy([
                'altered_id'    =>  $card['cardType']['id']
            ]));
            $card_o->setCardSet($this->cardSetRepository->findOneBy([
                'altered_id'    =>  $card['cardSet']['id']
            ]));
            $card_o->setImagePath($card['imagePath']);

            $content = file_get_contents($card['imagePath']);

            //Store in the filesystem.
            $picture = explode('/', $card['imagePath']);
            $fp = fopen("public/img/cards/" . end($picture), "w");
            fwrite($fp, $content);
            fclose($fp);
            $card_o->setPicture(end($picture));

            $this->entityManager->persist($card_o);
            $this->entityManager->flush();
        }

        return Command::SUCCESS;
    }
}