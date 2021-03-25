<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Documento extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('documentos', function (Blueprint $table) {
            $table->id();            
            $table->bigInteger('vehiculo_id')->unsigned();
            $table->string('uuid',36)->index();
            $table->string('hash',128)->index();
            $table->string('rutaDocumento',250);
            $table->string('filename');
            $table->string('tipo',5);
            $table->string('clientname');
            $table->bigInteger('filesize');
            $table->string('volumenDocumento',9);
            $table->string('descripcionDocumento',250);
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
        Schema::dropIfExists('documentos');
    }
}
