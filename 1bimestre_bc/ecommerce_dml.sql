use ecommerce;

insert into cliente (nome, endereco, email, celular, dt_nascimento)
values('Fabricia Albuquerque', 'Avenida das Flores, 190', 'bissa223albuquerque@live.com', '11903876016', '1980-05-13'),
	('Humberto Cavalcanti', 'Indanhatuba 90', 'betinho@habboo.com', '11992876301', '1960-10-04'),
	('Rambo Reboques', 'Rambo Reboques 78', 'ramboreboques@ramboreboques', '81973614562', '1990-12-09'),
	('Tilambuques Tilápia', 'Tilambuco 88', 'tutilambes@gmail.com', '81902556794', '2005-09-09'),
	('João Silva', 'Rua das Flores, 123', 'joaosilva@example.com', '91234567891', '1985-02-15'),
	('Maria Oliveira', 'Avenida da Liberdade, 456', 'maria.oliveira@example.com', '92345678912', '1990-07-03'),
	('Ana Costa', 'Praça do Comércio, 789', 'ana.costa@example.com', '94567891234', '1978-04-09'),
	('Pedro Santos', 'Rua dos Cedros, 1011', 'pedrosantos@example.com', '93456789123', '1982-11-21'),
	('Carlos Pereira', 'Travessa das Palmeiras, 1213', 'carlospereira@example.com', '95678912345','1995-09-27'),
	('Sofia Fernandes', 'Largo dos Girassóis, 1415', 'sofia.fernandes@example.com', '96789123456', '1989-06-12');


insert into produto (nome_produto, preco, descricao, qtd_estoque)
values('Caneta esferográfica', 2.5, 'Caneta esferográfica preta, ponta média, tinta de secagem rápida', 10),
	 ('Caderno pautado', 10, 'Caderno pautado com capa dura, 100 folhas, tamanho A5', 50), 
	 ('Mouse sem fio', 30, 'Mouse sem fio com design ergonômico, conexão USB', 80),
	 ('Fone de ouvido Bluetooth', 50, 'Fone de ouvido Bluetooth com cancelamento de ruído, bateria de longa duração.', 40), 
	 ('Carregador portátil', 20, 'Carregador portátil com capacidade de 10000mAh, duas portas USB', 60), 
	 ('Mochila executiva', 60, 'Mochila executiva com compartimento acolchoado para laptop de até 15 polegadas', 30), 
	 ('Conjunto de canecas', 15, 'Conjunto de canecas de cerâmica, com estampas variadas', 70), 
	 ('Relógio de pulso analógico', 40, 'Relógio de pulso analógico com pulseira de couro genuíno, resistente à água', 45), 
	 ('Estojo de lápis coloridos', 5, 'Estojo de lápis coloridos com 12 cores vibrantes', 90), 
	 ('Garrafa térmica', 25, 'Garrafa térmica de aço inoxidável, capacidade de 500ml, mantém líquidos quentes por 12 horas', 55);
 
 insert into pedido (id_cliente, dt_compra,valor_total, dt_entrega)
 values (1, '2024-03-29', 72.50,'2024-04-05'), 
	(2, '2024-03-30', 30.00, '2024-04-06'), 
	(3, '2024-03-31', 42.00,'2024-04-07'), 
	(4,'2024-04-01', 55.80,'2024-04-08'), 
	(5,'2024-04-02', 87.50,'2024-04-09'), 
	(6, '2024-04-03', 123.75,'2024-04-10'), 
	(7, '2024-04-04', 96.20,'2024-04-11'), 
	(8, '2024-04-05', 33.75, '2024-04-12'),
	(9, '2024-03-28', 72.80, '2024-04-04'),
	(10, '2024-03-28', 50.00, '2024-04-02');
 
insert into itens (id_pedido, id_produto, qtd_estoque, preco,valor_total)
values (1, 1, 5, 2.50, 12.50),
(1, 2, 3, 10.00, 30.00),
(2, 3, 1, 30.00, 30.00),
(3, 4, 2, 50.00, 100.00),
(1, 5, 4, 20.00, 80.00),
(2, 3, 1, 30.00, 30.00),
(1, 2, 5, 10.00, 50.00),
(2, 1, 3, 2.50, 7.50),
(3, 5, 2, 20.00, 40.00),
(4, 3, 1, 30.00, 30.00);

UPDATE Cliente SET celular = '(11) 88888-1111' WHERE id_cliente = 1;
UPDATE Produto SET quantidade_estoque = 120 WHERE id_produto = 1;
UPDATE Pedido SET valor_total = 139.97 WHERE numero_pedido = 1;
UPDATE ItemPedido SET quantidade = 3 WHERE id_item = 5;

DELETE FROM Cliente WHERE id_cliente = 10;
DELETE FROM Produto WHERE id_produto = 9;

select * from cliente;
select * from produto;
select * from pedido;
select * from itens;