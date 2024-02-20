<?php

use core\Controller as ct;

class Home extends ct\Controller {
    protected $backend;

    public function __construct()
    {
        parent::__construct();
        $this->cekLogin();
        $this->backend = new \backend;
    }

    public function index()
    {
        $this->backend->template("home/index", [
            "siswa" => $this->db->query("SELECT * FROM siswa")
        ]);
    }

}