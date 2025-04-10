<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosCDValores = SQL::getDataArray($conn, "SELECT * FROM gratificacoes_cd_valores ORDER BY id_gratificacoes_cd_versao, id");
//print_r($dadosFGValores);

$idVersaoCD = 0;
$CDValores = array();
foreach($dadosCDValores as $dcdValor) {

    //Agrupamento das valores na sua respectiva versão da CD
    if($idVersaoCD != $dcdValor["id_gratificacoes_cd_versao"]) {
        $cd["idCDVersao"] = $dcdValor["id_gratificacoes_cd_versao"];
        $cd["valores"] = array();
        array_push($CDValores, $cd);

        $idVersaoCD = $dcdValor["id_gratificacoes_cd_versao"];
    } 

    $idUltimaCD = count($CDValores)-1;

    //Valores de cada faixa
    $valor["id"] = $dcdValor["id"];
    $valor["descricao"] = $dcdValor["descricao"];
    $valor["valor"] = $dcdValor["valor"];
    
    //Adiciona os valores a última faixa
    array_push($CDValores[$idUltimaCD]["valores"], $valor);
}

$json = json_encode($CDValores, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/gratificacoes_cd_valores.json", $json);