<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosFGValores = SQL::getDataArray($conn, "SELECT * FROM gratificacoes_fg_valores ORDER BY id_gratificacoes_fg_versao, id");
//print_r($dadosFGValores);

$idVersaoFG = 0;
$FGValores = array();
foreach($dadosFGValores as $dfgValor) {

    //Agrupamento das valores na sua respectiva versão da FG
    if($idVersaoFG != $dfgValor["id_gratificacoes_fg_versao"]) {
        $fg["idFGVersao"] = $dfgValor["id_gratificacoes_fg_versao"];
        $fg["valores"] = array();
        array_push($FGValores, $fg);

        $idVersaoFG = $dfgValor["id_gratificacoes_fg_versao"];
    } 

    $idUltimaFG = count($FGValores)-1;

    //Valores de cada faixa
    $valor["id"] = $dfgValor["id"];
    $valor["descricao"] = $dfgValor["descricao"];
    $valor["valor"] = $dfgValor["valor"];
    
    //Adiciona os valores a última faixa
    array_push($FGValores[$idUltimaFG]["valores"], $valor);
}


$json = json_encode($FGValores, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/gratificacoes_fg_valores.json", $json);