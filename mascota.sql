-- Table: prueba1.mascotas

-- DROP TABLE IF EXISTS prueba1.mascotas;

CREATE TABLE IF NOT EXISTS prueba1.mascotas
(
    nombre "char"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS prueba1.mascotas
    OWNER to postgres;

COMMENT ON COLUMN prueba1.mascotas.nombre
    IS 'nombre_mascota';