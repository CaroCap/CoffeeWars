// CONSTANTES DEPART : Lancement du jeu (+ pour permettre une remise à 0 si ajout d'un bouton rejouer)
const scoreStart = 0;
// Mise au max du Timer
const timeLeftStart = 180;
const timeTotalStart = 180;

const finPartieStart = false;

// Variables
let score;
let timeLeft;
let timeTotal;

// Emplacements
let placeScore = document.getElementById('scorePoints');
let placeBtnStart = document.getElementById('btnStart');
let placeBtnEnd = document.getElementById('btnEnd');


// Infos SESSION
//sessionStorage.setItem("score", score)
//sessionStorage.getItem("score")
//sessionStorage.removeItem("score")
// if (score == null || score == NaN){
//     score = scoreStart;
// }
// else{
//     score = parseInt(sessionStorage.getItem("score"));
// }


// LANCEMENT PARTIE
// 1) BOUTON PLAY = Lancement partie -> lancement Chrono + possibilité de Spiner la roue (au départ disabled)
// 2) SPIN la roue -> quand la roue s'arrête -> Récupérer nom de la salle montrée par la roue
//      + Illumination salle + ouverture Modal Question
// 3) REPONSE MODAL -> Validation réponse -> True/False ? Score++ & Fermeture MODAL
//      Boucle du 2 et 3 jusque fin timer
// 4) FIN TIMER -> Stop Chrono + Stop possibilité de spiner la roue (disabled)
//      + Ouverture Modal FIN avec total score et phrase selon score


// 1) BOUTON PLAY/REPLAY = Lancement partie -> lancement Chrono + possibilité de Spiner la roue (au départ disabled)
// ? BOUTON JOUER -> LANCEMENT PARTIE (Showme, Timer)
placeBtnStart.addEventListener("click", lancementJeu);
placeBtnEnd.addEventListener("click", lancementJeu);
function lancementJeu(event){
    //Initialisation
    score = scoreStart;
    timeLeft = timeLeftStart;
    timeTotal = timeTotalStart;
    // Fermer Modals si = Rejouer
    document.getElementById("modalFIN").style.display = 'none';
    document.getElementById("modalQuestion").style.display = 'none';
    document.getElementById("modalWC").style.display = 'none';

    // Placement Score 0
    document.getElementById("scorePoints").innerHTML = score;

    // LANCEMENT TIMER
    progress(timeLeft, timeTotal, $('#progressBar'));
    // ENLEVER DISABLED SUR SPIN
    document.getElementById("spin").removeAttribute('disabled');
    // FAIRE DISPARAITRE BOUTON JOUER
    document.getElementById("btnStart").style.display = 'none';
}

// 2) SPIN la roue -> quand la roue s'arrête -> Récupérer nom de la salle montrée par la roue
//      + Illumination salle + ouverture Modal Question
let containerWheel = document.querySelector(".containerWheel");
let btn = document.getElementById("spin");
let number = Math.ceil(Math.random() * 1000);
let typeChoisi;
let typeChoisiPropre;

// FONCTION ROUE - quand on clic sur le SPIN
btn.onclick = function() {
    containerWheel.style.transform = "rotate(" + number + "deg)";
    number += Math.ceil(Math.random() * 1000);
    let selectedDiv = []

    setTimeout(()=>{
        containerWheel.childNodes.forEach((item)=>{
            if(item.nodeType != 3)
            {
                selectedDiv.push(offset(item.childNodes[0]))
            }
        })

        selectedDiv.sort((a ,b) => {
            return a.top - b.top
        })

        // Récupérer le type choisi par la roue
        typeChoisi = selectedDiv[0].name;
        console.log(typeChoisi)
        if (typeChoisi == "W<br>C"){
            typeChoisiPropre = "wc"
        }
        else if (typeChoisi == "W<br>E<br>B"){
            typeChoisiPropre = "web"
        }
        else if (typeChoisi == "W<br>A<br>D"){
            typeChoisiPropre = "wad"
        }
        else if (typeChoisi == "G<br>A<br>M<br>E"){
            typeChoisiPropre = "game"
        }
        else if (typeChoisi == "A<br>S<br>R"){
            typeChoisiPropre = "asr"
        }
        else if (typeChoisi == "P<br>R<br>O<br>F"){
            typeChoisiPropre = "prof"
        }
        else if (typeChoisi == "C<br>A<br>F<br>E<br>T"){
            typeChoisiPropre = "cafet"
        }
        console.log(typeChoisiPropre);

        // Ajouter la class bright au local choisi par la roue pour qu'il s'illumine
        document.getElementById(typeChoisiPropre).classList.add("bright");
        // ! Enlever le bright de la salle après la question
        
        // ! Trouver un moyen de laisser quelques secondes pour illuminer la salle
        // setTimeOut( function() {console.log("7 secondes, c'est assez ?");}, 7000); 

        // ! Utiliser le typeChoisiPropre pour la question
        // Ouvrir Modal
        if(typeChoisiPropre == 'wc'){
            ouvrirModal('modalWC');
        }
        else{
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = () => {
                if (xhr.readyState == 4) {
                    // Si le formulaire a bien été envoyé status = 200
                    if (xhr.status == 200) {
                        // (xhr.responseText = le résultat de la value de notre form)
                            let question = JSON.parse (xhr.responseText)
                            document.getElementById("intituleQuestion").innerHTML = question;
                            console.log(question);
                        }
        
                    }
                }
            xhr.open("GET", "./ajaxQuestion.php");
            xhr.send();
            ouvrirModal('modalQuestion');
        }
    },1500);
}

