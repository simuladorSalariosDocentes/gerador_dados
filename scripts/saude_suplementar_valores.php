sv$c<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosSaudeValores = SQL::getDataArray($conn, "SELECT * FROM saude_valores ORDER BY id_saude_versao, id_saude_faixa, id");
//print_r($classes);

$idVersao = 0;
$idFaixa = 0;
$saudeValores = array();
foreach($dadosSaudeValores as $sv) {

    //Agrupamento das faixas na sua respectiva versão
    if($idVersao != $sv["id_saude_versao"]) {
        $versao["idSaudeVersao"] = $sv["id_saude_versao"];
        $versao["faixas"] = array();
        array_push($saudeValores, $versao);

        $idVersao = $sv["id_saude_versao"];
    } 

    $idUltimaVersao = count($saudeValores)-1;

    //Agrupamento dos valores na sua respectiva faixa
    if($idFaixa != $sv["id_saude_faixa"]) {
        $faixa["id"] = $sv["id_saude_faixa"];
        $faixa["valores"] = array();
        array_push($saudeValores[$idUltimaVersao]["faixas"], $faixa);

        $idFaixa = $sv["id_saude_faixa"];
    }
    
    //Valores de cada faixa
    $valor["valorRendaInicial"] = $sv["valor_renda_inicial"];
    $valor["valorRendaFinal"] = $sv["valor_renda_final"];
    $valor["valorBeneficio"] = $sv["valor_beneficio"];
    
    //Adiciona os valores a última faixa
    $idxUltimaFaixa = count($saudeValores[$idUltimaVersao]["faixas"])-1;
    array_push( $saudeValores[$idUltimaVersao]["faixas"][$idxUltimaFaixa]["valores"], $valor);    
}


$json = json_encode($saudeValores, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/saude_suplementar_valores.json", $json);