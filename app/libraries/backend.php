<?php
use core\Controller as ct;
class backend extends ct\Controller {

    public function template($layout, $data = []){
        $data["header"] = $this->view("templates/header",$data, TRUE);
        $data["footer"] = $this->view("templates/footer", $data, TRUE);  
        $data["content"] = $this->view($layout, $data, TRUE);
        $data["sidebar"] = $this->view("templates/sidebar", $data, TRUE);
        $this->view("templates/layout", $data, FALSE);
    }
}