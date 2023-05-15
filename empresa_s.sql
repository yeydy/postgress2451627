--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2023-05-15 14:25:02

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
-- TOC entry 203 (class 1259 OID 16470)
-- Name: Empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Empleados" (
    id_emp smallint NOT NULL,
    dni_emp integer NOT NULL,
    nombre_emp character varying NOT NULL,
    direccion_emp character varying NOT NULL,
    telefono_emp integer NOT NULL,
    fecha_naci_emp date NOT NULL,
    salario_anual_emp double precision NOT NULL,
    id_ofi integer NOT NULL
);


ALTER TABLE public."Empleados" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16468)
-- Name: Empleados_id_emp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Empleados_id_emp_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Empleados_id_emp_seq" OWNER TO postgres;

--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 202
-- Name: Empleados_id_emp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Empleados_id_emp_seq" OWNED BY public."Empleados".id_emp;


--
-- TOC entry 206 (class 1259 OID 16488)
-- Name: Pariente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pariente" (
    id_par integer NOT NULL,
    nombre_par character varying NOT NULL,
    parentesco_par character varying NOT NULL,
    direccion_par character varying NOT NULL,
    telefono_par integer NOT NULL,
    id_emp integer NOT NULL
);


ALTER TABLE public."Pariente" OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16486)
-- Name: Pariente_id_emp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pariente_id_emp_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pariente_id_emp_seq" OWNER TO postgres;

--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 205
-- Name: Pariente_id_emp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pariente_id_emp_seq" OWNED BY public."Pariente".id_emp;


--
-- TOC entry 204 (class 1259 OID 16484)
-- Name: Pariente_id_par_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pariente_id_par_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pariente_id_par_seq" OWNER TO postgres;

--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 204
-- Name: Pariente_id_par_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pariente_id_par_seq" OWNED BY public."Pariente".id_par;


--
-- TOC entry 201 (class 1259 OID 16397)
-- Name: oficinas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.oficinas (
    id_ofi integer NOT NULL,
    direccion_ofi character varying NOT NULL,
    telefono_ofi integer NOT NULL,
    fax_ofi integer NOT NULL
);


ALTER TABLE public.oficinas OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16395)
-- Name: oficinas_id_ofi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.oficinas_id_ofi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oficinas_id_ofi_seq OWNER TO postgres;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 200
-- Name: oficinas_id_ofi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.oficinas_id_ofi_seq OWNED BY public.oficinas.id_ofi;


--
-- TOC entry 2868 (class 2604 OID 16473)
-- Name: Empleados id_emp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Empleados" ALTER COLUMN id_emp SET DEFAULT nextval('public."Empleados_id_emp_seq"'::regclass);


--
-- TOC entry 2869 (class 2604 OID 16491)
-- Name: Pariente id_par; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pariente" ALTER COLUMN id_par SET DEFAULT nextval('public."Pariente_id_par_seq"'::regclass);


--
-- TOC entry 2870 (class 2604 OID 16492)
-- Name: Pariente id_emp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pariente" ALTER COLUMN id_emp SET DEFAULT nextval('public."Pariente_id_emp_seq"'::regclass);


--
-- TOC entry 2867 (class 2604 OID 16400)
-- Name: oficinas id_ofi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oficinas ALTER COLUMN id_ofi SET DEFAULT nextval('public.oficinas_id_ofi_seq'::regclass);


--
-- TOC entry 3012 (class 0 OID 16470)
-- Dependencies: 203
-- Data for Name: Empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Empleados" (id_emp, dni_emp, nombre_emp, direccion_emp, telefono_emp, fecha_naci_emp, salario_anual_emp, id_ofi) FROM stdin;
11	1023952	mariana	calle 4	3201562	2005-03-20	900000	1
12	516523	juliana	calle 1	3102642	2003-07-28	800000	2
13	1092526	santiago	Av 8	3202545	2001-06-16	860000	3
14	3102569	Carolina	Calle 5	31156920	0199-06-25	750000	4
15	6215963	katerine	Av 7	32026971	1989-06-22	660000	5
16	5126974	Lina	Calle 6	31269521	2000-12-31	990000	6
17	5236985	Camilo	Calle 1	31625693	1995-06-28	530000	7
18	1092654	Ximena	Av 8	31269542	2002-06-15	990000	8
19	1036524	Natalia	Calle 6	32201526	1980-06-07	950000	9
20	1036582	Karen	Av 9	32201526	2003-11-06	880000	10
\.


--
-- TOC entry 3015 (class 0 OID 16488)
-- Dependencies: 206
-- Data for Name: Pariente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pariente" (id_par, nombre_par, parentesco_par, direccion_par, telefono_par, id_emp) FROM stdin;
1	jose	hermano\n	Calle 32	31102596	11
2	maria	hermana	Av 1	32202569	12
3	marta	tia	Calle 45	31159566	13
4	julian	primo	Av 8	31026596	14
5	silvia	mama	calle 72	32208856	15
6	karen	prima	Av 9	31206952	16
7	Andres	tio	Av 2	31884652	17
8	Nasly	esposa	Av 5	31652671	18
9	Camila	tia	Calle 4	31452369	19
10	Felipe	papá	Calle 7	32201595	20
\.


--
-- TOC entry 3010 (class 0 OID 16397)
-- Dependencies: 201
-- Data for Name: oficinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.oficinas (id_ofi, direccion_ofi, telefono_ofi, fax_ofi) FROM stdin;
1	Av 4 # 6-50	3138940	5
2	Calle 5 # 5-49	3102695	6
3	calle 6 # 6-18	5164528	7
4	Av 1 # 2-30	3223536	2
5	Av 0 # 4-28	3102956	9
6	calle 2 # 6-19	3158423	10
7	Calle 8 # 5-29	3119542	8
8	Av 5 # 6-30	32226106	15
9	Calle 2 # 7-49	31624931	1
10	Calle 7 #4-28	32054926	11
\.


--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 202
-- Name: Empleados_id_emp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Empleados_id_emp_seq"', 1, false);


--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 205
-- Name: Pariente_id_emp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pariente_id_emp_seq"', 1, false);


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 204
-- Name: Pariente_id_par_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pariente_id_par_seq"', 1, false);


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 200
-- Name: oficinas_id_ofi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.oficinas_id_ofi_seq', 1, false);


--
-- TOC entry 2872 (class 2606 OID 16405)
-- Name: oficinas oficinas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.oficinas
    ADD CONSTRAINT oficinas_pkey PRIMARY KEY (id_ofi);


--
-- TOC entry 2874 (class 2606 OID 16478)
-- Name: Empleados pk_id_emp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT pk_id_emp PRIMARY KEY (id_emp);


--
-- TOC entry 2876 (class 2606 OID 16497)
-- Name: Pariente pk_id_par; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pariente"
    ADD CONSTRAINT pk_id_par PRIMARY KEY (id_par);


--
-- TOC entry 2878 (class 2606 OID 16498)
-- Name: Pariente fk_id_emp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pariente"
    ADD CONSTRAINT fk_id_emp FOREIGN KEY (id_emp) REFERENCES public."Empleados"(id_emp);


--
-- TOC entry 2877 (class 2606 OID 16479)
-- Name: Empleados fk_id_ofi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT fk_id_ofi FOREIGN KEY (id_ofi) REFERENCES public.oficinas(id_ofi);


-- Completed on 2023-05-15 14:25:02

--
-- PostgreSQL database dump complete
--

