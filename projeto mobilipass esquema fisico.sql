-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Avaliação (
Id_avaliação VARCHAR(10) PRIMARY KEY,
Email VARCHAR(10),
Id_local VARCHAR(10)
)

CREATE TABLE Categora (
Id_categoria VARCHAR(10) PRIMARY KEY
)

CREATE TABLE Local (
Id_local VARCHAR(10) PRIMARY KEY,
Nome VARCHAR(10),
Endereço VARCHAR(10),
Telefone VARCHAR(10),
Id_categoria VARCHAR(10),
FOREIGN KEY(Id_categoria) REFERENCES Categora (Id_categoria)
)

CREATE TABLE Tipo_Acessibilidade (
Id_Acessibilidade VARCHAR(10) PRIMARY KEY,
Descrição VARCHAR(10),
Id_local VARCHAR(10),
FOREIGN KEY(Id_local) REFERENCES Local (Id_local)
)

CREATE TABLE Usuario (
Nome VARCHAR(10),
Atributo1 VARCHAR(10),
Email VARCHAR(10) PRIMARY KEY,
Senha VARCHAR(10),
Id_local VARCHAR(10),
FOREIGN KEY(Id_local) REFERENCES Local (Id_local)
)

ALTER TABLE Avaliação ADD FOREIGN KEY(Email) REFERENCES Usuario (Email)
ALTER TABLE Avaliação ADD FOREIGN KEY(Id_local) REFERENCES Local (Id_local)
