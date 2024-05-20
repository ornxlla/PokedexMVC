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



    public function getPokemon()
    {
        $data["pokemon"] = $this->model->getPokemons();
        $this->presenter->render("pokemon", $data);


    }

    public function busquedaPokemon()
    {
        // Lógica para buscar un Pokémon
    }


}
