create table avghomeinsurancecostregions (
   id                   SERIAL,
   region               varchar(254)         null,
   apartment            float8               null,
   house                float8               null,
   constraint pk_avghomeinsurancecostregions primary key (id)
);

create unique index avghomeinsurancecostregions_pk on avghomeinsurancecostregions (
id
);

create table avghomeinsurancecosttown (
   id                   SERIAL,
   town                 varchar(254)         null,
   apartment            float8               null,
   house                float8               null,
   constraint pk_avghomeinsurancecosttown primary key (id),
   constraint ak_identifier_1_avghomei unique (id)
);

create unique index avghomeinsurancecosttown_pk on avghomeinsurancecosttown (
id
);

create table hospitalization (
   id                   SERIAL,
   clinic               float8               null,
   phsy                 float8               null,
   constraint pk_hospitalization primary key (id)
);

create unique index hospitalization_pk on hospitalization (
id
);

create table indiceffb (
   id                   SERIAL,
   year                 int4                 null,
   t1                   float8               null,
   t2                   float8               null,
   t3                   float8               null,
   t4                   float8               null,
   constraint pk_indiceffb primary key (id)
);

create unique index indiceffb_pk on indiceffb (
id
);

create table indiceicc (
   id                   SERIAL,
   year                 int4                 null,
   t1                   float8               null,
   t2                   float8               null,
   t3                   float8               null,
   t4                   float8               null,
   constraint pk_indiceicc primary key (id),
   constraint ak_identifier_1_indiceic unique (id)
);

create unique index indiceicc_pk on indiceicc (
id
);

create table pricem2 (
   id                   SERIAL,
   town                 varchar(254)         null,
   dptcode              varchar(254)         null,
   price                float8               null,
   constraint pk_pricem2 primary key (id)
);

create unique index pricem2_pk on pricem2 (
id
);

