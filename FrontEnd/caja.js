// Variables
const inputRef = document.querySelector('#ref-caja');
const inputSelect = document.querySelector('#select-caja');
const mensajeErrorMarcaCorto = "Ingrese el numero de referencia proporcionado por el sector de ventas";
const mensajeErrorSelect = "Ingrese el metodo de pago que corresponda a este cliente";
const mensajeError = "Complete el dato solicitado antes de confirmar";
const inputImporteGastos = document.querySelector('#importe-gastos');
const inputDetalleGastos = document.querySelector('#detalle-gastos');
const inputImporteRetiros = document.querySelector('#importe-retiros');
const inputDetalleRetiros = document.querySelector('#detalle-retiros');
const inputTotalEfectivo = document.querySelector('#importe-retiros');

// Eventos
inputRef.addEventListener('input', () => {
    // Quita el mensaje según escribes
    inputRef.setCustomValidity('');
    // Comprueba si debe validarlo
    inputRef.checkValidity();
});



inputRef.addEventListener('invalid', () => {
    inputRef.setCustomValidity(mensajeErrorMarcaCorto);
});

function validar() {
if (inputSelect.value==0)
{
    inputSelect.setCustomValidity(mensajeError);
  
}
};
// Eventos
inputImporteGastos.addEventListener('input', () => {
    // Quita el mensaje según escribes
    inputImporteGastos.setCustomValidity('');
    // Comprueba si debe validarlo
    inputImporteGastos.checkValidity();
});



inputImporteGastos.addEventListener('invalid', () => {
    inputImporteGastos.setCustomValidity(mensajeError);
});
// Eventos
inputDetalleGastos .addEventListener('input', () => {
    // Quita el mensaje según escribes
    inputDetalleGastos .setCustomValidity('');
    // Comprueba si debe validarlo
    inputDetalleGastos .checkValidity();
});



inputDetalleGastos .addEventListener('invalid', () => {
    inputDetalleGastos .setCustomValidity(mensajeError);
});
////////////////////////

// Eventos
inputImporteRetiros.addEventListener('input', () => {
    // Quita el mensaje según escribes
    inputImporteRetiros.setCustomValidity('');
    // Comprueba si debe validarlo
    inputImporteRetiros.checkValidity();
});



inputImporteRetiros.addEventListener('invalid', () => {
    inputImporteRetiros.setCustomValidity(mensajeError);
});
// Eventos
inputDetalleRetiros.addEventListener('input', () => {
    // Quita el mensaje según escribes
    inputDetalleRetiros.setCustomValidity('');
    // Comprueba si debe validarlo
    inputDetalleRetiros.checkValidity();
});



inputDetalleRetiros.addEventListener('invalid', () => {
    inputDetalleRetiros.setCustomValidity(mensajeErrorMarcaCorto);
});
// Eventos
inputTotalEfectivo.addEventListener('input', () => {
    // Quita el mensaje según escribes
    inputTotalEfectivo.setCustomValidity('');
    // Comprueba si debe validarlo
    inputTotalEfectivo.checkValidity();
});

inputTotalEfectivo.addEventListener('invalid', () => {
    inputTotalEfectivo.setCustomValidity();
});