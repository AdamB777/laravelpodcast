<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('komentarzedopodcastow', function (Blueprint $table) {
            $table->id();
            $table->string('tytul', 256);
            $table->text('tresc');
            $table->integer('idUzytkownika');
            $table->integer('idPodcastu');
            $table->date('data');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('komentarzedopodcastow');
    }
};