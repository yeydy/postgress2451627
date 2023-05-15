--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

-- Started on 2023-05-15 13:46:36

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
-- TOC entry 200 (class 1259 OID 16464)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id_cli integer NOT NULL,
    nombre_cli character varying(45) NOT NULL,
    "dirección_cli" character varying(60) NOT NULL,
    telefono_cli integer NOT NULL,
    inmueble_preferido character varying(45) NOT NULL,
    importe_maximo double precision NOT NULL
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16469)
-- Name: facturas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facturas (
    id_fac integer NOT NULL,
    id_cli integer NOT NULL,
    importe_fac double precision NOT NULL,
    metodo_pago character(25) NOT NULL,
    importe_deposito double precision NOT NULL,
    plazo_pago date NOT NULL,
    observaciones text
);


ALTER TABLE public.facturas OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16482)
-- Name: pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pago (
    id_pago integer NOT NULL,
    id_fac integer NOT NULL,
    importe double precision NOT NULL,
    fecha_pag date NOT NULL
);


ALTER TABLE public.pago OWNER TO postgres;

--
-- TOC entry 2995 (class 0 OID 16464)
-- Dependencies: 200
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cli, nombre_cli, "dirección_cli", telefono_cli, inmueble_preferido, importe_maximo) FROM stdin;
1	Camilo	Call22	12345678	Apartamento	20000000
2	Lorena	Call15	32146579	Apartamento	35000000
3	Katerine	Call47	46521378	Casa	40000000
4	Silvia	Call19	36451237	Apartamento	16000000
5	Jaireth	Call5	41253654	Casa	30000000
6	Valeria	Call9	32546986	Casa	45000000
7	Claudia	Call8	36546957	Casa	39000000
8	Cesar	Call21	64598321	Casa	49000000
9	Jair	Call56	78452136	Apartamento	19000000
10	Esau	Call24	74522135	Apartamento	25000000
\.


--
-- TOC entry 2996 (class 0 OID 16469)
-- Dependencies: 201
-- Data for Name: facturas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facturas (id_fac, id_cli, importe_fac, metodo_pago, importe_deposito, plazo_pago, observaciones) FROM stdin;
11	1	10000000	Tarjeta credito          	5000000	2023-06-14	ninguna
12	2	15000000	Tarjeta credito          	6000000	2023-07-03	ninguna
13	3	28000000	Tarjeta credito          	6000000	2024-02-05	ninguna
14	4	13000000	Tarjeta credito          	5400000	2023-09-15	ninguna
15	5	20000000	Tarjeta redito           	4000000	2023-08-27	ninguna
16	6	30000000	Tarjeta debito           	4500000	2023-11-03	ninguna
17	7	15000000	Tarjeta debito           	3800000	2023-07-09	ninguna
18	8	29000000	Tarjeta credito          	5000000	2023-05-05	está atrasado en el pago
19	9	19000000	Tarjeta credito          	4000000	2023-05-15	ha completado el total del pago
20	10	15000000	Tarjeta debito           	5000000	2023-10-26	ninguna
\.


--
-- TOC entry 2997 (class 0 OID 16482)
-- Dependencies: 202
-- Data for Name: pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pago (id_pago, id_fac, importe, fecha_pag) FROM stdin;
101	11	15000000	2022-12-12
102	12	21000000	2022-11-05
103	13	34000000	2022-10-13
104	14	18400000	2022-10-24
105	15	24000000	2022-10-03
106	16	34500000	2022-09-04
107	17	18800000	2022-08-27
108	18	34000000	2022-08-05
109	19	23000000	2022-07-26
110	20	20000000	2022-12-21
\.


--
-- TOC entry 2858 (class 2606 OID 16468)
-- Name: clientes pk_id_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT pk_id_cliente PRIMARY KEY (id_cli);


--
-- TOC entry 2860 (class 2606 OID 16476)
-- Name: facturas pk_id_facturas; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT pk_id_facturas PRIMARY KEY (id_fac);


--
-- TOC entry 2862 (class 2606 OID 16486)
-- Name: pago pk_id_pago; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pk_id_pago PRIMARY KEY (id_pago);


--
-- TOC entry 2863 (class 2606 OID 16477)
-- Name: facturas fk_id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT fk_id_cliente FOREIGN KEY (id_cli) REFERENCES public.clientes(id_cli);


--
-- TOC entry 2864 (class 2606 OID 16487)
-- Name: pago fk_id_factura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT fk_id_factura FOREIGN KEY (id_fac) REFERENCES public.facturas(id_fac);


-- Completed on 2023-05-15 13:46:37

--
-- PostgreSQL database dump complete
--

