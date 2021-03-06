<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/style.css">
    <title>Game Search</title>
</head>
<body>
    <?php require_once('templates/header.php'); ?>
    <main id="index">
        <div id="content">
            <form method="get" action="recherche">
                <div id="inputs">
                    <input type="search" name="search" id="search_input" placeholder="Rechercher un jeu" autocomplete="off">
                    <input type="submit" value="Rechercher">
                </div>
                <div id="results">
                    
                </div>
            </form>
        </div>
    </main>
</body>
</html>
<script src="libraries/jquery-3.4.1.min.js"></script>
<script src="libraries/script.js"></script>