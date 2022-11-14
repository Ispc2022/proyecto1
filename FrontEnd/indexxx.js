
// validar mail
const miInput = document.querySelector('#email');
const mensajeErrorMail = 'E-mail inválido! Verifique y vuelva a ingresarlo...'

// Quita la validación mientras escribes
miInput.addEventListener('input', () => {
    // Quita el mensaje según escribes
    miInput.setCustomValidity('');
    // Comprueba si debe validarlo
    miInput.checkValidity();
});

// Muestra el mensaje de validación
miInput.addEventListener('invalid', () => {
    miInput.setCustomValidity(mensajeErrorMail);
});

//validar password

const inputPass = document.querySelector('#clave');
const mensajeErrorMarcaCorto = "La contraseña posee 4 o mas caracteres alfanumericos.";

// Quita la validación mientras escribes
inputPass.addEventListener('input', () => {
    // Quita el mensaje según escribes
    inputPass.setCustomValidity('');
    // Comprueba si debe validarlo
    inputPass.checkValidity();
});

// Muestra el mensaje de validación
inputPass.addEventListener('invalid', () => {
    inputPass.setCustomValidity(mensajeErrorMarcaCorto);
});


// establecer usuario y clave & redirigir

const userAdmin = "admin@parkingsetting.com"
const claveAdmin = "123admin123"


function home(){
document.getElementById("boton-submit").addEventListener("click",login);
}
function login(e){ 
    e.preventDefault();
if (miInput.value == userAdmin && inputPass.value == claveAdmin) { 
    window.location="home.html";
    }

};

function pass(){ 
if (inputPass.value < 4) { 
    inputPass.setCustomValidity(mensajeErrorMarcaCorto);
    }
};
