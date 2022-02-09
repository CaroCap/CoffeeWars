<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./style/roue.css">
    <link rel="stylesheet" href="./style/footer.css">
    <link rel="stylesheet" href="./style/modal.css">
    <link rel="stylesheet" href="./style/timer.css">
    <link rel="stylesheet" href="./style/style.css">
    <!-- Google Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">

    <!-- script machine a café -->
    <script src="https://code.createjs.com/1.0.0/createjs.min.js"></script>
    <script src="./script/coffeemachine.js"></script>
    <!-- script timer -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <!-- <script src="./script/timer.js"></script> Intégré dans le js du main -->
    <title>Coffe Wars</title>
    <!-- Icone Onglet -->
    <link rel="icon" type="image/x-icon" href="./assets/img/grain_cafe.png" />
</head>

<body onload="init();" style="margin:0px;">
    <div id="contentMain">
        <header>
            <!-- Bannière -->
            <img id="banniere" src="assets/img/banniere_eggwhite.svg" alt="">
            <p class="texteBanner">Vite, réponds aux questions avant que le café ne soit terminé!</p>

            <div id="blocGrainCafe">
                <a href="#footer">
                    <img class="grain_cafe" id="grain_cafe" src="./assets/img/grain_cafe.png" alt="">
                    <p class="texteGrainCafe">Qui sommes nous ?</p>
                </a>
            </div>
        </header>
        <aside class="bienvenue">
            <!-- <div class="Texte2Container"> -->
            <p class="Texte1"> Bienvenue à Interface 3 ! </p>
            <!-- <button id="btnStart">Commencer la partie </button>
            </div> -->
            <p class="Texte2"> Tu veux un café ? Ok, mais il va falloir le mériter! </p>
            <!-- Bouton pour lancer le jeu  -->
        </aside>




        <section>
            <div id="containerSection">

                <!-- Roue -->
                <div class="bodyWheel">
                    <span id="fleche">🔰</span>
                    <button id="spin">Spin</button>
                    <span class="arrow"></span>
                    <div class="containerWheel">
                        <div class="one"><span class="spanWheel">W<br>C</span></div>
                        <div class="two"><span class="spanWheel">W<br>E<br>B</span></div>
                        <div class="three"><span class="spanWheel">G<br>A<br>M<br>E</span></div>
                        <div class="four"><span class="spanWheel">A<br>S<br>R</span></div>
                        <div class="five"><span class="spanWheel">P<br>R<br>O<br>F</span></div>
                        <div class="six"><span class="spanWheel">W<br>C</span></div>
                        <div class="seven"><span class="spanWheel">W<br>A<br>D</span></div>
                        <div class="eight"><span class="spanWheel">C<br>A<br>F<br>E<br>T</span></div>
                    </div>
                </div>

                <!-- Locaux -->
                <div id="board">
                    <div class="locauxColonnes">
                        <img src="./assets/img/salle_cafet.png" alt="Cafétéria" class="local" id="cafet">
                        <img src="./assets/img/salle_prof.png" alt="Salle des Profs" class="local" id="prof">
                        <img src="./assets/img/salle_asr.png" alt="Salle ASR" class="local" id="asr">
                    </div>
                    <div class="locauxColonnes">
                        <img src="./assets/img/salle_toilettes.png" alt="Toilettes" class="local" id="wc">
                        <img src="./assets/img/salle_wad.png" alt="Salle des WAD" class="local" id="wad">
                        <img src="./assets/img/salle_web.png" alt="Salle des WEB" class="local" id="web">
                        <img src="./assets/img/salle_game.png" alt="Salle des GAME" class="local" id="game">
                    </div>
                </div>
                <!-- <div id="board">
                    <div class="wrapper">
                        <div id="bloc1">
                            <div class="inutile"></div>
                            <div class="local6"></div>
                            <div id="wc"></div>
                        </div>
                        <div id="bloc2">
                            <div class="local1" id="cafet"></div>
                            <div class="local6"></div>
                            <div class="local2" id="wad"></div>
                        </div>
                        <div id="bloc3">
                            <div class="local3" id="prof"></div>
                            <div class="local6"></div>
                            <div class="local4" id="web"></div>
                        </div>
                        <div id="bloc4">
                            <div class="local5" id="asr"></div>
                            <div class="local6"></div>
                            <div class="local7" id="game"></div>
                        </div>
                    </div>
                </div> -->

                <!-- Score et Timer -->
                <div class="modalFormContainer2">
                    <div class="modalFormThird2">
                        <div class="modalFormSecond2">
                            <div class="modalForm2">
                                <span id="scoreTitre">Score</span>

                                <div class="containerDroite2">
                                    <!-- Timer Thermos -->
                                    <div class="thermosContainer">
                                        <div class="thermos">
                                            <img class="imgThermos" src="./assets/img/thermos.png" alt="thermos">
                                            <div class="progressBar" id="progressBar">
                                                <div class="countdown" id="countdown"></div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Score et Grain de cafés -->
                                    <div class="scoreContainer">
                                        <div id="grainsContainer">
                                            <span id="scorePoints">0</span>
                                            <img class="grain_cafe" id="grainsCaffeScore" src="./assets/img/grain_cafe.png" alt="grains de café">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
    </div>

    <!-- FOOTER -->
    <footer id="footer">
        <!-- Icone des grains de café qui ramène au jeu -->
        <div id="divGrainCafeFooter">
            <a href="#">
                <img class="grain_cafe" id="grain_cafe" src="./assets/img/grain_cafe.png" alt="">
                <p class="texteGrainCafeFooter">Retour au Jeu</p>
            </a>
        </div>
        <!-- FLOAT -->
        <div class="flex">
            <!-- DIV CODEUSES -->
            <div>
                <!-- Div qui contient le texte et les images -->
                <div id="codeusesBloc">

                    <h1 class="">Qui sommes nous ?</h1>
                    <p class="dongleFont brown pCodeuse">
                        Nous sommes 6 développeuses junior en formation chez <a class="hyperLien brown " href="https://www.interface3.be/">Interface3</a>
                    </p>
                    <div class="codeusesListe">
                        <div class="codeuseSeule">
                            <!-- <--- FLOAT -->
                            <div>
                                <a href="https://github.com/imanchamileva" target="blank">
                                    <img class="codeuseImg" src="assets/img/profil_iman.png" alt="Iman Chamileva">
                                </a>
                            </div>
                            <a href="https://github.com/imanchamileva" target="blank">
                                <div class="texteCodeuse">
                                    <h2 class="nomCodeuse">Iman</h2>
                                    <p>Développeuse front-end</p>
                                </div>
                            </a>
                        </div>
                        <div class="codeuseSeule">
                            <!-- <--- FLOAT -->
                            <div>
                                <a href="https://github.com/JudyNtk" target="blank">
                                    <img class="codeuseImg" src="assets/img/profil_judy.png" alt="Judy Ntoko Nkebani">
                                </a>
                            </div>
                            <a href="https://github.com/JudyNtk" target="blank">
                                <div class="texteCodeuse">
                                    <h2 class="nomCodeuse">Judy</h2>
                                    <p>Développeuse back-end</p>
                                </div>
                            </a>
                        </div>
                        <div class="codeuseSeule">
                            <!-- <--- FLOAT -->
                            <div>
                                <a href="https://github.com/barbarazeviche" target="blank">
                                    <img class="codeuseImg" src="assets/img/profil_barbara.png" alt="Barbara Branco">
                                </a>
                            </div>
                            <a href="https://github.com/barbarazeviche" target="blank">
                                <div class="texteCodeuse">
                                    <h2 class="nomCodeuse">Barbara</h2>
                                    <p>Développeuse front-end</p>
                                </div>
                            </a>
                        </div>
                        <div class="codeuseSeule">
                            <!-- <--- FLOAT -->
                            <div>
                                <a href="https://github.com/CaroCap" target="blank"><img class="codeuseImg" src="assets/img/caroline_profil.png" alt="Caroline Cap"></a>
                            </div>
                            <a href="https://github.com/CaroCap" target="blank">
                                <div class="texteCodeuse">
                                    <h2 class="nomCodeuse">Caroline</h2>
                                    <p>Développeuse back-end</p>
                                </div>
                            </a>
                        </div>
                        <div class="codeuseSeule">
                            <!-- <--- FLOAT -->
                            <div>
                                <a href="https://github.com/acidburn38" target="blank">
                                    <img class="codeuseImg" src="assets/img/laure_profil.png" alt="Laure Hurlet">
                                </a>
                            </div>
                            <a href="https://github.com/acidburn38" target="blank">
                                <div class="texteCodeuse">
                                    <h2 class="nomCodeuse">Laure</h2>
                                    <p>Développeuse back-end</p>
                                </div>
                            </a>
                        </div>
                        <div class="codeuseSeule">

                            <!-- <--- FLOAT -->
                            <div>
                                <a href="https://github.com/Lison-creator" target="blank"><img class="codeuseImg" src="assets/img/profil_lison.png" alt="Lison Ferné"></a>
                            </div>
                            <a href="https://github.com/Lison-creator" target="blank">
                                <div class="texteCodeuse">
                                    <h2 class="nomCodeuse">Lison</h2>
                                    <p>Développeuse front-end</p>
                                </div>
                            </a>

                        </div>
                    </div>
                </div>
                <!--  Div 1: div derrière en rouge  -->
                <div id="divRouge">
                </div>
            </div>
            <!-- Paragraphe sur les languages employés -->
            <div id="languagesCode">
                <!-- Le svg du titre "Coffee Wars" -->
                <div id="banniere_rouge">
                    <img src="assets/img/banniere_rouge.svg" alt="">
                </div>
                <p class="green dongleFont">
                    Coffee Wars est un projet collectif réalisé lors du Hackaton 2021 à Interface3.
                </p>
                <!-- Lien Github -->
                <p>
                    <!-- Symbole flèche -->
                    <span class="flecheFooter">
                        &#x2B62;
                    </span>
                    <a class="underlineNone githubLink" href="https://github.com/CaroCap/CoffeeWars" target="blank">Voir le code sur Github</a>
                </p>
                <p>
                    <!-- SVG Balises -->
                    <div id="svgCode">
                        <svg xmlns="http://www.w3.org/2000/svg" width="100.405" height="80.312" viewBox="0 0 100.405 80.312">
                            <path id="Icon_awesome-code" data-name="Icon awesome-code" d="M43.754,80.236,34.184,77.46A1.885,1.885,0,0,1,32.9,75.122L54.311,1.362A1.885,1.885,0,0,1,56.648.075l9.569,2.777A1.885,1.885,0,0,1,67.5,5.189L46.091,78.95a1.88,1.88,0,0,1-2.337,1.286ZM25.87,62.635l6.824-7.279a1.882,1.882,0,0,0-.125-2.7l-14.213-12.5,14.213-12.5a1.869,1.869,0,0,0,.125-2.7L25.87,17.676A1.884,1.884,0,0,0,23.2,17.6L.6,38.775a1.87,1.87,0,0,0,0,2.745L23.2,62.714a1.87,1.87,0,0,0,2.667-.078ZM77.2,62.73,99.8,41.536a1.87,1.87,0,0,0,0-2.745L77.2,17.582a1.9,1.9,0,0,0-2.667.078l-6.824,7.279a1.882,1.882,0,0,0,.126,2.7L82.046,40.156l-14.213,12.5a1.869,1.869,0,0,0-.125,2.7l6.824,7.279a1.885,1.885,0,0,0,2.667.094Z" transform="translate(0.002 -0.003)" fill="#f2493e" />
                        </svg>
                    </div>
                    <!-- Languages & Outils -->
                    <div class="languesOutils">
                        <h3>Languages utilisés</h3>
                        <ul class="dongleFont liste">
                            <li>Html/Css</li>
                            <li>JavaScript</li>
                            <li>Php</li>
                            <li>MySql</li>
                        </ul>
                        <h3>Outils</h3>
                        <ul class="dongleFont liste">
                            <li>Photoshop / Illustrator / XD/ Animate</li>
                            <li>Sublime Merge </li>
                            <li>Github</li>
                            <li>Visual Studio Code</li>
                        </ul>
                    </div>
                </p>
            </div>
            <!-- L'image du code -->
            <div>
                <img src="" alt="">
            </div>
        </div>
    </footer>

    <!-- MODAL QUESTION -->
    <div class="glass" id="modalQuestion">
        <div class="modalFormContainer">
            <div class="modalFormThird">
                <div class="modalFormSecond">
                    <div class="modalForm">

                        <!-- Créer formulaire Question réponses -->
                        <form id="formQuestion">
                            <h5 class="titreQuestion">Question : </h5>
                            <h6 class="intituleQuestion dongleFont" id="intituleQuestion"> </h6>
                            <div class="divReponses" id="divReponses">
                                <!-- Propositions réponses seront injectées via le JS -->
                            </div>

                            <button id="btnValider" class="btnModal">Valider</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- MACHINE A CAFE -->
            <div id="animation_container">
                <canvas id="canvas"></canvas>
                <div id="dom_overlay_container">
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL WC -->
    <div class="glass" id="modalWC">
        <div class="modalFormContainer">
            <div class="modalFormThird">
                <div class="modalFormSecond">
                    <div class="modalForm">
                        <h5 class="titreQuestion">Pipi Fountain</h5>
                        <h6 class="intituleQuestion dongleFont">Ici c'est au cas où tu veux boire du pipi, je ne pense pas que ce soit le cas, alors rien ne se passe...
                            <br>Try again for real coffee !
                        </h6>
                        <img class="imgToilet" src="assets/img/bobsBurger.jpg" alt="Bob's burgers">
                        <button id="btnToilette" class="btnModal">Fermer</button>
                    </div>
                </div>
            </div>
            <!-- MACHINE A CAFE -->
            <div id="animation_container">
                <canvas id="canvas"></canvas>
                <div id="dom_overlay_container">
                </div>
            </div>
        </div>
    </div>

    <!-- MODAL END -->
    <div class="glass" id="modalFIN">
        <div class="modalFormContainer">
            <div class="modalFormThird">
                <div class="modalFormSecond">
                    <div class="modalForm">
                        <h5 class="titreQuestion">Bravooo ! </h5>
                        <h6 class="intituleQuestion dongleFont">Tu as gagné :</h6>
                        <div class="intituleQuestion result">
                            <p id="PRIX" class="dongleFont"></p>
                            <div class="scoreFinContainer">
                                <p id="scoreFin"></p>
                                <img class="grain_cafe" src="./assets/img/grain_cafe.png" alt="grains de café">
                            </div>
                        </div>
                        <button id="btnEnd" class="btnModal">Rejouer</button>
                    </div>
                </div>
            </div>
            <!-- MACHINE A CAFE -->
            <div id="animation_container">
                <canvas id="canvas"></canvas>
                <div id="dom_overlay_container">
                </div>
            </div>
        </div>
    </div>

    <script src="script/main.js"></script>

</body>

</html>