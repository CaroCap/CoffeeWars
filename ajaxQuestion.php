<?php
include_once "./config/db.php";
try {
    $bdd = new PDO(DBDRIVER . ':host=' . DBHOST . ';port=' . DBPORT . ';dbname=' . DBNAME . ';charset=' . DBCHARSET, DBUSER, DBPASS);
} catch (Exception $e) {
    echo $e->getMessage();
    die();
}
include "./vendor/autoload.php";
// TYPE SELON ROULETTE
// ! à modifier avec code Laure
// CHOIX QUESTION   
$managerQuestion = new QuestionManager($bdd);
// Sélectionner toutes les questions (array) avec filtre
$listeQuestions = $managerQuestion->select();
// Choisir une question aléatoire parmi la sélection par type
$indexAleatoire = rand(0, (count($listeQuestions) - 1));
$questionChoisie = $listeQuestions[$indexAleatoire];
// // Afficher la question avec echo (fct qui se trouve dans la classe Question)
// // $questionChoisie->afficherQuestion();
// echo '<h5 class="titreQuestion">Question : </h5>';
// echo '<h6 class="intituleQuestion">' . $questionChoisie->getIntitule_question() . '</h6>';
// Récupérer l'ID de la question pour trouver les réponses associées
$indexQuestion = $questionChoisie->getid();

echo json_encode($questionChoisie->getIntitule_question());

// // REPONSES ASSOCIÉES
// $managerReponse = new ReponseManager($bdd);
// // Sélectionner toutes les reponses (array) avec filtre
// $listeReponses = $managerReponse->select(['ID_question' => $indexQuestion]);
