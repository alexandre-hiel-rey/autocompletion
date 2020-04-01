<?php
    
?>
<!DOCTYPE html>
<html lang="en" id="index">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/style.css">
    <title>Foofle</title>
</head>
<body>
    <?php require_once("templates/header.php"); ?>
    <main>
        <div id="content">
            <form method="post">
                <input type="search" id="search_input" placeholder="Rechercher un jeu">
                <input type="button" id="search_button" value="Rechercher">
            </form>
            <div id="results">
                
            </div>
        </div>
    </main>
</body>
</html>
<script src="libraries/jquery-3.4.1.min.js"></script>
<script src="libraries/script.js"></script>