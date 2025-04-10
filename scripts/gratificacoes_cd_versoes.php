<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");

$conn = Connection::getConnection();

$dadosCDs = SQL::getDataArray($conn, "SELECT * FROM gratificacoes_cd_versoes ORDER BY id ASC");

$CDs = array();
foreach($dadosCDs as $dcd) {
    $cd["id"] = $dcd["id"];
    $cd["descricao"] = $dcd["descricao"];

    array_push($CDs, $cd);
}

$json = json_encode($CDs, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/gratificacoes_cd_versoes.json", $json);