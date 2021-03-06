-- DDL

CREATE DATABASE SpMedGroup_TARDE;

USE SpMedGroup_TARDE;

CREATE TABLE Clinica (
		IdClinica INT PRIMARY KEY IDENTITY
		,NomeClinica VARCHAR (255) NOT NULL
		,CNPJ VARCHAR (255) NOT NULL
		,RazaoSocial VARCHAR (255) NOT NULL
		,EnderecoClinica VARCHAR (255) NOT NULL
)
GO


CREATE TABLE Especialidade (
		IdEspecialidade INT PRIMARY KEY IDENTITY
		,NomeEspecialidade VARCHAR (255) NOT NULL
)
GO


CREATE TABLE TipoUsuario (
		IdTipoUsuario INT PRIMARY KEY IDENTITY
		,TituloTipoUsuario VARCHAR (255) NOT NULL
)
GO

CREATE TABLE Situacao (
		IdSituacao INT PRIMARY KEY IDENTITY
		,TituloSituacao VARCHAR (255) NOT NULL
)
GO

CREATE TABLE Usuario (
		IdUsuario INT PRIMARY KEY IDENTITY
		,NomeUsuario VARCHAR (255) NOT NULL
		,EmailUsuario VARCHAR (255) NOT NULL
		,Senha VARCHAR (255) NOT NULL
		,IdTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
)
GO

CREATE TABLE Administrador (
		IdADM INT PRIMARY KEY IDENTITY
		,IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
)
GO

CREATE TABLE Medico (
		IdMedico INT PRIMARY KEY IDENTITY
		,CRM CHAR (8) NOT NULL
		,IdEspecialidade INT FOREIGN KEY REFERENCES Especialidade (IdEspecialidade)
		,IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
)
GO

CREATE TABLE Paciente (
		IdPaciente INT PRIMARY KEY IDENTITY
		,DataNascimento DATE NOT NULL
		,Telefone VARCHAR (255)
		,RG VARCHAR (255) NOT NULL
		,CPF CHAR (11) NOT NULL
		,EnderecoPaciente VARCHAR (255) NOT NULL
		,IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario)
)
GO

CREATE TABLE Consulta (
		IdConsulta INT PRIMARY KEY IDENTITY
		,DataConsulta DATETIME NOT NULL
		,IdSituacao INT FOREIGN KEY REFERENCES Situacao (IdSituacao)
		,IdPaciente INT FOREIGN KEY REFERENCES Paciente (IdPaciente)
		,IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico)
)
GO




SELECT * FROM Especialidade

SELECT * FROM TipoUsuario

SELECT * FROM Situacao

SELECT * FROM Clinica

SELECT * FROM Usuario

SELECT * FROM Administrador

SELECT * FROM Medico

SELECT * FROM Paciente

SELECT * FROM Consulta