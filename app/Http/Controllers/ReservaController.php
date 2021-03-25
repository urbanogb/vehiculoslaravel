<?php

namespace App\Http\Controllers;

use App\Models\Reserva;
use App\misClases\StandarResponse;
use Illuminate\Http\Request;

class ReservaController extends Controller
{
     /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
	public function index()
	{
		return StandarResponse::OK(Reserva::all());
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
			$result = new Reserva;
			$result->vehiculo_id= $request->vehiculo_id;
			$result->user_id= $request->user_id;
			$result->fechaYHoraInicio= $request->fechaYHoraInicio;
			$result->fechaYHoraFin= $request->fechaYHoraFin;
			$result->fechaYHoraEntregaLlaves= $request->fechaYHoraEntregaLlaves;
			$result->fechaYHoraDevolucionLlaves= $request->fechaYHoraDevolucionLlaves;
			$result->estadoReserva= $request->estadoReserva;
			$result->observaciones= $request->observaciones;
			$result->motivoAnulacion= $request->motivoAnulacion;
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
		return StandarResponse::OK(Reserva::find($id));
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
		$result = Reserva::find($id);
		$result->vehiculo_id= $request->vehiculo_id;
		$result->user_id= $request->user_id;
		$result->fechaYHoraInicio= $request->fechaYHoraInicio;
		$result->fechaYHoraFin= $request->fechaYHoraFin;
		$result->fechaYHoraEntregaLlaves= $request->fechaYHoraEntregaLlaves;
		$result->fechaYHoraDevolucionLlaves= $request->fechaYHoraDevolucionLlaves;
		$result->estadoReserva= $request->estadoReserva;
		$result->observaciones= $request->observaciones;
		$result->motivoAnulacion= $request->motivoAnulacion;
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
	$count = Reserva::destroy($id);
	return response(StandarResponse::OK($id), 200);
}
}
