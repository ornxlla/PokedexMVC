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
        $query = "SELECT * FROM login WHERE usuario = :usuario AND password = :password";
        $statement = $this->database->prepare($query);
        $statement->bindParam(':usuario', $usuario);
        $statement->bindParam(':password', $password);
        $statement->execute();
        return $statement->fetch();
    }

}