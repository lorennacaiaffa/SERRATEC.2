alter table cliente alter column login type varchar(20);
alter table cliente alter column cpf type varchar(14);
alter table cliente alter column telefone type int8;

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('JOAO NASCIMENTO CASTRO', 'joao_nas','qH5@b0!', 'lucas@lucas.com.br', '706.747.143-50', '05-04-1984', 21967482525, 7);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('LUIZ MARTINS CAMPOS', 'luiz-mar', 'nI6*PZRE', 'marcos@marcos.com.br', '971.821.082-24', '05-04-2000', 92951616319, 8);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('MARCOS MOREIRA LOPES', 'moreira-lopes', 'zT1!eW*6', 'luiz@luiz.com.br', '870.130.959-58', '05-04-1991', 96934393803, 9);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('CARLOS MEDEIROS BARBOSA', 'carlos-medeiros', 'xW5%5&c%', 'lucas@lucas.com.br', '989.036.290-27', '05-04-1999', 31943915202, 10);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('ANTONIO ALVES CARDOSO', 'alves-cardoso', 'aM0^b%kU', 'marcos@marcos.com.br', '583.819.522-39', '05-04-2001', 79923336001, 11);

insert into cliente (nome_completo, login, senha, email, cpf, data_nasc, telefone, id_endereco)
values ('PAULO DIAS SOUZA', 'paulo-dias', 'kG7^TWLt', 'francisco@francisco.com.br', '590.995.302-85', '05-04-2004', 62931483535, 12);
