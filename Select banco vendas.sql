select * from produto

select count(val_unit) from produto;
select avg(val_unit) from produto;
select max(val_unit) from produto;
select min(val_unit) from produto;

select unidade, count(val_unit) from produto 
group by unidade;

select unidade, count(val_unit) from produto 
group by unidade
having count(*)>2;

select unidade, count(*) from produto 
group by unidade
having count(*)<2;

select nome_vendedor, count(salario_fixo) from vendedor 
group by faixa_comissão
having count(*)<2;

------Complexos de Select
select * from pedido;
select num_pedido, nome_cliente from pedido, cliente;
select num_pedido, cod_cliente, nome_cliente from pedido, cliente;
select pedido.num_pedido, pedido.codigo_cliente, cliente.nome_cliente from pedido, cliente;

select pedido.num_pedido, pedido.codigo_cliente, cliente.nome_cliente 
from pedido, cliente
where pedido.codigo_cliente = cliente.codigo_cliente;

select * from vendedor;
select pedido.num_pedido, pedido.codigo_vendedor, vendedor.nome_vendedor 
from pedido, vendedor
where pedido.codigo_vendedor = vendedor.codigo_vendedor;

select pedido.num_pedido, vendedor.nome_vendedor 
from pedido, vendedor;

select p.num_pedido, p.codigo_vendedor, v.nome_vendedor, p.prazo_entrega
from pedido p, vendedor v
where p.codigo_vendedor = v.codigo_vendedor
order by prazo_entrega;

--1
select v.nome_vendedor, v.salario_fixo, p.prazo_entrega --codigo_vendedor
from vendedor v, pedido p;
--ou
select nome_vendedor, salario_fixo, prazo_entrega --codigo_vendedor
from vendedor, pedido;

--2
select * from cliente;
select nome_cliente, uf, cidade, cep, endereco, prazo_entrega
from cliente, pedido
where prazo_entrega <= 10
order by prazo_entrega;

--3
select * from produto;
select * from pedido;
select * from item_pedido;
select ip.num_pedido, i.codigo_pedido, ip.quantidade/*produto*/, p.descricao_produto, p.val_unit, 
from pedido i, produto p, item_pedido ip

select p.descricao_produto, p.val_unit, ip.quantidade, ip.num_pedido
from produto p, item_pedido ip
where p.codigo_produto = ip.codigo_produto
and ip.num_pedido = 138;

select p.num_pedido
where num_pedido = num_pedido
and pedido = pedido;

select distinct pedido.num_pedido, cliente.nome_cliente
from pedido join cliente
on pedido.codigo_cliente = cliente.codigo_cliente;

select cliente.nome_cliente,
from cliente inner join pedido
on cliente.codigo_cliente = pedido.codigo_cliente

select * from vendedor where faixa_comissao = 'C';
select nome_cliente, salario_fixo 

--com subselect
select nome_vendedor
from vendedor
where salario_fixo>(select salario_fixo
						from vendedor
						where faixa_comissao = 'C')

--com auto junçao
select t.nome_vendedor
from vendedor t, vendedor s
where t.salario_fixo >s.salario_fixo
and s.faixa_comissao = 'C'