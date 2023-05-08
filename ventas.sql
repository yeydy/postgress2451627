PGDMP     :                    {            Ventas    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16410    Ventas    DATABASE     ~   CREATE DATABASE "Ventas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Ventas";
                postgres    false                        2615    16419    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                   postgres    false    5                       0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    5            �            1259    16420    Book    TABLE     W  CREATE TABLE public."Book" (
    "ID" integer NOT NULL,
    title character varying(250) NOT NULL,
    slug character varying(250),
    descrption text NOT NULL,
    price double precision,
    cover_path character varying(250),
    file_path character varying(250),
    created_at time without time zone,
    update_at time with time zone
);
    DROP TABLE public."Book";
       public         heap    postgres    false    5            �            1259    16440    User    TABLE     7  CREATE TABLE public."User" (
    id_user integer NOT NULL,
    firstname character varying(45) NOT NULL,
    lastname character varying(45),
    fullname character varying(45),
    email character varying(45),
    password character varying,
    role character varying,
    created_at time without time zone
);
    DROP TABLE public."User";
       public         heap    postgres    false    5            �            1259    16427 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    "ID" integer NOT NULL,
    book_id integer NOT NULL,
    order_id integer NOT NULL,
    price double precision
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false    5            �            1259    16437    sales_order    TABLE     %   CREATE TABLE public.sales_order (
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false    5                      0    16420    Book 
   TABLE DATA           t   COPY public."Book" ("ID", title, slug, descrption, price, cover_path, file_path, created_at, update_at) FROM stdin;
    public          postgres    false    214   �                 0    16440    User 
   TABLE DATA           k   COPY public."User" (id_user, firstname, lastname, fullname, email, password, role, created_at) FROM stdin;
    public          postgres    false    217   �                 0    16427 
   sales_item 
   TABLE DATA           D   COPY public.sales_item ("ID", book_id, order_id, price) FROM stdin;
    public          postgres    false    215   :                 0    16437    sales_order 
   TABLE DATA           %   COPY public.sales_order  FROM stdin;
    public          postgres    false    216   W       q           2606    16426    Book Book_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Book"
    ADD CONSTRAINT "Book_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."Book" DROP CONSTRAINT "Book_pkey";
       public            postgres    false    214            u           2606    16446    User User_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id_user);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    217            s           2606    16431    sales_item sales_item_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    215            v           2606    16432    sales_item book_id    FK CONSTRAINT     t   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES public."Book"("ID");
 <   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT book_id;
       public          postgres    false    215    214    3185                  x������ � �         c   x�-�A
�0���S�Ҥ����ٌ�A˘	!��Tx����+��fX�(���9��_����}e�y����o�u�n��c����a�aQR'"��"8            x������ � �            x������ � �     