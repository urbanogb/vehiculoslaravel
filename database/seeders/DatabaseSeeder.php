<?php

namespace Database\Seeders;

use App\misClases\BDDef;
use App\misClases\GeneralUtils;
use App\misClases\LocalUtils;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use PharIo\Manifest\Email;

class DatabaseSeeder extends Seeder
{
    public static function EmptyTable(string $tableName)
    {
        DB::table($tableName)->delete();
        $query = "ALTER TABLE " . $tableName . " AUTO_INCREMENT = 1";
        DB::statement($query);
    }
    /**
     * Crea un usuario y su permiso asociado a partir de un nombre de usuario y su permiso asociado
     */
    public static function CreateUser($name, $permiso)
    {
        $user = \App\Models\User::create([
            'name' => $name,
            'email' => strtolower($name) . '@zonafrancavigo.com',
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
        ]);
        \App\Models\permiso::create([
            'user_id' => $user->id,
            'tipo_usuario' => $permiso
        ]);
        return $user;
    }

    public static function showAll($litem)
    {
        foreach ($litem as $item) {
            echo $item . "\n";
        }
    }
    /**
     *  @return void
     */
    public static function CreateReserva(int $idVehiculo, int $idUser, \DateTime $fechaYHoraInicio)
    {
        $fechaYHoraFin = clone $fechaYHoraInicio;

        $fechaYHoraFin->add(new \DateInterval('PT1H'));

        $result = \App\Models\reserva::create([
            'vehiculo_id' => $idVehiculo,
            'user_id' => $idUser,
            'fechaYHoraInicio' => GeneralUtils::DateTime2BDString($fechaYHoraInicio),
            'fechaYHoraFin' => GeneralUtils::DateTime2BDString($fechaYHoraFin),
            'fechaYHoraEntregaLLaves' => GeneralUtils::DateTime2BDString($fechaYHoraFin),
            'fechaYHoraDevolucionLLaves' => GeneralUtils::DateTime2BDString($fechaYHoraFin),
            'estadoReserva' => BDDef::er_solicitado,
            'observaciones' => "sin observaciones",
            'motivoAnulacion' => ""
        ]);
        return $result;
    }
    public static function CreateEvento(int $idVehiculo, \DateTime $fechaYHoraEvento, string $descripcion, bool $avisar)
    {
        $result = \App\Models\evento::create([
            'vehiculo_id' => $idVehiculo,
            'fechaYHoraEvento' => GeneralUtils::DateTime2BDString($fechaYHoraEvento),
            'descripcionEvento' => $descripcion,
            'avisar' => $avisar,
        ]);
        return $result;
    }
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //Empezamos por vaciar la BD.
        DatabaseSeeder::EmptyTable(BDDef::Eventotn);
        DatabaseSeeder::EmptyTable(BDDef::Reservatn);
        DatabaseSeeder::EmptyTable(BDDef::Permisotn);
        DatabaseSeeder::EmptyTable(BDDef::Vehiculotn);
        DatabaseSeeder::EmptyTable('users');

        //Obvio el modelo de factories por no considerarlo adecuado.
        \App\Models\User::factory(10)->create();
        \App\Models\vehiculo::factory(6)->create();

        $lIdVehiculos = \App\Models\vehiculo::all(['id']);
        //$lIdUsers = \App\Models\User::all('id');
        //echo $lIdVehiculos;
        //echo $lIdUsers;

        $ugestor1 = DatabaseSeeder::CreateUser('Gestor1', LocalUtils::permisoGestor);
        $ugestor2 = DatabaseSeeder::CreateUser('Gestor2', LocalUtils::permisoGestor);
        $ubasico1 = DatabaseSeeder::CreateUser('Basico1', LocalUtils::permisoBasico);
        $ubasico2 = DatabaseSeeder::CreateUser('Basico2', LocalUtils::permisoBasico);

        //DatabaseSeeder::showAll(\App\Models\permiso::all());

        $today = new \DateTime();

        // Crear Reservas 
        //Generar reserva para hoy a las 17:00
        $aux = clone $today;
        $aux->setTime(17,00,00);
        $posIdVehiculo = 0;
        DatabaseSeeder::CreateReserva($lIdVehiculos[$posIdVehiculo++]->id, $ugestor1->id, $aux);
        //Generar reserva para mañana a las 11:00
        $aux = clone $today;
        $aux->setTime(11,00,00);
        $aux->add(new \DateInterval("P1D"));
        DatabaseSeeder::CreateReserva($lIdVehiculos[$posIdVehiculo++]->id, $ugestor1->id, $aux);

        DatabaseSeeder::showAll(\App\Models\reserva::all());
        // Crear Eventos
        //Generar evento para hoy a las 20:00
        $aux = clone $today;
        $aux->setTime(20,00,00);
        DatabaseSeeder::CreateEvento($lIdVehiculos[$posIdVehiculo++]->id, $aux, "Descripción de evento de pruebas",0);
        //Generar reserva para mañana a las 20:00
        $aux = clone $today;
        $aux->setTime(20,00,00);
        $aux->add(new \DateInterval("P1D"));
        DatabaseSeeder::CreateEvento($lIdVehiculos[$posIdVehiculo++]->id, $aux, "Otra descripción de evento de pruebas",1);

        DatabaseSeeder::showAll(\App\Models\reserva::all());

    }
}
