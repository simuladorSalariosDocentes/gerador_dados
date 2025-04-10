<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");

$conn = Connection::getConnection();

$dadosFCCs = SQL::getDataArray($conn, "SELECT * FROM gratificacoes_fcc ORDER BY id ASC");

$FCCs = array();
foreach($dadosFCCs as $dfcc) {
    $fcc["id"] = $dfcc["id"];
    $fcc["descricao"] = $dfcc["descricao"];
    $fcc["valor"] = $dfcc["valor"];

    array_push($FCCs, $fcc);
}


$json = json_encode($FCCs, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/gratificacoes_fcc.json", $json);