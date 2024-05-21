<?php

namespace Database\Factories;

use App\Models\KomentarzDoAutora;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\KomentarzDoAutora>
 */
class KomentarzDoAutoraFactory extends Factory
{
    protected $model = KomentarzDoAutora::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $idAutora = [13, 9, 7, 3, 5, 11, 8, 15, 12, 14, 4, 2, 6, 1, 10]; // Your specific author IDs

        return [
            'tytul' => $this->faker->sentence,
            'tresc' => $this->faker->paragraph,
            'idAutora' => $this->faker->randomElement($idAutora), // Picks a random author ID from the given array
            'idUzytkownika' => $this->faker->numberBetween(1, 10), // Generates a random number between 1 and 10
            'data' => $this->faker->date(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
