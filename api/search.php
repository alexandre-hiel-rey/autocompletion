<?php
    $recherche = trim($_GET['char']);
    if($recherche != ''){
        $db = new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');
        
        $requete = $db->prepare("SELECT id, nom FROM jeuxvideo WHERE nom LIKE '$recherche%'");
        $requete->execute();
        $results = $requete->fetchAll(PDO::FETCH_OBJ);
        if(!empty($results)){
            $data = json_encode($results);
            echo $data;
        }
    }else{
        return;
    }
?>