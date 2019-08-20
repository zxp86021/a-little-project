<?php

namespace App\Repositories;

use App\Models\Astro;

class AstroRepository
{
    private $astroModel;

    /**
     * AstroRepository constructor.
     * @param Astro $astro
     */
    public function __construct(Astro $astro)
    {
        $this->astroModel = $astro;
    }

    /**
     * @param $data array
     * @return mixed
     */
    public function createAstro($data)
    {
        return $this->astroModel->create([
            'name' => $data['name'],
            'total_luck_score' => $data['total']['luck_score'],
            'total_luck_description' => $data['total']['luck_description'],
            'love_luck_score' => $data['love']['luck_score'],
            'love_luck_description' => $data['love']['luck_description'],
            'work_luck_score' => $data['work']['luck_score'],
            'work_luck_description' => $data['work']['luck_description'],
            'financial_luck_score' => $data['financial']['luck_score'],
            'financial_luck_description' => $data['financial']['luck_description']
        ]);
    }

    /**
     * @param $productName
     * @return \Illuminate\Database\Eloquent\Builder|\Illuminate\Database\Eloquent\Model|object|null
     */
    public function getNewestRecordByName($productName)
    {
        return $this->fuelPriceModel->where('name', '=', $productName)
            ->orderBy('start_at', 'desc')
            ->first();
    }

    /**
     * @param $productName
     * @param $startAt
     * @return bool
     */
    public function checkRecordExistByNameStartTime($productName, $startAt)
    {
        return $this->fuelPriceModel->where('name', '=', $productName)
            ->where('start_at', '=', $startAt)
            ->exists();
    }
}