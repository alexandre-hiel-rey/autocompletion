<?php
    $id = trim($_GET['id']);
    $empty = false;
    if($id != ''){
        $db = new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');
        
        $requete = $db->prepare("SELECT nom, image, type FROM jeuxvideo WHERE id = '$id'");
        $requete->execute();
        $results = $requete->fetch();
        if(empty($results)){
            $empty = true;
        }
    }else{
        header('Location: index.php');
    }
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/style.css">
    <title><?php echo $results[0]; ?></title>
</head>
<body>
    <?php require_once("templates/header.php"); ?>
<main id="index">
    <section id="presentation">
            <img src="<?php echo $results[1]; ?>"alt="Image Jeux">
        <h2><?php echo $results[0] ?></h2>
            <p><?php echo $results[2] ?></p>
    </section>
</main>
</body>
</html>
<script src="libraries/jquery-3.4.1.min.js"></script>
<script src="libraries/script.js"></script>