DROP DATABASE IF EXISTS VisionCorp;
CREATE DATABASE IF NOT EXISTS VisionCorp;

USE VisionCorp;

-- Crear la tabla UsuarioAdministrador
CREATE TABLE IF NOT EXISTS UsuarioAdministrador (
    UsuarioID INT AUTO_INCREMENT PRIMARY KEY,
    NombreUsuario VARCHAR(255),
    Password VARCHAR(255)
);

-- Crear la tabla Empleado
CREATE TABLE IF NOT EXISTS Empleado (
    EmpleadoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255),
    Apellido VARCHAR(255),
    Edad INT,
    CorreoElectronico VARCHAR(255),
    Telefono VARCHAR(255),
    Puesto VARCHAR(255),
    Departamento VARCHAR(255),
    FechaIngreso DATE,
    UsuarioID INT,
    FOREIGN KEY (UsuarioID) REFERENCES UsuarioAdministrador(UsuarioID)
);

-- Crear la tabla Documento
CREATE TABLE IF NOT EXISTS Documento (
    DocumentoID INT AUTO_INCREMENT PRIMARY KEY,
    TipoDocumento VARCHAR(255),
    NombreDocumento VARCHAR(255),
    FechaCarga DATE,
    EmpleadoID INT,
    FOREIGN KEY (EmpleadoID) REFERENCES Empleado(EmpleadoID)
);
