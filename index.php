<?php
include_once ("Configuration.php");

$configuracion = new Configuration();
$router = $configuracion->getRouter();

$controller = isset($_GET["controller"]) ? $_GET["controller"] : "" ;
$action = isset($_GET["action"]) ? $_GET["action"] : "" ;

$router->route($controller, $action);
// index.php?controller=tours&action=get
// tours/get