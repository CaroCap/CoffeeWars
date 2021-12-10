// CONSTANTES DEPART : Lancement du jeu
const scoreStart = 0;
// Mise au max du Timer
const heuresStart = 0;
const minutesStart = 6;
const secondesStart = 0;
const finPartieStart = false;

// Variables
let score = scoreStart;
// let nameRoue = 'web';

// Emplacements
let placeScore = document.getElementById('scorePoints');
placeScore.innerHTML = score;

function lancementJeu(){
    
}



// MODALS
//TABLEAU DES MODALS
let choixModals = document.getElementsByClassName('modalClic');
for (let indexModal = 0; indexModal < choixModals.length; indexModal++) {
    choixModals[indexModal].addEventListener("click", ouvrirModal);
}

// Get the modal
let modal;
let modalID = "";

function ouvrirModal(event){
    event.preventDefault();
    // Récupérer le nom de l'id du clic pour pouvoir le mettre dans le modal et ouvrir le bon modal
    modalID = "modal"+this.id;
    modal = document.getElementById(modalID);
    modal.style.display = "block";
}
