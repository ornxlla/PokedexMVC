<?php

namespace model;

class UserModel
{
 private $database;

    public function __construct($database)
    {
        $this->database = $database;
    }

    public function getUsuario($usuario, $password)
    {
        return $this->database->query("SELECT * FROM login WHERE usuario = $usuario AND password = $password");
    }

}