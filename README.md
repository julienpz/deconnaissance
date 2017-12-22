# déconnaissance
Une adaptation librement inspirée du célèbre jeu de déconnaissance de Patrick

Vous trouverez ici le code source du jeu en ligne deconnaissance.hopto.org
Le site web est programmé en php7-mysql. Il est basé sur le framework bootstrap.
Le site est hébergé sur un serveur apache 2.0

# installation

récupérer les sources et déployer sur son serveur apache

git clone https://github.com/julienpz/deconnaissance.git

créer la base de données bd_deconnaissance

mysql> CREATE DATABASE bd_deconnaissance ;

importer les données à partir du dump bd_deconnaissance.sql

mysql -u root -p### bd_deconnnaissance < bd_deconnaissance.sql




