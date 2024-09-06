<?php
include "connectBdd.php";
?>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
      <a class="navbar-brand" href="index.php">Menu</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="index.php">Accueil</a>
          </li>
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Par catégorie</a>
          <ul class="dropdown-menu">
            <?php
            $sql = "SELECT * FROM genre order by num";
            try 
            {
                $resultat = $cnx->query($sql);
                $tablo = $resultat->fetchAll(PDO::FETCH_ASSOC);
                foreach($tablo as $ligne)
                {
                    echo "<li><a class='dropdown-item' href='pageAlbum.php?no=".$ligne["num"]."'>".$ligne["libelle"]."</a></li>";
                }  
            }
            catch(PDOException $e)
            {
              echo "ERREUR PDO " . $e->getMessage();
            }
            ?>
            
            
        </ul>
          <li class="nav-item">
              <a class="nav-link" href="pageVoteAlbum.php">Voter pour un album</a>
            </li> 
        <li class="nav-item">
              <a class="nav-link" href="deconnexion.php">Deconnexion</a>
            </li> 
        </div>  
      </nav>
</div>

 