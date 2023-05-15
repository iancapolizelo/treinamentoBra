#CREATE DATABASE bradesco;

#USE bradesco;

/*CREATE TABLE clientes (

	codCliente INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL

);*/

#SELECT * FROM clientes;

/*CREATE TABLE vendedores(

	codVendedor INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL

);*/

/*CREATE TABLE vendas(

	codVendas INT PRIMARY KEY,
	dataVenda DATE NOT NULL,
	codCliente INT,
	codVendedor INT

);*/

#ALTER TABLE vendas ADD CONSTRAINT fk_vendas_codCliente FOREIGN KEY (codCliente) REFERENCES clientes (codCliente);

#ALTER TABLE vendas ADD CONSTRAINT fk_vendas_codVendedor FOREIGN KEY (codVendedor) REFERENCES vendedores (codVendedor);

#INSERT INTO clientes VALUES (1, "Amauri");

#SELECT * FROM clientes;

#INSERT INTO clientes VALUES (2, "Ianca");

#INSERT INTO vendedores VALUES (1, "Gabi");

#INSERT INTO vendas VALUES (10, "2023-04-27", 2, 1);

#SELECT * FROM vendas;

########################################################################

#Exercícios 1:

/*INSERT INTO vendas VALUES 
(1, "2023-04-01", 1, 1),
(2, "2023-04-02", 2, 1),
(3, "2023-04-03", 2, 1),
(4, "2023-04-04", 2, 1),
(5, "2023-04-05", 1, 1),
(6, "2023-04-10", 1, 1),
(7, "2023-04-12", 1, 1),
(8, "2023-04-20", 2, 1),
(9, "2023-04-23", 1, 1);
*/

#SELECT * FROM vendas;

/*INSERT INTO clientes VALUES
(3, "Ana"),
(4, "João"),
(5, "Maria"),
(6, "Camila"),
(7, "Daniel"),
(8, "Paulo"),
(9, "Alter"),
(10, "Larissa"),
(11, "Amanda");
*/

#SELECT * FROM clientes;

/*INSERT INTO vendedores VALUES
(3, "Jardel"),
(4, "Rodrigo"),
(5, "Patricia"),
(6, "Karla"),
(7, "Rosana");*/

#SELECT * FROM vendedores;

#INSERT INTO vendedores VALUES (2, 'Luana');

#SELECT * FROM vendedores;

/*INSERT INTO vendas VALUES
(11, "2023-04-27", 6, 4);
*/

#SELECT * FROM vendas;

#Fim exercícios 1

########################################################################

#ALTER TABLE vendas CHANGE codVendas cod_vendas INT;
#ALTER TABLE vendas ADD nome_venda VARCHAR(255);
#ALTER TABLE vendas MODIFY COLUMN nome_venda DATE;
#ALTER TABLE vendas DROP COLUMN nome_venda;

########################################################################

#Exercícios 2:

#ALTER TABLE vendas ADD produto VARCHAR(255);
#ALTER TABLE vendas MODIFY COLUMN dataVenda VARCHAR(100);
#ALTER TABLE vendas CHANGE dataVenda data_venda VARCHAR(100);
#ALTER TABLE vendas DROP COLUMN produto;

#Fim exercícios 2

########################################################################

#UPDATE vendas SET codVendedor = 4 WHERE cod_vendas = 3;

#SELECT * FROM vendas;

########################################################################

#Exercício 3:

#SELECT * FROM vendedores;

#UPDATE vendedores SET nome = "Gabi Monteiro" WHERE codVendedor = 1;
#UPDATE vendedores SET nome = "Luana Silva" WHERE codVendedor = 2;
#UPDATE vendedores SET nome = "Jardel Leal" WHERE codVendedor = 3;
#UPDATE vendedores SET nome = "Rodrigo Paiva" WHERE codVendedor = 4;
#UPDATE vendedores SET nome = "Patricia Simao" WHERE codVendedor = 5;


#UPDATE clientes SET nome = "Amauri Camargo" WHERE codCliente = 1;
#UPDATE clientes SET nome = "Ianca Polizelo" WHERE codCliente = 2;
#UPDATE clientes SET nome = "Ana Carolina" WHERE codCliente = 3;
#UPDATE clientes SET nome = "João Pinheiro" WHERE codCliente = 4;
#UPDATE clientes SET nome = "Maria Antonieta" WHERE codCliente = 5;

#SELECT * FROM clientes;

########################################################################


########################################################################
#Exercício 4:

#INNER JOIN VENDASxCLIENTES:
/*
SELECT
	A.cod_vendas,
	A.codVendedor,
	A.codCliente,
	B.nome AS Cliente
	
FROM
	vendas AS A
INNER JOIN
	clientes AS B
ON A.codCliente = B.codCliente;
*/

#LEFT JOIN VENDASxVENDEDORES:
/*
SELECT * FROM vendas AS vd
	LEFT JOIN vendedores AS vs
	ON vd.codVendedor = vs.codVendedor;
*/

#RIGHT JOIN 
