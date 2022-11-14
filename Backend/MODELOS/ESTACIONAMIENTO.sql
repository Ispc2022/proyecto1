CREATE TABLE IF NOT EXISTS `mydb`.`automovil` (
  `id_automovil` INT NOT NULL,
  `id_cliente` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `marca` VARCHAR(45) NULL,
  `Descriipcion` VARCHAR(100) NULL,
  PRIMARY KEY (`id_automovil`),
  INDEX `id_cliente_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `id_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `mydb`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`Cargo` (
  `id_Cargo` INT NOT NULL,
  `monto` VARCHAR(45) NULL,
  PRIMARY KEY (`id_Cargo`),
  CONSTRAINT `id_cargo`
    FOREIGN KEY (`id_Cargo`)
    REFERENCES `mydb`.`Empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`cliente` (
  `id_cliente` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `id_Estacionamiento` INT NULL,
  `apellido` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cliente`),
  INDEX `id_estacionamiento_idx` (`id_Estacionamiento` ASC) VISIBLE,
  CONSTRAINT `id_estacionamiento`
    FOREIGN KEY (`id_Estacionamiento`)
    REFERENCES `mydb`.`Estacionamiento` (`id_Estacionamiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`cliente` (
  `id_cliente` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `id_Estacionamiento` INT NULL,
  `apellido` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cliente`),
  INDEX `id_estacionamiento_idx` (`id_Estacionamiento` ASC) VISIBLE,
  CONSTRAINT `id_estacionamiento`
    FOREIGN KEY (`id_Estacionamiento`)
    REFERENCES `mydb`.`Estacionamiento` (`id_Estacionamiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`Empleado` (
  `idEmpleado` INT NOT NULL DEFAULT 10,
  `id_cargo` INT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `turno` VARCHAR(45) NULL,
  PRIMARY KEY (`idEmpleado`))
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`Estacionamiento` (
  `id_Estacionamiento` INT NOT NULL,
  `nivel` INT NULL,
  `zona` VARCHAR(3) NULL,
  `Estacionamiento_id_Estacionamiento` INT NOT NULL,
  PRIMARY KEY (`id_Estacionamiento`, `Estacionamiento_id_Estacionamiento`),
  INDEX `fk_Estacionamiento_Estacionamiento1_idx` (`Estacionamiento_id_Estacionamiento` ASC) VISIBLE,
  CONSTRAINT `fk_Estacionamiento_Estacionamiento1`
    FOREIGN KEY (`Estacionamiento_id_Estacionamiento`)
    REFERENCES `mydb`.`Estacionamiento` (`id_Estacionamiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`Registro` (
  `id_Registro` INT NOT NULL,
  `id_automovil` INT NULL,
  `id_Estacionemiento` INT NULL,
  `id_empleado` INT NULL,
  `id_cliente` INT NULL,
  PRIMARY KEY (`id_Registro`),
  INDEX `id_empleado_idx` (`id_empleado` ASC) VISIBLE,
  INDEX `id_cliente_idx` (`id_cliente` ASC) VISIBLE,
  INDEX `id_estacionamiento_idx` (`id_Estacionemiento` ASC) VISIBLE,
  INDEX `id_automovil_idx` (`id_automovil` ASC) VISIBLE,
  CONSTRAINT `id_empleado`
    FOREIGN KEY (`id_empleado`)
    REFERENCES `mydb`.`Empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `mydb`.`cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_automovil`
    FOREIGN KEY (`id_automovil`)
    REFERENCES `mydb`.`automovil` (`id_automovil`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_estacionamiento`
    FOREIGN KEY (`id_Estacionemiento`)
    REFERENCES `mydb`.`Estacionamiento` (`id_Estacionamiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;