<?php

use core\Controller as ct;

class Nilai extends ct\Controller {
    protected $backend;
    public function __construct()
    {
        parent::__construct();
        $this->backend = new \backend;
    }

    public function detail($id)
    {
        $this->backend->template('nilai/index', [
            'nilai' => $this->db->query("SELECT * FROM nilai WHERE nilai.id_siswa = $id"),
            'siswa' => $this->db->query("SELECT * FROM siswa WHERE id = $id")[0],
        ]);
    }

    public function reset($id_nilai, $id_siswa){
        $this->db->update("nilai", [
            "nilai" => 0
        ], [
            "id" => $id_nilai
        ]);

        redirect(base_url("nilai/detail/" . $id_siswa));
    }
}