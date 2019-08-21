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
    private $luckSet;

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

        $this->luckSet = [
            '整體運勢' => 'total',
            '愛情運勢' => 'love',
            '事業運勢' => 'work',
            '財運運勢' => 'financial'
        ];
    }

    /**
     * @return array
     * @throws \GuzzleHttp\Exception\GuzzleException
     * @throws \PHPHtmlParser\Exceptions\ChildNotFoundException
     * @throws \PHPHtmlParser\Exceptions\CircularException
     * @throws \PHPHtmlParser\Exceptions\CurlException
     * @throws \PHPHtmlParser\Exceptions\NotLoadedException
     * @throws \PHPHtmlParser\Exceptions\StrictException
     */
    public function getAllAstro()
    {
        $httpClient = new GuzzleHttpClient($this->httpConf);

        $response = $httpClient->request('GET', $this->siteUrl);

        $dom = new Dom;

        $dom->load($response->getBody());

        $stars = $dom->find('.STAR12_BOX > ul > li');

        $starList = [];

        foreach ($stars as $star) {
            $link = $star->find('a');

            $index = $link->getAttribute('title');

            $url = explode('&RedirectTo=', $link->getAttribute('href'));

            $starList[$index] = urldecode($url[1]);
        }

        return $starList;
    }

    /**
     * @param $astroLink string
     * @return array
     * @throws \GuzzleHttp\Exception\GuzzleException
     * @throws \PHPHtmlParser\Exceptions\ChildNotFoundException
     * @throws \PHPHtmlParser\Exceptions\CircularException
     * @throws \PHPHtmlParser\Exceptions\CurlException
     * @throws \PHPHtmlParser\Exceptions\NotLoadedException
     * @throws \PHPHtmlParser\Exceptions\StrictException
     */
    public function getAstroDetail($astroLink)
    {
        $httpClient = new GuzzleHttpClient($this->httpConf);

        $response = $httpClient->request('GET', $astroLink . '&iAcDay=' . date('Y-m-d'));

        $dom = new Dom;

        $dom->load($response->getBody());

        $details = $dom->find('.TODAY_CONTENT > p');

        $luck = [];

        for ($i = 0; $i < count($details); $i += 2) {
            $name = $details[$i]->find('span')->text;

            $luckName = mb_substr($name, 0, 4, 'UTF-8');

            $luckScoreStr = mb_substr($name, 4, 5, 'UTF-8');

            $luckScore = 0;

            for ($j = 0; $j < strlen($luckScoreStr); $j++) {
                if ($j > 0) {
                    $pStr = mb_substr($luckScoreStr, $j - 1, 1, 'UTF-8');
                    $str = mb_substr($luckScoreStr, $j, 1, 'UTF-8');

                    if ($str !== $pStr) {
                        break;
                    }
                }

                $luckScore++;
            }

            $luckDescription = $details[$i + 1]->text;

            $luckDbName = $this->luckSet[$luckName];

            $luck[$luckDbName] = [
                'luck_score' => $luckScore,
                'luck_description' => $luckDescription
            ];
        }

        return $luck;
    }

    /**
     * @param $data
     */
    public function createToDb($data)
    {
        if (!$this->astroRepository->checkRecordExistByNameDate($data['name'], date('Y-m-d'))) {
            $this->astroRepository->createAstro($data);
        }
    }

    /**
     * @return array
     */
    public function getDateHasData()
    {
        return $this->astroRepository->getDateHasData()->pluck('date');
    }

    /**
     * @param $date string
     * @return array
     */
    public function getDataByDate($date)
    {
        return $this->astroRepository->getDataByDate($date);
    }
}