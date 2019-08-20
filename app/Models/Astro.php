<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Astro extends Model
{
    protected $primaryKey = 'id';

    protected $table = 'astro';

    protected $fillable = [
        'name',
        'luck_score',
        'luck_description',
        'love_luck_score',
        'love_luck_description',
        'work_luck_score',
        'work_luck_description',
        'financial_luck_score',
        'financial_luck_description'
    ];
}
