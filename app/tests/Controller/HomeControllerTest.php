<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class HomeControllerTest extends WebTestCase
{
    public function testIsWorking(): void
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/');
        $this->assertResponseIsSuccessful();
    }

    /*public function testAreComponentsLoading(): void
    {
        $client = static::createClient();
        $crawler = $client->request('GET', '/');
        $this->assertSelectorTextContains('h1', 'List Deck');
    }*/
}
