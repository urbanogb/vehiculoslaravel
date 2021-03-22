<?php

namespace App\Http\Controllers;

use App\Models\vehiculo;
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
		return StandarResponse::OK(vehiculo::all());
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

    $result = "hola";
    //$result = vehiculo::create([
     //           "nombreVehiculo" => "Vehiculo test"
    //]);
    
    return StandarResponse::OK(json_encode($result),201);
}
 /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
             */
	public function show($id)
	{
		return StandarResponse::OK(vehiculo::find($id));
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
