<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosSaudeVersoes = SQL::getDataArray($conn, "SELECT * FROM saude_versoes ORDER BY id DESC");

$saudeVersoes = array();
foreach($dadosSaudeVersoes as $sv) {
    $saudeVersao["id"] = $sv["id"];
    $saudeVersao["descricao"] = $sv["descricao"];

    array_push($saudeVersoes, $saudeVersao);
}


$json = json_encode($saudeVersoes, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/saude_suplementar_versoes.json", $json);