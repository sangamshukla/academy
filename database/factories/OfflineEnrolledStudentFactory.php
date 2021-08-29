<?php

namespace Database\Factories;

use App\Models\OfflineEnrolledStudent;
use Illuminate\Database\Eloquent\Factories\Factory;

class OfflineEnrolledStudentFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = OfflineEnrolledStudent::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'week_id' => $this->faker->randomNumber(2),
            'student_id' => $this->faker->randomNumber(2),
        ];
    }
}
