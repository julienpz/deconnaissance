<?php
function get_carte()
{
try
{
  //connexion base bd_deconnaissance
  $bdd = new PDO('mysql:host=localhost;dbname=bd_deconnaissance;charset=utf8', 'root', 'motdepasse');
  array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
}

catch (Exception $e)
{
    die('Erreur : ' . $e->getMessage());
    return false;
	console.log(die('Erreur : ' . $e->getMessage()));
}
	// On choisit une carte au hasard
	$req = $bdd->prepare('SELECT * FROM cartes ORDER BY rand() LIMIT 1');
	$req->execute();
	$carte = $req->fetch();
	$req->closeCursor(); // Termine le traitement de la requête


	return $carte;
}



?>
