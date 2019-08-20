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
     */
    public function handle()
    {
        $page = $this->astroService->getAllAstro();

        $this->info($page);

        //\Log::info($page);
    }
}
