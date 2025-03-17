<?php

include_once(__DIR__ . "/sql/Connection.php");
include_once(__DIR__ . "/sql/SQL.php");


$conn = Connection::getConnection();

$dadosClasses = SQL::getDataArray($conn, "SELECT * FROM classes ORDER BY id_versao, id");
//print_r($classes);

$idVersao = 0;
$versoes = array();
foreach($dadosClasses as $c) {

    //Agrupamento das classes na sua respectiva versão
    if($idVersao != $c["id_versao"]) {
        $versao["idVersao"] = $c["id_versao"];
        $versao["classes"] = array();
        array_push($versoes, $versao);

        $idVersao = $c["id_versao"];
    } 

    $classe["id"] = $c["id"];
    $classe["descricao"] = $c["descricao"];
    $classe["vencimentosBasicos"] = array();
    
    //Vencimentos da classe de acordo com o regime
    $sql = "SELECT * FROM classes_regimes WHERE id_classe = " . $classe["id"] .
           " ORDER BY id_regime";
    $dadosVencimentos = SQL::getDataArray($conn, $sql);
    
    foreach($dadosVencimentos as $v) {
        $vencimento["idRegime"] = $v["id_regime"];
        $vencimento["valor"] = $v["valor"];
        array_push($classe["vencimentosBasicos"], $vencimento);
    }

    //Adiciona a classe a última versão
    array_push($versoes[count($versoes)-1]["classes"], $classe);
}


$json = json_encode($versoes, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
file_put_contents("../arquivos/classes.json", $json);