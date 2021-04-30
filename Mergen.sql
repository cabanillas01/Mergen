/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     30/04/2021 19:42:15                          */
/*==============================================================*/


drop table if exists CATEGORIA;

drop table if exists FACULDADE;

drop table if exists FORMA_PAGAMENTO;

drop table if exists HISTORICO;

drop table if exists PEDIDO;

drop table if exists PRODUTO;

drop table if exists PROMOCAO;

drop table if exists USUARIO;

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA
(
   ID                   int not null,
   NOME                 varchar(200),
   FOTO                 varchar(100)
);

alter table CATEGORIA
   add primary key (ID);

/*==============================================================*/
/* Table: FACULDADE                                             */
/*==============================================================*/
create table FACULDADE
(
   ID                   int not null,
   NOME                 varchar(200),
   ENDERECO             varchar(100),
   CAMPUS               varchar(100),
   HOR_FUNC             time,
   TELEFONE             varchar(40)
);

alter table FACULDADE
   add primary key (ID);

/*==============================================================*/
/* Table: FORMA_PAGAMENTO                                       */
/*==============================================================*/
create table FORMA_PAGAMENTO
(
   ID                   int not null,
   NOME_TITULAR         varchar(200),
   COD_SEG              char(3),
   DATA_VALID           date
);

alter table FORMA_PAGAMENTO
   add primary key (ID);

/*==============================================================*/
/* Table: HISTORICO                                             */
/*==============================================================*/
create table HISTORICO
(
   ID                   int not null,
   DESCRICAO            varchar(200),
   DATA                 date,
   PRECO                double(9,2)
);

alter table HISTORICO
   add primary key (ID);

/*==============================================================*/
/* Table: PEDIDO                                                */
/*==============================================================*/
create table PEDIDO
(
   ID                   int not null,
   "DESC"               varchar(200),
   PRECO_TOTAL          double(9,2),
   DATA_AGEN            date,
   DATA_INICIO          date,
   STATUS               char(1),
   ID_PRODUTO           int
);

alter table PEDIDO
   add primary key (ID);

/*==============================================================*/
/* Table: PRODUTO                                               */
/*==============================================================*/
create table PRODUTO
(
   ID                   int,
   NOME                 varchar(100),
   FOTO                 varchar(20),
   DESCRICAO            varchar(200),
   PRECO                double(9,2),
   QNT                  int,
   CATEGORIA_ID         int
);

/*==============================================================*/
/* Table: PROMOCAO                                              */
/*==============================================================*/
create table PROMOCAO
(
   ID                   int not null,
   PRODUTOS             int,
   DATA_INICIO          date,
   DATA_FIM             date,
   PRECO                double(9,2)
);

alter table PROMOCAO
   add primary key (ID);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   ID                   int not null,
   FOR_ID               int,
   NOME                 varchar(100),
   TELEFONE             varchar(100),
   RA                   varchar(100),
   TIPO                 boolean,
   EMAIL                varchar(100),
   SENHA                varchar(50)
);

alter table USUARIO
   add primary key (ID);

alter table CATEGORIA add constraint FK_PERTENCE foreign key (ID)
      references PRODUTO (CATEGORIA_ID) on delete restrict on update restrict;

alter table FACULDADE add constraint FK_RECEBE foreign key (ID)
      references PEDIDO (ID) on delete restrict on update restrict;

alter table PEDIDO add constraint FK_POSSUI foreign key (ID)
      references HISTORICO (ID) on delete restrict on update restrict;

alter table PEDIDO add constraint FK_TEM foreign key (ID_PRODUTO)
      references PRODUTO (ID) on delete restrict on update restrict;

alter table PROMOCAO add constraint FK_CONTEM foreign key (PRODUTOS)
      references PRODUTO (ID) on delete restrict on update restrict;

alter table USUARIO add constraint FK_FAZ foreign key (ID)
      references PEDIDO (ID) on delete restrict on update restrict;

alter table USUARIO add constraint FK_TEM foreign key (FOR_ID)
      references FORMA_PAGAMENTO (ID) on delete restrict on update restrict;

