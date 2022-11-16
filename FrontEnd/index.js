const form = document.getElementById('form');
const email = document.getElementById('email');
const clave = document.getElementById('clave');
const userAdmin = "admin@parkingsetting.com"
const claveAdmin = "123admin123"


form.addEventListener('submit', e => {
	e.preventDefault();
	if (check()) {
		login()
	}

});

///////////////////////////////
function check() {
	
	const emailValue = email.value.trim();
	const emailVerif = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;

	if(emailValue === '') {
		setErrorFor(email, 'Campo Obligatorio');
	} 
	else if (emailVerif.test(email.value)) {
		setErrorFor(email, ' ')
	} 
	else if (!emailVerif.test(email.value)) {
		setErrorFor(email, 'Debe ingresar un email válido');
	} 
	else {
		return true
		}

	const passwordValue = clave.value.trim();

	if(passwordValue === '') {
		setErrorFor(clave, 'Campo Obligatorio');
	
	}
	else  {
		setErrorFor(clave, '')
		return true
	}
}

	function login() {

	if (email.value !== userAdmin) {
		alert("usuario y/o contraseña incorrecto/s")
		}
		
	else if (clave.value !== claveAdmin) {
		alert("usuario y/o contraseña incorrecto/s")	
	}	
	else {
		window.location.href = "home.html"
		}

}


///////////////////////////////
function setErrorFor(input, message) {
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	formControl.className = 'form-control error';
	small.innerText = message;
}


