<?php
use core\Controller as ct;
class Bab extends ct\Controller {
    protected $backend;

    public function __construct()
    {
        parent::__construct();
        $this->backend = new backend;
    }

    public function index()
    {
        $data = [
            'bab' => $this->db->query("SELECT * FROM daftar_bab"),
            "menuActive" => "bab"
        ];
        $this->backend->template("bab/index", $data);
    }

    public function edit($id_bab)
    {
        $this->backend->template('bab/edit', [
            'bab' => $this->db->query("SELECT * FROM daftar_bab WHERE id = $id_bab")[0],
        ]);
    }

    public function update($id)
    {
        if ($_POST) {
            extract($_POST);
            $this->db->update("daftar_bab", [
                'bab' => $bab,
                "kkm" => $kkm,
            ], [
                "id" => $id
            ]);
            redirect(base_url("bab"));
        } else {
            echo "Access Tidak Di Izinkan";
        }
    }

}

?>