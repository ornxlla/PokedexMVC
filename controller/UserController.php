<?php

namespace controller;

use Presenter;

class UserController
{

    private $model;
    private $presenter;

    public function __construct($presenter, $model)
    {
        $this->presenter = $presenter;
        $this->model = $model;
    }

    //Revisar funcionamiento
    /*
        public function trylogin()
        {
            if(isset($_POST["ingreso"])){
                if(isset($_POST["usuario"]) && !empty($_POST["usuario"]) && isset($_POST["contrasenia"]) && !empty($_POST["contrasenia"])){
                    $resultadosQuery = $this->model->getUsuario($_POST["usuario"], $_POST["contrasenia"]);
                    if(!empty($resultadosQuery)){
                        foreach($resultadosQuery as $row){
                            $sesion = $this->login($row['usuario'], $row['es_administrador']);
                            if($sesion === PHP_SESSION_ACTIVE){
                                $data['usuario'] = $row['usuario'];
                                if($row['es_administrador'] == 1){
                                    $data['usuario'] = $data['usuario'] . " (Administrador)";
                                }
                                $this->presenter->render("sesionIniciada", $data);
                                return;
                            }else{
                                $data["errors"] = "Error al iniciar sesión.";
                            }
                        }
                    }else{
                        $data["errors"] = "Las credenciales son incorrectas.";
                    }
                }else{
                    $data["errors"] = "Por favor, llene todos los campos.";
                }
            }
            // Renderizamos la vista de login si hubo algún error o si no se realizó ninguna acción
            $this->presenter->render("pokemon", $data);
        }


        public function login($usuario, $admin)
        {
            session_start();
            $_SESSION["usuario"] = $usuario;
            $_SESSION["admin"] = $admin;
            return session_status();
        }

        private function logOut()
        {
            session_start();
            session_destroy();
            header("Location: index.php");
            exit();
        }
    */
}
