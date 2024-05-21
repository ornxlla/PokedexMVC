<?php
class PokemonModel
{
    private $database;

    public function __construct($database)
    {
        $this->database = $database;
    }

    public function getPokemons()
    {
        return $this->database->query('
            SELECT POKEMON.*, TIPO1.descripcion AS tipo1, COALESCE(TIPO2.descripcion, "N/A") AS tipo2
            FROM POKEMON
            INNER JOIN TIPO AS TIPO1 ON POKEMON.id_tipo_pokemon1 = TIPO1.id_tipo_pokemon
            LEFT JOIN TIPO AS TIPO2 ON POKEMON.id_tipo_pokemon2 = TIPO2.id_tipo_pokemon
        ');
    }

    public function buscar($campoABuscar)
    {

        return $this->database->query("
        SELECT POKEMON.*, TIPO1.descripcion AS tipo1, COALESCE(TIPO2.descripcion, 'N/A') AS tipo2
        FROM POKEMON
        INNER JOIN TIPO AS TIPO1 ON POKEMON.id_tipo_pokemon1 = TIPO1.id_tipo_pokemon
        LEFT JOIN TIPO AS TIPO2 ON POKEMON.id_tipo_pokemon2 = TIPO2.id_tipo_pokemon
        WHERE POKEMON.id_pokemon = '$campoABuscar' 
        OR POKEMON.nombre LIKE '%$campoABuscar%' 
        OR TIPO1.descripcion LIKE '%$campoABuscar%'
        OR TIPO2.descripcion LIKE '%$campoABuscar%'
    ");
    }
}
