--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-11 10:27:47

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
-- TOC entry 214 (class 1259 OID 24765)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250),
    description text,
    price double precision NOT NULL,
    cover_path character varying(250),
    file_path character varying(250),
    created_at date NOT NULL,
    update_at date
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24770)
-- Name: sales_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_items (
    id integer NOT NULL,
    book_id integer NOT NULL,
    order_id integer NOT NULL,
    price double precision NOT NULL,
    downs_ava integer NOT NULL
);


ALTER TABLE public.sales_items OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24773)
-- Name: sales_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_order (
    id integer NOT NULL,
    id_user integer NOT NULL,
    total double precision NOT NULL,
    payment_status character varying NOT NULL,
    created_at date NOT NULL
);


ALTER TABLE public.sales_order OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24778)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    firstname character varying(45) NOT NULL,
    lastname character varying(45) NOT NULL,
    fullname character varying(100) NOT NULL,
    email character varying(45) NOT NULL,
    password character varying(250) NOT NULL,
    role character varying NOT NULL,
    created_at date NOT NULL,
    update_at date
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 3337 (class 0 OID 24765)
-- Dependencies: 214
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book (id, title, slug, description, price, cover_path, file_path, created_at, update_at) FROM stdin;
100	100 Años de Soledad	https/100/años/de/soledad	trata un siglo en la vida de la familia Buendía, cuyo patriarca, José Arcadio Buendía, fundó el pueblo ficticio de Macondo, en Colombia.	45000	\N	\N	1967-05-10	\N
102	La metamorfosis	https:/Franz/kafka/metamorfosis	Cuenta la historia de la transformación de Gregorio Samsa en un monstruoso insecto, y del drama familiar que se desata a raíz de este acontecimiento.	40000	\N	\N	1915-09-15	\N
103	Las ventajas de ser invisible	https:/las/ventajas/de/ser/invisible	La novela trata sobre un año en la vida de Charlie, desde sus 15 hasta sus 16 años. El joven, retraido y antisocial, ve cambiar su vida cuando conoce a Sam y Patrick, que van a ser muy importantes en su adaptación al mundo de la High School (Escuela Secundaria).	50000	\N	\N	1999-10-15	\N
104	Identico al ser humano	https:/identico/al/ser/humano	La inesperada visita de un oyente que asegura ser un marciano “idéntico al ser humano” desencadena un desconcertante e incómodo diálogo en el que, al modo beckettiano, se transita fácilmente de la lucidez al delirio.	47000	\N	\N	2010-03-13	\N
105	Todas las noches que soñé contigo	https:/todas/las/noches/que/soñé/contigo	La adolescencia es una de las etapas más difíciles en la vida de una chica, la protagonista de esta historia intenta superar la pérdida de un ser querido, junto a sus amigos intenta encontrar la felicidad.	35000	\N	\N	2019-04-25	\N
106	La odisea	https:/la/odisea	narra la historia del héroe griego Odiseo, Ulises, el viaje de regreso a su reino de Ítaca donde le esperan su esposa Penélope, rodeada de pretendiente, y su hijo Telémaco.	49000	\N	\N	1906-06-12	\N
107	La divina comedia	https:/divina/comedia	Es una obra humana que refleja el peregrinaje del ser humano en busca de “la Luz”, es el descubrimiento del hombre hacia Dios, con la ayuda de la razón (Virgilio) y de la fe (Beatriz). 	47000	\N	\N	1472-11-09	\N
108	Frankestein	https:/frankestein	La novela narra la historia de Víctor Frankenstein, un joven suizo, estudiante de medicina en Ingolstadt, obsesionado por conocer "los secretos del cielo y la tierra". En su afán por desentrañar "la misteriosa alma del hombre", Víctor crea un cuerpo a partir de la unión de distintas partes de cadáveres diseccionados.	55000	\N	\N	1818-08-10	\N
109	El lenguaje de la flores	https:/lenguaje/de/las/flores	Nos enseña el significado de cada flor	57000	\N	\N	2011-12-25	\N
101	Niebla	https:/niebla/unamuno	nos presenta a Agusto Pérez, un hombre que se encuentra con dudas existenciales con las que se topa en su día a día y que, al final, decidirá encontrarse cara a cara con su creador.	48000	\N	\N	1914-03-20	\N
\.


