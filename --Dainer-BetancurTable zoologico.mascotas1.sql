-- Table: zoologico.mascotas1

-- DROP TABLE IF EXISTS zoologico.mascotas1;

CREATE TABLE IF NOT EXISTS zoologico.mascotas1
(
    "ID" integer NOT NULL,
    nombre character(20) COLLATE pg_catalog."default" NOT NULL,
    propietario character(60) COLLATE pg_catalog."default" NOT NULL,
    "especie " character(20) COLLATE pg_catalog."default" NOT NULL,
    sexo character(1) COLLATE pg_catalog."default" NOT NULL,
    nacimiento date NOT NULL,
    fallecimiento date,
    CONSTRAINT mascotas1_pkey PRIMARY KEY ("ID")
)
    INHERITS (zoologico.mascotas)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS zoologico.mascotas1
    OWNER to postgres;