PGDMP     6            
        {         
   biblioteca    14.7    14.7     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394 
   biblioteca    DATABASE     i   CREATE DATABASE biblioteca WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE biblioteca;
                postgres    false            �            1259    16396    books    TABLE     �  CREATE TABLE public.books (
    codigo integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250) NOT NULL,
    description character varying(300),
    price double precision NOT NULL,
    cover_path character varying(250),
    file_path character varying(250),
    create_at timestamp without time zone,
    update_at timestamp without time zone
);
    DROP TABLE public.books;
       public         heap    postgres    false            �            1259    16395    books_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.books_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.books_codigo_seq;
       public          postgres    false    210                       0    0    books_codigo_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.books_codigo_seq OWNED BY public.books.codigo;
          public          postgres    false    209            �            1259    16414 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    codigo_id integer NOT NULL,
    codigo integer NOT NULL,
    order_id integer NOT NULL,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16413    sales_item_codigo_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_item_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.sales_item_codigo_seq;
       public          postgres    false    212                       0    0    sales_item_codigo_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.sales_item_codigo_seq OWNED BY public.sales_item.codigo;
          public          postgres    false    211            �            1259    16431    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id_sales integer NOT NULL,
    id_usuario integer NOT NULL,
    total double precision,
    payment_status numeric,
    created_at timestamp without time zone
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    16426    usuario    TABLE     n  CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    firsname character varying(45) NOT NULL,
    lastname character varying(45) NOT NULL,
    fullname character varying(100) NOT NULL,
    email character varying(45),
    password character varying(45) NOT NULL,
    created_at timestamp without time zone,
    update_at timestamp without time zone
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            i           2604    16399    books codigo    DEFAULT     l   ALTER TABLE ONLY public.books ALTER COLUMN codigo SET DEFAULT nextval('public.books_codigo_seq'::regclass);
 ;   ALTER TABLE public.books ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    209    210    210            j           2604    16417    sales_item codigo    DEFAULT     v   ALTER TABLE ONLY public.sales_item ALTER COLUMN codigo SET DEFAULT nextval('public.sales_item_codigo_seq'::regclass);
 @   ALTER TABLE public.sales_item ALTER COLUMN codigo DROP DEFAULT;
       public          postgres    false    211    212    212                      0    16396    books 
   TABLE DATA           u   COPY public.books (codigo, title, slug, description, price, cover_path, file_path, create_at, update_at) FROM stdin;
    public          postgres    false    210   &                  0    16414 
   sales_item 
   TABLE DATA           S   COPY public.sales_item (codigo_id, codigo, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    212   �                  0    16431    sales_order 
   TABLE DATA           ^   COPY public.sales_order (id_sales, id_usuario, total, payment_status, created_at) FROM stdin;
    public          postgres    false    214   .!                 0    16426    usuario 
   TABLE DATA           s   COPY public.usuario (id_usuario, firsname, lastname, fullname, email, password, created_at, update_at) FROM stdin;
    public          postgres    false    213   o!                  0    0    books_codigo_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.books_codigo_seq', 5, true);
          public          postgres    false    209                       0    0    sales_item_codigo_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.sales_item_codigo_seq', 1, false);
          public          postgres    false    211            l           2606    16403    books books_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (codigo);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public            postgres    false    210            n           2606    16419    sales_item sales_item_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (codigo_id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    212            r           2606    16437    sales_order sales_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id_sales);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    214            p           2606    16430    usuario usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    213            t           2606    16443    sales_item fk_sales_item    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_sales_item FOREIGN KEY (order_id) REFERENCES public.sales_order(id_sales);
 B   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_sales_item;
       public          postgres    false    212    3186    214            s           2606    16420 !   sales_item sales_item_codigo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_codigo_fkey FOREIGN KEY (codigo) REFERENCES public.books(codigo);
 K   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_codigo_fkey;
       public          postgres    false    212    3180    210            u           2606    16438 '   sales_order sales_order_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id_usuario);
 Q   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_id_usuario_fkey;
       public          postgres    false    3184    213    214               �   x�U�]
�0ǟ�S��N�z	O��l�äkf���3x1��B ���ug��D��	<�ȁ�h\�?߷'�)����c[CAq�;r6��MJ�L��-<�l|�m�f�
�~�Ix�`�¹��O%ړ�  ���7A�פZm]毵�3�V�o(_ӈ�k�?Xk�DR�         9   x�-Ǳ 0��)�a�L��s����S&82sW��U�+ݽ;��>D�U         1   x�366�4�?�qL� !�B�1��c�=... �&�         �   x�=�A� E����3
�z	O�&�L��Bu��M�W���db���1Db�I�i����Mk��FՉ �)͸�+-t\I�$�i�B�"x�aK̴���>��)�]r@��O N%�(dg���C/+9|w:d������0�wSJ�G�L     