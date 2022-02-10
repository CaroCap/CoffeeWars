<!DOCTYPE html>
<html lang="en">
<head>
    <!-- <link rel="stylesheet" href="style.css"> -->
    <title>Coffee wars - Add Question</title>
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/form.css">
    <!-- Google Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">

    <!-- Icone Onglet -->
    <link rel="icon" type="image/x-icon" href="./assets/img/grain_cafe.png" />
</head>
<body>
    <?php
        // LIAISON BD
        include_once "./config/db.php";
        try {
            $bdd = new PDO(DBDRIVER . ':host=' . DBHOST . ';port=' . DBPORT . ';dbname=' . DBNAME . ';charset='. DBCHARSET, DBUSER, DBPASS);
        } catch (Exception $e) {
            echo $e->getMessage();
            die();
        }   

        include "./vendor/autoload.php";

        $nouvelleQuestion = new Question(["intitule_question"=>$_POST["intitule_question"], "ID_type"=>$_POST["ID_type"]]);
        $managerQuestion = new QuestionManager($bdd);
        $managerQuestion->insert($nouvelleQuestion);
        // récupérer l'ID de la question
        $ID_question = $nouvelleQuestion->getid();

        $nouvelleReponse = new Reponse(["intitule_reponse"=>$_POST["reponse1"], "ID_question"=>$ID_question, "resultat"=>$_POST["resultat1"]]);
        $managerReponse = new ReponseManager($bdd);
        $managerReponse->insert($nouvelleReponse);

        $nouvelleReponse = new Reponse(["intitule_reponse"=>$_POST["reponse2"], "ID_question"=>$ID_question, "resultat"=>$_POST["resultat2"]]);
        $managerReponse = new ReponseManager($bdd);
        $managerReponse->insert($nouvelleReponse);

        $nouvelleReponse = new Reponse(["intitule_reponse"=>$_POST["reponse3"], "ID_question"=>$ID_question, "resultat"=>$_POST["resultat3"]]);
        $managerReponse = new ReponseManager($bdd);
        $managerReponse->insert($nouvelleReponse);

    ?>

    <div>
        <div id="blocGrainCafe">
            <a href="./index.php">
                <img class="grain_cafe" id="grain_cafe" src="./assets/img/grain_cafe.png" alt="">
                <p class="texteGrainCafe">Retour au Jeu</p>
            </a>
        </div>

            <div>
                <div id="questionsBlocTraitement">

                    <h1 class="titreFormTraitrement">Merci</h1>
                    <p class="pTraitement dongleFont">
                    <a class="aTraitement" href="./Ajouter_Question-FORM.php">Ajouter une autre question</a>        
                    </p>
                    
                </div>
                <!--  Div 1: div derrière en rouge  -->
                <div id="divRougeTraitement">
                </div>
            </div>
        </div>
</body>
</html>