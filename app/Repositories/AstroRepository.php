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
     * @param $name string
     * @param $date string
     * @return bool
     */
    public function checkRecordExistByNameDate($name, $date)
    {
        return $this->astroModel->where('name', '=', $name)
            ->where('created_at', '=', $date)
            ->exists();
    }

    /**
     * @return array
     */
    public function getDateHasData()
    {
        return $this->astroModel->select('created_at as date')->distinct()->get();
    }

    /**
     * @param $date string
     * @return array
     */
    public function getDataByDate($date)
    {
        return $this->astroModel->where('created_at', $date)->get();
    }
}