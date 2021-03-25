<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

use App\misClases\BDDef;
use Symfony\Component\HttpFoundation\Response;


class VehiculoTest extends TestCase
{
    private static $auxId = 0;

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
     *
    public function test_example()
    {
        $response = $this->get('/');

        echo "test_example";
        $response->assertStatus(200);
    }
     */
    public function test_store()
    {

        $response = $this->post(
            '/api/vehiculos',
            [
                "nombreVehiculo" => "Vehiculo test", "marcaModelo" => "mym test ", "matricula" => "sinmat", "anoCompra" => 2019, "estado" => BDDef::ev_activo, "observaciones" => "Delectus ut aut autem voluptatibus iusto."
            ]
        );

        $response
            ->assertStatus(Response::HTTP_CREATED)
            ->assertJson([
                'data' => [
                    'nombreVehiculo' => 'Vehiculo test',
                ]
            ]);
        var_dump($response->getContent());
        $data = ($response->getContent());
        VehiculoTest::$auxId = $response->decodeResponseJson()['data']['id'];
        echo "\n\n";
        echo VehiculoTest::$auxId;
        echo "\n\n";
    }

    public function test_update()
    {
        echo "\n\n";
        echo "id:" . VehiculoTest::$auxId;
        echo "\n\n";
        echo "111111111111111111111111111111111111111";
        $response = $this->put(
            '/api/vehiculos/' . VehiculoTest::$auxId,
            [
                'id' => VehiculoTest::$auxId, "nombreVehiculo" => "Vehiculo modificado test", "marcaModelo" => "mym test ", "matricula" => "sinmat", "anoCompra" => 2019, "estado" => BDDef::ev_activo, "observaciones" => "Delectus ut aut autem voluptatibus iusto."
            ]
        );

        echo "2222222222222222222222222222222222222222222222222";
        $response
            ->assertStatus(200)
            ->assertJson([
                'data' => [
                    'nombreVehiculo' => 'Vehiculo modificado test',
                ]
            ]);
        # code...
    }
    public function test_Delete(){
        $response = $this->delete(
            '/api/vehiculos/' . VehiculoTest::$auxId
        );
        $response->assertStatus(200);
    }
}
