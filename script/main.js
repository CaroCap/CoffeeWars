// CONSTANTES DEPART : Lancement du jeu
const scoreStart = 0;
// Mise au max du Timer
const timeLeftStart = 60;
const timeTotalStart = 60;

const finPartieStart = false;

// Variables
let score = scoreStart;
let timeLeft = timeLeftStart;
let timeTotal = timeTotalStart;
// let nameRoue = 'web';

// Emplacements
let placeScore = document.getElementById('scorePoints');
let placeBtnStart = document.getElementById('btnStart')

// Bouton

placeScore.innerHTML = score;

// LANCEMENT PARTIE
// 1) BOUTON PLAY = Lancement partie -> lancement Chrono + possibilité de Spiner la roue (au départ disabled)
// 2) SPIN la roue -> quand la roue s'arrête -> Récupérer nom de la salle montrée par la roue
//      + Illumination salle + ouverture Modal Question
// 3) REPONSE MODAL -> Validation réponse -> True/False ? Score++ & Fermeture MODAL
//      Boucle du 2 et 3 jusque fin timer
// 4) FIN TIMER -> Stop Chrono + Stop possibilité de spiner la roue (disabled)
//      + Ouverture Modal FIN avec total score et phrase selon score

// ! EVENTS 
// ? BOUTON JOUER -> LANCEMENT PARTIE (Showme, Timer)
placeBtnStart.addEventListener("click", lancementJeu);

// 1) BOUTON PLAY = Lancement partie -> lancement Chrono + possibilité de Spiner la roue (au départ disabled)
function lancementJeu(event){
    // LANCEMENT TIMER
    progress(timeLeft, timeTotal, $('#progressBar'));
    // ENLEVER DISABLED SUR SPIN
    document.getElementById("spin").removeAttribute('disabled');
    // FAIRE DISPARAITRE BOUTON JOUER
    document.getElementById('btnStart').setAttribute('hidden', '');
}

// 2) SPIN la roue -> quand la roue s'arrête -> Récupérer nom de la salle montrée par la roue
//      + Illumination salle + ouverture Modal Question
let containerWheel = document.querySelector(".containerWheel");
let btn = document.getElementById("spin");
let number = Math.ceil(Math.random() * 1000);
let typeChoisi;
let typeChoisiPropre;

// FONCTION ROUE
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

        // ! SI WC ouvrir un autre MODAL
        // Ouvrir Modal Question
        ouvrirModal('modalQuestion');
    },1500);
}
// Suite fonction Roue
function offset(el) {
    var rect = el.getBoundingClientRect(),
    scrollLeft = window.pageXOffset || document.documentElement.scrollLeft,
    scrollTop = window.pageYOffset || document.documentElement.scrollTop;
    return { top: rect.top + scrollTop, left: rect.left + scrollLeft, name : el.innerHTML, item : el }
}

// 3) REPONSE MODAL -> Validation réponse -> True/False ? Score++ & Fermeture MODAL




// FONCTION TIMER
function progress(timeleft, timetotal, $element) {
    var progressBarWidth = (timeleft / timetotal) * $element.width();
    $element.find('#countdown').animate({ width: progressBarWidth }, timeleft == timetotal ? 0 : 1000, 'linear').html(timeleft);
    
    if(timeleft > 0) {
        setTimeout(function() {
            progress(timeleft - 1, timetotal, $element);
        }, 1000);
    }
};

// MODALS
//TABLEAU DES MODALS
let choixModals = document.getElementsByClassName('modalClic');
for (let indexModal = 0; indexModal < choixModals.length; indexModal++) {
    choixModals[indexModal].addEventListener("click", ouvrirModal);
}

// Get the modal
let modal;
// let modalID = "";

function ouvrirModal(idModal){
    // event.preventDefault();
    // Récupérer le nom de l'id du clic pour pouvoir le mettre dans le modal et ouvrir le bon modal
    // modalID = "modal"+this.id;
    modal = document.getElementById(idModal);
    modal.style.display = "block";
}
