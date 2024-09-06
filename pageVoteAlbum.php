<?php
session_start();
include "entete.php";
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
      <form name="pageVoteAlbum.php" action="traitVote.php" method="post">
      <div class="container mt-3">
  <h2>Choisir l'album que tu veux voter pour :</h2>
   <select class="form-select form-select-lg" name="listeAlbum">


<?php
include "connectBdd.php";
$sql = "SELECT * FROM album ";
try
{
    $resultat = $cnx->query($sql);
    $tabResultat = $resultat->fetchAll(PDO::FETCH_ASSOC);
    foreach($tabResultat as $ligne)
    {
        echo "<option value='".$ligne["num"]."'>Titre: ". $ligne["titre"]."&nbsp;&nbsp;|&nbsp;&nbsp;Serie: ".$ligne["serie"]."&nbsp;&nbsp;|&nbsp;&nbsp;Tome:".$ligne["tome"]."</option>";
    }
}
catch(PDOException $e) {   // gestion des erreurs
    echo"ERREUR PDO  " . $e->getMessage();
    }
?>   
</select>
  <br>

  <h3>Choisis la note que tu veux donner à l'album choisi :</h2>
  <input type="radio" class="form-check-input" id="radio1" name="note" value="0" >
  <label class="form-check-label" for="radio1">0</label>
  <input type="radio" class="form-check-input" id="radio2" name="note" value="1" >
      <label class="form-check-label" for="radio2">1</label>
      <input type="radio" class="form-check-input" id="radio3" name="note" value="2" >
      <label class="form-check-label" for="radio3">2</label>
      <input type="radio" class="form-check-input" id="radio4" name="note" value="3" >
      <label class="form-check-label" for="radio4">3</label>
      <input type="radio" class="form-check-input" id="radio5" name="note" value="4" >
      <label class="form-check-label" for="radio5">4</label>
      <input type="radio" class="form-check-input" id="radio6" name="note" value="5" >
      <label class="form-check-label" for="radio6">5</label>
      <br>
      <button type="submit">VOTER</button>
  </form>
</div>
<?php
include "footer.html";
 ?>