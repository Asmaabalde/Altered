<?php

// src/Command/ImportCardCommand.php
namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Doctrine\ORM\EntityManagerInterface;

use App\Entity\Rarity;

#[AsCommand(name: 'app:import-rarity')]
class ImportRarityCommand extends Command
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
            ->setDescription('Import des raretées.')
            ->setHelp('This command import all the factions in the database...')
        ;
    }

    protected function execute(
        InputInterface $input, 
        OutputInterface $output
    ): int
    {
        $output->writeln([
            'Import Rareté v1',
            '==============',
            '',
        ]);

        $response = $this->client->request(
            'GET',
            'https://api.altered.gg/cards/filter-data'
        );

        $rarities = $response->toArray()['rarity'];
        
        foreach($rarities as $rarity) {
            $rarity_o = new Rarity();
            $rarity_o->setReference($rarity['reference']);
            $rarity_o->setAlteredId($rarity['id']);
            $rarity_o->setName($rarity['name']);

            $this->entityManager->persist($rarity_o);
            $this->entityManager->flush();
        }

        return Command::SUCCESS;
    }
}