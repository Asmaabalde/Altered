<?php

// src/Command/ImportCardCommand.php
namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Doctrine\ORM\EntityManagerInterface;

use App\Entity\CardSubType;

#[AsCommand(name: 'app:import-card-sub-type')]
class ImportCardSubTypeCommand extends Command
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

        $cardSubTypes = $response->toArray()['cardSubTypes'];
        
        foreach($cardSubTypes as $cardSubType) {
            $cardSubType_o = new CardSubType();
            $cardSubType_o->setReference($cardSubType['reference']);
            $cardSubType_o->setAlteredId($cardSubType['id']);
            $cardSubType_o->setName($cardSubType['name']);

            $this->entityManager->persist($cardSubType_o);
            $this->entityManager->flush();
        }

        return Command::SUCCESS;
    }
}