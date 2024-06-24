<?php

namespace App\Tests\EndToEnd;

use Symfony\Component\Panther\PantherTestCase;

class HomeUrlTest extends PantherTestCase
{
    public function testIsLoading(): void
    {
        $client = static::createPantherClient([
            '--remote-debugging-port=9222',
            '--no-sandbox',
            '--disable-dev-shm-usage',
            '--headless',
            '--disable-gpu',
            '--disable-extensions'
        ], [], ['request_timeout_in_ms' => 20000000]);

        $client->request('GET', 'http://localhost:8001/');

        $this->assertSelectorExists('h1');

        $this->assertSelectorTextContains('h1', 'List Deck');
    }
}