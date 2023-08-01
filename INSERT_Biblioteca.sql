use biblioteca;
-- perfil --
desc perfil;
select*from perfil;
insert into perfil(codigo,nome)
value(null,'Cleber Bambam');
insert into perfil(codigo,nome)
value(null,'Cleber Sueter');
insert into perfil(codigo,nome)
value(null,'Cleber Bomba');
insert into perfil(codigo,nome)
value(null,'Cleber Dinossauro');
-- usuarios --
desc usuarios;
select*from usuarios;
insert into usuarios(num,nome)
value(null,'Cleber Bambam');
insert into usuarios(num,nome)
value(null,'Cleber Sueter');
insert into usuarios(num,nome)
value(null,'Cleber Bomba');
insert into usuarios(num,nome)
value(null,'Cleber Dinossauro');
-- curso
desc curso;
select*from curso;
insert into curso(id,Num_usuario,nome,data_inicio,data_final)
value(null,1,'Cleber Bambam','2004/10/01','2022/10/01');
insert into curso(id,Num_usuario,nome,data_inicio,data_final)
value(null,2,'Cleber Sueter','2004/11/01','2022/11/01');
insert into curso(id,Num_usuario,nome,data_inicio,data_final)
value(null,3,'Cleber Bomba','2004/12/01','2022/12/01');
insert into curso(id,Num_usuario,nome,data_inicio,data_final)
value(null,4,'Cleber Dinossauro','2004/09/01','2022/09/01');
-- emprestimo --
desc emprestimo;
select*from emprestimo;
insert into emprestimo(num,Num_usuario,valor,data_,devolucao)
value(null,1,1200,'2004/10/01',2001);
insert into emprestimo(num,Num_usuario,valor,data_,devolucao)
value(null,2,1020,'2004/10/01',2001);
insert into emprestimo(num,Num_usuario,valor,data_,devolucao)
value(null,3,100,'2004/10/01',2001);
insert into emprestimo(num,Num_usuario,valor,data_,devolucao)
value(null,4,200,'2004/10/01',2001);
-- lingua -- 
desc lingua;
select*from lingua;
insert into lingua(codigo,nome)
value(null,'Arabe');
insert into lingua(codigo,nome)
value(null,'portugues');
insert into lingua(codigo,nome)
value(null,'Ingles');
insert into lingua(codigo,nome)
value(null,'Russo');
-- midia -- 
desc midia;
select*from midia;
insert into midia(codigo,nome)
value(null,'fisica');
insert into midia(codigo,nome)
value(null,'analogica');
insert into midia(codigo,nome)
value(null,'digital');
insert into midia(codigo,nome)
value(null,'manuscrito');
-- autor--
desc autor;
select*from autor;
insert into autor(codigo,nome)
value(null,'Claudia');
insert into autor(codigo,nome)
value(null,'Rogerio');
insert into autor(codigo,nome)
value(null,'cleber');
insert into autor(codigo,nome)
value(null,'Renata');
-- classificação --
desc classificacao;
select*from classificacao;
insert into classificacao(codigo,nome)
value(null,'adulto');
insert into classificacao(codigo,nome)
value(null,'infantil');
insert into classificacao(codigo,nome)
value(null,'juvenil');
insert into classificacao(codigo,nome)
value(null,'livre');
-- editora --
desc editora;
select*from editora;
insert into editora(CNPJ,nome)
value('111-111-111-111-1111','SuperH');
insert into editora(CNPJ,nome)
value('222-222-222-222-2222','SuperE');
insert into editora(CNPJ,nome)
value('333-333-333-333-3333','SuperN');
insert into editora(CNPJ,nome)
value('444-444-444-444-4444','SuperT');
-- obra --
desc obras;
select*from editora;
insert into obras(id,pag,nome,autor_codigo,midia_codigo,lingua_codigo,classificao_codigo,editora_CNPJ)
value(null,120,'O governo e a fome',1,1,1,1,'111-111-111-111-1111');
insert into obras(id,pag,nome,autor_codigo,midia_codigo,lingua_codigo,classificao_codigo,editora_CNPJ)
value(null,120,'O governo e o adolecente',2,2,2,2,'222-222-222-222-2222');
insert into obras(id,pag,nome,autor_codigo,midia_codigo,lingua_codigo,classificao_codigo,editora_CNPJ)
value(null,120,'O governo e os brinquedos',3,3,3,3,'333-333-333-333-3333');
insert into obras(id,pag,nome,autor_codigo,midia_codigo,lingua_codigo,classificao_codigo,editora_CNPJ)
value(null,120,'Comendo bem',4,4,4,4,'444-444-444-444-4444');
-- participar --
desc participar;
select*from participar;
insert into participar(Emprestimo_Num,Obras_id)
value(1,1);
insert into participar(Emprestimo_Num,Obras_id)
value(2,2);
insert into participar(Emprestimo_Num,Obras_id)
value(3,3);
insert into participar(Emprestimo_Num,Obras_id)
value(4,4);