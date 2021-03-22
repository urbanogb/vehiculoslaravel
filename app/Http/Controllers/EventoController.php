<?php

namespace App\Http\Controllers;

use App\Models\evento;
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
		return StandarResponse::returnOK(evento::all());
	}
 /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
             */
public function store(Request $request)
{
}
 /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
             */
	public function show($id)
	{
		return StandarResponse::OK(evento::find($id));
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
