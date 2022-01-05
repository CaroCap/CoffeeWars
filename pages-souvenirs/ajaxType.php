<?php
include_once "../config/db.php";
try {
    $bdd = new PDO(DBDRIVER . ':host=' . DBHOST . ';port=' . DBPORT . ';dbname=' . DBNAME . ';charset=' . DBCHARSET, DBUSER, DBPASS);
} catch (Exception $e) {
    echo $e->getMessage();
    die();
}
include "../vendor/autoload.php";
// TYPE SELON ROULETTE à récupérer depuis le url du JS xhr.open(type=...)
$typeRoue = $_GET["type"];
// CHOIX QUESTION   
$managerQuestion = new QuestionManager($bdd);
// Sélectionner toutes les questions (array) avec filtre
$listeQuestions = $managerQuestion->select(["ID_Type"=>$typeRoue]);
// Choisir une question aléatoire parmi la sélection par type
$indexAleatoire = rand(0, (count($listeQuestions) - 1));
$questionChoisie = $listeQuestions[$indexAleatoire];

// Récupérer l'ID de la question pour trouver les réponses associées
$indexQuestion = $questionChoisie->getid();
echo json_encode($indexQuestion);
