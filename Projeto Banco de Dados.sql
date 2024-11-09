CREATE DATABASE Projeto_BancoDados;
USE Projeto_BancoDados;

show databases;

DROP TABLE fornecedores;

create table fornecedores
(
id_fornecedor int not null,
nome varchar(200) not null,
cnpj double,
endereco varchar(100) not null,
telefone varchar(100) not null,
email varchar(100) not null,
PRIMARY KEY (id_fornecedor)
);

SELECT * FROM fornecedores;
/**/

DROP table clientes;

create table clientes
(
id_cliente int not null, 
nome varchar(200) not null,
cpf double,
endereco varchar(100) not null,
telefone varchar(100) not null,
PRIMARY KEY (id_cliente)
);

SELECT * FROM clientes;
/**/
DROP TABLE marcas;

create table marcas
(
id_marca int not null,
nome_marca varchar(100) not null,
PRIMARY KEY (id_marca)
);

SELECT * FROM marcas;
/**/
DROP TABLE funcionarios;

create table funcionarios
(
id_funcionario int not null,
nome varchar(200) not null,
cpf double,
cargo varchar(50) not null,
PRIMARY KEY (id_funcionario)
);

SELECT * FROM funcionarios;
/**/
DROP TABLE insumos;

create table insumos
(
id_insumo int not null,
desc_itens varchar(300) not null,
valor_item double,
PRIMARY KEY (id_insumo)
);

SELECT * FROM insumos;
/**/
DROP TABLE produtos;

create table produtos
(
id_produto int not null,
id_marca int not null,
nome varchar(200),
preço double,
qtd_estoque int(255),
descr_prod varchar(300),
PRIMARY KEY(id_produto),
FOREIGN KEY(id_marca) REFERENCES marcas(id_marca)
);

SELECT * FROM produtos;
/**/
DROP TABLE vendas;

create table vendas
(
id_venda int not null,
id_cliente int not null,
id_funcionario int not null,
data_venda date,
PRIMARY KEY(id_venda),
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);

SELECT * FROM vendas;
/**/
DROP TABLE notaFiscal;

create table notaFiscal
(
id_notaFiscal int not null,
id_venda int not null,
numero_nota varchar(50) not null,
PRIMARY KEY(id_notaFiscal),
FOREIGN KEY(id_venda) REFERENCES vendas(id_venda)
);

SELECT * FROM notaFiscal;
/**/
DROP TABLE compras;

create table compras
(
id_compra int not null,
id_fornecedor int not null,
id_funcionario int not null,
id_insumo int not null,
data_compra date,
PRIMARY KEY (id_compra),
FOREIGN KEY(id_fornecedor) REFERENCES fornecedores(id_fornecedor),
FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id_funcionario),
FOREIGN KEY(id_insumo) REFERENCES insumos(id_insumo)
);

SELECT * FROM compras;
/**/
DROP TABLE avaliacao;

