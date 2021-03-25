<?php

namespace App\Http\Controllers;

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
        try {
            $result = new Vehiculo;
            $result->nombreVehiculo = $request->nombreVehiculo;
            $result->marcaModelo = $request->marcaModelo;
            $result->matricula = $request->matricula;
            $result->anoCompra = $request->anoCompra;
            $result->estado = $request->estado;
            $result->observaciones = $request->observaciones;
            $result->save();
        } catch (\Exception $ex) {
            echo "\n";
            echo $ex->getMessage();
            echo "\n";
        }
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
        try {
            $result = Vehiculo::find($id);
            $result->nombreVehiculo = $request->nombreVehiculo;
            $result->marcaModelo = $request->marcaModelo;
            $result->matricula = $request->matricula;
            $result->anoCompra = $request->anoCompra;
            $result->estado = $request->estado;
            $result->observaciones = $request->observaciones;
            $result->save();
        } catch (\Exception $ex) {
            echo "\n";
            echo $ex->getMessage();
            echo "\n";
        }
        return response(StandarResponse::OK($result), 200);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $count = Vehiculo::destroy($id);
        return response(StandarResponse::OK($id), 200);
    }
}
