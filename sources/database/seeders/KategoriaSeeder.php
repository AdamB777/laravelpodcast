<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class KategoriaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Kategoria::create([
            'nazwa' => 'Dramat',
            'opis' => 'Opis kategorii 1',
        ]);

        Kategoria::create([
            'nazwa' => 'Geografia',
            'opis' => 'Opis kategorii 2',
        ]);
    }
}
