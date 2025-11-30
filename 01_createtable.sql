BEGIN TRANSACTION;
----tabela cliente----
 Create table cliente (
 id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
 nome TEXT NOT NULL,
 telefone TEXT,
 cpf TEXT);
 
----tabela vendedor----
 Create table vendedor (
 id_vendedor  INTEGER PRIMARY KEY AUTOINCREMENT,
 nome_vendedor TEXT NOT NULL,
 telefone TEXT
 );
 
----tabela atendimento----
 Create table atendimento (
 id_atendimento  INTEGER PRIMARY KEY AUTOINCREMENT,
 data_atendimento TEXT,
 id_cliente INTEGER,
 id_vendedor INTEGER,
 FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
 FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
 );
 
----tabela pedido----
 Create table pedido (
 id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
 data TEXT NOT NULL,
 valor_total TEXT,
 numero_pedido TEXT,
 id_cliente INTEGER,
 id_vendedor INTEGER,
 FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
 FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
 );
 

----tabela item venda----
 Create table item_venda (
 id_item_venda INTEGER PRIMARY KEY AUTOINCREMENT,
 quantidade TEXT,
 valor_venda TEXT,
 id_pedido INTEGER,
 id_mercadoria INTEGER,
 FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
 FOREIGN KEY (id_mercadoria) REFERENCES mercadoria(id_mercadoria)
 );

----tabela mercadoria----
 Create table mercadoria (
 id_mercadoria INTEGER PRIMARY KEY AUTOINCREMENT,
 nome TEXT NOT NULL,
 valor_unidade TEXT,
 quantidade INTEGER
 );





























