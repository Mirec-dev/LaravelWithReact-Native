<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Recept extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mainMeals', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('ingredients');
            $table->text('recipe');
        });
        Schema::create('soups', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('ingredients');
            $table->text('recipe');
        });
        Schema::create('desserts', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('ingredients');
            $table->text('recipe');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
