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

    public function cekLogin(){
        session_start();
        if(isset($_SESSION)){
            if ($_SESSION["login"] != true){
                redirect(base_url("auth"));
            }
        } else {
            redirect(base_url("auth"));
        }
    }

    public function notLogin(){
        session_start();
        if(isset($_SESSION)){
            if (@$_SESSION["login"] == true){
                redirect(base_url("/"));
            }
        } else {
            redirect(base_url("auth"));
        }
    }

    public function sendResponse($result, $message)
    {
        header("Content-Type: Application/json");
        $response = [
            'success' => true,
            'message' => $message,
            'data'    => $result,
        ];
        http_response_code(200);
        echo json_encode($response);
    }

    public function sendError( $error, $code = 404, $errorMessages = [])
    {
        header("Content-Type: Application/json");
        $response = [
            'success' => false,
            'message' => $error,
        ];
        if (!empty($errorMessages)) {
            $response['data'] = $errorMessages;
        }
        http_response_code($code);
        echo json_encode($response);
    }


}
