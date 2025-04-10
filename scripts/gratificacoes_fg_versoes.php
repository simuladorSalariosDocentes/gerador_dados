<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");

$conn = Connection::getConnection();

$dadosFGs = SQL::getDataArray($conn, "SELECT * FROM gratificacoes_fg_versoes ORDER BY id ASC");

$FGs = array();
foreach($dadosFGs as $dfg) {
    $fg["id"] = $dfg["id"];
    $fg["descricao"] = $dfg["descricao"];

    array_push($FGs, $fg);
}

$json = json_encode($FGs, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/gratificacoes_fg_versoes.json", $json);