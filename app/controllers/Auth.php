<?php
use core\Controller as ct;
class Auth extends ct\Controller{
    protected $backend;

    public function __construct()
    {
        parent::__construct();
        $this->notLogin();
        $this->backend = new backend;
    }

    public function index()
    {
       
       
        $this->view("auth/login");
    }

    public function auth(){
        if ($_POST){
            extract($_POST);
            $query = $this->db->query("SELECT * FROM guru WHERE username = '$username' AND password = '$password'");
            if ($query){
                session_start();
                $_SESSION["login"] = true;
                $_SESSION["data"] = $query[0];
                redirect(base_url());
            } else {
                redirect(base_url("auth"));
            }
        } else {
            echo "Tidak Dizinkan";
        }
    }

}


