<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

use App\misClases\BDDef;

class CreateTables1 extends Migration 
{ 
	/**
     * Run the migrations.
     *
     * @return void
     */
    public function up() 
    {
		Schema::create(BDDef::Eventotn, function (Blueprint $table) {
			$table->id();
			$table->bigInteger('vehiculo_id');
			$table->dateTime('FechaYHoraEvento');
			$table->mediumText('descripcionEvento');
			$table->boolean('avisar');
			$table->timestamps();
		});
		Schema::create(BDDef::Vehiculotn, function (Blueprint $table) {
			$table->id();
			$table->string('nombreVehiculo');
			$table->string('marcaModelo');
			$table->string('matricula');
			$table->integer('anoCompra');
			$table->set('estado',['activo','baja']);
			$table->mediumText('observaciones');
			$table->timestamps();
		});
		Schema::create(BDDef::Reservatn, function (Blueprint $table) {
			$table->id();
			$table->bigInteger('vehiculo_id')->unsigned();
			$table->bigInteger('user_id')->unsigned();
			$table->dateTime('fechaYHoraInicio');
			$table->dateTime('fechaYHoraFin');
			$table->dateTime('fechaYHoraEntregaLlaves');
			$table->dateTime('fechaYHoraDevolucionLlaves');
			$table->set('estadoReserva',['solicitado','aceptada','enCurso','finalizada','Anulada']);
			$table->string('observaciones');
			$table->string('motivoAnulacion');
			$table->timestamps();
		});
		Schema::create(BDDef::Permisotn, function (Blueprint $table) {
			$table->id();
			$table->bigInteger('user_id')->unsigned();
			$table->string('tipo_usuario');
			$table->timestamps();
		});
	}
	/**
    * Reverse the migrations.
    *
    * @return void
    */
    public function down() 
    {
		Schema::dropIfExists(BDDef::Permisotn);
		Schema::dropIfExists(BDDef::Reservatn);
		Schema::dropIfExists(BDDef::Vehiculotn);
		Schema::dropIfExists(BDDef::Eventotn);
	}
}
