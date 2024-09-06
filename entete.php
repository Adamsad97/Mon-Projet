<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Mon site avec Bootstrap 4 </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"> 
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://kit.fontawesome.com/1f7457abdb.js"></script>
  <style>
  </style>
</head>
<body>
  <!-- ENTETE -->
  <header>
    <div class="jumbotron text-center" style="margin-bottom:0">
      <h1>Projet site Bandes dessinées</h1>
      <p>Resize this responsive page to see the effect!</p> 
    </div>
    <?php
    if(!isset($_SESSION['nom']))
    {
      include "navbar.php";
    }
    else
    {
      include "navbarConnecte.php";
      
    }
    
 ?>
  </header>