<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosVersoes = SQL::getDataArray($conn, "SELECT * FROM versoes ORDER BY id");

$versoes = array();
foreach($dadosVersoes as $v) {
    $versao["id"] = $v["id"];
    $versao["descricao"] = $v["descricao"];

    array_push($versoes, $versao);
}


$json = json_encode($versoes, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/versoes.json", $json);