--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-08 13:37:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 16398)
-- Name: zologico; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA zologico;


ALTER SCHEMA zologico OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16399)
-- Name: mascotas; Type: TABLE; Schema: zologico; Owner: postgres
--

CREATE TABLE zologico.mascotas (
    id integer NOT NULL,
    "nombre " character(20) NOT NULL,
    propetario character(50) NOT NULL,
    especie character(20) NOT NULL,
    sexo character(3)[] NOT NULL,
    nacimiento date[] NOT NULL,
    fallecimiento date[] NOT NULL
);


ALTER TABLE zologico.mascotas OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 16399)
-- Dependencies: 216
-- Data for Name: mascotas; Type: TABLE DATA; Schema: zologico; Owner: postgres
--

COPY zologico.mascotas (id, "nombre ", propetario, especie, sexo, nacimiento, fallecimiento) FROM stdin;
\.


--
-- TOC entry 3175 (class 2606 OID 16405)
-- Name: mascotas mascotas_pkey; Type: CONSTRAINT; Schema: zologico; Owner: postgres
--

ALTER TABLE ONLY zologico.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY (id);


-- Completed on 2023-05-08 13:37:16

--
-- PostgreSQL database dump complete
--

