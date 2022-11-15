import mysql.connector

class Conectar():

    def __init__(self) -> None:
        try:
            self.conexion = mysql.connector.connect(
                host = 'localhost',
                port = 3306,
                user = 'root',
                password = 'ContraseñaBBDD',
                db = 'BDParkingSetting'

            )
        except mysql.connector.Error as descripcionError:
            print("No es posible conectarse, volvé a intentarlo",descripcionError)

#PRIMERA OPERACIÓN DEL CRUD: CREATE O INSERT.
    def InsertarValor(self,  idnombre_usuario, apellido_nombre, email, tipo_usuario, contrasena):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL= "INSERT INTO registro_usuario VALUES (Pablo45, Pablo Lopez, pablolopez@gmail.com, administrador, PabloL45)"
                data= (idnombre_usuario, apellido_nombre, email, tipo_usuario, contrasena)

                cursor.execute(sentenciaSQL,data)
                self.conexion.commit()
                self.conexion.close()

            except:
                print("No se pudo concectar a la base de datos")
   
#SEGUNDA OPERACION DEL CRUD: READ O LEER
    def BuscarObjeto(self, email, tipo_usuario, nombre_y_apellido):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL= "SELECT  email, tipo_usuario, nombre_y_apellido FROM registro_usuario WHERE idnombre_usuario= 'Pablo45'"
                cursor.execute(sentenciaSQL)
                resultadoREAD = cursor.fetchall()
                self.conexion.close()
                return resultadoREAD

            except:
                print("No se pudo concectar a la base de datos")

#TERCERA OPERACION DEL CRUD: UPDATE
    def InsertarValor(self, email):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL= "UPDATE registro_usuario  SET email ='pablolopez45@gmail.com' WHERE idnombre_usuario = Pablo45"
                data= (email)

                cursor.execute(sentenciaSQL,data)
                self.conexion.commit()
                self.conexion.close()

            except:
                print("No se pudo concectar a la base de datos")

#CUARTA OPERACION DEL CRUD: DELETE O ELIMINAR
    def EliminarObjeto(self,registro_usuario):
        if self.conexion.is_connected():
            try:
                cursor = self.conexion.cursor()
                sentenciaSQL = "DELETE from registro_usuario where idnombre_usuario = Pablo45"
                cursor.execute(sentenciaSQL)

                self.conexion.commit()                
                self.conexion.close()
            except:
                print("No se pudo concectar a la base de datos")