<?php
namespace core\Controller;
use core\DB as database;

class Controller
{
    protected $db;
    public function __construct()
    {
        $this->db = new database\db;
    }

    public function view($view, $data = [], $bool = false)
    {
        if ($data != []){
            extract($data);
            unset($data);
        }
        if (!$bool) {
            require_once BASE_PATH . "app/views/" . $view . ".php";
        } else {
            ob_start();
            include(BASE_PATH . "app/views/" . $view . ".php");
            $var = ob_get_contents();
            ob_end_clean();
            return $var;
        }
    }


}
