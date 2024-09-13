CREATE DATABASE empresa;

CREATE TABLE departamento(
	dep_cod integer PRIMARY KEY,
	dep_nome varchar(50)
);

CREATE TABLE funcionarios(
	fun_cod integer PRIMARY KEY,
    dep_cod integer,
    fun_nome varchar(100),
    fun_nascimento date,
    fun_salario numeric(10,2),
    FOREIGN KEY(dep_cod) REFERENCES departamento(dep_cod)
);

CREATE TABLE dependente(
	depen_cod integer PRIMARY KEY,
    fun_cod integer,
    depen_nome varchar(100),
    FOREIGN KEY(fun_cod) REFERENCES funcionarios(fun_cod)
);
    
    

