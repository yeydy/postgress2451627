--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-08 20:32:02

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
-- TOC entry 846 (class 1247 OID 16410)
-- Name: enum; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.enum AS ENUM (
    'customer',
    'employee',
    'admin',
    'owner'
);


ALTER TYPE public.enum OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 16395)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250),
    description text,
    price money NOT NULL,
    cover_path character varying(250),
    file_path character varying(250),
    created_at date NOT NULL,
    update_at date
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16432)
-- Name: sales_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer NOT NULL,
    order_id integer NOT NULL,
    price double precision NOT NULL,
    downs_ava integer NOT NULL
);


ALTER TABLE public.sales_item OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16422)
-- Name: sales_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_order (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    total double precision NOT NULL,
    payment_status public.enum NOT NULL,
    created_at date NOT NULL
);


ALTER TABLE public.sales_order OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16402)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    firtsname character varying(45) NOT NULL,
    lastname character varying(45) NOT NULL,
    fullname character varying(100) NOT NULL,
    email character varying(45) NOT NULL,
    password character varying(250) NOT NULL,
    created_at date NOT NULL,
    update_at date,
    role public.enum
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 3340 (class 0 OID 16395)
-- Dependencies: 214
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (id, title, slug, description, price, cover_path, file_path, created_at, update_at) FROM stdin;
1	Viaje al fin de la noche	\N	\N	$ 230.000,00	\N	\N	2023-05-08	\N
2	Don Quijote de la Mancha	\N	\N	$ 430.000,00	\N	\N	2023-05-08	\N
3	Los cuentos de Canterbury	\N	\N	$ 130.000,00	\N	\N	2023-05-08	\N
4	Relatos cortos	\N	\N	$ 30.000,00	\N	\N	2023-05-08	\N
5	Crimen y castigo	\N	\N	$ 140.000,00	\N	\N	2023-05-08	\N
6	Los hermanos Karamazov	\N	\N	$ 190.000,00	\N	\N	2023-05-08	\N
7	El hombre invisible	\N	\N	$ 190.000,00	\N	\N	2023-05-08	\N
8	Almas muertas	\N	\N	$ 590.000,00	\N	\N	2023-05-08	\N
9	Ulises	\N	\N	$ 590.000,00	\N	\N	2023-05-08	\N
10	Diario de un loco	\N	\N	$ 300.000,00	\N	\N	2023-05-08	\N
\.


--
-- TOC entry 3343 (class 0 OID 16432)
-- Dependencies: 217
-- Data for Name: sales_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_item (id, book_id, order_id, price, downs_ava) FROM stdin;
2	2	2	30000	2
9	9	3	40000000	2
8	8	7	80000	8
6	6	6	20000	1
7	7	7	70000	7
4	4	4	40000	5
5	5	5	50000	8
1	1	1	200000	1
3	3	3	50000	3
\.


--
-- TOC entry 3342 (class 0 OID 16422)
-- Dependencies: 216
-- Data for Name: sales_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_order (id, customer_id, total, payment_status, created_at) FROM stdin;
1	2	3	customer	2023-05-08
2	6	6	customer	2023-05-08
3	7	3	customer	2023-05-08
4	8	5	customer	2023-05-08
5	9	1	customer	2023-05-08
6	3	2	customer	2023-05-08
7	4	6	customer	2023-05-08
\.


--
-- TOC entry 3341 (class 0 OID 16402)
-- Dependencies: 215
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, firtsname, lastname, fullname, email, password, created_at, update_at, role) FROM stdin;
7	Jhualiana	Mendoza	Jhuliana Mendoza	nanita45sdfsd@gmail.com	dsfsfdgd	2023-05-08	\N	employee
6	Ovier	Fonseca	Ovier Fonseca	fonseca@hotmail.com	qwewrw324	2023-05-08	\N	customer
5	Diego	Sanjuan	Diego Sanjuan	diego@example.com	diego12	2023-05-08	\N	admin
4	Sergio	Peñaranda	Sergio Peñaranda	sergiopenaranda@gmail.com	peñaranda123	2023-05-08	\N	owner
1	Honoré	Balzac	Honoré de Balzac	honore.balc@hotmail.com	123asdgfh	2023-05-08	\N	customer
2	Jaider	Martinez	Jaider Martinez	smithsaemirto@gmail.com	contra123@	2023-05-08	\N	customer
3	oliver	Cardenas	Oliver Cardenas	olievercardenas06@gmail.com	oliver123	2023-05-08	\N	customer
8	Johana	Forero	Johana Forero	johanafoere@gmail.com	ewwteddsgdg	2023-05-08	\N	customer
9	Kaleth	Sarmiento	Kaleth Sarmiento	kalethsa@example.com	sddgfarfgv	2023-05-08	\N	customer
\.


--
-- TOC entry 3188 (class 2606 OID 16401)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 16436)
-- Name: sales_item sales_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 16426)
-- Name: sales_order sales_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id);


--
-- TOC entry 3190 (class 2606 OID 16408)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 16437)
-- Name: sales_item fk_book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES public.books(id);


--
-- TOC entry 3195 (class 2606 OID 16427)
-- Name: sales_order fk_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES public."user"(id);


--
-- TOC entry 3197 (class 2606 OID 16442)
-- Name: sales_item fk_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES public.sales_order(id);


-- Completed on 2023-05-08 20:32:02

--
-- PostgreSQL database dump complete
--

