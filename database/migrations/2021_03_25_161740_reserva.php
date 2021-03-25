<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Reserva extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reservas', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('vehiculo_id')->unsigned();
            $table->bigInteger('user_id')->unsigned();
            $table->dateTime('fechaYHoraInicio');
            $table->dateTime('fechaYHoraFin');
            $table->dateTime('fechaYHoraEntregaLlaves');
            $table->dateTime('fechaYHoraDevolucionLlaves');
            $table->set('estadoReserva', ['solicitado', 'aceptada', 'enCurso', 'finalizada', 'Anulada']);
            $table->string('observaciones');
            $table->string('motivoAnulacion');
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
        Schema::dropIfExists('reservas');
    }
}
