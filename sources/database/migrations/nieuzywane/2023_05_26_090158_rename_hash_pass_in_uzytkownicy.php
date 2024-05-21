<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('uzytkownicy', function (Blueprint $table) {
            $table->renameColumn('hash_pass', 'password');
        });
    }
    

    /**
     * Reverse the migrations.
     */
    public function down()
    {
        Schema::table('uzytkownicy', function (Blueprint $table) {
            $table->renameColumn('password', 'hash_pass');
        });
    }
    
};
