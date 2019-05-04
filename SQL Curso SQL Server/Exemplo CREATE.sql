SELECT * FROM funcionario;

ALTER TABLE funcionario ADD PRIMARY KEY (matricula);

CREATE TABLE salario (
	matricula INT PRIMARY KEY NOT NULL,
	salario DECIMAL(10,2),
	FOREIGN KEY (matricula) REFERENCES funcionario (matricula)
);

CREATE TABLE audit_salario (
	transacao int identity(1,1),
	matricula INT NOT NULL,
	data_trans DATETIME NOT NULL,
	sal_antigo DECIMAL(10,2),
	sal_novo DECIMAL(10,2),
	Usuario VARCHAR(20) NOT NULL
);

CREATE INDEX ix_func1 ON funcionario(data_nasc);

CREATE INDEX ix_func2 ON funcionario(cidade,pais);