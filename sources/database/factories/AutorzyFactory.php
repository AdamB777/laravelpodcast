<?php

namespace Database\Factories;

use App\Models\Autor;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Autorzy>
 */
class AutorzyFactory extends Factory
{

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Autor::class;
    public function definition()
    {
        return [
            'imieAutora' => $this->faker->firstName,
            'nazwiskoAutora' => $this->faker->lastName,
            'opisAutora' => $this->faker->paragraph,
            'idPodcastu' => $this->faker->randomNumber(),
            'zdjecieAutora' => $this->faker->imageUrl(),
            'idKategorii' => $this->faker->randomNumber(),
            'data' => $this->faker->date(),
            'idUzytkownika' => $this->faker->randomNumber(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
