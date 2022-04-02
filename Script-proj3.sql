CREATE TABLE "vendedor" (
  "id_vendedor" serial not null,
  "id_enderecos" integer not null,
  "nome" varchar(50) not null,
  "comissao" decimal,
  PRIMARY KEY ("id_vendedor")
);

CREATE TABLE "cliente" (
  "id_cliente" serial not null,
  "id_enderecos" integer not null,
  "nome" varchar(50) not null,
  "faturamento_acumulado" decimal,
  "limite_credito" decimal,
  "id_vendedor" integer not null,
  PRIMARY KEY ("id_cliente"),
  CONSTRAINT "FK_cliente.id_vendedor"
    FOREIGN KEY ("id_vendedor")
      REFERENCES "vendedor"("id_vendedor")
);

CREATE TABLE "pedido" (
  "id_numero" serial not null,
  "id_cliente" integer not null,
  "id_quantidade" integer not null,
  "data" date,
  PRIMARY KEY ("id_numero"),
  CONSTRAINT "FK_pedido.id_cliente"
    FOREIGN KEY ("id_cliente")
      REFERENCES "cliente"("id_cliente")
);

CREATE TABLE "armazem" (
  "id_armazem" serial not null,
  "id_enderecos" integer not null,
  "numero_armazem" integer not null,
  PRIMARY KEY ("id_armazem")
);

CREATE TABLE "peca" (
  "id_peca" serial not null,
  "id_armazem" integer not null,
  "descricao" varchar(30),
  "estoque" integer,
  PRIMARY KEY ("id_peca"),
  CONSTRAINT "FK_peca.id_armazem"
    FOREIGN KEY ("id_armazem")
      REFERENCES "armazem"("id_armazem")
);

CREATE TABLE "quantidade" (
  "id_quantidade" serial not null,
  "preco" decimal,
  "desconto" decimal,
  "preco_final" decimal,
  "id_peca" integer not null,
  PRIMARY KEY ("id_quantidade"),
  CONSTRAINT "FK_quantidade.id_peca"
    FOREIGN KEY ("id_peca")
      REFERENCES "peca"("id_peca")
);

CREATE TABLE "enderecos" (
  "id_enderecos" serial not null,
  "cep" varchar(8) not null,
  "rua" varchar(50) not null,
  "numero" integer not null,
  "bairro" varchar(30) not null,
  "cidade" varchar(30) not null,
  PRIMARY KEY ("id_enderecos")
);


alter table cliente add constraint "FK_enderecos.id_enderecos" 
	foreign key ("id_enderecos")
		references "enderecos"("id_enderecos");	

alter table armazem add constraint "FK_enderecos.id_enderecos" 
	foreign key ("id_enderecos")
		references "enderecos"("id_enderecos");
	
alter table vendedor add constraint "FK_enderecos.id_enderecos" 
	foreign key ("id_enderecos")
		references "enderecos"("id_enderecos");
