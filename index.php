<!DOCTYPE html>
<html lang="en">

<?php

include_once('modele/fonctions_bd.php');
$carte = get_carte();

?>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Déconnaissance - l'application</title>
	
  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="vendor/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="css/freelancer-1.0.css" rel="stylesheet">

</head>


<body id="page-top" data-spy="scroll" data-target="#jouer" >

<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">déconnaissance</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fa fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#jouer">Jouer</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#Proposer">Proposer</a>
          </li>
          <!--li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
          </li-->
        </ul>
      </div>
    </div>
  </nav>

      <!-- Header -->
    <header class="masthead">
      <div class="container">
		<img class="img-fluid" src="img/entonnoir.png" alt="">
        <div class="intro-text">
          <span class="name">Déconnaissance</span>
          <hr class="star-light">
          <span class="skills">La règle : répondre à la question en utilisant un jeu de mot</span>
        </div>
      </div>
    </header>

  <!--  Affichage de la carte de jeu -->
  <section id="jouer">
    <!--h2 class="text-center">Jouer</h2-->
    <!--hr class="star-primary"-->
	<div id='div-carte'> 
		<div class="col-lg-6 mx-auto text-center container">
			<h4 id='theme'> <?php echo $carte['theme']; ?></h4>
			<p id='question'> <?php echo $carte['question']; ?> </p>
			</br>
			<h4>Indice</h4>
			<p id='indice'><?php echo $carte['indice']; ?></p>
			<button class="btn btn-primary btn-lg" id=btnreponse role="button" data-toggle="collapse" aria-expanded="false" data-target="#div-reponse" autocomplete="off">réponse ?</button>
		</div>
        <div class="col-lg-6 mx-auto text-center">
          <div class="collapse" id="div-reponse">
			</br>
            <p id='reponse'><?php echo $carte['reponse']; ?></p>
            <p id='explication'><em>(<?php echo $carte['explication']; ?>)</em></p>
			<p  class="text-left"><small>proposé par : <strong id='auteur'><?php echo $carte['auteur']; ?></strong></small></p>
          </div>
		</br>
        </div>
    </div>
  </section>

  <!-- About Section ->
  <section class="success" id="Proposer">
    <div class="container">
      <h2 class="text-center">Proposer</h2>
      <hr class="star-light">
      <div class="row">
        <div class="col-lg-4 ml-auto">
          <p>Ajouter la règle du jeu</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Section proposer une question -->
  <section id="Proposer">
    <div class="container">
      <h2 class="text-center">Proposer</h2>
      <hr class="star-primary">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
          <form name="ProposerQuestion" id="PropositionForm" novalidate>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>Thème</label>
                <input class="form-control" id="PropTheme" type="text" placeholder="Thème" required data-validation-required-message="Vous devez choisir un thème">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>Question</label>
                <input class="form-control" id="PropQuestion" type="text" placeholder="Question déconnaissance" required data-validation-required-message="Vous devez renseigner ce champ">
                <p class="help-block text-danger"></p>
              </div>
            </div>
			<div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>Indice</label>
                <input class="form-control" id="PropIndice" type="text" placeholder="Indice" required data-validation-required-message="Vous devez renseigner ce champ">
                <p class="help-block text-danger"></p>
              </div>
            </div>
			<div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>réponse</label>
                <input class="form-control" id="PropReponse" type="text" placeholder="réponse" required data-validation-required-message="Vous devez renseigner ce champ">
                <p class="help-block text-danger"></p>
              </div>
            </div>
			<div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>Explication</label>
                <input class="form-control" id="PropExplication" type="text" placeholder="explication" required data-validation-required-message="Vous devez renseigner ce champ">
                <p class="help-block text-danger"></p>
              </div>
            </div>
			<div class="control-group">
              <div class="form-group floating-label-form-group controls">
                <label>Auteur (facultatif)</label>
                <input class="form-control" id="PropAuteur" type="text" placeholder="Auteur">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <br>
            <div id="success"></div>
            <div class="form-group">
              <button type="submit" class="btn btn-success btn-lg" id="sendPropositonButton">Proposer</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="text-center">
        <div class="footer-below">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
				Licence Creative Commons;  </br>info@deconnnaissance.hopto.org
              </div>
            </div>
          </div>
		 </div>
   </footer>

  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
  <div class="scroll-top d-lg-none">
	<a class="btn btn-primary js-scroll-trigger" href="#page-top">
	  <i class="fa fa-chevron-up"></i>
	</a>
  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/popper/popper.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <script src="js/proposer-1.0.js"></script>
  
  <!-- Custom scripts for this template -->
  <script src="js/freelancer.min.js"></script>
  <script>
	

	$('#div-reponse').on('show.bs.collapse', function () {
		document.getElementById("btnreponse").innerHTML = 'rejouer ?';
		console.log('shown.bs.collapse');
	})
	
	$('#div-reponse').on('hidden.bs.collapse', function () {
		<!-- afficher une nouvelle carte-->
		$.ajax({
		url: "modele/question.php",
		type: "GET",
		dataType: "xml",
		cache: "false",
		success: AfficherCarte	
		});
	})
	
	function AfficherCarte(xml) {
		var delayInMilliseconds = 200;
		setTimeout(function() {
			document.getElementById("theme").innerHTML = $(xml).find("theme").text();
			document.getElementById("question").innerHTML = $(xml).find("question").text();
			document.getElementById("indice").innerHTML = $(xml).find("indice").text();
			document.getElementById("reponse").innerHTML = $(xml).find("reponse").text();
			document.getElementById("explication").innerHTML = "(" + $(xml).find("explication").text() + ")";
			document.getElementById("auteur").innerHTML = $(xml).find("auteur").text();
			document.getElementById("btnreponse").innerHTML = 'réponse ?';		
		}, delayInMilliseconds);
	};
	  
  </script>
  

  

</body>

</html>
