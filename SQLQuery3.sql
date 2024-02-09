create database Hospital
go
use Hospital
go


create table Departamentos (
    DepartamentosID int primary key identity(1,1) NOT NULL,
    Nombre varchar(50),
    Domicilio varchar(50)
);

create table Paciente (
    PacienteID int primary key identity(1,1) NOT NULL,
    Nombre varchar(50),
    Genero varchar(50)
);

create table Medico (
    MedicoID int primary key identity(1,1) NOT NULL,
    Nombre varchar(50),
    Especialidad varchar(50)
);

create table PersonalAdm (
    PersonalAdministrativoID int primary key identity(1,1) NOT NULL,
    Nombre varchar(50),
    Puesto varchar(50)
);

INSERT INTO Departamentos(Nombre, Domicilio) VALUES ('ROSA', 'NIVEL 5');
INSERT INTO Departamentos(Nombre, Domicilio) VALUES ('LUIS', 'NIVEL 7');

INSERT INTO Paciente(Nombre, Genero) VALUES ('CARMEN', 'Femenino');
INSERT INTO Paciente(Nombre, Genero) VALUES ('ANTONIO', 'Masculino');

INSERT INTO PersonalAdm(Nombre, Puesto) VALUES ('RODRIGO', 'Vigilante');
INSERT INTO PersonalAdm(Nombre, Puesto) VALUES ('MARIA', 'Ordenanza');

INSERT INTO Medico(Nombre, Especialidad) VALUES ('CARLOS', 'Neurólogo');
INSERT INTO Medico(Nombre, Especialidad) VALUES ('FLOR', 'Medicina General');

SELECT p.Nombre as Nombre_Paciente, p.Genero, d.DepartamentosID, d.Nombre as Nombre_Departamento
FROM Departamentos as d 
INNER JOIN Paciente as p ON d.DepartamentosID = p.PacienteID;

