<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AutorzySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $faker = \Faker\Factory::create();

        foreach (range(1, 10) as $index) {
            Autor::create([
                'imieAutora' => $faker->firstName,
                'nazwiskoAutora' => $faker->lastName,
                'opisAutora' => $faker->paragraph,
                'idPodcastu' => $faker->randomNumber(),
                'zdjecieAutora' => $faker->imageUrl(),
                'idKategorii' => $faker->randomNumber(),
                'data' => $faker->date(),
                'idUzytkownika' => $faker->randomNumber(),
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    }
}