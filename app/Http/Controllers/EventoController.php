<?php

namespace App\Http\Controllers;

use App\Models\Evento;
use App\misClases\StandarResponse;
use Illuminate\Http\Request;

class EventoController extends Controller
{
     /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
	public function index()
	{
		return StandarResponse::OK(Evento::all());
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
			$result = new Evento;
			$result->vehiculo_id= $request->vehiculo_id;
			$result->FechaYHoraEvento= $request->FechaYHoraEvento;
			$result->descripcionEvento= $request->descripcionEvento;
			$result->avisar= $request->avisar;
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
		return StandarResponse::OK(Evento::find($id));
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
		$result = Evento::find($id);
		$result->vehiculo_id= $request->vehiculo_id;
		$result->FechaYHoraEvento= $request->FechaYHoraEvento;
		$result->descripcionEvento= $request->descripcionEvento;
		$result->avisar= $request->avisar;
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
	$count = Evento::destroy($id);
	return response(StandarResponse::OK($id), 200);
}
}
