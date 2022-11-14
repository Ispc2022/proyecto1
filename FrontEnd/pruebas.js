document.addEventListener('DOMContentLoaded', function() {
 
    // Seleccionar los elementos de la interfaz
    const inputNombreAlta = document.querySelector('#nombre-alta');
    const inputEmailAlta = document.querySelector('#email-alta');
    const inputUserAlta = document.querySelector('#user-alta');
    const inputPassAlta = document.querySelector('#pass-alta');
    const inputTipoAlta = document.querySelector('#tipo-alta');
    const inputupdateUser = document.querySelector('#user-update');
    const inputupdateNombre = document.querySelector('#nombre-update');
    const inputupdateEmail = document.querySelector('#email-update');
    const inputupdateUser2 = document.querySelector('#user2-update');
    const inputupdatePass = document.querySelector('#pass-update');
    const inputupdateTipo = document.querySelector('#tipo-update');

// Muestra el mensaje de validación
inputEmailAlta.addEventListener('invalid', () => {
  inputEmailAlta.setCustomValidity(mensajeErrorMail);
});
inputupdateEmail.addEventListener('invalid', () => {
  inputupdateEmail.setCustomValidity(mensajeErrorMail);
});
    });

