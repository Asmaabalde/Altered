<?php

// src/Command/ImportCardCommand.php
namespace App\Command;

use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Contracts\HttpClient\HttpClientInterface;
use Doctrine\ORM\EntityManagerInterface;

use App\Entity\Faction;

#[AsCommand(name: 'app:import-faction')]
class ImportFactionCommand extends Command
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
            ->setDescription('Import des factions.')
            ->setHelp('This command import all the factions in the database...')
        ;
    }

    protected function execute(
        InputInterface $input, 
        OutputInterface $output
    ): int
    {
        $output->writeln([
            'Import Faction v1',
            '==============',
            '',
        ]);

        $response = $this->client->request(
            'GET',
            'https://api.altered.gg/cards/filter-data'
        );

        $factions = $response->toArray()['factions'];
        
        foreach($factions as $faction) {
            $faction_o = new Faction();
            $faction_o->setReference($faction['reference']);
            $faction_o->setColor($faction['color']);
            $faction_o->setAlteredId($faction['id']);
            $faction_o->setName($faction['name']);

            $this->entityManager->persist($faction_o);
            $this->entityManager->flush();
        }

        return Command::SUCCESS;
    }
}