create database ecommerce;
use ecommerce;

create table cliente (
    nome varchar(100),
    endereco varchar(255),
    email varchar(255),
    celular tinyint(10) unsigned,
    dt_nascimento date
);

create table produto (
    nome_produto varchar(100),
    preco decimal(5,2),
    descricao varchar(500),
    qtd_estoque int unsigned,
    primary key (nome_produto, preco, descricao, qtd_estoque)
);

create table pedido (
	id_pedido bigint unsigned auto_increment,
    dt_compra date,
    valor_total decimal (6, 2),
    dt_entrega date,
    primary key (id_pedido, valor_total)
);

create table itens (
    qtd_estoque bigint unsigned,
    preco decimal(5, 2),
    valor_total decimal (6,2),
    
    foreign key(preco, qtd_estoque) references produto(preco, qtd_estoque),
    foreign key(valor_total) references pedido(valor_total)
);
