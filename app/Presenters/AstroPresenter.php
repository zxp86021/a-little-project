<?php

namespace App\Presenters;

class AstroPresenter
{
    public function getScoreImage($score)
    {
        $images = '';

        for ($i = 1; $i <= 5; $i++) {
            if ($i <= $score) {
                $images .= '<img src="'. asset('img/PatrickStar.svg') . '" style="height: 30px"></img>';
            } else {
                $images .= '<img src="'. asset('img/PatrickStar.svg') . '" style="height: 30px; opacity: 0.3"></img>';
            }
        }

        return $images;
    }
}