--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-05-09 11:24:27

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
-- TOC entry 214 (class 1259 OID 16496)
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    id_book integer NOT NULL,
    title character(250) NOT NULL,
    slug character(250) NOT NULL,
    description character(250) NOT NULL,
    price money NOT NULL,
    cover_path character(250) NOT NULL,
    file_path character(250) NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);


ALTER TABLE public.book OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16501)
-- Name: sales_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_item (
    id_item integer NOT NULL,
    book_id integer NOT NULL,
    order_id integer NOT NULL,
    "price " money NOT NULL,
    downs_ava integer NOT NULL
);


ALTER TABLE public.sales_item OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16504)
-- Name: sales_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_order (
    id_order integer NOT NULL,
    "customer_id " integer NOT NULL,
    total money NOT NULL,
    payment_status character(45) NOT NULL,
    created_at date NOT NULL
);


ALTER TABLE public.sales_order OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16507)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id_user integer NOT NULL,
    firstname character(45) NOT NULL,
    lastname character(45) NOT NULL,
    fullname character(45) NOT NULL,
    email character(45) NOT NULL,
    password character(250) NOT NULL,
    role character(45) NOT NULL,
    created_at date NOT NULL,
    update_at date NOT NULL
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 3334 (class 0 OID 16496)
-- Dependencies: 214
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book (id_book, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
1	Cien años de soledad                                                                                                                                                                                                                                      	cien-anos-de-soledad                                                                                                                                                                                                                                      	Obra maestra del realismo mágico                                                                                                                                                                                                                          	$ 25.000,00	/covers/cien-anos-de-soledad.jpg                                                                                                                                                                                                                          	/books/cien-anos-de-soledad.pdf                                                                                                                                                                                                                           	2023-05-08	2023-05-08
2	La vorágine                                                                                                                                                                                                                                               	la-voragine                                                                                                                                                                                                                                               	Novela de la selva que describe la explotación del caucho en el Amazonas                                                                                                                                                                                  	$ 18.000,00	/covers/la-voragine.jpg                                                                                                                                                                                                                                   	/books/la-voragine.pdf                                                                                                                                                                                                                                    	2023-05-08	2023-05-08
3	María                                                                                                                                                                                                                                                     	maria                                                                                                                                                                                                                                                     	Novela que explora la vida de una mujer indígena en Colombia                                                                                                                                                                                              	$ 15.000,00	/covers/maria.jpg                                                                                                                                                                                                                                         	/books/maria.pdf                                                                                                                                                                                                                                          	2023-05-08	2023-05-08
4	El coronel no tiene quien le escriba                                                                                                                                                                                                                      	el-coronel-no-tiene-quien-le-escriba                                                                                                                                                                                                                      	Relato sobre la soledad y la pobreza en un pueblo colombiano                                                                                                                                                                                              	$ 12.000,00	/covers/el-coronel-no-tiene-quien-le-escriba.jpg                                                                                                                                                                                                          	/books/el-coronel-no-tiene-quien-le-escriba.pdf                                                                                                                                                                                                           	2023-05-08	2023-05-08
5	La casa de los espíritus                                                                                                                                                                                                                                  	la-casa-de-los-espiritus                                                                                                                                                                                                                                  	Novela que retrata la historia de una familia chilena                                                                                                                                                                                                     	$ 22.000,00	/covers/la-casa-de-los-espiritus.jpg                                                                                                                                                                                                                      	/books/la-casa-de-los-espiritus.pdf                                                                                                                                                                                                                       	2023-05-08	2023-05-08
6	La ciudad y los perros                                                                                                                                                                                                                                    	la-ciudad-y-los-perros                                                                                                                                                                                                                                    	Novela que retrata la vida de los cadetes en la escuela militar de Lima                                                                                                                                                                                   	$ 20.000,00	/covers/la-ciudad-y-los-perros.jpg                                                                                                                                                                                                                        	/books/la-ciudad-y-los-perros.pdf                                                                                                                                                                                                                         	2023-05-08	2023-05-08
7	El amor en los tiempos del cólera                                                                                                                                                                                                                         	el-amor-en-los-tiempos-del-colera                                                                                                                                                                                                                         	Historia de amor ambientada en la costa caribe colombiana                                                                                                                                                                                                 	$ 19.000,00	/covers/el-amor-en-los-tiempos-del-colera.jpg                                                                                                                                                                                                             	/books/el-amor-en-los-tiempos-del-colera.pdf                                                                                                                                                                                                              	2023-05-08	2023-05-08
8	La casa verde                                                                                                                                                                                                                                             	la-casa-verde                                                                                                                                                                                                                                             	Novela que narra la vida de un joven en la selva amazónica peruana                                                                                                                                                                                        	$ 17.000,00	/covers/la-casa-verde.jpg                                                                                                                                                                                                                                 	/books/la-casa-verde.pdf                                                                                                                                                                                                                                  	2023-05-08	2023-05-08
9	Los pasos perdidos                                                                                                                                                                                                                                        	los-pasos-perdidos                                                                                                                                                                                                                                        	Un hombre viaja a través de la selva en busca de una civilización perdida                                                                                                                                                                                 	$ 15.000,00	/covers/los-pasos-perdidos.jpg                                                                                                                                                                                                                            	/books/los-pasos-perdidos.pdf                                                                                                                                                                                                                             	2023-05-08	2023-05-08
10	Del amor y otros demonios                                                                                                                                                                                                                                 	del-amor-y-otros-demonios                                                                                                                                                                                                                                 	Historia de amor entre un sacerdote y una niña poseída por el diablo                                                                                                                                                                                      	$ 21.000,00	/covers/del-amor-y-otros-demonios.jpg                                                                                                                                                                                                                     	/books/del-amor-y-otros-demonios.pdf                                                                                                                                                                                                                      	2023-05-08	2023-05-08
\.


--
-- TOC entry 3335 (class 0 OID 16501)
-- Dependencies: 215
-- Data for Name: sales_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_item (id_item, book_id, order_id, "price ", downs_ava) FROM stdin;
400	2	998	$ 18.000,00	3
401	1	999	$ 25.000,00	4
402	9	997	$ 15.000,00	2
403	4	996	$ 12.000,00	1
404	5	995	$ 22.000,00	4
405	6	994	$ 20.000,00	5
406	10	993	$ 21.000,00	1
407	7	992	$ 19.000,00	2
408	3	991	$ 15.000,00	4
409	8	990	$ 17.000,00	5
\.


--
-- TOC entry 3336 (class 0 OID 16504)
-- Dependencies: 216
-- Data for Name: sales_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_order (id_order, "customer_id ", total, payment_status, created_at) FROM stdin;
998	2	$ 18.000,00	Efectivo                                     	2023-05-08
999	1	$ 25.000,00	Targeta                                      	2023-05-08
997	3	$ 15.000,00	Targeta                                      	2023-05-08
996	4	$ 12.000,00	Efectivo                                     	2023-05-08
995	5	$ 22.000,00	Efectivo                                     	2023-05-08
994	6	$ 20.000,00	Efectivo\n                                    	2023-05-08
991	9	$ 15.000,00	Targeta                                      	2023-05-08
993	7	$ 21.000,00	Targeta                                      	2023-05-08
992	8	$ 19.000,00	Efectivo                                     	2023-05-08
990	10	$ 17.000,00	Targeta                                      	2023-05-08
\.


--
-- TOC entry 3337 (class 0 OID 16507)
-- Dependencies: 217
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id_user, firstname, lastname, fullname, email, password, role, created_at, update_at) FROM stdin;
1	Juan                                         	Pérez                                        	Juan Pérez                                   	juanperez@gmail.com                          	123456                                                                                                                                                                                                                                                    	user                                         	2023-05-08	2023-05-08
2	María                                        	García                                       	María García                                 	mariagarcia@gmail.com                        	abcdef                                                                                                                                                                                                                                                    	user                                         	2023-05-08	2023-05-08
3	Pedro                                        	González                                     	Pedro González                               	pedrogonzalez@gmail.com                      	qwerty                                                                                                                                                                                                                                                    	user                                         	2023-05-08	2023-05-08
4	Laura                                        	Martínez                                     	Laura Martínez                               	lauramartinez@gmail.com                      	1q2w3e                                                                                                                                                                                                                                                    	user                                         	2023-05-08	2023-05-08
5	Andrés                                       	Hernández                                    	Andrés Hernández                             	andreshernandez@gmail.com                    	asdfgh                                                                                                                                                                                                                                                    	user                                         	2023-05-08	2023-05-08
6	Isabel                                       	López                                        	Isabel López                                 	isabellopez@gmail.com                        	zxcvbn                                                                                                                                                                                                                                                    	user                                         	2023-05-08	2023-05-08
7	Sofía                                        	Sánchez                                      	Sofía Sánchez                                	sofiasanchez@gmail.com                       	1a2s3d                                                                                                                                                                                                                                                    	user                                         	2023-05-08	2023-05-08
8	David                                        	Jiménez                                      	David Jiménez                                	davidjimenez@gmail.com                       	qazwsx                                                                                                                                                                                                                                                    	user                                         	2023-05-08	2023-05-08
9	Carla                                        	Castro                                       	Carla Castro                                 	carlacastro@gmail.com                        	zaq12wsx                                                                                                                                                                                                                                                  	user                                         	2023-05-08	2023-05-08
10	Daniel                                       	Santos                                       	Daniel Santos                                	danielsantos@gmail.com                       	1qaz2wsx                                                                                                                                                                                                                                                  	user                                         	2023-05-08	2023-05-08
\.


--
-- TOC entry 3185 (class 2606 OID 16511)
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id_book);


--
-- TOC entry 3187 (class 2606 OID 16513)
-- Name: sales_item sales_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id_item);


--
-- TOC entry 3189 (class 2606 OID 16515)
-- Name: sales_order sales_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id_order);


--
-- TOC entry 3191 (class 2606 OID 16517)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id_user);


-- Completed on 2023-05-09 11:24:27

--
-- PostgreSQL database dump complete
--

