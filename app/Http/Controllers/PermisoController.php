<?php

namespace App\Http\Controllers;

use App\Models\Permiso;
use App\misClases\StandarResponse;
use Illuminate\Http\Request;

class PermisoController extends Controller
{
     /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
	public function index()
	{
		return StandarResponse::OK(Permiso::all());
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
						$result = new Permiso;
						$result->user_id= $request->user_id;
						$result->tipo_usuario= $request->tipo_usuario;
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
		return StandarResponse::OK(Permiso::find($id));
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
