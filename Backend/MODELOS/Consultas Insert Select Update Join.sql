USE BDParkingSetting; 

-- CARGAMOS UN USUARIO NUEVO A LA BD
INSERT INTO registro_usuario 
VALUES (Pablo45, Pablo Lopez, pablolopez@gmail.com, administrador, PabloL45);


-- VISUALIZAMOS NOMBRE DE USUARIO, MAIL, TIPO DE USUARIO Y NOMBRE Y APELLIDO DE UN EMPLEADO EN ESPECIFICO
SELECT  email, tipo_usuario, nombre_y_apellido
FROM registro_usuario 
WHERE idnombre_usuario= 'Pablo45';

-- SE MODIFICA MAIL DE UN USUARIO EN ESPECIFICO

UPDATE registro_usuario 
SET email ='pablolopez45@gmail.com' 
WHERE idnombre_usuario = Pablo45;

-- SE REALIZA UNA BUSQUEDA ENTRE TABLAS PARA VISUALIZAR LOS RETIROS (MONTO Y DETALLE) QUE HIZO UN USUARIO DETERMINADO

SELECT registro_usuario.apellido_nombre,  retiros.detalle_retiros, retiros.importe_retiros
FROM registro_usuario
INNER JOIN retiros on registro_usuario.idnombre_usuario=retiros.idnombre_usuario1;

