<?php
try {
$server = "mysql:host=localhost;dbname=bdalbum"; // chaine de connexion
$user = "root";
$mdp = "";
$options[PDO::ATTR_ERRMODE]= PDO::ERRMODE_EXCEPTION;
// Instancier un objet de la classe PDO $cnx pour la connexion :
$cnx = new PDO($server, $user, $mdp , $options);
$cnx->exec("set names utf8"); // pour les caractères spéciaux(encodage utf8)
}
catch(PDOException $e) { // gestion des erreurs
echo "ERREUR PDO " . $e->getMessage();
}
?>

