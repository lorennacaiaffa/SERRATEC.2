CREATE TABLE "categoria" (
  "id_categoria" serial not null,
  "id_produto" integer not null,
  "nome" varchar(20) not null,
  PRIMARY KEY ("id_categoria")
);

CREATE TABLE "cliente" (
  "id_cliente" serial not null,
  "nome_completo" varchar(30) not null,
  "login" char not null,
  "senha" varchar(8) not null,
  "email" varchar(30) not null,
  "cpf" varchar(11) not null,
  "data_nasc" date not null,
  "telefone" integer not null,
  "id_endereco" integer not null,
  PRIMARY KEY ("id_cliente")
);

CREATE TABLE "estoque" (
  "id_estoque" serial not null,
  "quantidade" integer not null,
  PRIMARY KEY ("id_estoque")
);

CREATE TABLE "pedido" (
  "id_pedido" serial not null,
  "data_pedido" date not null,
  "id_cliente" integer not null,
  "quantidade" integer not null,
  PRIMARY KEY ("id_pedido")
);

CREATE TABLE "funcionario" (
  "id_funcionario" serial not null,
  "nome" varchar(30) not null,
  "cpf" integer not null,
  "salario" decimal,
  "id_endereco" integer  not null,
  PRIMARY KEY ("id_funcionario")
);

CREATE TABLE "endereco" (
  "id_endereco" serial not null,
  "cep" varchar(8),
  "rua" varchar(50),
  "bairro" varchar(50) ,
  "cidade" varchar(20) ,
  "estado" varchar(20),
  PRIMARY KEY ("id_endereco")
);

CREATE TABLE "produto" (
  "id_produto" serial not null,
  "nome" varchar(30) not null,
  "data_fab" date not null,
  "valor_uni" decimal not null,
  "data_cadastro" date not null,
  "preco" decimal not null,
  "id_funcionario" integer not null,
  "id_estoque" integer not null,
  "id_pedido" integer not null,
  PRIMARY KEY ("id_produto"),
  CONSTRAINT "FK_produto.id_pedido"
    FOREIGN KEY ("id_pedido")
      REFERENCES "pedido"("id_pedido"),
  CONSTRAINT "FK_produto.id_estoque"
    FOREIGN KEY ("id_estoque")
      REFERENCES "estoque"("id_estoque"),
  CONSTRAINT "FK_produto.id_funcionario"
    FOREIGN KEY ("id_funcionario")
      REFERENCES "funcionario"("id_funcionario")
);

alter table funcionario alter column cpf type char(14);

alter table categoria add constraint "FK_categoria.id_produto" 
    foreign key ("id_produto")
        references "produto"("id_produto");
       
alter table pedido add constraint "FK_pedido.id_cliente" 
    foreign key ("id_cliente")
        references "cliente"("id_cliente");
       
alter table cliente add constraint "FK_cliente.id_endereco" 
    foreign key ("id_endereco")
        references "endereco"("id_endereco");
       
       
insert into endereco(cep, rua, bairro, cidade, estado) 
values ('2800000', 'antonio thuler','olaria', 'NovaFriburgo','RJ');       
        
insert into funcionario(nome, cpf, salario, id_endereco) 
values ('Matheus de Araújo Simões', '062.933.544-98','70000', 1);

select * from funcionario;

insert into endereco(cep, rua, bairro, cidade, estado) 
values ('25957005', 'acre','araras', 'Teresópolis','RJ'); 

insert into funcionario(nome, cpf, salario, id_endereco) 
values ('Jefferson Paixão', '527.544.166-50','25000', 2);

insert into funcionario(nome, cpf, salario, id_endereco) 
values ('Luis Filipe Winther', '275.298.900-85','1200',3);

insert into funcionario(nome, cpf, salario, id_endereco) 
values ('Luana Misaki', '842.216.893-66','3000',4);

insert into funcionario(nome, cpf, salario,id_endereco) 
values ('Lorenna Caiaffa', '590.721.992-00','8000', 5);

insert into funcionario(nome, cpf, salario,id_endereco) 
values ('Geisa Alves', '670.316.906-33','7000', 6);

insert into endereco (cep, rua, bairro, cidade, estado)
values ('28630487', 'Carlos Condack', 'São Geraldo', 'Nova Friburgo', 'RJ');

insert into endereco (cep, rua, bairro, cidade, estado)
values ('28614090', 'RauSertan', 'Parque Santa Eliza', 'Nova Friburgo', 'RJ');

insert into endereco (cep, rua, bairro, cidade, estado)
values ('22159385', 'São João', 'Industrial', 'Palmas', 'TO');

