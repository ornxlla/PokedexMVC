<?php
include_once("Configuration.php");

$router = Configuration::getRouter();

$controller = isset($_GET["controller"]) ? $_GET["controller"] : "pokemon";  // Default to 'pokemon' controller
$action = isset($_GET["action"]) ? $_GET["action"] : "getPokemon";  // Default to 'getPokemon' action

$router->route($controller, $action);

// index.php?controller=tours&action=get
// tours/get
