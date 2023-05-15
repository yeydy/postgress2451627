-- SCHEMA: Zoologico

-- DROP SCHEMA IF EXISTS "Zoologico" ;

CREATE SCHEMA IF NOT EXISTS "Zoologico"
    AUTHORIZATION postgres;

CREATE TABLE IF NOT EXISTS "Zoologico"."Mascotas"
(
    "ID" integer NOT NULL,
    "Nombre" character(60) COLLATE pg_catalog."default" NOT NULL,
    "Propietario" character(60) COLLATE pg_catalog."default" NOT NULL,
    "Especie" character(20) COLLATE pg_catalog."default" NOT NULL,
    "Sexo" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Nacimiento" date NOT NULL,
    "Fallecimiento" date NOT NULL,
    CONSTRAINT "Mascotas_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "Zoologico"."Mascotas"
    OWNER to postgres;