insert into endereco (cep, rua, bairro, cidade, estado)
values ('49519352', 'Sete de Setembro', 'Centro', 'Manaus', 'AM');

insert into endereco (cep, rua, bairro, cidade, estado)
values ('68176671', 'São Pedro', 'São José', 'São Paulo', 'SP');

insert into endereco (cep, rua, bairro, cidade, estado)
values ('52275644', 'Vinte e três', 'Planalto', 'Fortaleza', 'CE');

insert into endereco (cep, rua, bairro, cidade, estado)
values ('59665324', 'Dois', 'São Francisco', 'Patos', 'PB');

insert into endereco (cep, rua, bairro, cidade, estado)
values ('69270239', 'Treze de Maio', 'São Francisco', 'Teresina', 'PI');

insert into endereco (cep, rua, bairro, cidade, estado)
values ('60077520', 'Rui Barbosa', 'Aeroporto 10', 'São Francisco', 'RS');

insert into endereco (cep, rua, bairro, cidade, estado)
values ('29145672', 'Alagoas', 'São José', 'São Gonçalo', 'RN');

alter table cliente alter column login type varchar(20);
alter table cliente alter column cpf type varchar(14);
alter table cliente alter column telefone type int8;

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('JOAO NASCIMENTO CASTRO', 'joao_nas','qH5@b0!', 'lucas@lucas.com.br', '706.747.143-50', '05-04-1984', 21967482525, 7);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('LUIZ MARTINS CAMPOS', 'luiz-mar', 'nI6PZRE', 'marcos@marcos.com.br', '971.821.082-24', '05-04-2000', 92951616319, 8);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('MARCOS MOREIRA LOPES', 'moreira-lopes', 'zT1!eW6', 'luiz@luiz.com.br', '870.130.959-58', '05-04-1991', 96934393803, 9);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('CARLOS MEDEIROS BARBOSA', 'carlos-medeiros', 'xW5%5&c%', 'lucas@lucas.com.br', '989.036.290-27', '05-04-1999', 31943915202, 10);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('ANTONIO ALVES CARDOSO', 'alves-cardoso', 'aM0^b%kU', 'marcos@marcos.com.br', '583.819.522-39', '05-04-2001', 79923336001, 11);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('PAULO DIAS SOUZA', 'paulo-dias', 'kG7^TWLt', 'francisco@francisco.com.br', '590.995.302-85', '05-04-2004', 62931483535, 12);

alter table cliente alter column telefone type varchar(14);

alter table estoque add id_produto integer not null;

alter table produto drop id_estoque;

alter table produto drop id_pedido;

alter table estoque add constraint "FK_produto.id_produto"
    foreign key ("id_produto")
        references "produto"("id_produto");


select * from cliente

update cliente set telefone='(21) 967482525' where id_cliente =1;
update cliente set telefone='(92) 951616329' where id_cliente =2;
update cliente set telefone='(96) 934393803' where id_cliente =3;
update cliente set telefone='(31) 943915202' where id_cliente =4;
update cliente set telefone='(79) 923336001' where id_cliente =5;
update cliente set telefone='(62) 931483535' where id_cliente =6;

alter table produto drop preco;

insert into produto (nome, data_fab, valor_uni, data_cadastro, id_funcionario)
values ('Playstation 5', '05-01-2022', 5598, '03-04-2022', 1);

insert into produto (nome, data_fab, valor_uni, data_cadastro, id_funcionario)
values ('Placa de vídeo', '20-12-2021', 289.99, '05-04-2022', 2);

insert into produto (nome, data_fab, valor_uni, data_cadastro, id_funcionario)
values ('Iphone 13', '01-02-2022', 5849.10, '03-04-2022', 3);

insert into produto (nome, data_fab, valor_uni, data_cadastro, id_funcionario)
values ('Smart TV', '30-03-2022', 2279.05, '03-04-2022', 4);

insert into produto (nome, data_fab, valor_uni, data_cadastro, id_funcionario)
values ('God of War', '04-04-2020', 299.99, '05-04-2022', 5);

insert into produto(nome, data_fab, valor_uni, data_cadastro, id_funcionario ) 
values ('Guitarra ESP Snakebyte','10/01/2022','30000','06-05-2006',6);

insert into categoria (id_produto, nome) values (8,'hardware');

insert into categoria(id_produto,nome) values (3,'console');

insert into categoria(id_produto,nome) values (7,'celular');

insert into categoria(id_produto,nome) values  (6,'TV');

insert into categoria(id_produto,nome) values  (4,'Instrumentos Musicais');

insert into categoria(id_produto,nome) values  (5,'Jogos');

select * from produto;
alter table categoria alter column nome type varchar (50);

select * from categoria;

