<?php
    include "connectBdd.php";
        

        $sql="INSERT INTO users(nom, email, mdpasse) VALUES (:nom,:email,:mdpasse)";
        $result=$cnx->prepare($sql);
        $nom = $_POST["nom"];
        $mail = $_POST["mail"];
        $mdpasse = $_POST["pass"];
        $nblignes = $result->execute(array(":nom" =>$nom,":email" =>$mail,":mdpasse" =>$mdpasse));
        
            header("Location:index.php");


?>