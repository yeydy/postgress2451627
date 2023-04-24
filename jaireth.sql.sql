-- Table: Zoologico.mascotas

-- DROP TABLE "Zoologico".mascotas;

CREATE TABLE IF NOT EXISTS "Zoologico".mascotas
(
    "ID" integer NOT NULL,
    "Nombre" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "Propietario" character varying(60) COLLATE pg_catalog."default" NOT NULL,
    "Especie" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "Sexo" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Nacimiento" date NOT NULL,
    "Fallecimiento" date,
    CONSTRAINT mascotas_pkey PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE "Zoologico".mascotas
    OWNER to postgres;