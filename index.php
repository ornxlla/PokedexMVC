<?php

include_once('Configuration.php');

$configuration = new Configuration();
$router = $configuration->getRouter();

$module = $_GET['module'] ?? 'pokemon';
$method = $_GET['action'] ?? 'getPokemons';

$router->route($module, $method);