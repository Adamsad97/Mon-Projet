<?php
session_start();
include "connectBdd.php";   
 
 try {
    $sql="INSERT INTO votes(numutilisateur, numalbum, note) VALUES(:numutilisateur, :numalbum, :note)";
    $resultat = $cnx->prepare($sql);
    $note = $_POST["note"];
    $num=$_SESSION["numutilisateur"];
    $nbLignes= $resultat->execute(array(":numutilisateur"=>$num, ":numalbum"=>$_POST["listeAlbum"], ":note"=>$note));
    header("location: index.php");
    ?>
    <script>
        alert("Votre vote a ete pris en compte!!!");
    </script>

<?php

}
    catch(PDOException $e) { // gestion des erreurs
    echo"ERREUR dans l'ajout ".$e->getMessage();
    }
?>