// Suite fonction Roue
function offset(el) {
    var rect = el.getBoundingClientRect(),
    scrollLeft = window.pageXOffset || document.documentElement.scrollLeft,
    scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    return { top: rect.top + scrollTop, left: rect.left + scrollLeft, name : el.innerHTML, item : el }
}

//Fermer Modal toilette
document.getElementById("btnToilette").addEventListener("click", (event)=>{
    event.preventDefault(); 
    document.getElementById("modalWC").style.display = 'none';
});

// //Générer Question
// function GenerationQuestion(typeQuestion) {
//     var xhr = new XMLHttpRequest();
//     xhr.onreadystatechange = () => {
//         if (xhr.readyState == 4) {
//             // Si le formulaire a bien été envoyé status = 200
//             if (xhr.status == 200) {
//                 // (xhr.responseText = le résultat de la value de notre form)
//                     let question = JSON.parse (xhr.responseText)
//                     document.getElementById("intituleQuestion").innerHTML = question;
//                     console.log(question);
//                 }

//             }
//         }
//     xhr.open("POST", "./ajaxQuestion.php");
//     xhr.send();
// }

// 3) REPONSE MODAL -> Validation réponse -> True/False ? Score++ & Fermeture MODAL 
//+ INFO perdu Gagné

// Ajouter événement sur bouton valider du formulaire du modal
document.getElementById("btnValider").addEventListener("click", (event)=>{
    event.preventDefault(); 
    
    // Vérifier réponse et modifier score
    var xhr = new XMLHttpRequest();
    
    xhr.onreadystatechange = () => {
        if (xhr.readyState == 4) {
            // Si le formulaire a bien été envoyé status = 200
            if (xhr.status == 200) {
                // Si bonne réponse (xhr.responseText = le résultat de la value de notre form)
                //! Finir ce qui se passe quand gagné
                if (xhr.responseText == 1){
                    score= score + 1;

                    document.getElementById("scorePoints").innerHTML = score;
                    // fermerModal("modalQuestion");
                    document.getElementById("modalQuestion").style.display = 'none';
                    //Reloader la page en fermant le Modal pour charger new question avec session
                    // location.reload();
                }

                // Si mauvaise réponse
                //! Finir ce qui se passe quand perdu
                else{
                    // document.getElementById("scorePoints").innerHTML = 2;
                    // fermerModal("modalQuestion");
                    document.getElementById("modalQuestion").style.display = 'none';
                    // location.reload();
                }
            }
        }
    }
    let formulaire = new FormData (document.getElementById("formQuestion"));
    xhr.open("POST", "./traitement_Question.php");
    xhr.send(formulaire);
    
});

//Constantes des valeurs min points pour calculer si joueur est bon ou pas
const PRIX3 = 10;
const PRIX2 = 20;
const PRIX1 = 30;



// 4) FIN TIMER -> Stop Chrono + Stop possibilité de spiner la roue (disabled)
//      + Ouverture Modal FIN avec total score et phrase selon score
function gameOver(){
    // score = sessionStorage.getItem("score");
    document.getElementById('spin').setAttribute('disabled', '');
    ouvrirModal('modalFIN')
    if(score <= PRIX3){
        document.getElementById('PRIX').innerHTML='Un bon jus de chausette 🧦';
        document.getElementById('scoreFin').innerHTML=score;
        // document.getElementById('phraseFin').innerHTML="<img src=\'grain_cafe.png\' width=\'100px\'>"; AJOUTER DIRECT DANS LE HTML
    }
    else if (score <= PRIX2) {
        document.getElementById('PRIX').innerHTML='Un classique Americano ☕️';
        document.getElementById('scoreFin').innerHTML=score;
        // document.getElementById('phraseFin').innerHTML="<img src=\'grain_cafe.png\' width=\'100px\'>"; AJOUTER DIRECT DANS LE HTML
    }
    else if (score >= PRIX2){
        document.getElementById('PRIX').innerHTML='Un Ristretto Italiano 🇮🇹';
        document.getElementById('scoreFin').innerHTML=score;
        // document.getElementById('phraseFin').innerHTML="<img src=\'grain_cafe.png\' width=\'100px\'>"; AJOUTER DIRECT DANS LE HTML
    }
    
    // Enlever le score en fin de partie de la session storage pour pouvoir rejouer à 0
    // sessionStorage.removeItem("score");

}

// FONCTION TIMER
function progress(timeleft, timetotal, $element) {
    var progressBarWidth = (timeleft / timetotal) * $element.width();
    $element.find('#countdown').animate({ width: progressBarWidth }, timeleft == timetotal ? 0 : 1000, 'linear').html(timeleft);
    
    if(timeleft > 0) {
        setTimeout(function() {
            progress(timeleft - 1, timetotal, $element);
        }, 1000);
    }
    else{
        gameOver('modalFIN');
    }
};

// MODALS
// Get the modal
let modal;
function ouvrirModal(idModal){   
    modal = document.getElementById(idModal);
    modal.style.display = "block";
}

function fermerModal(iModal){
    modal = document.getElementById(idModal);
    modal.style.display = "none";
}
