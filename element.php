<?php
    // if(!isset($_GET['id']))
    // {
    //     header('Location: index.php');
    // }

    $id = ;

    $db = new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');

    $requete = $db->prepare("SELECT * FROM jeuxvideo WHERE id LIKE '$id'");
    $requete->execute();
    $results = $requete->fetch();
?>

<!DOCTYPE html>
<html lang="en"id="index">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/style.css">
    <title>Jeux</title>
</head>
<body>
    <?php require_once("templates/header.php"); ?>
<main>
    <section id="presentation">
            <img src="<?php echo $results[3]; ?>"alt="Image Jeux">
        <h2><?php echo $results[1] ?></h2>
            <p><?php echo $results[2] ?></p>
    </section>
</main>
</body>
</html>
<script src="libraries/jquery-3.4.1.min.js"></script>
<script src="libraries/script.js"></script>