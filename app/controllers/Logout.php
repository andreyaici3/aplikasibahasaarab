<?php

use core\Controller as ct;

class Logout extends ct\Controller
{

    public function index()
    {
        session_start();
        session_destroy();
        redirect(base_url('auth'));
    }
}
