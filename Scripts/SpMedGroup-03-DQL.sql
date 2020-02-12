-- DQL

USE SpMedGroup_TARDE;

SELECT Paciente.DataNascimento, Paciente.Telefone, Paciente.RG, Paciente.CPF, Paciente.EnderecoPaciente, Consulta.DataConsulta
FROM Paciente
INNER JOIN Consulta ON Consulta.IdPaciente = Paciente.IdPaciente;


SELECT Paciente.DataNascimento, Paciente.Telefone, Paciente.RG, Paciente.CPF, Paciente.EnderecoPaciente, Consulta.DataConsulta, Medico.CRM
FROM Consulta
INNER JOIN Paciente ON Consulta.IdPaciente = Paciente.IdPaciente
INNER JOIN Medico ON Consulta.IdMedico = Medico.IdMedico;


SELECT Medico.CRM, Especialidade.NomeEspecialidade
FROM Especialidade
INNER JOIN Medico ON Medico.IdEspecialidade = Especialidade.IdEspecialidade;


SELECT Medico.CRM, Clinica.NomeClinica, Clinica.CNPJ, Clinica.RazaoSocial, Clinica.EnderecoClinica
FROM Medico
INNER JOIN Clinica ON Medico.IdClinica = Clinica.IdClinica;

SELECT Usuario.NomeUsuario, DATEDIFF(year, Paciente.DataNascimento, GETDATE ()) AS Idade, Usuario.EmailUsuario, Paciente.DataNascimento
FROM Paciente
INNER JOIN Usuario ON Paciente.IdUsuario = Usuario.IdUsuario;

SELECT CONVERT(VARCHAR(10), DataNascimento, 101) AS [MM/DD/YYYY] FROM Paciente;

CREATE PROCEDURE RetornaIdade
@ID INT
AS
SELECT YEAR(GETDATE())-YEAR(DataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNascimento)*32+DAY(DataNascimento),1,0) AS Idade
FROM Paciente
WHERE IdPaciente = @ID

EXECUTE RetornaIdade 18;

SELECT COUNT (IdUsuario) AS QtdUsuarios FROM Usuario

SELECT (DataNascimento) FROM Paciente




SELECT * FROM Especialidade

SELECT * FROM TipoUsuario

SELECT * FROM Situacao

SELECT * FROM Clinica

SELECT * FROM Usuario

SELECT * FROM Administrador

SELECT * FROM Medico

SELECT * FROM Paciente

SELECT * FROM Consulta