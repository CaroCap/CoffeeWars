<?php
include_once "../config/db.php";
try {
    $bdd = new PDO(DBDRIVER . ':host=' . DBHOST . ';port=' . DBPORT . ';dbname=' . DBNAME . ';charset=' . DBCHARSET, DBUSER, DBPASS);
} catch (Exception $e) {
    echo $e->getMessage();
    die();
}
include "../vendor/autoload.php";
// ID_Question à récupérer depuis le url du JS xhr.open(question=...)
$ID_Question = $_GET["question"];
// INTITULÉ QUESTION   
$managerQuestion = new QuestionManager($bdd);
// Sélectionner la question selon l'ID
$question = $managerQuestion->selectParId($ID_Question);


echo json_encode($question->getIntitule_question());

// // REPONSES ASSOCIÉES
// $managerReponse = new ReponseManager($bdd);
// // Sélectionner toutes les reponses (array) avec filtre
// $listeReponses = $managerReponse->select(['ID_question' => $indexQuestion]);
