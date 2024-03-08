<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::disableForeignKeyConstraints();
        Schema::create('personnages', function (Blueprint $table) {
            $table->id();
            $table->string('nom_perso');
            $table->string('prenom_perso');
            $table->string('etat');
            $table->string('nationalite');
            $table->softDeletes();
            $table->timestamps();
            $table->foreignId('allegeance_id')
                ->constrained()
                ->onUpdate('restrict')
                ->onDelete('restrict');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('personnages');
    }
};
