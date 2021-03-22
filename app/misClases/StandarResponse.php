<?php

namespace App\misClases;

class StandarResponse
{
    public $code = 0;
    public $mensajes = array();
    public $data = null;

    public static function OK($data)
    {
        $result = new StandarResponse();
        $result->data = $data;
        return json_encode($result);
    }
}
