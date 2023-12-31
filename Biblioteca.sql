CREATE DATABASE BIBLIOTECA;

USE BIBLIOTECA;

CREATE TABLE USUARIOS(
	NUMERO INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(180),
    DATA DATE,
	PRIMARY KEY(NUMERO)
)ENGINE=INNODB;

CREATE TABLE MIDIA (
	CODIGO INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(180) NOT NULL,
	PRIMARY KEY(CODIGO)
)ENGINE = INNODB;

CREATE TABLE LINGUA(
	CODIGO INT UNSIGNED NOT NULL AUTO_INCREMENT,
	NOME VARCHAR(180),
    PRIMARY KEY(CODIGO)
)ENGINE = INNODB;

CREATE TABLE CLASSIFICACAO(
	CODIGO INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(80),
	PRIMARY KEY(CODIGO)
)ENGINE = INNODB;

CREATE TABLE AUTOR(
	CODIGO INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(180) NOT NULL,
    PRIMARY KEY(CODIGO)
)ENGINE = INNODB;

CREATE TABLE EDITORA(
	CNPJ INT UNSIGNED NOT NULL,
	NOME VARCHAR(80),
    PRIMARY KEY(CNPJ)
)ENGINE = INNODB;

CREATE TABLE PERFIL(
	CODIGO INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(180) NOT NULL,
    USUARIOS_NUMERO INT UNSIGNED NOT NULL,
    FOREIGN KEY(USUARIOS_NUMERO) REFERENCES USUARIOS(NUMERO),
    PRIMARY KEY(CODIGO)
)ENGINE = INNODB;

CREATE TABLE CURSO(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(80) NOT NULL,
    DT_INICIO DATE NOT NULL,
    DT_FIM DATE NOT NULL,
    USUARIOS_NUMERO INT UNSIGNED NOT NULL,
    FOREIGN KEY(USUARIOS_NUMERO) REFERENCES USUARIOS(NUMERO),
    PRIMARY KEY(ID)
)ENGINE = INNODB;

CREATE TABLE EMPRESTIMO(
	NUMERO INT UNSIGNED NOT NULL AUTO_INCREMENT,
    VALOR DOUBLE(9,2) NOT NULL,
    DATA DATE,
    DEVOLUCAO DATE,
    USUARIOS_NUMERO INT UNSIGNED NOT NULL,
    FOREIGN KEY(USUARIOS_NUMERO) REFERENCES USUARIOS(NUMERO),
    PRIMARY KEY(NUMERO)
)ENGINE = INNODB;

CREATE TABLE OBRAS(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(80) NOT NULL,
    PAGINAS INT UNSIGNED NOT NULL,
    MIDIA_CODIGO INT UNSIGNED NOT NULL,
    EDITORA_CNPJ INT UNSIGNED NOT NULL,
    LINGUA_CODIGO INT UNSIGNED NOT NULL,
    CLASSIFICACAO_CODIGO INT UNSIGNED NOT NULL,
    AUTOR_CODIGO INT UNSIGNED NOT NULL,
    FOREIGN KEY(MIDIA_CODIGO) REFERENCES MIDIA(CODIGO),
    FOREIGN KEY(EDITORA_CNPJ) REFERENCES EDITORA(CNPJ),
    FOREIGN KEY(LINGUA_CODIGO) REFERENCES LINGUA(CODIGO),
    FOREIGN KEY(CLASSIFICACAO_CODIGO) REFERENCES CLASSIFICACAO(CODIGO),
    FOREIGN KEY(AUTOR_CODIGO) REFERENCES AUTOR(CODIGO),
    PRIMARY KEY(ID)
)ENGINE = INNODB;

CREATE TABLE PARTICIPAR(
	EMPRESTIMOS_NUMERO INT UNSIGNED NOT NULL,
    OBRAS_ID INT UNSIGNED NOT NULL,
    FOREIGN KEY(EMPRESTIMOS_NUMERO) REFERENCES EMPRESTIMO(NUMERO),
    FOREIGN KEY(OBRAS_ID) REFERENCES OBRAS(ID),
    PRIMARY KEY(EMPRESTIMOS_NUMERO, OBRAS_ID)
)ENGINE = INNODB;

-- DROP TABLE OBRAS; -> debugging
-- DROP DATABASE BIBLIOTECA; -> debugging
-- DROP TABLE PARTICIPAR; -> debugging