<?php
include_once "../config/db.php";
try {
    $bdd = new PDO(DBDRIVER . ':host=' . DBHOST . ';port=' . DBPORT . ';dbname=' . DBNAME . ';charset=' . DBCHARSET, DBUSER, DBPASS);
} catch (Exception $e) {
    echo $e->getMessage();
    die();
}
include "../vendor/autoload.php";
// ID_Question à récupérer depuis l'url du JS xhr.open(question=...)
$ID_Question = $_GET["question"];
// INTITULÉ QUESTION   
$managerQuestion = new QuestionManager($bdd);
// Sélectionner la question selon l'ID
$question = $managerQuestion->selectParId((int)$ID_Question);

// Renvoyer vers JS l'intitulé de la question
echo json_encode($question[0]->getIntitule_question());

