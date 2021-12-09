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
