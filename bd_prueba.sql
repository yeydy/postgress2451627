--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2023-05-15 14:12:36

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
-- TOC entry 201 (class 1259 OID 16403)
-- Name: Empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Empleados" (
    id_emp integer NOT NULL,
    dni_emp integer NOT NULL,
    nombre_emp character varying,
    direccion_emp character varying,
    telefono_emp character varying,
    fecha_naci_emp date,
    salario_anual_emp integer,
    id_ofi integer
);


ALTER TABLE public."Empleados" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16401)
-- Name: Empleados_id_emp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Empleados_id_emp_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Empleados_id_emp_seq" OWNER TO postgres;

--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 200
-- Name: Empleados_id_emp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Empleados_id_emp_seq" OWNED BY public."Empleados".id_emp;


--
-- TOC entry 205 (class 1259 OID 16430)
-- Name: Inmuebles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Inmuebles" (
    id_inm integer NOT NULL,
    direccion_inm character varying,
    tipo_inm character varying,
    nro_habi_inm integer,
    precio_alquiler_inm double precision,
    precio_venta_inm double precision,
    galeria character varying,
    id_ofi integer,
    id_pro integer,
    id_emp integer
);


ALTER TABLE public."Inmuebles" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16428)
-- Name: Inmuebles_id_inm_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Inmuebles_id_inm_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Inmuebles_id_inm_seq" OWNER TO postgres;

--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 204
-- Name: Inmuebles_id_inm_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Inmuebles_id_inm_seq" OWNED BY public."Inmuebles".id_inm;


--
-- TOC entry 203 (class 1259 OID 16414)
-- Name: Oficinas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Oficinas" (
    id_ofi integer NOT NULL,
    direccion_ofi character varying,
    telefono_ofi integer,
    fax_ofi integer
);


ALTER TABLE public."Oficinas" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16412)
-- Name: Oficinas_id_ofi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Oficinas_id_ofi_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Oficinas_id_ofi_seq" OWNER TO postgres;

--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 202
-- Name: Oficinas_id_ofi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Oficinas_id_ofi_seq" OWNED BY public."Oficinas".id_ofi;


--
-- TOC entry 2865 (class 2604 OID 16406)
-- Name: Empleados id_emp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Empleados" ALTER COLUMN id_emp SET DEFAULT nextval('public."Empleados_id_emp_seq"'::regclass);


--
-- TOC entry 2867 (class 2604 OID 16433)
-- Name: Inmuebles id_inm; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Inmuebles" ALTER COLUMN id_inm SET DEFAULT nextval('public."Inmuebles_id_inm_seq"'::regclass);


--
-- TOC entry 2866 (class 2604 OID 16417)
-- Name: Oficinas id_ofi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oficinas" ALTER COLUMN id_ofi SET DEFAULT nextval('public."Oficinas_id_ofi_seq"'::regclass);


--
-- TOC entry 3008 (class 0 OID 16403)
-- Dependencies: 201
-- Data for Name: Empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Empleados" (id_emp, dni_emp, nombre_emp, direccion_emp, telefono_emp, fecha_naci_emp, salario_anual_emp, id_ofi) FROM stdin;
3	123456	Katerine	Av8 #40	3201456	1998-03-14	2000000	1
4	321654	Jaireth	Av9 #25	3204151	1998-05-14	2000000	2
5	315154	Silvia	Av6 #45	4515212	1998-03-03	1200000	3
6	135165	Camilo	Av7 #13	1231552	1999-05-17	1500000	4
7	545454	Josepth	Av9 #25	1515524	1998-04-06	1500000	5
8	456465	Sergio	Av8 #45	1321151	1997-05-04	2000000	6
9	455641	Dainer	Av5 #10	4541523	1995-12-09	2000000	7
10	878454	Alejandra	Av8 #20	4848412	2000-07-08	1500000	8
11	745452	Sebastian	Av5 #05	4848513	1999-11-16	1200000	9
12	456411	Ignacio	Av10 #20	4516517	1999-05-11	2000000	10
\.


--
-- TOC entry 3012 (class 0 OID 16430)
-- Dependencies: 205
-- Data for Name: Inmuebles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Inmuebles" (id_inm, direccion_inm, tipo_inm, nro_habi_inm, precio_alquiler_inm, precio_venta_inm, galeria, id_ofi, id_pro, id_emp) FROM stdin;
1	Av6 #20	Apartamento	1	1000000	2000000	galeria 1	1	\N	3
2	Av9 #34	Casa	2	100000	3400000	galeria 2	2	\N	4
4	Av8 #33	Casa	4	100000	2400000	galeria 4	4	\N	6
5	Av8 #44	Apartamento	5	1500000	2000000	galeria 5	5	\N	7
6	Av9 #24	Casa	6	150000	2300000	galeria 6	6	\N	8
7	Av9 #3	Apartamento	7	1400000	5100000	galeria 7	7	\N	9
3	Av7 #22	Apartamento	3	1000000	2500000	galeria 3	3	\N	5
8	Av6 #55	Casa	8	120000	2600000	galeria 8	8	\N	10
9	Av9 #66	Apartamento	9	1500000	3500000	galeria 9	9	\N	11
10	Av9 #50	Casa	10	150000	3500000	galeria 10	10	\N	12
\.


--
-- TOC entry 3010 (class 0 OID 16414)
-- Dependencies: 203
-- Data for Name: Oficinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Oficinas" (id_ofi, direccion_ofi, telefono_ofi, fax_ofi) FROM stdin;
1	Av40 #45	3504566	111
2	Av13 #25	3504577	112
3	Av9 #30	3504588	113
4	Av2 #45	3504599	114
5	Av7 #45	3504466	115
6	Av8 #23	3504477	116
7	Av2 #40	3504488	117
8	Av9 #32	3504499	118
9	Av10 #15	3503366	119
10	Av12 #25	3503377	120
\.


--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 200
-- Name: Empleados_id_emp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Empleados_id_emp_seq"', 12, true);


--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 204
-- Name: Inmuebles_id_inm_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Inmuebles_id_inm_seq"', 10, true);


--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 202
-- Name: Oficinas_id_ofi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Oficinas_id_ofi_seq"', 10, true);


--
-- TOC entry 2869 (class 2606 OID 16411)
-- Name: Empleados pk_id_emp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT pk_id_emp PRIMARY KEY (id_emp);


--
-- TOC entry 2873 (class 2606 OID 16438)
-- Name: Inmuebles pk_id_inm; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT pk_id_inm PRIMARY KEY (id_inm);


--
-- TOC entry 2871 (class 2606 OID 16422)
-- Name: Oficinas pk_id_ofi; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Oficinas"
    ADD CONSTRAINT pk_id_ofi PRIMARY KEY (id_ofi);


--
-- TOC entry 2876 (class 2606 OID 16444)
-- Name: Inmuebles fk_id_emp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT fk_id_emp FOREIGN KEY (id_emp) REFERENCES public."Empleados"(id_emp) NOT VALID;


--
-- TOC entry 2874 (class 2606 OID 16423)
-- Name: Empleados fk_id_ofi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT fk_id_ofi FOREIGN KEY (id_ofi) REFERENCES public."Oficinas"(id_ofi) NOT VALID;


--
-- TOC entry 2875 (class 2606 OID 16439)
-- Name: Inmuebles fk_id_ofi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT fk_id_ofi FOREIGN KEY (id_ofi) REFERENCES public."Oficinas"(id_ofi);


-- Completed on 2023-05-15 14:12:36

--
-- PostgreSQL database dump complete
--

