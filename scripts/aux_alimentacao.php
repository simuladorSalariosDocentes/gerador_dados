<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosAliment = SQL::getDataArray($conn, "SELECT * FROM aux_alimentacao ORDER BY id DESC");

$auxAliments = array();
foreach($dadosAliment as $a) {
    $aux["id"] = $a["id"];
    $aux["descricao"] = $a["descricao"];
    $aux["valor"] = $a["valor"];

    array_push($auxAliments, $aux);
}


$json = json_encode($auxAliments, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/aux_alimentacao.json", $json);