--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-15 13:42:52

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16516)
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    id_emp integer NOT NULL,
    dni_emp integer NOT NULL,
    nombre_emp character varying(60) NOT NULL,
    direccion_emp character varying(250) NOT NULL,
    telefono_emp integer NOT NULL,
    fecha_naci_emp date NOT NULL,
    cargo_emp character varying(50) NOT NULL,
    fecha_ingreso_emp date NOT NULL,
    salario_anual_emp double precision NOT NULL,
    id_ofi integer NOT NULL
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16511)
-- Name: oficinas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oficinas (
    id_ofi integer NOT NULL,
    direccion_ofi character varying(250) NOT NULL,
    telefono_ofi integer NOT NULL,
    fax_ofi integer NOT NULL
);


ALTER TABLE public.oficinas OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16526)
-- Name: pariente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pariente (
    id_par integer NOT NULL,
    nombre_par character varying(250) NOT NULL,
    parentesco_par character varying(250) NOT NULL,
    direccion_par character varying(250) NOT NULL,
    telefono_par integer NOT NULL,
    id_emp integer NOT NULL
);


ALTER TABLE public.pariente OWNER TO postgres;

--
-- TOC entry 3331 (class 0 OID 16516)
-- Dependencies: 215
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (id_emp, dni_emp, nombre_emp, direccion_emp, telefono_emp, fecha_naci_emp, cargo_emp, fecha_ingreso_emp, salario_anual_emp, id_ofi) FROM stdin;
1	88233214	Geovanny Martinez	Calle 10C #10-32 Buena vista ||	322337843	1882-07-19	Maestro de Construccion	2023-05-15	1500000	1
3	23474234	David Tolosa	Calle 10 carrera 17 #10-32	301834543	1878-04-28	Administrador de carga	2009-01-14	1780000	3
4	35637687	Diego Sanjuan	Cra 5 #34-23	223883434	2002-01-09	Auxiliar de Servicio Tecnico	2023-05-15	1116000	4
5	109347345	Oliver Cardenas	Cra 12 #12-23	302946342	1890-11-20	Contador Publico	2023-05-15	1290000	5
6	345678634	Sergio Peñaranda 	Cra 13 #23-34 Gran Colombia	305345323	2004-07-09	Auxiliar de Servicio Tecnico	2023-05-15	1116000	6
7	1090378874	Jaider Martinez	Calle 2 #13-12	301932843	2004-10-29	Auxiliar de Servicio Tecnico	2023-05-15	1116000	7
8	234246561	Johana Forero	Cra 5 #34-23	305345323	1990-01-01	Analista de Informacion	2023-05-15	1116000	8
2	90123934	Carlos Vargas	Calle 10 #10-32	347267434	1889-01-14	Contador	2023-05-15	1580000	2
9	892874392	Jhuliana Gutierrez	Calle 23 #11-23 	301932433	1990-12-21	Analista de Informacion	2023-05-15	1116000	9
10	235345656	Jorge Barajas	AV 2 Carrera 23 parque de las palomas	397212234	2000-03-02	Analista de Informacion	2023-05-15	1980000	10
\.


--
-- TOC entry 3330 (class 0 OID 16511)
-- Dependencies: 214
-- Data for Name: oficinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oficinas (id_ofi, direccion_ofi, telefono_ofi, fax_ofi) FROM stdin;
1	Cra 16 A1 #23-33	391284628	10039234
2	Cra 10C #27-28	392846394	34537124
3	Cra 12 B1 #34-09	308438525	44354335
4	Cra 14 A1 #22-12	301845455	45654722
5	Cra 11 A1 #24-23	345657556	34543563
6	Cra 11A #23-45	301435345	43543545
7	Cra 13B #23-11	301327343	14353422
8	Calle 10 carrera 17 #10-32	381327434	23423453
9	Calle 5 carrera 4 #02-11	301237374	19248454
10	Calle 02 carrera 16 #23-32	301398642	39823847
\.


--
-- TOC entry 3332 (class 0 OID 16526)
-- Dependencies: 216
-- Data for Name: pariente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pariente (id_par, nombre_par, parentesco_par, direccion_par, telefono_par, id_emp) FROM stdin;
1	Carlos Herrera	Sobrino	Calle 10C #10-32 Buena vista ||	310834234	1
2	Daniel Buitrago	Tio	Calle 10 #10-32	301973454	2
3	Mayerly Barajas	Sobrina	AV 2 Carrera 23 parque de las palomas	345676742	3
4	Santi Guitierrez	Primo	Calle 23 #11-23 	301282435	4
5	Juan Forero	Hermanos	Cra 5 #34-23	321826343	5
6	David Peñaranda	Padre	Cra 13 #23-34 Gran Colombia	302193249	6
7	Jonathan Cardenas	Hermano	Cra 12 #12-23	301923834	7
8	Angel Tolosa	Tio	Calle 10 carrera 17 #10-32	329935452	8
9	Kaleth Martinez	Hermano	Calle 2 #13-12	314489234	9
10	Darwin Sandoval	Prima	Cra 5 #34-23	301983253	10
\.


--
-- TOC entry 3183 (class 2606 OID 16520)
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_emp);


--
-- TOC entry 3181 (class 2606 OID 16515)
-- Name: oficinas oficinas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oficinas
    ADD CONSTRAINT oficinas_pkey PRIMARY KEY (id_ofi);


--
-- TOC entry 3185 (class 2606 OID 16532)
-- Name: pariente pariente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pariente
    ADD CONSTRAINT pariente_pkey PRIMARY KEY (id_par);


--
-- TOC entry 3186 (class 2606 OID 16521)
-- Name: empleados empleados_id_ofi_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_ofi_fkey FOREIGN KEY (id_ofi) REFERENCES public.oficinas(id_ofi);


--
-- TOC entry 3187 (class 2606 OID 16533)
-- Name: pariente pariente_id_emp_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pariente
    ADD CONSTRAINT pariente_id_emp_fkey FOREIGN KEY (id_emp) REFERENCES public.empleados(id_emp);


-- Completed on 2023-05-15 13:42:52

--
-- PostgreSQL database dump complete
--

