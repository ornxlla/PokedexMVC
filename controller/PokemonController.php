<?php

namespace controller;

use Presenter;
use Redirect;

class PokemonController
{
    private $model;
    private $presenter;

    public function __construct($presenter, $model){
        $this->presenter = $presenter;
        $this->model = $model;
    }

    public function getPokemons(){
        $data["pokemon"] = $this->model->getPokemons();
        $this->presenter->render("pokemon", $data);
    }

    public function busquedaPokemon(){
        if (isset($_GET["busqueda"]) && isset($_GET["campoABuscar"])) {
            $campoABuscar = $_GET["campoABuscar"];
            $data["pokemon"] = $this->model->buscar($campoABuscar);
            $this->presenter->render("buscar", $data);
        } else {
            echo "error";
        }
    }

    public function vistaPokemon()
    {
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $data["pokemon"] = $this->model->getPokemonById($id);
            if ($data["pokemon"]) {
                $this->presenter->render("vistaPokemon", $data);
            } else {
                echo "Pokémon no encontrado.";
            }
        } else {
            echo "ID de Pokémon no proporcionado.";
        }
    }

    //ABM

    //SUBIR POKEMON

    public function nuevoPokemon($id_pokemon, $nombre, $tipo1, $tipo2, $pokemonImg) {
        return $this->model->alta($id_pokemon, $nombre, $tipo1, $tipo2, $pokemonImg);
    }

    public function procesarAlta() {
        $data = array();
        if (isset($_POST["enviar"])) {
            if (!empty($_POST["nombre"]) && !empty($_POST["tipo1"]) && !empty($_POST["id_pokemon"])) {
                $id_pokemon = $_POST["id_pokemon"];
                $nombre = ucfirst($_POST["nombre"]);
                $tipo1 = strtolower($_POST["tipo1"]);
                $tipo2 = !empty($_POST["tipo2"]) ? strtolower($_POST["tipo2"]) : null;

                $directorioImagen = "./public/image/";
                $nombreImagen = $_FILES["imagen"]["name"];
                $pokemonImg = $directorioImagen . $nombreImagen;

                if (move_uploaded_file($_FILES["imagen"]["tmp_name"], $pokemonImg)) {
                    $resultado = $this->nuevoPokemon($id_pokemon, $nombre, $tipo1, $tipo2, $nombreImagen);
                    if ($resultado) {
                        $data["altaOk"] = "Los datos fueron ingresados correctamente";
                    } else {
                        $data["error"] = "Los datos no pudieron ser ingresados";
                    }
                } else {
                    $data["error"] = "Error al subir la imagen";
                }
            } else {
                $data["error"] = "Los campos no pueden estar vacíos";
            }

            $this->presenter->render("subirPokemon", $data);
        }
    }

    public function mostrarPokemon(){
        $this->presenter->render("subirPokemon");
    }

    public function subirPokemon(){
        $this->presenter->render("subirPokemon");
    }

    // MODIFICAR
    public function pokemonModificado($id_pokemon, $nombre, $tipo1, $tipo2, $pokemonImg)
    {
        return $this->model->modificar($id_pokemon, $nombre, $tipo1, $tipo2, $pokemonImg);
    }


    public function procesarModificacion(){
        $data = array();
        if (isset($_POST["enviar"])) {
            if (!empty($_POST["nombre"]) && !empty($_POST["tipo1"]) && !empty($_POST["id_pokemon"])) {
                $id_pokemon = $_POST["id_pokemon"];
                $nombre = ucfirst($_POST["nombre"]);
                $tipo1 = strtolower($_POST["tipo1"]);
                $tipo2 = !empty($_POST["tipo2"]) ? strtolower($_POST["tipo2"]) : null;

                $directorioImagen = "./public/image/";
                $nombreImagen = $_FILES["imagen"]["name"];
                if ($nombreImagen) {
                    $pokemonImg = $directorioImagen . $nombreImagen;
                    if (!move_uploaded_file($_FILES["imagen"]["tmp_name"], $pokemonImg)) {
                        $data["error"] = "Error al subir la imagen";
                        $this->presenter->render("modificarPokemon", $data);
                        return;
                    }
                } else {
                    $pokemonImg = null;
                }

                $resultado = $this->pokemonModificado($id_pokemon, $nombre, $tipo1, $tipo2, $pokemonImg);
                if ($resultado) {
                    $data["altaOk"] = "Los datos fueron ingresados correctamente";
                } else {
                    $data["error"] = "Los datos no pudieron ser ingresados";
                }
            } else {
                $data["error"] = "Los campos no pueden estar vacíos";
            }

            $this->presenter->render("modificarPokemon", $data);
        }
    }

    public function modificarPokemon()
    {
        $id = $_GET["id_pokemon"];
        $pokemon = $this->model->getPokemonById($id);
        $this->presenter->render("modificarPokemon", ["pokemon" => $pokemon]);
    }



    // BORRAR
    public function borrar(){
        $id = $_GET["id_pokemon"];
        $this->model->borrar($id);
        Redirect::to("./index.php");

}
}