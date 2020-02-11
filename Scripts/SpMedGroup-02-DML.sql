-- DML

USE SpMedGroup_TARDE;

INSERT INTO Clinica(NomeClinica, CNPJ, RazaoSocial, EnderecoClinica)
VALUES	('Clinica Possarle', '86.400.902/0001-30', 'SP Medical Group', 'Av. Barão Limeira,532,São Paulo,SP');

INSERT INTO Especialidade(NomeEspecialidade)
VALUES ('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia da Mão'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Pediátrica'),
		('Cirurgia Plástica'),
		('Cirurgia Torácica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');


INSERT INTO TipoUsuario(TituloTipoUsuario)
VALUES	('Administrador'),
		('Medico'),
		('Paciente');
		
INSERT INTO Situacao(TituloSituacao)
VALUES	('Realizado'),
		('Agendado'),
		('Cancelado');

INSERT INTO Usuario(NomeUsuario, EmailUsuario, Senha, IdTipoUsuario)
VALUES ('Mateus', 'mateusbraz@gmail.com', 'mateus123', 1),
		('Ricardo Lemos', 'ricardo.lemos@spmedicalgroup.com.br', 'ricardo123', 2),
		('Roberto Possarle', 'roberto.possarle@spmedicalgroup.com.br','roberto123', 2),
		('Helena Strada', 'helena.souza@spmedicalgroup.com.br', 'helena123', 2),
		('Ligia', 'ligia@gmail.com', 'ligia123', 3),
		('Alexandre', 'alexandre@gmail.com', 'alexandre123', 3),
		('Fernando', 'fernando@gmail.com', 'fernando123', 3),
		('Henrique', 'henrique@gmail.com', 'henrique123', 3),
		('João', 'joao@hotmail.com', 'joão123', 3),
		('Bruno', 'bruno@gmail.com', 'bruno123', 3),
		('Mariana', 'mariana@outlook.com', 'mariana123', 3);

INSERT INTO Medico(CRM, IdEspecialidade, IdUsuario)
VALUES	('54356-SP', 2, 2),
		('53452-SP', 17, 3),
		('65463-SP', 16, 4);


INSERT INTO Administrador(IdUsuario)
VALUES	(1);

INSERT INTO Paciente(DataNascimento, Telefone, RG, CPF, EnderecoPaciente, IdUsuario)
VALUES ('13/10/1983', '11 3456-7654', '43522543-5',	'94839859000', 'Rua Estado de Israel 240, São Paulo - SP, 04022-000', 5),
		('23/07/2001', '11 98765-6543',	'32654345-7', '73556944057', 'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200', 6),
		('10/10/1978', '11 97208-4453',	'54636525-3', '16839338002', 'Av. Ibirapuera - Indianópolis, 2927, São Paulo - SP, 04029-200', 7),
		('13/10/1985', '11 3456-6543', '54366362-5', '14332654765',	'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030', 8),
		('27/08/1975', '11 7656-6377', 't32544444-1', '91305348010', 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380', 9),
		('21/03/1972', '11 95436-8769', '54566266-7', '79799299004', 'Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001', 10),
		('05/03/2018', '', '54566266-8', '13771913039', 'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140', 11);

INSERT INTO Consulta(DataConsulta, IdSituacao, IdPaciente, IdMedico)
VALUES ('20/01/2020 15:00', 1, 22, 3),
		('06/01/2020 10:00', 3, 17, 2),
		('07/02/2020 11:00', 1, 18, 2),
		('06/02/2018 10:00', 1, 17, 2),
		('07/02/2019 11:00', 3, 19, 1),
		('08/03/2020 15:00', 2, 22, 3),
		('09/03/2020 11:00', 2,	19, 1);



SELECT * FROM Especialidade

SELECT * FROM TipoUsuario

SELECT * FROM Situacao

SELECT * FROM Clinica

SELECT * FROM Usuario

SELECT * FROM Administrador

SELECT * FROM Medico

SELECT * FROM Paciente

SELECT * FROM Consulta

TRUNCATE TABLE Paciente

TRUNCATE TABLE Administrador

TRUNCATE TABLE Medico


DROP TABLE Usuario

