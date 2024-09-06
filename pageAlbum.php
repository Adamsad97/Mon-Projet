<?php
include "entete.php";
include "connectBdd.php";
?>
<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
      <h2>Concevoir un site web pour apprendre ...</h2>
      <h5></h5>
      <img class="img-fluid" src="images\logoBootstrap.png">
           
      <p> HTML CSS Bootstrap et PHP...</p>
      <h3>Liens utiles</h3>
      <p>à consulter pour vous aider</p>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="https://www.w3schools.com/bootstrap5/">La référence Bootstrap 5</a>
        </li> 
        <li class="nav-item">
          <a class="nav-link" href="https://www.grafikart.fr/formation">Tutos Grafikart</a>
        </li>      
      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">

    <?php

$sql = "SELECT * FROM album A inner join genre G on A.numGenre = G.num WHERE numgenre =:no";
try
{
    $resultat = $cnx->prepare($sql);
    $resultat->execute(array(":no" => $_GET["no"]));
    $tabResultat = $resultat->fetchAll(PDO::FETCH_ASSOC);
    foreach($tabResultat as $ligne)
    {
      echo "<article>";
      echo  "<h1>".$ligne["serie"]."</h1>";
      echo  "<h2>". $ligne['titre'] ."</h2>";    
      echo  "<h3>Tome : ". $ligne["tome"] ."</h3>";  
      echo  "<h2>".$ligne["scénariste"]." - ". $ligne["dessinateur"]."</h2>"    ;
      echo   " <p><img class='img-fluid' src='".$ligne["image"] ."' width='300px' height=300px>";
      echo "<p>Resume : <br>".$ligne["resume"]."</p>";
      echo "<p>Parution : ".$ligne["parution"]."</p>";
      echo "<p> Genre :" . $ligne["libelle"]. "</p>";
      echo " <p>Editions :". $ligne["editeur"] ."</p>";
      echo "<p>Collection :".$ligne["collection"] . "</p>";
      echo "<br>";
      echo "</article>";
    }

}
catch(PDOException $e) {   // gestion des erreurs
    echo"ERREUR PDO  " . $e->getMessage();
    }
?>
 </div>
</div>
</section>
<?php
include "footer.html";
 ?>