<?php

use core\Controller as ct;
use Controller\Home as hm;

class Siswa extends ct\Controller
{
    protected $backend;

    public function __construct()
    {
        parent::__construct();
        $this->backend = new \backend;
    }

    public function index()
    {
        $this->backend->template("home/index", [
            "siswa" => $this->db->query("SELECT * FROM siswa")
        ]);
    }

    public function tambah()
    {
        $this->backend->template("siswa/tambah");
    }

    public function store()
    {
        if ($_POST) {
            extract($_POST);
            $obj = $this->db->insert("siswa", [
                'nama' => $nama,
                "kelas" => $kelas,
                "username" => $username,
                "password" => sha1(md5($password))
            ]);

            $bab = $this->db->query("SELECT * FROM daftar_bab");

            foreach ($bab as $value){
                $this->db->insert("nilai", [
                    "id_siswa" => $obj->id,
                    "bab_id" => $value->id,
                    "nilai" => 0,
                    "waktu_akses" => ""
                ]);
            }

            redirect(base_url("siswa"));
        } else {
            echo "Access Tidak Di Izinkan";
        }
    }

    public function edit($id)
    {
        if (!isset($id)) {
            echo "Access Tidak Diizinkan";
            die;
        }

        $this->backend->template('siswa/edit', [
            'siswa' => $this->db->query("SELECT * FROM siswa WHERE id = $id")[0]
        ]);
    }

    public function update($id)
    {
        if ($_POST) {
            extract($_POST);
            $this->db->update("siswa", [
                'nama' => $nama,
                "kelas" => $kelas,
                "username" => $username,
                "password" => sha1(md5($password))
            ], [
                "id" => $id
            ]);
            redirect(base_url("siswa"));
        } else {
            echo "Access Tidak Di Izinkan";
        }
    }

    public function delete($id)
    {
        $this->db->delete("siswa", ['id' => $id]);
        redirect(base_url("siswa"));
    }
}
