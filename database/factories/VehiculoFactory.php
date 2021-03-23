<?php

namespace Database\Factories;

use App\Models\vehiculo;
use Illuminate\Database\Eloquent\Factories\Factory;

class VehiculoFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = vehiculo::class;
    static protected $auxCont = 0;

    static public function generateMatricula(int $number,$variableparathis){
        return str_pad("", 4, $number) . str_pad("",3,strtoupper($variableparathis->faker->randomLetter()));
    }
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'nombreVehiculo' => "Vehiculo ". (++VehiculoFactory::$auxCont),
            'marcaModelo' => $this->faker->name ,
            'matricula' => VehiculoFactory::generateMatricula(VehiculoFactory::$auxCont,$this),
            'anoCompra' => 2020 - VehiculoFactory::$auxCont,
            'estado' => 0,
            'observaciones' => $this->faker->text(50)
        ];
    }
}
