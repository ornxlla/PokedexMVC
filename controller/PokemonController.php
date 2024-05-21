<?php

namespace controller;

use Presenter;

class PokemonController
{
    private $model;
    private $presenter;

    public function __construct($presenter, $model)
    {
        $this->presenter = $presenter;
        $this->model = $model;
    }

    public function getPokemons()
    {
        $data["pokemon"] = $this->model->getPokemons();
        $this->presenter->render("pokemon", $data);
    }

    public function busquedaPokemon()
    {
        if (isset($_GET["busqueda"]) && isset($_GET["campoABuscar"])) {
            $campoABuscar = $_GET["campoABuscar"];
            $data["pokemon"] = $this->model->buscar($campoABuscar);
            $this->presenter->render("buscar", $data);
        } else {
            echo "error";
        }
    }
}