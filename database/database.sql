CREATE DATABASE ng_registro_db;
USE ng_registro_db;

CREATE TABLE TipoProyecto{
    Id_TP INT(30) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NomTipo_Proyecto VARCHAR(50) NOT NULL
}
DESCRIBE tipo;

CREATE TABLE categoriaParticipacion{
Id_CP INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
NomCategoria_Participa VARCHAR(50) NOT NULL
}
DESCRIBE categoria;

CREATE TABLE RegistroParticipacion{
    Id_RP INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre_Representante VARCHAR(50) NOT NULL,
    /*Correo_Representante VARCHAR(30),*/
    NoControl_Representante INT(10) NOT NULL,
    Nombre_Proyecto VARCHAR(50) NOT NULL,
    Descripcion_Proyecto VARCHAR(500) NOT NULL,
    Nombre_Asesor VARCHAR(50) NOT NULL,
    Resumen_Ejecutivo VARCHAR (500) NOT NULL,
    Referencia_video VARCHAR(100) NOT NULL,
    Referencia_Evidencias VARCHAR(100) NOT NULL,
    FOREIGN KEY Id_CP REFERENCES TipoProyecto (Id_CP)




}
DESCRIBE participacion;

CREATE TABLE IntegrantesEquipo{
   FOREIGN KEY Id_RP REFERENCES RegistroParticipacion (Id_RP),
    Nombre_Integrante VARCHAR(50) NOT NULL,
    /*Correo_Integrante VARCHAR(30),*/
    NoControl_Integrante INT(10) NOT NULL,
    /*Id_Grupo VARCHAR VARCHAR(8),FK*/
    /*Id_Carrera VARCHAR VARCHAR(8),FK*/
    Campus_Integrante CHAR(1),
    Programa_Educativo CHAR(1)
}
DESCRIBE integrantes;


CREATE TABLE Carrera{
    Id_Carrera INT(30) NOT NULL PRIMARY KEY,
    Nombre_Carrera VARCHAR(100)
}
DESCRIBE carrera;


CREATE TABLE GRUPO{
    Id_Grupo INT(30) NOT NULL PRIMARY KEY,
    Nombre_Grupo VARCHAR(8),
    FOREIGN KEY Id_Carrera REFERENCES Carrera (Id_Carrera)
}
DESCRIBE grupo;

