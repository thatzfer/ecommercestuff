## 1) Consulta contemplando contagem ou totalização

select * from produtos
where produtos.destaque = 1;

## 2) Consulta contemplando a junção entre duas tabelas

select sum(produtos.preco), departamentos.nome
from produtos
inner join departamentos
on produtos.departamentoid = departamentos.id
group by departamentos.id;

## 3) Consulta contemplando a junção entre três tabelas

select count(*) as total_cidade, clientes.nome, enderecos.cidadestado, pedidos.pedidosstatus 
from clientes 
join enderecos 
join pedidos on clientes.id = pedidos.cliente and clientes.id = enderecos.clienteid

## 4) Consulta contemplando a junção entre duas tabelas + operação de totalização ou agrupamento

select departamentos.nome , SUM(produtos.preco) 
from produtos 
inner join departamentos
on produtos.departamentoid = departamentos.id
where produtos.destaque = 1
group by departamentos.nome;

## 5) Consulta contemplando a junção entre três tabelas + operação de totalização ou agrupamento

select count(*) as total_cidade, clientes.nome, enderecos.cidadestado, pedidos.pedidosstatus 
FROM clientes 
JOIN enderecos 
JOIN pedidos ON clientes.id = pedidos.cliente AND clientes.id = enderecos.clienteid 
group by enderecos.cidadestado;