create table avaliacao
(
id_avaliacao int not null,
id_produto int not null,
id_cliente int not null,
data_avaliacao date,
PRIMARY KEY (id_avaliacao),
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

SELECT * FROM avaliacao;
/**/
/*delete FROM clientes
where id_cliente = 1;*/
select*from clientes;

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(1, 'Juan Batista', '48837818605', 'Rua Jardins dos Santos', '119546-7098');

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(2, 'Ana Costa', '12345678900', 'Avenida Paulista, 500', '119876-5432');

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(3, 'Carlos Oliveira', '98765432101', 'Rua dos Três Corações, 120', '119345-6789');

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(4, 'Fernanda Silva', '45678912304', 'Rua das Flores, 230', '119876-1234');

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(5, 'Marcelo Souza', '32165498711', 'Rua da Liberdade, 330', '119567-4321');

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(6, 'Paula Lima', '65432109822', 'Avenida Rio Branco, 400', '119654-9876');

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(7, 'Roberto Pereira', '11122233344', 'Rua Barão do Rio Branco, 250', '119432-1000');

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(8, 'Juliana Almeida', '77788899955', 'Rua do Sol, 450', '119654-3210');

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(9, 'Pedro Gomes', '22233344466', 'Praça da Sé, 100', '119765-4321');

INSERT INTO clientes
(id_cliente, nome, cpf, endereco, telefone)
VALUES
(10, 'Carla Martins', '55566677788', 'Avenida das Américas, 600', '119876-5433');

/**/

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(1, 'Oakley');

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(2, 'Nike');

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(3, 'Adidas');

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(4, 'Puma');

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(5, 'Levi\'s');

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(6, 'Fila');

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(7, 'Converse');

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(8, 'Vans');

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(9, 'Under Armour');

INSERT INTO marcas
(id_marca, nome_marca)
VALUES
(10, 'Reebok');

/**/

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(1, 'Sabão para louças', '11.90');

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(2, 'Detergente', '5.50');

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(3, 'Desinfetante', '6.30');

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(4, 'Amaciante', '8.70');

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(5, 'Álcool em gel', '12.50');

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(6, 'Papel higiênico', '4.20');

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(7, 'Esponja de aço', '3.00');

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(8, 'Limpa vidros', '7.80');

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(9, 'Água sanitária', '3.90');

INSERT INTO insumos
(id_insumo, desc_itens, valor_item)
VALUES
(10, 'Cloro', '2.80');

/**/

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(1, 'SportClub kas', '12852654000188', 'Rua Amora roxa', '11980832890', 'sportclub@suporte.com');

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(2, 'TechGadgets', '16957482000130', 'Avenida Central, 1000', '11971234567', 'techg@suporte.com');

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(3, 'SuperDistribuidora', '20732619000175', 'Rua dos Cedros, 230', '11987654321', 'superdist@empresa.com');

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(4, 'ModaExpress', '41028246000155', 'Avenida das Palmas, 300', '11999887766', 'contato@modaexpress.com.br');

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(5, 'Varejo Total', '14276532000108', 'Rua das Acácias, 410', '11955443322', 'varejo@total.com');

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(6, 'Distribuidora Nova Era', '13294765000130', 'Rua Floriano Peixoto, 720', '11966332211', 'novaera@distribuidora.com');

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(7, 'Eletronics Store', '18019264000100', 'Avenida Brasil, 900', '11955512345', 'eletronics@store.com');

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(8, 'LiderAuto', '15628373000106', 'Rua São João, 55', '11987712345', 'contato@liderauto.com.br');

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(9, 'GreenHouse', '17263847000191', 'Rua Verde, 110', '11966554433', 'greenhouse@supplies.com');

INSERT INTO fornecedores
(id_fornecedor, nome, cnpj, endereco, telefone, email)
VALUES
(10, 'Casa e Conforto', '14983672000109', 'Rua do Sol, 520', '11984456789', 'casaconforto@loja.com');

/**/

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(1, 'Cleberson Lima', '44012309898', 'Vendedor');

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(2, 'Maria Oliveira', '55987654321', 'Caixa');

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(3, 'João Silva', '44765432100', 'Gerente');

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(4, 'Patrícia Souza', '46896543211', 'Assistente Administrativo');

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(5, 'Carlos Pereira', '44123456789', 'Estoquista');

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(6, 'Fernanda Santos', '45987654322', 'Atendente');

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(7, 'Ricardo Alves', '44987654323', 'Supervisor');

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(8, 'Larissa Costa', '46765432112', 'Auxiliar de Marketing');

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(9, 'Eduardo Gomes', '45876543210', 'Motorista');

INSERT INTO funcionarios
(id_funcionario, nome, cpf, cargo)
VALUES
(10, 'Juliana Martins', '44754321099', 'Analista Financeiro');

/**/

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(1, 1, 'Calça', '59.90', '20', 'verde');

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(2, 2, 'Camiseta', '29.90', '50', 'azul');

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(3, 3, 'Tênis', '129.90', '30', 'preto');

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(4, 4, 'Jaqueta', '99.90', '15', 'cinza');

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(5, 5, 'Shorts', '39.90', '40', 'bermuda');

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(6, 6, 'Meias', '9.90', '100', 'branca');

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(7, 7, 'Blusa de Frio', '79.90', '25', 'vermelha');

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(8, 8, 'Sapatênis', '89.90', '35', 'marrom');

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(9, 9, 'Saia', '49.90', '60', 'preta');

INSERT INTO produtos
(id_produto, id_marca, nome, preço, qtd_estoque, descr_prod)
VALUES
(10, 10, 'Boné', '19.90', '70', 'azul claro');

/**/

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(1, 1, 1, '2024-10-10');

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(2, 2, 2, '2024-10-12');

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(3, 3, 3, '2024-10-15');

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(4, 4, 4, '2024-10-17');

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(5, 5, 5, '2024-10-18');

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(6, 6, 6, '2024-10-20');

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(7, 7, 7, '2024-10-22');

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(8, 8, 8, '2024-10-25');

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(9, 9, 9, '2024-10-27');

INSERT INTO vendas
(id_venda, id_cliente, id_funcionario, data_venda)
VALUES
(10, 10, 10, '2024-10-30');

/**/

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(1, 1, 'NF-2024-001');

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(2, 2, 'NF-2024-002');

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(3, 3, 'NF-2024-003');

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(4, 4, 'NF-2024-004');

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(5, 5, 'NF-2024-005');

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(6, 6, 'NF-2024-006');

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(7, 7, 'NF-2024-007');

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(8, 8, 'NF-2024-008');

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(9, 9, 'NF-2024-009');

INSERT INTO notafiscal
(id_notaFiscal, id_venda, numero_nota)
VALUES
(10, 10, 'NF-2024-010');

/**/

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(1, 1, 1, 1, '2024-10-05');

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(2, 2, 2, 2, '2024-10-08');

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(3, 3, 3, 3, '2024-10-10');

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(4, 4, 4, 4, '2024-10-12');

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(5, 5, 5, 5, '2024-10-15');

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(6, 6, 6, 6, '2024-10-18');

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(7, 7, 7, 7, '2024-10-20');

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(8, 8, 8, 8, '2024-10-22');

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(9, 9, 9, 9, '2024-10-25');

INSERT INTO compras
(id_compra, id_fornecedor, id_funcionario, id_insumo, data_compra)
VALUES
(10, 10, 10, 10, '2024-10-27');

/**/

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(1, 1, 1, '2024-10-01');

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(2, 2, 2, '2024-10-03');

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(3, 3, 3, '2024-10-05');

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(4, 4, 4, '2024-10-07');

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(5, 5, 5, '2024-10-10');

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(6, 6, 6, '2024-10-12');

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(7, 7, 7, '2024-10-15');

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(8, 8, 8, '2024-10-17');

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(9, 9, 9, '2024-10-20');

INSERT INTO avaliacao
(id_avaliacao, id_produto, id_cliente, data_avaliacao)
VALUES
(10, 10, 10, '2024-10-22');

/**/
select * from avaliacao;

UPDATE avaliacao
   SET data_avaliacao = '2023-08-05'
 WHERE id_avaliacao = 8;
 
 UPDATE avaliacao
   SET data_avaliacao = '2022-08-25'
 WHERE id_avaliacao = 4;
 
 UPDATE avaliacao
   SET data_avaliacao = '2023-05-18'
 WHERE id_avaliacao = 3;
 
 UPDATE avaliacao
   SET data_avaliacao = '2023-02-07'
 WHERE id_avaliacao = 2;
 
 UPDATE avaliacao
   SET data_avaliacao = '2024-12-09'
 WHERE id_avaliacao = 6;
 
 /**/
 
 UPDATE clientes
   SET nome = 'Jhonata Domingues'
 WHERE id_cliente = 1;
 
  UPDATE clientes
   SET nome = 'Juarez Santos'
 WHERE id_cliente = 2;
 
  UPDATE clientes
   SET nome = 'Lucas Roberto'
 WHERE id_cliente = 5;
 
  UPDATE clientes
   SET nome = 'Gabriel Lucas'
 WHERE id_cliente = 7;
 
  UPDATE clientes
   SET nome = 'Vando Sousa'
 WHERE id_cliente = 9;
 
 /**/
 
 UPDATE compras
   SET data_compra = '2023-02-20'
 WHERE id_compra = 1;
 
 UPDATE compras
   SET data_compra = '2023-10-04'
 WHERE id_compra = 5;
 
 UPDATE compras
   SET data_compra = '2023-04-18'
 WHERE id_compra = 8;
 
 UPDATE compras
   SET data_compra = '2023-05-17'
 WHERE id_compra = 9;
 
 UPDATE compras
   SET data_compra = '2023-05-19'
 WHERE id_compra = 4;
 
 /**/
 
  UPDATE fornecedores
   SET endereco = 'Rua das Acácias, 56'
 WHERE id_fornecedor = 4;
 
 UPDATE fornecedores
   SET endereco = 'Avenida dos Araçás, 987'
 WHERE id_fornecedor = 5;
 
 UPDATE fornecedores
   SET endereco = 'Rua das Flores, 142'
 WHERE id_fornecedor = 8;
 
 UPDATE fornecedores
   SET endereco = 'Praça da Liberdade, 1100'
 WHERE id_fornecedor = 3;
 
 UPDATE fornecedores
   SET endereco = 'Alameda dos Pescadores, 234'
 WHERE id_fornecedor = 1;
 
 /**/
 
  UPDATE funcionarios
   SET cargo = 'Consultor Financeiro'
 WHERE id_funcionario = 5;
 
 UPDATE funcionarios
   SET cargo = 'Coordenador de Recursos Humanos'
 WHERE id_funcionario = 4;
 
 UPDATE funcionarios
   SET cargo = 'Supervisor de Logística'
 WHERE id_funcionario = 7;
 
 UPDATE funcionarios
   SET cargo = 'Gerente de Marketing'
 WHERE id_funcionario = 3;
 
 UPDATE funcionarios
   SET cargo = 'Assistente Administrativo'
 WHERE id_funcionario = 9;
 
 /**/
 
  UPDATE insumos
   SET desc_itens = 'Desinfetante (hipoclorito de sódio)'
 WHERE id_insumo = 9;
 
  UPDATE insumos
   SET desc_itens = 'Detergente neutro'
 WHERE id_insumo = 4;
 
  UPDATE insumos
   SET desc_itens = 'Água sanitária'
 WHERE id_insumo = 8;
 
  UPDATE insumos
   SET desc_itens = 'Sabão em pó'
 WHERE id_insumo = 7;
 
  UPDATE insumos
   SET desc_itens = 'Limpador multiuso'
 WHERE id_insumo = 2;
 
 /**/
 
  UPDATE marcas
   SET nome_marca = 'Nike'
 WHERE id_marca = 2;
 
 UPDATE marcas
   SET nome_marca = 'Calvin Klein'
 WHERE id_marca = 8;
 
 UPDATE marcas
   SET nome_marca = 'Zara'
 WHERE id_marca = 4;
 
 UPDATE marcas
   SET nome_marca = 'Adidas'
 WHERE id_marca = 6;
 
 UPDATE marcas
   SET nome_marca = 'Levis'
 WHERE id_marca = 9;
 
 /**/
 
 UPDATE notafiscal
   SET numero_nota = 'NF-2024-003'
 WHERE id_notaFiscal = 9;
 
  UPDATE notafiscal
   SET numero_nota = 'NF-2024-005'
 WHERE id_notaFiscal = 8;
 
  UPDATE notafiscal
   SET numero_nota = 'NF-2024-004'
 WHERE id_notaFiscal = 5;
 
  UPDATE notafiscal
   SET numero_nota = 'NF-2024-001'
 WHERE id_notaFiscal = 2;
 
  UPDATE notafiscal
   SET numero_nota = 'NF-2024-002'
 WHERE id_notaFiscal = 6;
 
 /**/
 
   UPDATE produtos
   SET preço = '23.45'
 WHERE id_produto = 6;
 
 UPDATE produtos
   SET preço = '59.90'
 WHERE id_produto = 8;
 
 UPDATE produtos
   SET preço = '12.99'
 WHERE id_produto = 1;
 
 UPDATE produtos
   SET preço = '89.50'
 WHERE id_produto = 9;
 
 UPDATE produtos
   SET preço = '34.99'
 WHERE id_produto = 7;
 
 /**/
 
  UPDATE vendas
   SET data_venda = '2022-08-25'
 WHERE id_venda = 7;
 
  UPDATE vendas
   SET data_venda = '2022-08-02'
 WHERE id_venda = 6;
 
  UPDATE vendas
   SET data_venda = '2022-10-25'
 WHERE id_venda = 8;
 
  UPDATE vendas
   SET data_venda = '2022-03-29'
 WHERE id_venda = 4;
 
   UPDATE vendas
   SET data_venda = '2022-05-24'
 WHERE id_venda = 1;
 
 select * from avaliacao;
 /**/
 
 DELETE FROM avaliacao /*****************/
 WHERE id_cliente = 1;
 
  DELETE FROM avaliacao
 WHERE id_cliente = 5;
 
  DELETE FROM avaliacao
 WHERE id_cliente = 8;
 
  DELETE FROM avaliacao
 WHERE id_cliente = 3;
 
  DELETE FROM avaliacao
 WHERE id_cliente = 6;
 
    /****************************/
 
         DELETE FROM notafiscal /*****************/
 WHERE id_notaFiscal = 1;
 
         DELETE FROM notafiscal
 WHERE id_notaFiscal = 5;
 
         DELETE FROM notafiscal
 WHERE id_notaFiscal = 8;
 
         DELETE FROM notafiscal
 WHERE id_notaFiscal = 3;
 
         DELETE FROM notafiscal
 WHERE id_notaFiscal = 6;
 
 
  /*******************************/

       DELETE FROM vendas
 WHERE id_venda = 1;
 
        DELETE FROM vendas
 WHERE id_venda = 5;
 
        DELETE FROM vendas
 WHERE id_venda = 8;
 
        DELETE FROM vendas
 WHERE id_venda = 3;
 
        DELETE FROM vendas
 WHERE id_venda = 6;
 
   /*************************/
 
  DELETE FROM clientes /*****************/
 WHERE id_cliente = 1;
 
 DELETE FROM clientes
 WHERE id_cliente = 5;
 
 DELETE FROM clientes
 WHERE id_cliente = 8;
 
 DELETE FROM clientes
 WHERE id_cliente = 3;
 
 DELETE FROM clientes
 WHERE id_cliente = 6;
 
  /************************/
 
  DELETE FROM compras /*****************/
 WHERE id_fornecedor = 1;
 
   DELETE FROM compras
 WHERE id_fornecedor = 5;
 
   DELETE FROM compras
 WHERE id_fornecedor = 8;
 
   DELETE FROM compras
 WHERE id_fornecedor = 3;
 
   DELETE FROM compras
 WHERE id_fornecedor = 6;
 
  /**************************/
 
  DELETE FROM fornecedores /*****************/
 WHERE id_fornecedor = 1;
 
   DELETE FROM fornecedores
 WHERE id_fornecedor = 5;
 
   DELETE FROM fornecedores
 WHERE id_fornecedor = 8;
 
   DELETE FROM fornecedores
 WHERE id_fornecedor = 3;
 
   DELETE FROM fornecedores
 WHERE id_fornecedor = 6;
 
 /************************/
 
   DELETE FROM funcionarios /*****************/
 WHERE id_funcionario = 1;
 
    DELETE FROM funcionarios
 WHERE id_funcionario = 5;
 
    DELETE FROM funcionarios
 WHERE id_funcionario = 8;
 
    DELETE FROM funcionarios
 WHERE id_funcionario = 3;
 
    DELETE FROM funcionarios
 WHERE id_funcionario = 6;
 
  /************************/
 
     DELETE FROM insumos /*****************/
 WHERE id_insumo = 1;
 
     DELETE FROM insumos
 WHERE id_insumo = 5;
 
     DELETE FROM insumos
 WHERE id_insumo = 8;
 
     DELETE FROM insumos
 WHERE id_insumo = 3;
 
     DELETE FROM insumos
 WHERE id_insumo = 6;
 
  /***********************/
 
     DELETE FROM produtos /*****************/
 WHERE id_marca = 1;
 
      DELETE FROM produtos
 WHERE id_marca = 5;
 
      DELETE FROM produtos
 WHERE id_marca = 8;
 
      DELETE FROM produtos
 WHERE id_marca = 3;
 
      DELETE FROM produtos
 WHERE id_marca = 6;
 
   /***********************/
 
     DELETE FROM marcas /*****************/
 WHERE id_marca = 1;
 
      DELETE FROM marcas
 WHERE id_marca = 5;
 
      DELETE FROM marcas
 WHERE id_marca = 8;
 
      DELETE FROM marcas
 WHERE id_marca = 3;
 
      DELETE FROM marcas
 WHERE id_marca = 6;



 select * from avaliacao;
 select * from clientes;
 select * from compras;
 select * from fornecedores;
 select * from funcionarios;
 select * from insumos;
 select * from marcas;
 select * from notafiscal;
 select * from produtos;
 select * from vendas;