<?php
namespace core\DB;

use mysqli;

require_once $basepath . "app/config/database.php";

class db
{
    protected $koneksi;
    protected $config;
    public function __construct()
    {
        $this->config  = $GLOBALS['config']["default"];
        $this->koneksi = mysqli_connect($this->config["hostname"], $this->config["username"], $this->config["password"], $this->config["database"]);
    }

    public function query($string)
    {
        $rows = [];
        $query = mysqli_query($this->koneksi, $string);

        while ($result = mysqli_fetch_assoc($query)) {
            $object = new \stdClass();
            foreach ($result as $key => $value) {
                $object->$key = $value;
            }
            $rows[] = $object;
        }
        return $rows ?? null;
    }

    public function insert($tabel, $data = [])
    {
        $str = "INSERT INTO `$tabel` (";
        $keys = "";
        $val = "";
        foreach ($data as $key => $value) {
            $keys .= "`$key`,";
            $val .= "'$value',";
        }
        $keys = rtrim($keys, ",") . ") VALUES (";
        $val = rtrim($val, ",") . ")";
        $str .= $keys . $val;
        mysqli_query($this->koneksi, $str);
        $data["id"] = mysqli_insert_id($this->koneksi);
        $object = new \stdClass();
        foreach ($data as $key => $value) {
            $object->$key = $value;
        }
        return $object;
    }

    public function update($tabel, $data = [], $kondisi = [])
    {
        $str = "UPDATE `$tabel` SET ";
        foreach ($data as $key => $value) {
            $str .= "`$key` = '$value', ";
        }
        $str = rtrim($str, ", ");
        $str .= " WHERE `$tabel`.";
        if (count($kondisi) == 1){
            foreach ($kondisi as $key => $value) {
                $str .= "`$key` = '$value'";
            }
        } else {
            foreach ($kondisi as $key => $value) {
                $str .= "`$key` = '$value' AND ";
            }
            $str = substr($str, 0, -4);;
        }
        mysqli_query($this->koneksi, $str);
        return mysqli_affected_rows($this->koneksi);
    }

    public function delete($tabel, $kondisi = [])
    {
        $str = "DELETE FROM `$tabel` ";
        $str .= " WHERE `$tabel`.";
        foreach ($kondisi as $key => $value) {
            $str .= "`$key` = '$value'";
        }
        mysqli_query($this->koneksi, $str);
        return mysqli_affected_rows($this->koneksi);
    }

   
}
