-- Table: zoologico .mascotas 

-- DROP TABLE IF EXISTS "zoologico "."mascotas ";

CREATE TABLE IF NOT EXISTS "zoologico "."mascotas "
(
    "ID" integer NOT NULL,
    "Nombre" character(20) COLLATE pg_catalog."default" NOT NULL,
    "Propietario " character(60) COLLATE pg_catalog."default" NOT NULL,
    "Especie" character(20) COLLATE pg_catalog."default" NOT NULL,
    "Sexo" "char" NOT NULL,
    "Nacimiento" date NOT NULL,
    "Fallecimiento" date NOT NULL,
    CONSTRAINT "mascotas _pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "zoologico "."mascotas "
    OWNER to postgres;