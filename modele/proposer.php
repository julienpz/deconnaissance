<?php
// Check for empty fields
if(empty($_POST['PropTheme'])  		||
   empty($_POST['PropQuestion']) 		||
   empty($_POST['PropIndice']) 		||
   empty($_POST['PropReponse'])	||
   empty($_POST['PropExplication']))
   {
	echo "No arguments Provided!";
	return false;
   }
	
$PropTheme = strip_tags(htmlspecialchars($_POST['PropTheme']));
$PropQuestion = strip_tags(htmlspecialchars($_POST['PropQuestion']));
$PropIndice = strip_tags(htmlspecialchars($_POST['PropIndice']));
$PropReponse = strip_tags(htmlspecialchars($_POST['PropReponse']));
$PropExplication = strip_tags(htmlspecialchars($_POST['PropExplication']));
$PropAuteur = strip_tags(htmlspecialchars($_POST['PropAuteur']));


//connexion base bd_deconnaissance
$bdd = new PDO('mysql:host=localhost;dbname=bd_deconnaissance;charset=utf8', 'root', 'motdepasse');
	
// On ajoute la proposition dans la table cartes
$req = $bdd->prepare('INSERT INTO cartes(theme, question, indice, reponse, explication, auteur, statut) VALUES (:PropTheme, :PropQuestion, :PropIndice, :PropReponse, :PropExplication, :PropAuteur, :statut)');
$req->execute(array(
	'PropTheme' => $PropTheme,
	'PropQuestion' => $PropQuestion,
	'PropIndice' => $PropIndice,
	'PropReponse' => $PropReponse,
	'PropExplication' => $PropExplication,
	'PropAuteur' => $PropAuteur,
	'statut' => "attente"
	));

	// Create the email and send the message
$to = 'julienpoiriez@gmail.com'; // Add your email address inbetween the '' replacing yourname@yourdomain.com - This is where the form will send a message to.
$email_subject = "nouvelle question déconnaissance de :  $PropAuteur";
$email_body = "Thème: $PropTheme\n\nQuestion: $PropQuestion\n\nIndice: $PropIndice\n\nReponse: $PropReponse\n\nExplication: $PropExplication";
$headers = "From: noreply@deconnaissance.hopto.org\n"; // This is the email address the generated message will be from. We recommend using something like noreply@yourdomain.com.	
mail($to,$email_subject,$email_body,$headers);
return true;
		
?>
