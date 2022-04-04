CREATE TABLE "categoria" (
  "id_categoria" serial not null,
  "id_produto" integer not null,
  PRIMARY KEY ("id_categoria")
);

CREATE TABLE "cliente" (
  "id_cliente" serial not null,
  "nome_completo" varchar(30) not null,
  "login" char not null,
  "senha" varchar(8) not null,
  "email" varchar not null,
  "cpf" integer not null,
  "data_nasc" date not null,
  "telefone" integer not null,
  "endereço" varchar not null,
  PRIMARY KEY ("id_cliente")
);

CREATE TABLE "funcionario" (
  "id_funcionario" serial not null,
  "nome" varchar(30) not null,
  "cpf" integer not null,
  "salario" decimal,
  PRIMARY KEY ("id_funcionario")
);

CREATE TABLE "pedido" (
  "id_pedido" serial not null,
  "data_pedido" date not null,
  "id_cliente" integer not null,
  "quantidade" integer not null,
  PRIMARY KEY ("id_pedido")
);

CREATE TABLE "estoque" (
  "id_estoque" serial not null,
  "quantidade" integer not null,
  PRIMARY KEY ("id_estoque")
);

CREATE TABLE "produto" (
  "id_produto" serial not null,
  "nome" varchar(30) not null,
  "data_fab" date not null,
  "valor_uni" decimal not null,
  "data_cadastro" date not null,
  "id_funcionario" integer not null,
  "id_estoque" integer not null,
  "id_pedido" integer not null,
  PRIMARY KEY ("id_produto"),
  CONSTRAINT "FK_produto.id_funcionario"
    FOREIGN KEY ("id_funcionario")
      REFERENCES "funcionario"("id_funcionario"),
  CONSTRAINT "FK_produto.id_pedido"
    FOREIGN KEY ("id_pedido")
      REFERENCES "pedido"("id_pedido"),
  CONSTRAINT "FK_produto.id_estoque"
    FOREIGN KEY ("id_estoque")
      REFERENCES "estoque"("id_estoque")
);
alter table categoria add constraint "FK_categoria.id_produto" 
    foreign key ("id_produto")
        references "produto"("id_produto");

alter table pedido add constraint "FK_pedido.id_cliente" 
    foreign key ("id_cliente")
        references "cliente"("id_cliente");
