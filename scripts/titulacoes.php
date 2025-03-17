<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosTitulacoes = SQL::getDataArray($conn, "SELECT * FROM titulacoes ORDER BY id");
//print_r($classes);

$titulacoes = array();
foreach($dadosTitulacoes as $t) {

    $titulacao["id"] = $t["id"];
    $titulacao["descricao"] = $t["descricao"];
    $titulacao["percentuaisRT"] = array();
    
    //Percentuais RT de acorco com o regime
    $sql = "SELECT * FROM titulacoes_rt WHERE id_titulacao = " . $titulacao["id"] .
           " ORDER BY id_regime";
    $dadosPercentuais = SQL::getDataArray($conn, $sql);
    
    foreach($dadosPercentuais as $pct) {
        $percentual["idRegime"] = $pct["id_regime"];
        $percentual["percentual"] = $pct["percentual"];
        array_push($titulacao["percentuaisRT"], $percentual);
    }

    //Adiciona a titulacao ao array
    array_push($titulacoes, $titulacao);
}


$json = json_encode($titulacoes, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/titulacoes.json", $json);