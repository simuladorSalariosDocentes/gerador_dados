<?php

class SQL {

    public static function getDataArray(PDO $conn, string $sql): array {
        
        $stm = $conn->prepare($sql);
        $stm->execute();

        $result = $stm->fetchAll();

        return $result;
    }

}