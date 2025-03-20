<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosSaudeFaixas = SQL::getDataArray($conn, "SELECT * FROM saude_faixas ORDER BY id");

$saudeFaixas = array();
foreach($dadosSaudeFaixas as $sf) {
    $saudeFaixa["id"] = $sf["id"];
    $saudeFaixa["descricao"] = $sf["descricao"];

    array_push($saudeFaixas, $saudeFaixa);
}


$json = json_encode($saudeFaixas, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/saude_suplementar_faixas.json", $json);