<?php

header("Content-Type: text/xml");
echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>";


//création du cookie user_ip pour statistiques nombre visiteurs	
if (!isset($_COOKIE['user_ip']))
	{
	setCookie('user_ip', $_SERVER['REMOTE_ADDR'], time()+ 24*3600);
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
		// On ajoute l'adresse ip de l'utilisateur dans la tables stat_visites
		$req = $bdd->prepare('INSERT INTO stat_visites(ip_visiteur,date_visite) VALUES (:ip_visiteur, CURDATE())');
		$req->execute(array(
		'ip_visiteur' => $_SERVER['REMOTE_ADDR']
		));
	}

//connexion base bd_deconnaissance
$bdd = new PDO('mysql:host=localhost;dbname=bd_deconnaissance;charset=utf8', 'root', 'motdepasse');


// On choisit une carte au hasard parmi les cartes non encore posées
if(!isset($_COOKIE['cartes_piochees']))
   {
	$req = $bdd->prepare('SELECT * FROM cartes ORDER BY rand() LIMIT 1');
	} else {
	$req = $bdd->prepare('SELECT * FROM cartes WHERE id NOT IN (' . $_COOKIE['cartes_piochees'] .') ORDER BY rand() LIMIT 1');
	}

$req->execute();
$carte = $req->fetch();
	
//ajoute nouvel id dans cookie cartes_piochees
if(!isset($_COOKIE['cartes_piochees']))
   {
	setCookie("cartes_piochees",$carte["id"], time() + 365*24*3600);
	} else {
	setCookie("cartes_piochees",$_COOKIE['cartes_piochees'] . "," . $carte["id"], time() + 365*24*3600);
	}

//si pas de résultat car toutes les questions ont déjà été posées on efface le cookie
if(empty($carte['id']))
   {
	$req = $bdd->prepare('SELECT * FROM cartes ORDER BY rand() LIMIT 1');
	$req->execute();
	$carte = $req->fetch();
	setCookie("cartes_piochees",$carte["id"], time() + 365*24*3600);
	}

$req->closeCursor(); // Termine le traitement de la requête
	
//renvoie résultat de la requête dans une liste
echo "<carte>";
echo "<id>" . $carte["id"] . "</id>" ;
echo "<theme>" . $carte["theme"] . "</theme>";
echo "<question>" . $carte["question"] . "</question>";
echo "<indice>" . $carte["indice"] . "</indice>";
echo "<reponse>" . $carte["reponse"] . "</reponse>";
echo "<explication>" . $carte["explication"] . "</explication>";
echo "<auteur>" . $carte["auteur"] . "</auteur>";
echo "</carte>";

?>
