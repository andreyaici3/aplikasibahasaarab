<?php

use core\Controller as ct;

class Api extends ct\Controller
{
    public function login()
    {
        if (isset($_POST['x-uname'])) {
            $user = $_POST['x-uname'];
            $pass = sha1(md5($_POST['x-pass']));
            $result = $this->db->query("SELECT * FROM siswa WHERE username ='$user' AND password = '$pass'");
            if ($result) {
                $this->sendResponse($result[0], "Sukses");
            } else {
                $this->sendError("Silahkan Periksa Kembali Username / Password");
            }
        } else {
            $this->sendError("Method Not Allowed");
        }
    }

    public function getLevel($id_user)
    {
        $result = $this->db->query("SELECT * FROM `nilai` WHERE id_siswa = '$id_user' ORDER BY bab_id ASC");
        $bab = 'bab';
        $nomor = 1;
        $lanjut = true;
        foreach ($result as $value) {
            $kkm = $this->db->query("SELECT kkm FROM daftar_bab WHERE id = $value->bab_id")[0]->kkm;
            if ($lanjut == true) {
                if ($value->nilai >= $kkm) {
                    $data[$bab . $nomor++] = "unlock";
                } else {
                    $lanjut = false;
                    $data[$bab . $nomor++] = "unlock";
                }
            } else {
                $data[$bab . $nomor++] = "lock";
            }
        }
        return $this->sendResponse($data, "Sukses mengambil Data Permainan");
    }

    public function postNilai()
    {
        @$id = $_POST["x-id"];
        @$bab = $_POST["x-bab"];
        @$nilai = $_POST["x-nilai"];
        @$waktu = $_POST["x-waktu"];
        if (@$id != null && @$bab != null && @$nilai != null) {
            $nilaiLama = $this->db->query("SELECT nilai FROM nilai WHERE id_siswa = '$id' AND bab_id = '$bab'")[0]->nilai;
            if ($nilai > $nilaiLama) {
                $data = $this->db->update("nilai", [
                    "nilai" => $nilai,
                    "waktu_akses" => $waktu ?? null,
                ], [
                    "id_siswa" => $id,
                    "bab_id" => $bab,
                ]);
            } else {
                $data=  0;
            }

            return $this->sendResponse($data, "Sukses Upload Nilai");
        } else {
            $this->sendError("Data Tidak Lengkap", 403);
        }
    }
}
