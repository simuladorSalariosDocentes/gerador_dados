<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosRegimes = SQL::getDataArray($conn, "SELECT * FROM regimes ORDER BY id");

$regimes = array();
foreach($dadosRegimes as $r) {
    $regime["id"] = $r["id"];
    $regime["descricao"] = $r["descricao"];

    array_push($regimes, $regime);
}


$json = json_encode($regimes, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/regimes.json", $json);