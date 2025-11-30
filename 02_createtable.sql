----INSERT----
INSERT INTO cliente(nome,telefone,cpf)
values
('analima', '61999358664','04767892156'),
('josesilva','62999260502','03762854321');

select * from cliente

INSERT INTO vendedor(nome,telefone)
values
('edsoncosta','63998765432'),
('juliabatista','63997875737');

select * from vendedor

INSERT INTO atendimento(data_atendimento,id_vendedor,id_cliente)
values
('2025-08-06',1,2),
('2025-08-09',2,1);

select * from atendimento

INSERT INTO pedido(numero_pedido,data,valor_total,id_cliente,id_vendedor)
values
('11','2025-06-30','300000',1,2),
('2','2025-07-03','150000',2,1);

select * from pedido

INSERT INTO mercadoria(nome,valor_unidade,quantidade)
values
('fusion','300000',1),
('virtus','150000',1);


select * from mercadoria


INSERT INTO item_venda(quantidade,valor_venda,id_pedido,id_mercadoria)
values
('1','300000','1','1'),
('1','15000','2','2');