--
-- TOC entry 3338 (class 0 OID 24770)
-- Dependencies: 215
-- Data for Name: sales_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_items (id, book_id, order_id, price, downs_ava) FROM stdin;
1	100	1000	45000	1
2	101	1001	48000	2
3	102	1002	40000	1
4	103	1003	50000	2
5	104	1004	47000	1
6	105	1005	35000	3
7	106	1006	49000	2
8	107	1007	47000	2
9	108	1008	55000	1
10	109	1009	57000	1
\.


--
-- TOC entry 3339 (class 0 OID 24773)
-- Dependencies: 216
-- Data for Name: sales_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_order (id, id_user, total, payment_status, created_at) FROM stdin;
1000	10	135000	Aprobado	2019-05-22
1001	11	96000	Aprobado	2019-07-15
1002	12	40000	Cancelado	2019-08-11
1003	13	100000	Aprobado	2019-10-12
1004	14	47000	Aprobado	2020-11-09
1005	15	105000	Aprobado	2020-11-07
1006	16	98000	Aprobado	2020-12-09
1007	17	47000	Pendiente	2021-01-13
1008	18	55000	Aprobado	2021-01-23
1009	19	57000	Aprobado	2021-03-02
\.


--
-- TOC entry 3340 (class 0 OID 24778)
-- Dependencies: 217
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, firstname, lastname, fullname, email, password, role, created_at, update_at) FROM stdin;
10	Katerine	Garcia	Katerine Garcia Humanez	Kategarcia@gmail.com	Kategar1234	cliente	2019-05-22	\N
11	Josepth\n	Nava	Josepth Daniel Nava	josepthnava@gmail.com	josepthnav1234	cliente	2019-07-15	\N
12	Sergio	Peñarada	Sergio Eduardo Peñaranda	serdiopeña@gmail.com	sergiopen1234	cliente	2019-08-11	\N
13	Camilo	Garcés	Camilo Garcés Cuello	camigar@gmail.com	camilogar1234	cliente	2019-10-12	\N
14	Danna 	Perez	Danna Jaireth Perez 	dannajai@gmail.com	dannajai1234	cliente	2020-11-09	\N
15	Wendy	Perlaza	Wendy Mallerly Perlaza	wendymall@gmail.com	wendymall1234	cliente	2020-11-07	\N
16	Daniel	Buitriago	Daniel Buitriago Ortega	danielbui@gmail.com	daniebui1234	cliente	2020-12-09	\N
17	Carlos	Monrroy	Carlos Monrroy Quintero	carlosquin@gmail.com	carlosquin1234	cliente	2021-01-13	\N
18	Erick	Velasco	Erick Rafael Velasco	erickvel@gmail.com	erickvel1234	cliente	2021-01-23	\N
19	Oliver	Gil	Oliver Gil Cardenas	olivergil@gmail.com	olivergil1234	cliente	2021-03-02	\N
\.


--
-- TOC entry 3189 (class 2606 OID 24784)
-- Name: sales_order id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- TOC entry 3185 (class 2606 OID 24786)
-- Name: book pk_book_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT pk_book_id PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 24788)
-- Name: sales_items pk_items_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_items
    ADD CONSTRAINT pk_items_id PRIMARY KEY (id);


--
-- TOC entry 3191 (class 2606 OID 24790)
-- Name: user pk_user_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT pk_user_id PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 24791)
-- Name: sales_items fk_book_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_items
    ADD CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES public.book(id);


--
-- TOC entry 3193 (class 2606 OID 24796)
-- Name: sales_items fk_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_items
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES public.sales_order(id);


--
-- TOC entry 3194 (class 2606 OID 24801)
-- Name: sales_order fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fk_user_id FOREIGN KEY (id_user) REFERENCES public."user"(id);


-- Completed on 2023-05-11 10:27:47

--
-- PostgreSQL database dump complete
--

