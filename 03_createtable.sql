----atendimento+ cliente+vendedor----

select
 a.id_atendimento,
 a.data_atendimento AS data_atendimento,
 c.nome AS nome_cliente,
 c.telefone AS telefone_cliente,
 c.cpf AS cpf_cliente,
 v.nome AS nome_vendedor,
 v.telefone AS telefone_vendedor
 FROM atendimento a ---tabela principal---
 JOIN cliente c 
  ON c.id_cliente = a.id_cliente --- join:atendimento + cliente
JOIN vendedor v
    ON v.id_vendedor = a.id_vendedor;
    
----pedido+ cliente + vendedor----
select
p.id_pedido,
p.numero_pedido,
p.data,
p.valor_total,
c.id_cliente,
c.nome AS nome_cliente,
c.telefone AS telefone_cliente,
c.cpf AS cpf_cliente,
v.id_vendedor,
v.nome AS nome_vendedor,
v.telefone AS telefone_vendedor
FROM pedido p
JOIN cliente c 
 ON p.id_cliente = c.id_cliente
 JOIN vendedor v 
  ON p.id_vendedor = v.id_vendedor;
  

---pedido+ item venda+ mercadoria
select
p.id_pedido,
p.numero_pedido,
p.data,
p.valor_total,
iv.id_item_venda,
iv.quantidade AS quantidade_vendida,
m.id_mercadoria,
m.nome AS nome_mercadoria,
m.valor_unidade,
m.quantidade AS estoque_atual
FROM item_venda iv
JOIN pedido p
 ON iv.id_pedido = p.id_pedido
 JOIN mercadoria m 
  ON iv.id_mercadoria = m.id_mercadoria;












