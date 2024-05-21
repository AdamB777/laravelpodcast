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
        Schema::create('autorzy', function (Blueprint $table) {
            $table->id();
            $table->string('imieAutora', 256);
            $table->string('nazwiskoAutora', 256);
            $table->text('opisAutora')->nullable();
            $table->integer('idPodcastu');
            $table->text('zdjecieAutora')->nullable();
            $table->integer('idKategorii');
            $table->date('data')->nullable();
            $table->integer('idUzytkownika')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('autorzy');
    }
};
