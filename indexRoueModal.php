<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" type="text/css" href="./style/roue.css">
    <link rel="stylesheet" href="style/footer.css">
    <link rel="stylesheet" href="style/modal.css">
    <link rel="stylesheet" href="./style/timer.css">
    <!-- script machine a café -->
    <script src="https://code.createjs.com/1.0.0/createjs.min.js"></script>
    <script src="./script/coffeemachine.js"></script>
    <!-- script timer -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="./script/timer.js"></script>  
    <title>Coffe Wars</title>
    <!-- Icone Onglet -->
    <link rel="icon" type="image/x-icon" href="./assets/img/grain_cafe.png" />
</head>

<body onload="init();" style="margin:0px;">

    <div id="content">
        <header>
            <img id="banniere" src="assets/img/banniere_blanc.svg" alt="">
            <p class="texteBanner">Vite, réponds aux questions avant que le café ne soit terminé!</p>
            <a href="#footer"> <img id="grain_cafe" src="assets/img/grain_cafe.png" alt=""> </a>

        </header>

        <aside class="bienvenue">
            <p class="Texte1"> Bienvenue à Interface 3 ! </p>
            <p class="Texte2"> Tu veux un café ? Ok, mais il va falloir le mériter! </p>

        </aside>

        <!-- TEST APPEL MODAL -->
        <button class="modalClic" id="Question">MODAL Test</button>
        <!-- Bouton pour lancer le jeu  -->
        <button id="btnStart">Commencer la partie </button>

        <section>
            <div id="container">

                <div class="bodyWheel">
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

                <div id="board"> <!-- //TODO Cette div est trop basse mais je ne sais pas pourquoi (Lison) -->

                    <div class="wrapper">
                        <div id="bloc1">
                            <div class="inutile"></div>
                            <div class="local6"></div>
                            <div id="wc"></div>
                        </div>

                        <div id="bloc2">
                            <div class="local1"></div>
                            <div class="local6"></div>
                            <div class="local2"></div>
                        </div>

                        <div id="bloc3">
                            <div class="local3"></div>
                            <div class="local6"></div>
                            <div class="local4"></div>
                        </div>

                        <div id="bloc4">
                            <div class="local5"></div>
                            <div class="local6"></div>
                            <div class="local7"></div>
                        </div>
                    </div>
                </div>

                <div class="thermosContainer">
                    <div class="thermos">
                        <img class="imgThermos" src="./assets/img/thermos.png" alt="thermos">
                        <div class="progressBar" id="progressBar">
                            <div class="countdown" id="countdown"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <footer id="footer">
        <!-- FLOAT -->
        <div class="flex">
            <!-- DIV CODEUSES -->
            <div>
                <!-- Div qui contient le texte et les images -->
                <div id="codeusesBloc">

                    <h1>Qui sommes nous ?</h1>
                    <p class="bubbleboddy">
                        Nous sommes six développeuses junior en formation chez Interface 3
                    </p>
                    <div class="codeuseSeule">
                        <!-- <--- FLOAT -->
                        <div>
                            <img class="codeuseImg" src="assets/img/profil_iman.png" alt="Iman Chamileva">
                        </div>
                        <div class="texteCodeuse">
                            <h2 class="nomCodeuse">Iman</h2>
                            <p>Developpeuse front-end</p>
                        </div>
                    </div>
                    <div class="codeuseSeule">
                        <!-- <--- FLOAT -->
                        <div>
                            <img class="codeuseImg" src="assets/img/profil_judy.png" alt="Judy Ntoko Nkebani">
                        </div>
                        <div class="texteCodeuse">
                            <h2 class="nomCodeuse">Judy</h2>
                            <p>Developpeuse back-end</p>
                        </div>
                    </div>
                    <div class="codeuseSeule">
                        <!-- <--- FLOAT -->
                        <div>
                            <img class="codeuseImg" src="assets/img/profil_iman.png" alt="Barbara Branco">
                        </div>
                        <div class="texteCodeuse">
                            <h2 class="nomCodeuse">Barbara</h2>
                            <p>Developpeuse front-end</p>
                        </div>
                    </div>
                    <div class="codeuseSeule">
                        <!-- <--- FLOAT -->
                        <div>
                            <img class="codeuseImg" src="assets/img/caroline_profil.png" alt="Caroline Cap">
                        </div>
                        <div class="texteCodeuse">
                            <h2 class="nomCodeuse">Caroline</h2>
                            <p>Developpeuse back-end</p>
                        </div>
                    </div>
                    <div class="codeuseSeule">
                        <!-- <--- FLOAT -->
                        <div>
                            <img class="codeuseImg" src="assets/img/laure_profil.png" alt="Laure Hurlet">
                        </div>
                        <div class="texteCodeuse">
                            <h2 class="nomCodeuse">Laure</h2>
                            <p>Developpeuse back-end</p>
                        </div>
                    </div>
                    <div class="codeuseSeule">
                        <!-- <--- FLOAT -->
                        <div>
                            <img class="codeuseImg" src="assets/img/profil_lison.png" alt="Lison Ferné">
                        </div>
                        <div class="texteCodeuse">
                            <h2 class="nomCodeuse">Lison</h2>
                            <p>Developpeuse front-end</p>
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
                <p class="green bubbleboddy">
                    Coffee Wars est un projet collectif réalisé lors du Hackaton 2021 à Interface3.
                </p>
                <!-- Lien Github -->
                <p>
                    <!-- Symbole flèche -->
                    <span>
                        &#x2B62;
                    </span>
                    <a class="bubbleboddy" href="https://github.com/CaroCap/CoffeeWars" target="blank">Voir le code sur Github</a>
                </p>
                <p>
                    <!-- SVG Balises -->
                <div id="svgCode">
                    <svg xmlns="http://www.w3.org/2000/svg" width="100.405" height="80.312" viewBox="0 0 100.405 80.312">
                        <path id="Icon_awesome-code" data-name="Icon awesome-code" d="M43.754,80.236,34.184,77.46A1.885,1.885,0,0,1,32.9,75.122L54.311,1.362A1.885,1.885,0,0,1,56.648.075l9.569,2.777A1.885,1.885,0,0,1,67.5,5.189L46.091,78.95a1.88,1.88,0,0,1-2.337,1.286ZM25.87,62.635l6.824-7.279a1.882,1.882,0,0,0-.125-2.7l-14.213-12.5,14.213-12.5a1.869,1.869,0,0,0,.125-2.7L25.87,17.676A1.884,1.884,0,0,0,23.2,17.6L.6,38.775a1.87,1.87,0,0,0,0,2.745L23.2,62.714a1.87,1.87,0,0,0,2.667-.078ZM77.2,62.73,99.8,41.536a1.87,1.87,0,0,0,0-2.745L77.2,17.582a1.9,1.9,0,0,0-2.667.078l-6.824,7.279a1.882,1.882,0,0,0,.126,2.7L82.046,40.156l-14.213,12.5a1.869,1.869,0,0,0-.125,2.7l6.824,7.279a1.885,1.885,0,0,0,2.667.094Z" transform="translate(0.002 -0.003)" fill="#f2493e" />
                    </svg>

                </div>
                <h3>Languages utilisés</h3>
                <ul>
                    <li>Html/Css</li>
                    <li>JavaScript</li>
                    <li>Php</li>
                    <li>MySql</li>
                </ul>
                <h3>Outils</h3>
                <ul>
                    <li>Photoshop / Illustrator / XD/ Animate</li>
                    <li>Sublime Merge </li>
                    <li>Github</li>
                    <li>Visual Studio Code</li>
                </ul>
                </p>

            </div>
            <!-- L'image du code -->
            <div>
                <img src="" alt="">
            </div>
        </div>
    </footer>


    <!-- MODAL + Include de la selection de la question -->
    <div class="glass" id="modalQuestion">
        <div class="modalFormContainer">
            <div class="modalFormThird">
                <div class="modalFormSecond">
                    <div class="modalForm">
                        <?php
                        include_once "./select_Question.php";
                        ?>
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
    <script src="./script/roue.js"></script>
</body>

</html>