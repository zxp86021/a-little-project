<?php

namespace App\Http\Controllers;

use App\Services\AstroService;
use Auth;
use Illuminate\Http\Request;

class AstroController extends Controller
{
    private $astroService;

    /**
     * Create a new controller instance.
     *
     * @param $astro AstroService
     * @return void
     */
    public function __construct(AstroService $astro)
    {
        $this->middleware('auth');

        $this->astroService = $astro;
    }

    /**
     * Show the application dashboard.
     *
     * @param $request Request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Foundation\Application|\Illuminate\View\View
     */
    public function index(Request $request)
    {
        $user = Auth::user();

        if (empty($request->date)) {
            $date = date('Y-m-d');
        } else {
            $date = $request->date;
        }

        $searchDate = $date;
        $data = $this->astroService->getDataByDate($date);

        return view('astro.index', compact('user', 'searchDate', 'data'));
    }
}
