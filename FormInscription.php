<?php include 'entete.php';?>
        <section>
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
                            <a class="nav-link active" href="https://www.w3schools.com/bootstrap5">La référence Bootstrap 5</a>
                           
                          </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
                </li>
              </ul>
              <hr class="d-sm-none">
            </div>
        
            <div class="col-sm-8">
                <form name="FormInscription.php" action="traitInscription.php" method="post">
                <div class="form-group">
                    <label for="NameDemo">votre nom:</label>
                    <input type="text" name="nom" class="form-control" id="NameDemo" aria-describedby="nameHelp" placeholder="Entrze votre nom">
                    <small id="nameHelp" class="form-text text-muted">Please enter your full name</small>
                </div>
                <div class="form-group">
                    <label for="EmailDemo">Votre Email:</label>
                    <input type="email" name="mail" class="form-control" id="EmailDemo" aria-describedby="emailHelp" placeholder="Entrez votre email">
                    <small id="emailHelp" class="form-text text-muted">Please enter your primary email, we will send confirmation email!</small>
                </div>
                <div class="form-group">
                    <label for="passDemo">Entrez votre mot de passe:</label>
                    <input type="password" name="pass" class="form-control" id="passDemo" aria-describedby="passHelp" placeholder="Password">
                    <small id="passHelp" class="form-text text-muted">Must be 8 characters long</small>
                </div>
                
                <div class="form-check">
                    <input type="checkbox" name="terms" class="form-check-input" id="CheckDemo">
                    <label class="form-check-label" for="CheckDemo">Accepte les termes & Conditions?</label>
                </div>
                <button type="submit" class="btn btn-success">Créer votre compte</button>
                </form>
            </div>
          </div>
        </div>
</section>
 <!-- FOOTER -->
 <?php include 'footer.html';?>    
</body>
</html>