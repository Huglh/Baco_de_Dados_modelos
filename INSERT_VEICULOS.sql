use veiculos;
-- responsavel --
desc responsavel;
Select * from responsavel;

insert into responsavel(id,nome,telefone,endereco)
value(null,'Hugo thiago','31973643098','Rua Nova Suíça');
insert into responsavel(id,nome,telefone,endereco)
value(null,'diogo Mateus','31993046666','Rua Espigão');
insert into responsavel(id,nome,telefone,endereco)
value(null,'Hugo thiago','3194620857','Rua Buritis');
-- modelo ---
desc modelo;
Select * from modelo;
insert into modelo(codigo,nome,versao)
value(null,'CrossFox','2.0');
insert into modelo(codigo,nome,versao)
value(null,'Captur','2020');
insert into modelo(codigo,nome,versao)
value(null,'Impala','64');
-- categoria --
desc categoria;
Select * from categoria;
insert into categoria(id,nome,tipo)
value(null,'Tabaco','SUV');
insert into categoria(id,nome,tipo)
value(null,'Aviador','SUV');
insert into categoria(id,nome,tipo)
value(null,'Metro','SUV');
-- marca--
desc marca;
Select * from marca;
insert into marca(id,nome,descricao)
value(null,'Cotemig','Veiculos Mais tecnologicos que você');
insert into marca(id,nome,descricao)
value(null,'Cemig','Veiculos Mais eletricos que você');
insert into marca(id,nome,descricao)
value(null,'Copasa','Veiculos que nadam melhor que você');
-- historico --
desc historico;
Select * from historico;
insert into historico(RESPONSAVEL_id,codigo,descricao)
value("1",null,'Bom Piloto');
insert into historico(RESPONSAVEL_id,codigo,descricao)
value("2",null,'Master Plus Piloto');
insert into historico(RESPONSAVEL_id,codigo,descricao)
value("3",null,'Medio Piloto');
-- veiculo --
desc veiculo;
Select * from veiculo;
insert into veiculo(placa,cor,lugares,ano_fabricação,CATEGORIA_id,MARCA_id,RESPONSAVEL_id,MODELO_codigo)
value('XLKO-O20','preto fosco','5','2016/12/01','1','1','1','1');
insert into veiculo(placa,cor,lugares,ano_fabricação,CATEGORIA_id,MARCA_id,RESPONSAVEL_id,MODELO_codigo)
value('XLKO-O30','vermelho','5','2020/12/01','2','2','2','2');
insert into veiculo(placa,cor,lugares,ano_fabricação,CATEGORIA_id,MARCA_id,RESPONSAVEL_id,MODELO_codigo)
value('XLKO-O40','branco','5','1974/12/01','2','2','2','2');