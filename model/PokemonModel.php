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
            SELECT POKEMON.*, TIPO1.descripcion AS tipo1, COALESCE(TIPO2.descripcion, "") AS tipo2
            FROM POKEMON
            INNER JOIN TIPO AS TIPO1 ON POKEMON.id_tipo_pokemon1 = TIPO1.id_tipo_pokemon
            LEFT JOIN TIPO AS TIPO2 ON POKEMON.id_tipo_pokemon2 = TIPO2.id_tipo_pokemon
        ');
    }

    public function buscar($campoABuscar)
    {

        return $this->database->query("
        SELECT POKEMON.*, TIPO1.descripcion AS tipo1, COALESCE(TIPO2.descripcion, '') AS tipo2
        FROM POKEMON
        INNER JOIN TIPO AS TIPO1 ON POKEMON.id_tipo_pokemon1 = TIPO1.id_tipo_pokemon
        LEFT JOIN TIPO AS TIPO2 ON POKEMON.id_tipo_pokemon2 = TIPO2.id_tipo_pokemon
        WHERE POKEMON.id_pokemon = '$campoABuscar' 
        OR POKEMON.nombre LIKE '%$campoABuscar%' 
        OR TIPO1.descripcion LIKE '%$campoABuscar%'
        OR TIPO2.descripcion LIKE '%$campoABuscar%'
    ");
    }

    public function getPokemonById($id)
    {
        $stmt = $this->database->prepare('
            SELECT POKEMON.*, TIPO1.descripcion AS tipo1, COALESCE(TIPO2.descripcion, "") AS tipo2
            FROM POKEMON
            INNER JOIN TIPO AS TIPO1 ON POKEMON.id_tipo_pokemon1 = TIPO1.id_tipo_pokemon
            LEFT JOIN TIPO AS TIPO2 ON POKEMON.id_tipo_pokemon2 = TIPO2.id_tipo_pokemon
            WHERE POKEMON.id_pokemon = ?
        ');

        if ($stmt) {
            $stmt->bind_param('i', $id);
            $stmt->execute();
            $result = $stmt->get_result();
            if ($result) {
                return $result->fetch_assoc();
            } else {
                echo "Error ejecutando la consulta: " . $stmt->error;
                return false;
            }
        } else {
            echo "Error preparando la consulta: " . $this->database->error;
            return false;
        }

    }


    //ABM
    public function alta($id_pokemon, $nombre, $tipo1, $tipo2, $descripcion, $rutaImagen)
    {
        $sql = 'INSERT INTO POKEMON (id_pokemon, nombre, id_tipo_pokemon1, id_tipo_pokemon2, descripcion, imagen) VALUES (?, ?, ?, ?, ?, ?)';
        $stmt = $this->database->prepare($sql);

        if ($stmt) {
            $stmt->bind_param("isssss", $id_pokemon, $nombre, $tipo1, $tipo2, $descripcion, $rutaImagen);
            return $stmt->execute();
        } else {
            return false;
        }
    }

    public function modificar($id_pokemon, $nombre, $tipo1, $tipo2, $descripcion, $rutaImagen)
    {
        $sql = 'UPDATE POKEMON SET nombre = ?, id_tipo_pokemon1 = ?, id_tipo_pokemon2 = ?, descripcion = ?';
        if ($rutaImagen) {
            $sql .= ', imagen = ?';
        }
        $sql .= ' WHERE id_pokemon = ?';

        $stmt = $this->database->prepare($sql);

        if ($stmt) {
            if ($rutaImagen) {
                $stmt->bind_param("sssssi", $nombre, $tipo1, $tipo2, $descripcion, $rutaImagen, $id_pokemon);
            } else {
                $stmt->bind_param("ssssi", $nombre, $tipo1, $tipo2, $descripcion, $id_pokemon);
            }
            return $stmt->execute();
        } else {
            echo "Error al preparar la consulta: " . $this->database->error;
            return false;
        }
    }


    public function borrar($id)
    {
        $sql = "DELETE FROM pokemon WHERE id_pokemon = ?";
        $stmt = $this->database->prepare($sql);

        if ($stmt) {
            $stmt->bind_param("i", $id);
            return $stmt->execute();
        } else {
            return false;
        }
    }
}
