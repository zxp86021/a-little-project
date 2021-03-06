<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAstroTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('astro', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('total_luck_score');
            $table->text('total_luck_description');
            $table->integer('love_luck_score');
            $table->text('love_luck_description');
            $table->integer('work_luck_score');
            $table->text('work_luck_description');
            $table->integer('financial_luck_score');
            $table->text('financial_luck_description');
            $table->date('created_at');
            $table->date('updated_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('astro');
    }
}
