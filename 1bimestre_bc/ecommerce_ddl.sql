create database ecommerce;
use ecommerce;

create table cliente (
	id_cliente bigint unsigned primary key auto_increment,
    nome varchar(100),
    endereco varchar(255),
    email varchar(255),
    celular tinyint(10) unsigned,
    dt_nascimento date
);

create table itens (
    qtd bigint unsigned,
    valor_unidade decimal(5, 2),
    valor_total decimal (6,2)
);

create table pedido (
	id_pedido bigint unsigned primary key auto_increment,
    dt_compra date,
    valor_total decimal (6, 2),
    dt_entrega date
);

create table produto (
	id_produto bigint unsigned primary key auto_increment,
    nome varchar(100),
    preco decimal(5,2),
    descricao varchar(500),
    qtd_estoque int unsigned
);