create database ecommerce;
use ecommerce;

drop database ecommerce;
drop table cliente;
drop table produto;
drop table pedido;
drop table itens;

create table cliente (
	id_cliente int auto_increment primary key,
    nome varchar(100),
    endereco varchar(255),
    email varchar(255),
    celular varchar(30),
    dt_nascimento date
);

create table produto (
	id_produto int auto_increment primary key,
    nome_produto varchar(100),
    preco decimal(5,2),
    descricao text,
    qtd_estoque int unsigned
);

create table pedido (
	id_pedido int auto_increment primary key,
    id_cliente int,
    dt_compra date,
    valor_total decimal (6, 2),
    dt_entrega date,
    foreign key (id_cliente) references cliente(id_cliente)
);

create table itens (
	id_item int auto_increment primary key,
    id_pedido int,
    id_produto int,
    qtd_estoque int unsigned,
    preco decimal(5, 2),
    valor_total decimal (6,2),
    
    foreign key(id_pedido) references pedido(id_pedido),
    foreign key(id_produto) references produto(id_produto)
);
