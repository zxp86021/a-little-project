<?php

namespace App\Services;

use App\Repositories\AstroRepository;
use GuzzleHttp\Client as GuzzleHttpClient;
use PHPHtmlParser\Dom;

class AstroService
{
    private $astroRepository;
    private $siteUrl;
    private $httpConf;

    public function __construct(AstroRepository $astroRepository)
    {
        $this->astroRepository = $astroRepository;
        $this->siteUrl = 'http://astro.click108.com.tw/';
        $this->httpConf = [
            'headers' => [
                'User-Agent'      => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0) Gecko/20100101 Firefox/68.0',
                'Accept-Encoding' => 'gzip',
                'Accept'          => 'application/json',
                'cache-control'   => 'no-cache'
            ],
            'timeout' => 10
        ];
    }

    public function getAllAstro()
    {
        $httpClient = new GuzzleHttpClient($this->httpConf);

        $response = $httpClient->request('GET', $this->siteUrl);

        $dom = new Dom;

        $dom->load($response->getBody());

        $stars = $dom->find('body')[0];

        return $stars; // 10($stars);

        //return $response->getBody();
    }
}