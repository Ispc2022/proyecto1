const form = document.getElementById('form');
const email = document.getElementById('email');
const clave = document.getElementById('clave');
const userAdmin = "admin@parkingsetting.com"
const claveAdmin = "123admin123"

function home(){

form.addEventListener('submit', e => {
	e.preventDefault();
	
	checkInputs();
});

function checkInputs() {
	// trim to remove the whitespaces
	const emailValue = email.value.trim();
	const passwordValue = clave.value.trim();
	
	
	if(emailValue === '') {
		setErrorFor(email, 'No puede dejar el email en blanco');
	} else if (!isEmail(emailValue)) {
		setErrorFor(email, 'No ingreso un email válido');
	} else {
		setSuccessFor(email);
	}
	
	if(passwordValue === '') {
		setErrorFor(clave, 'Password no debe ingresar en blanco.');
	} else {
		setSuccessFor(clave);
	}
	
}

function setErrorFor(input, message) {
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	formControl.className = 'form-control error';
	small.innerText = message;
}

function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'form-control success';
}

function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}

// establecer usuario y clave & redirigir

document.getElementById("boton-submit").addEventListener("click",login);
}
function login(e){ 
    e.preventDefault();

if (email.value == userAdmin && clave.value == claveAdmin) { 
    window.location="home.html";
    }
	else
	{
		alert("Los datos proporcionados SON INCORRECTOS")
	}


};

