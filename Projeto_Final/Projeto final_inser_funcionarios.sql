
alter table funcionario alter column cpf type char(14);


insert into funcionario(nome, cpf, salario) 
values ('Matheus de Araújo Simões', '062.933.544-98','70000');

insert into funcionario(nome, cpf, salario) 
values ('Jefferson Paixão', '527.544.166-50','25000');

insert into funcionario(nome, cpf, salario) 
values ('Luis Filipe Winther', '275.298.900-85','1200');

insert into funcionario(nome, cpf, salario) 
values ('Luana Misaki', '842.216.893-66','3000');

insert into funcionario(nome, cpf, salario) 
values ('Lorenna Caiaffa', '590.721.992-00','8000');

insert into funcionario(nome, cpf, salario) 
values ('Geisa Alves', '670.316.906-33','7000');

alter table categoria add nome varchar(20);

alter table categoria add nome_funcionario varchar(20);

insert into categoria(nome) values ('hardware');

insert into categoria(nome) values ('console');

insert into categoria(nome) values ('celular');

insert into categoria(nome) values  ('TV');

insert into categoria(nome) values  ('Instrumentos Musicais');

insert into categoria(nome) values  ('Jogos');













