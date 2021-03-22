<?php

namespace App\Http\Controllers;

use App\misClases\BDDef;
use App\Models\Vehiculo;
use App\misClases\StandarResponse;
use Illuminate\Http\Request;

class VehiculoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        /*
    $result = Vehiculo::create([
                "nombreVehiculo" => "Vehiculo test"
                , "marcaYModelo" => "marcaymodelo"
                , "matricula" => "sinmat"
                , "anoCompra" => 2019
                , "estado" => ""
                , "observaciones" => "Delectus ut aut autem voluptatibus iusto."
    ]);
    */
        return StandarResponse::OK(Vehiculo::all());
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        echo $request;

        //$result = "hola";
        $result = new vehiculo;
        $result->nombreVehiculo = $request->nombreVehiculo;
        $result->marcaYModelo = "pruebaIndex";
        $result->matricula = "pruebaIndex";
        $result->anocompra = 2019;
        $result->estado = BDDef::ev_activo;
        $result->observaciones = "pruebaIndex";
        $result->save();

        return response(StandarResponse::OK($result), 201);
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return StandarResponse::OK(Vehiculo::find($id));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    }
}
