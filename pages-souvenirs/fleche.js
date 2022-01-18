// MOUVEMENT FLECHE Haut/Bas VERS SPIN
const placeFleche = document.getElementById("fleche");
let topPosition = -45;
let direction = -1;

function hautBas(){
    if(topPosition == -45) {direction = 1}
    else if (topPosition == -25) {direction =-1}
    topPosition += 1* direction;
    placeFleche.style.top = `${topPosition}px`
    requestAnimationFrame(hautBas);
}
// Pour faire appel une première fois à la fonction qui va s'autorappeler ensuite
requestAnimationFrame(hautBas);