const PRIX3 = 10;
const PRIX2 = 20;
const PRIX1 = 30;

let score = Math.floor(Math.random()*50);

if(score <= PRIX3){
    document.getElementById('PRIX').innerHTML='Un bon jus de chausette 🧦';
    document.getElementById('score').innerHTML="<img src=\'grain_cafe.png\' width=\'100px\'>";
}
else if (score <= PRIX2) {
    document.getElementById('PRIX').innerHTML='Un classique Americano ☕️';
    document.getElementById('score').innerHTML='20';
    document.getElementById('score').innerHTML="<img src=\'grain_cafe.png\' width=\'100px\'>";
}
else if (score >= PRIX2){
    document.getElementById('PRIX').innerHTML='Un Ristretto Italiano 🇮🇹';
    document.getElementById('score').innerHTML='30';
    document.getElementById('score').innerHTML="<img src=\'grain_cafe.png\' width=\'100px\'>";
}
