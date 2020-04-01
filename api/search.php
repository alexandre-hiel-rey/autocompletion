<?php
    $id = $_GET['id'];

    $db = new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');

    $requete = $db->prepare("SELECT * FROM jeuxvideo WHERE id LIKE '$id'");
    $requete->execute();
    $results = $requete->fetchAll(PDO::FETCH_OBJ);
    if(!empty($results)){
        $data = json_encode($results);
        echo $data;
    }
?>