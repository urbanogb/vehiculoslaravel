<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class VehiculoTest extends TestCase
{

    public function setUp(): void
    {
        //be sure to call the respective parent::setUp() / parent::tearDown() 
        parent::setUp();
        echo "setUp-----";
    }
    public function tearDown(): void
    {
        //be sure to call the respective parent::setUp() / parent::tearDown() 
        parent::tearDown();
        echo "tearDown-----";
    }
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_example()
    {
        $response = $this->get('/');

        echo "test_example";
        $response->assertStatus(200);
    }

    public function test_store()
    {

        $response = $this->postJson(
            '/api/vehiculos',
            [
                "nombreVehiculo" => "Vehiculo test"
                , "marcaYModelo" => "marcaymodelo"
                , "matricula" => "sinmat"
                , "anoCompra" => 2019
                , "estado" => ""
                , "observaciones" => "Delectus ut aut autem voluptatibus iusto."
            ]
        );

        $response
            ->assertStatus(201)
            ->assertJson([
                'nombreVehiculo' => 'Vehiculo test',
            ]);
        # code...
    }
}