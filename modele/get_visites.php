<?php

header('content-type:application/json');

//connexion base bd_deconnaissance
$bdd = new PDO('mysql:host=localhost;dbname=bd_deconnaissance;charset=utf8', 'root', 'patrick');

$req = $bdd->prepare('SELECT date_visite, count(ip_visiteur) as nb_visites FROM stat_visites GROUP BY date_visite ORDER BY date_visite');

$req->execute();

$data = array();
// On affiche chaque entrée une à une
while ($result = $req->fetch())
{
    //Values
    $data[] = array('date_visite' => (string) $result['date_visite'], 'nb_visites' => (string) $result['nb_visites']);
}

$req->closeCursor(); // Termine le traitement de la requête
 
$jsonTable = json_encode($data, true);
echo $jsonTable;

?>
