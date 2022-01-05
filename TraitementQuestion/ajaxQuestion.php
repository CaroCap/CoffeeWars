<?php
include_once "../config/db.php";
try {
    $bdd = new PDO(DBDRIVER . ':host=' . DBHOST . ';port=' . DBPORT . ';dbname=' . DBNAME . ';charset=' . DBCHARSET, DBUSER, DBPASS);
} catch (Exception $e) {
    echo $e->getMessage();
    die();
}
include "../vendor/autoload.php";

$questionReponses = [];

// TYPE SELON ROULETTE à récupérer depuis le url du JS xhr.open(type=...)
$typeRoue = $_GET["type"];

// CHOIX QUESTION   
$managerQuestion = new QuestionManager($bdd);
// Sélectionner toutes les questions (array) avec filtre
$listeQuestions = $managerQuestion->select(["ID_Type"=>$typeRoue]);
// Choisir une question aléatoire parmi la sélection par type
$indexAleatoire = rand(0, (count($listeQuestions) - 1));
$questionChoisie = $listeQuestions[$indexAleatoire];
$intituleQuestion = $questionChoisie->getIntitule_question();
$indexQuestion = $questionChoisie->getid();

// REPONSES ASSOCIÉES
$managerReponse = new ReponseManager($bdd);
// Sélectionner toutes les reponses (array) avec filtre
$listeReponses = $managerReponse->select(['ID_question' => $indexQuestion]);

$questionReponses[] = $typeRoue;
$questionReponses[] = $intituleQuestion;
$questionReponses[] = $listeReponses;

// // ID_Question à récupérer depuis l'url du JS xhr.open(question=...)
// $ID_Question = $_GET["question"];
// // INTITULÉ QUESTION   
// $managerQuestion = new QuestionManager($bdd);
// // Sélectionner la question selon l'ID
// $question = $managerQuestion->selectParId((int)$ID_Question);

// Renvoyer vers JS l'intitulé de la question
echo json_encode($questionReponses);
