CREATE TABLE "enderecos" (
  "id_enderecos" serial not null,
  "cep" varchar(8),
  "rua" varchar(50),
  "numero" integer,
  "bairro" varchar(30),
  "cidade" varchar(30),
  PRIMARY KEY ("id_enderecos")
);

CREATE TABLE "departamento" (
  "id_departamento" serial not null,
  "setor" varchar(50),
  "id_funcionario" integer not null,
  PRIMARY KEY ("id_departamento")
);

CREATE TABLE "funcionario" (
  "id_funcionario" serial not null,
  "nome_funcionario" varchar(100),
  "salario" decimal,
  "telefone" integer,
  PRIMARY KEY ("id_funcionario")
);

CREATE TABLE "fornecedor" (
  "id_fornecedor" serial not null,
  "id_enderecos" integer not null,
  PRIMARY KEY ("id_fornecedor")
);

CREATE TABLE "pecas" (
  "id_pecas" serial  not null,
  "peso" integer,
  "cor" varchar(20),
  "id_fornecedor" integer  not null,
  "id_deposito" integer not null,
  PRIMARY KEY ("id_pecas"),
  CONSTRAINT "FK_pecas.id_fornecedor"
    FOREIGN KEY ("id_fornecedor")
      REFERENCES "fornecedor"("id_fornecedor")
);

CREATE TABLE "projeto" (
  "id_projeto" serial not null,
  "orcamento" integer,
  "hora_inicio" date,
  "hora_trabalhada" time,
  "id_pecas" integer not null,
  "id_funcionario" integer not null,
  PRIMARY KEY ("id_projeto"),
  CONSTRAINT "FK_projeto.id_funcionario"
    FOREIGN KEY ("id_funcionario")
      REFERENCES "funcionario"("id_funcionario")
);

CREATE TABLE "deposito" (
  "id_deposito" serial not null,
  "id_enderecos" integer not null,
  PRIMARY KEY ("id_deposito")
);

alter table departamento add constraint "FK_funcionario.id_funcionario" 
	foreign key ("id_funcionario")
		references "funcionario"("id_funcionario");
	
alter table projeto add constraint "FK_pecas.id_pecas" 
	foreign key ("id_pecas")
		references "pecas"("id_pecas");	

alter table deposito add constraint "FK_enderecos.id_enderecos" 
	foreign key ("id_enderecos")
		references "enderecos"("id_enderecos");	
	
alter table fornecedor add constraint "FK_enderecos.id_enderecos" 
	foreign key ("id_enderecos")
		references "enderecos"("id_enderecos");	

	