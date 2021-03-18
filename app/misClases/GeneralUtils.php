<?php

namespace App\misClases;

class GeneralUtils
{
    public static function DateTime2BDString(\DateTime $datetime)
    {
        return date('Y-m-d H:i:s', $datetime->getTimestamp());
    }
}
