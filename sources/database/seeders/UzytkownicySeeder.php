<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UzytkownicySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        Uzytkownik::factory()->count(10)->create();
    }
}
