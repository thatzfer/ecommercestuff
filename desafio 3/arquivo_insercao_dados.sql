## Inserção de dados no Database minhaloja

## PRODUTOS

insert into produtos (codigo, descricao, preco, disponivel, destaque, departamentoid) values (6530, "Adaptador VGA Macho / RJ45", 6, 1, 1, 1);
insert into produtos (codigo, descricao, preco, disponivel, destaque, departamentoid) values (26333, "Babá Eletrônica Motorola MBP161TIMER branco", 36, 1, 1, 4);
insert into produtos (codigo, descricao, preco, disponivel, destaque, departamentoid) values (19141, "Câmera Webcam Razer  RZ19-02320100-R3U1 KIYO 720P", 91, 2, 2, 3);
insert into produtos (codigo, descricao, preco, disponivel, destaque, departamentoid) values (11719, "Alicate para Crimpar TL-315 3 em 1", 15, 1, 1, 2);

## CLIENTES

insert into clientes (nome, email, whatsapp, senha) values ("Ana Ferraz", "anaferraz@gmail.com", "81998989898", "anaferraz");
insert into clientes (nome, email, whatsapp, senha) values ("João Miguel", "joaomiguel@gmail.com", "11978788787", "joaomig");
insert into clientes (nome, email, whatsapp, senha) values ("Beatriz Lima", "beatrizlima@gmail.com", "11967676767", "bialima");
insert into clientes (nome, email, whatsapp, senha) values ("Fernando Augusto", "fernando@gmail.com", "21756564545", "nando");

## ENDEREÇOS

insert into enderecos (tipo, tipologradouro, logradouro, numero, complemento, cep, bairro, cidadestado, clienteid) values ("residencial", "Rua", "Bernardo Vilela", 33, "ap 1002", "90909-234", "Espinheiro", 1, 1);
insert into enderecos (tipo, tipologradouro, logradouro, numero, complemento, cep, bairro, cidadestado, clienteid) values ("residencial", "Avenida", "Agamenon Magalhães", 23, "apto 23", "88888-000", "Perdizes", 2, 2);
insert into enderecos (tipo, tipologradouro, logradouro, numero, complemento, cep, bairro, cidadestado, clienteid) values ("residencial", "Largo", "da Paz", 34, "apto 101", "89990-999", "Higienópolis", 2, 3);
insert into enderecos (tipo, tipologradouro, logradouro, numero, complemento, cep, bairro, cidadestado, clienteid) values ("comercial", "Praça", "Chora Menino", 144, "sala 112", "51029-999", "Paraisópolis", 3, 4);

## PEDIDOS

insert into pedidos (datapedido, codigo, pedidosstatus, cliente) values ("2021-05-10", 11719, 2, 4);
insert into pedidos (datapedido, codigo, pedidosstatus, cliente) values ("2021-04-27", 6530, 1, 2);

## TABELA RELACIONAL PRODUTO-PEDIDO

insert into produtopedido (nome, precounitario, precototal, descricao) values (2, 15, 15, "Alicate para Crimpar TL-315 3 em 1");
insert into produtopedido (nome, precounitario, precototal, descricao) values (4, 6, 6, "Adaptador VGA Macho / RJ45");