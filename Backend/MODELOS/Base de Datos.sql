CREATE DATABASE DBParkingSetting
USE DBParkingSetting

--TABLA PARA REGISTRAR USUARIOS NUEVOS

CREATE TABLE registro_usuario(
    idnombre_usuario VARCHAR (15) UNIQUE NOT NULL,
    apellido_nombre VARCHAR (45) NOT NULL,
    email VARCHAR (45) UNIQUE NOT NULL,
    tipo_usuario VARCHAR (45) NOT NULL,
    contrasena VARCHAR (45) NOT NULL,
    CONSTRAINT pk_usu PRIMARY KEY (idnombre_usuario)
);

-- TABLA PARA REGISTRAR RETIROS DE CAJA 
CREATE TABLE retiros (
    id_retiros INT AUTO_INCREMENT NOT NULL,
    importe_retiros FLOAT NOT NULL,
    detalle_retiros VARCHAR (45) NOT NULL,
    nombre_usuario1 VARCHAR (15) NOT NULL,
    CONSTRAINT pk_ret PRIMARY KEY (id_retiros),
    CONSTRAINT fk_usu1 FOREIGN KEY (nombre_usuario1) REFERENCES registro_usuario (idnombre_usuario)
);

-- TABLA PARA REGISTRAR GASTOS
CREATE TABLE gastos (
    id_gastos INT AUTO_INCREMENT NOT NULL,
    importe_gastos FLOAT NOT NULL,
    detalle_gastos VARCHAR (45) NOT NULL,
    nombre_usuario2 VARCHAR (15) NOT NULL,
    CONSTRAINT pk_ret PRIMARY KEY (id_gastos),
    CONSTRAINT fk_usu2 FOREIGN KEY (nombre_usuario2) REFERENCES registro_usuario (idnombre_usuario)
);

-- TABLA PARA REGISTRAR LAS PLAZAS

CREATE TABLE plazas (
    plaza_numero INT UNIQUE NOT NULL,
    referencia INT  AUTO_INCREMENT NOT NULL,
    dominio VARCHAR (10) NOT NULL,
    tipo_estadia VARCHAR (45) NOT NULL,
    tipo_vehiculo VARCHAR (45) NOT NULL,
    hs_ingreso DATETIME (20) NOT NULL, 
    hs_egreso DATETIME (20) NOT NULL, 
    duracion TIME NOT NULL,
    total_estadia FLOAT NOT NULL,
    tar_auto1 FLOAT,
    tar_moto1 FLOAT,
    tar_pickup1 FLOAT,
    idnombre_usuariop VARCHAR (15),
    CONSTRAINT pk_ref PRIMARY KEY (referencia),
    CONSTRAINT fk_ta1 FOREIGN KEY (tar_auto1) REFERENCES tarifa_auto (idtar_auto),
    CONSTRAINT fk_tm1 FOREIGN KEY (tar_moto1) REFERENCES tarifa_moto (idtar_moto),
    CONSTRAINT fk_tp1 FOREIGN KEY (tar_pickup1) REFERENCES tarifa_pickup (idtar_pickup),
    CONSTRAINT fk_usu3 FOREIGN KEY (idnombre_usuariop) REFERENCES registro_usuario (idnombre_usuario)
);

-- TABLA DE REGISTRO DE TARIFA DE MOTO
CREATE TABLE tarifa_moto (
    hora FLOAT NOT NULL,
    12_horas_m FLOAT NOT NULL,
    24_horas_m FLOAT NOT NULL,
    abonados_m FLOAT NOT NULL,
    idtar_moto INT AUTO_INCREMENT NOT NULL,
    CONSTRAINT pk_tf PRIMARY KEY (tar_moto)
);

-- TABLA DE REGISTRO DE TARIFA DE PICKUP
CREATE TABLE tarifa_pickup (
    hora FLOAT NOT NULL,
    12_horas_p FLOAT NOT NULL,
    24_horas_p FLOAT NOT NULL,
    abonados_p FLOAT NOT NULL,
    idtar_pickup INT AUTO_INCREMENT NOT NULL,
    CONSTRAINT pk_tp PRIMARY KEY (tar_pickup)
);

-- TABLA DE REGISTRO DE TARIFA DE AUTO
CREATE TABLE tarifa_auto (
    hora FLOAT NOT NULL,
    12_horas_a FLOAT NOT NULL,
    24_horas_a FLOAT NOT NULL,
    abonados_a FLOAT NOT NULL,
    idtar_auto INT AUTO_INCREMENT NOT NULL,
    CONSTRAINT pk_ta PRIMARY KEY (tar_auto)
);


-- TABLA PARA EL CONTROL DE LA CAJA
CREATE TABLE caja (
    num_ticket INT  AUTO_INCREMENT NOT NULL, 
    referencia_c INT NOT NULL,
    patente_caja VARCHAR (45) NOT  NULL,
    forma_pago VARCHAR (25) NOT NULL,
    detalle VARCHAR (45),
    total_abonar FLOAT NOT NULL,
    CONSTRAINT pk_nt PRIMARY KEY (num_ticket),
    CONSTRAINT fk_ref FOREIGN KEY (referencia_c) REFERENCES plazas (referencia)
);