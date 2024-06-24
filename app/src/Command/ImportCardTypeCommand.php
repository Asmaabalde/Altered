<?php

// src/Command/ImportCardCommand.php
namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Doctrine\ORM\EntityManagerInterface;

use App\Entity\CardType;

#[AsCommand(name: 'app:import-card-type')]
class ImportCardTypeCommand extends Command
{
    public function __construct(
        private HttpClientInterface $client,
        private EntityManagerInterface $entityManager
    ) {
        parent::__construct();
    }

    protected function configure(): void
    {
        $this
            ->setDescription('Import des types de cartes.')
            ->setHelp('This command import all the factions in the database...')
        ;
    }

    protected function execute(
        InputInterface $input, 
        OutputInterface $output
    ): int
    {
        $output->writeln([
            'Import Type de carte v1',
            '=======================',
            '',
        ]);

        $response = $this->client->request(
            'GET',
            'https://api.altered.gg/cards/filter-data'
        );

        $cardTypes = $response->toArray()['cardType'];
        
        foreach($cardTypes as $cardType) {
            $cardType_o = new CardType();
            $cardType_o->setReference($cardType['reference']);
            $cardType_o->setAlteredId($cardType['id']);
            $cardType_o->setName($cardType['name']);

            $this->entityManager->persist($cardType_o);
            $this->entityManager->flush();
        }

        return Command::SUCCESS;
    }
}