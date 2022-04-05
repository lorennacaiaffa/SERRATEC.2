
alter table estoque add id_produto integer not null;

alter table produto drop id_estoque;

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

