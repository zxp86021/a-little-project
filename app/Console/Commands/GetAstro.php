<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Services\AstroService;

class GetAstro extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'astro:update';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Get New Data From Astro Website';

    private $astroService;

    /**
     * Create a new command instance.
     *
     * @param AstroService $astroService
     * @return void
     */
    public function __construct(AstroService $astroService)
    {
        parent::__construct();

        $this->astroService = $astroService;
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     * @throws \GuzzleHttp\Exception\GuzzleException
     * @throws \PHPHtmlParser\Exceptions\ChildNotFoundException
     * @throws \PHPHtmlParser\Exceptions\CircularException
     * @throws \PHPHtmlParser\Exceptions\ContentLengthException
     * @throws \PHPHtmlParser\Exceptions\LogicalException
     * @throws \PHPHtmlParser\Exceptions\NotLoadedException
     * @throws \PHPHtmlParser\Exceptions\StrictException
     */
    public function handle()
    {
        $astroLinks = $this->astroService->getAllAstro();

        $this->info(json_encode($astroLinks, JSON_UNESCAPED_UNICODE));

        foreach ($astroLinks as $name => $link) {
            $detail = $this->astroService->getAstroDetail($link);

            $detail['name'] = $name;

            $this->astroService->createToDb($detail);

            $this->info(json_encode($detail, JSON_UNESCAPED_UNICODE));

            sleep(10);
        }

        $this->info('mission complete');

        return 0;
    }
}
