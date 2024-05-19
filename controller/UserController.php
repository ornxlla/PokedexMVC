<?php

namespace controller;

use Presenter;

class UserController
{
private $model;
private $presenter;

    public function __construct($presenter, $model){
        $this->presenter = $presenter;
        $this->model = $model;
    }

    public function getUsuario()
    {
        $usuarios = $this->model->getUsuario();
        $this->presenter->render("sesionIniciada", ["usuarios" => $usuarios]);
    }

    public function trylogin()
    {
        if(isset($_POST["ingreso"])){
            if(isset($_POST["usuario"]) && !empty($_POST["usuario"]) && isset($_POST["contrasenia"]) && !empty($_POST["contrasenia"])){
                $resultadosQuery = $this->model->getUsuario( $_POST["usuario"] , $_POST["contrasenia"]);
                if(!empty($resultadosQuery)){
                    foreach($resultadosQuery as $row){
                        $sesion = $this->login($row['usuario'], $row['es_administrador']);
                        if($sesion === PHP_SESSION_ACTIVE){
                            $data['usuario'] = $row['usuario'];
                            if($row['es_administrador'] == 1){
                                $data['usuario'] = $data['usuario'] . " (Administrador)";
                            }
                            $this->presenter->render("sesionIniciada", $data);
                        }else{
                            $data["errors"] = "Error al iniciar sesión.";
                        }
                    }
                }else{
                    $data["errors"] = "Las credenciales son incorrectas.";
                    $this->presenter->render("login");
                }
            }else{
                $data["errors"] = "Por favor, llene todos los campos.";
                $this->presenter->render("login");
            }
        }
//        $this->presenter->render("sesionIniciada");
    }

    public function get()
    {
        if(isset($_SESSION['usuario'])){
            $this->presenter->render("sesionIniciada", ["usuarios" => $usuarios]);
        }else{
            $this->presenter->render("login");
        }
    }/*
    public function handleRequest() {
        session_start();
        $action = isset($_GET['action']) ? $_GET['action'] : null;

        if ($action == 'logout') {
            $this->logOut();
        } else {
            $usuario = isset($_SESSION['usuario']) ? $_SESSION['usuario'] : null;
            $this->showHeader($usuario);
        }
    }

    private function showHeader($usuario) {
        $this->presenter->render('header', ['usuario' => $usuario]);

    }
*/
    public function login($usuario, $admin){
        session_start();
        $_SESSION["usuario"] = $usuario;
        $_SESSION["admin"] = $admin;
        return session_status();
    }

    private function logOut(){
        session_start();
        session_destroy();
        header("Location: index.php");
        exit();

    }
}