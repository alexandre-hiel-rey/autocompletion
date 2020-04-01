<?php
    $search = trim($_GET['search']);
    $empty = false;
    if($search != ''){
        $db = new PDO('mysql:host=localhost;dbname=autocompletion', 'root', '');
        
        $requete = $db->prepare("SELECT id, nom, image, type FROM jeuxvideo WHERE nom LIKE '$search%'");
        $requete->execute();
        $results = $requete->fetchAll();
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
    <title>Recherche - <?php echo $search; ?></title>
</head>
<body>
    <header></header>
    <main id="search">
        <?php if($empty == true){ ?>
            <p class="results_p">Aucun résultat pour <span><?php echo $search; ?></span></p>
       <?php }elseif($empty == false){ ?>
        <p class="results_p">Résultats pour <span><?php echo $search; ?></span></p>
            <div id="content">
        <?php   foreach($results as $game){
                $id = $game['id'];
                $name = $game['nom'];
                $image = $game['image'];
                $type = $game['type'] ?>
                
                    <div class="resultat">
                        <div class="image">
                            <img src="<?php echo $image; ?>">
                        </div>
                        <div class="infos">
                            <h2><a href="element?id=<?php echo $id; ?>"><?php echo $name; ?></a></h2>
                            <p><?php echo $type; ?></p>
                        </div>
                    </div>
        <?php } ?> 
    <?php } ?>
    </div>
    </main>
</body>
</html>
<script src="libraries/jquery-3.4.1.min.js"></script>
<script src="libraries/script.js"></script>
<style>
    header{
        width: 100%;
        height: 10%;
    }
</style>