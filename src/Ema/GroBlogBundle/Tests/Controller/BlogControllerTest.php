<?php

namespace Ema\GroBlogBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class BlogControllerTest extends WebTestCase
{
    public function testIndex()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/index');
    }

    public function testDetail()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/post/');
    }

}
