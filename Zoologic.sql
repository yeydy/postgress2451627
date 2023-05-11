--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-11 10:28:13

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
-- TOC entry 7 (class 2615 OID 24744)
-- Name: zoologico; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA zoologico;


ALTER SCHEMA zoologico OWNER TO postgres;

--
-- TOC entry 2 (class 3079 OID 24745)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3324 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 24755)
-- Name: mascotas; Type: TABLE; Schema: zoologico; Owner: postgres
--

CREATE TABLE zoologico.mascotas (
    "ID" integer NOT NULL,
    nombre character varying(20) NOT NULL,
    propietario character varying(60) NOT NULL,
    especie character varying(20) NOT NULL,
    sexo character(20) NOT NULL,
    nacimiento date NOT NULL,
    fallecimiento date
);


ALTER TABLE zoologico.mascotas OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 24755)
-- Dependencies: 216
-- Data for Name: mascotas; Type: TABLE DATA; Schema: zoologico; Owner: postgres
--

COPY zoologico.mascotas ("ID", nombre, propietario, especie, sexo, nacimiento, fallecimiento) FROM stdin;
11	Cookies\n	Katerine Garcia	Gato	Hembra              	2020-03-05	\N
12	Max	Jaireth Perez	Perro	Macho               	2022-01-21	\N
13	Coco	Angie Becerra	Conejo	Hembra              	2020-07-08	\N
14	Simba	Camilo Garces	Perro	Macho               	2021-05-03	\N
15	Mirry	Josepth Nava	Periquito	Macho               	2019-05-11	\N
\.


--
-- TOC entry 3175 (class 2606 OID 24759)
-- Name: mascotas mascotas_pkey; Type: CONSTRAINT; Schema: zoologico; Owner: postgres
--

ALTER TABLE ONLY zoologico.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY ("ID");


-- Completed on 2023-05-11 10:28:13

--
-- PostgreSQL database dump complete
--

