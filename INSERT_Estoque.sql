use  estoque;
-- fornecedor --
desc fornecedor;
select* from fornecedor;
insert into fornecedor(cnpj,nome,endereço)
value(1234567891011131415,'Cairo TECH','Rua dacueba 224');
insert into fornecedor(cnpj,nome,endereço)
value(1234567891012131415,'Lucas TECH','Rua dacueba 225');
insert into fornecedor(cnpj,nome,endereço)
value(1234567891013141516,'Alemao TECH','Rua dacueba 226');
insert into fornecedor(cnpj,nome,endereço)
value(1234567891014151617,'Micael TECH','Rua dacueba 227');
-- vendas --
desc vendas;
select* from vendas;
insert into vendas(codigo,descricao,data_venda,valor,fornecedor_cnpj)
value(null,'Venda Casada','2004/10/01',240.000,1234567891011131415);
insert into vendas(codigo,descricao,data_venda,valor,fornecedor_cnpj)
value(null,'Venda Debutada','2004/01/01',200.000,1234567891012131415);
insert into vendas(codigo,descricao,data_venda,valor,fornecedor_cnpj)
value(null,'Venda Creditada','2004/12/01',40.000,1234567891013141516);
insert into vendas(codigo,descricao,data_venda,valor,fornecedor_cnpj)
value(null,'Venda Mediada','2004/11/01',20.000,1234567891014151617);

-- clientes --
desc cliente;
select*from cliente;
insert into cliente(cpf,nome,endereço)
value(13162707672,'Hugo Thiago Lima','Rogerio dando Grau 28');
insert into cliente(cpf,nome,endereço)
value(12162707672,'Hugo Thiago',' dando Grau 28');
insert into cliente(cpf,nome,endereço)
value(13142707672,'Hugo Lima ','Rogerio dando  28');
insert into cliente(cpf,nome,endereço)
value(13164707672,'Hugo ','Rogerio  Grau 28');
-- compras -- 
desc compras;
select*from compras;
insert into compras(codigo,valor,data_compra,cliente_cpf)
value(null,430.000,'2004/02/10',13162707672);
insert into compras(codigo,valor,data_compra,cliente_cpf)
value(null,400.000,'2004/01/10',12162707672);
insert into compras(codigo,valor,data_compra,cliente_cpf)
value(null,40.000,'2004/03/10',13142707672);
insert into compras(codigo,valor,data_compra,cliente_cpf)
value(null,30.000,'2004/04/10',13164707672);
-- nota fiscal --
desc nota_fiscal;
select*from nota_fiscal;
insert into nota_fiscal(num,tipo,valor,data_nota,vendas_codigo,compras_codigo)
value(null,1,430.000,'2004/02/10',1,1);
insert into nota_fiscal(num,tipo,valor,data_nota,vendas_codigo,compras_codigo)
value(null,2,400.000,'2004/01/10',2,2);
insert into nota_fiscal(num,tipo,valor,data_nota,vendas_codigo,compras_codigo)
value(null,3,40.000,'2004/03/10',3,3);
insert into nota_fiscal(num,tipo,valor,data_nota,vendas_codigo,compras_codigo)
value(null,4,30.000,'2004/04/10',4,4);
-- almoxarifado --
desc almoxarifado;
select*from almoxarifado;
insert into almoxarifado(id,nome,endereco)
value(null,'Mercedes','Castradado 255');
insert into almoxarifado(id,nome,endereco)
value(null,'Porche','Castradado 254');
insert into almoxarifado(id,nome,endereco)
value(null,'Ferrari','Castradado 253');
insert into almoxarifado(id,nome,endereco)
value(null,'Audi','Castradado 252');
-- produtos --
desc produtos;
select*from produtos;
insert into produtos(codigo,nome,endereço)
value(null,'cadeira','rua das cadeiras 240');
insert into produtos(codigo,nome,endereço)
value(null,'rodas','rua das rodas 240');
insert into produtos(codigo,nome,endereço)
value(null,'pneus','rua das pneus 240');
insert into produtos(codigo,nome,endereço)
value(null,'carros','rua das carros 240');
-- estoque -- 
desc estoque;
select*from estoque;
insert into estoque(almoxarifado_id,nota_fiscal_num,produtos_codigo,quantidade,data_estoque,id)
value(1,1,1,10,'2020/10/20',null);
insert into estoque(almoxarifado_id,nota_fiscal_num,produtos_codigo,quantidade,data_estoque,id)
value(2,2,2,12,'2021/10/20',null);
insert into estoque(almoxarifado_id,nota_fiscal_num,produtos_codigo,quantidade,data_estoque,id)
value(3,3,3,13,'2019/10/20',null);
insert into estoque(almoxarifado_id,nota_fiscal_num,produtos_codigo,quantidade,data_estoque,id)
value(4,4,4,14,'2010/10/20',null);