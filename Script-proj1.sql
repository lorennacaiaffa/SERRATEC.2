CREATE TABLE "carro" (
  "id_registro" serial not null,
  "marca" varchar(20),
  "id_cliente" integer not  null,
  "id_apolice" integer not null,
  PRIMARY KEY ("id_registro")
);

CREATE TABLE "endereco" (
  "id_endereco" serial not null,
  "cep" integer,
  "rua" varchar(50),
  "numero" int,
  "bairro" varchar(30),
  "estado" char,
  PRIMARY KEY ("id_endereco")
);

CREATE TABLE "cliente" (
  "id_cliente" serial not null,
  "nome" varchar(30),
  "numero" Integer,
  "id_endereco" integer not null,
  PRIMARY KEY ("id_cliente"),
  CONSTRAINT "FK_cliente.id_endereco"
    FOREIGN KEY ("id_endereco")
      REFERENCES "endereco"("id_endereco")
);

CREATE TABLE "acidente" (
  "id_acidente" serial not null,
  "data" date,
  "hora" time,
  "local" varchar(30),
  "id_registro" integer not null,
  PRIMARY KEY ("id_acidente"),
  CONSTRAINT "FK_acidente.id_registro"
    FOREIGN KEY ("id_registro")
      REFERENCES "carro"("id_registro")
);

CREATE TABLE "apolice" (
  "id_apolice" serial not null,
  "numero" integer,
  "valor" integer,
  "id_cliente" integer not null,
  "id_acidente" integer not null,
  PRIMARY KEY ("id_apolice"),
  CONSTRAINT "FK_apolice.id_cliente"
    FOREIGN KEY ("id_cliente")
      REFERENCES "cliente"("id_cliente")
);

alter table carro add constraint "FK_apolice.id_cliente" 
	foreign key ("id_cliente")
		references "cliente"("id_cliente");