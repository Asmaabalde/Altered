<?php

// src/Command/ImportCardCommand.php
namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Doctrine\ORM\EntityManagerInterface;

use App\Entity\CardSet;

#[AsCommand(name: 'app:import-card-set')]
class ImportCardSetCommand extends Command
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

        $cardSets = $response->toArray()['cardSet'];
        
        foreach($cardSets as $cardSet) {
            $cardSet_o = new CardSet();
            $cardSet_o->setReference($cardSet['reference']);
            $cardSet_o->setAlteredId($cardSet['id']);
            $cardSet_o->setName($cardSet['name']);

            $this->entityManager->persist($cardSet_o);
            $this->entityManager->flush();
        }

        return Command::SUCCESS;
    }
}