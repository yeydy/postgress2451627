PGDMP     	    )                {            ventas    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16400    ventas    DATABASE     e   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ventas;
                postgres    false            r           1247    16402    mood    TYPE     ?   CREATE TYPE public.mood AS ENUM (
    'user',
    'no user'
);
    DROP TYPE public.mood;
       public          postgres    false            u           1247    16408    mood1    TYPE     @   CREATE TYPE public.mood1 AS ENUM (
    'PAGO',
    'NO PAGO'
);
    DROP TYPE public.mood1;
       public          postgres    false            �            1259    16413    book    TABLE     "  CREATE TABLE public.book (
    id integer NOT NULL,
    title character varying(250),
    slug character varying(250),
    description text,
    price double precision,
    cover_path character varying(250),
    file_path character varying(250),
    created_at date,
    updated_at date
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16419 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id integer NOT NULL,
    book_id integer,
    order_id integer,
    price double precision,
    downs_ava integer
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16422    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id integer NOT NULL,
    customer_id integer,
    total double precision,
    payment_status public.mood1,
    created_at date
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false    629            �            1259    16425    users    TABLE     +  CREATE TABLE public.users (
    id integer NOT NULL,
    firstname character varying(45),
    lastname character varying(45),
    fullname character varying(100),
    email character varying(45),
    password character varying(250),
    role public.mood,
    created_at date,
    updated_at date
);
    DROP TABLE public.users;
       public         heap    postgres    false    626            �          0    16413    book 
   TABLE DATA           r   COPY public.book (id, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    200   v       �          0    16419 
   sales_item 
   TABLE DATA           M   COPY public.sales_item (id, book_id, order_id, price, downs_ava) FROM stdin;
    public          postgres    false    201   t       �          0    16422    sales_order 
   TABLE DATA           Y   COPY public.sales_order (id, customer_id, total, payment_status, created_at) FROM stdin;
    public          postgres    false    202   �       �          0    16425    users 
   TABLE DATA           q   COPY public.users (id, firstname, lastname, fullname, email, password, role, created_at, updated_at) FROM stdin;
    public          postgres    false    203   �       4           2606    16429    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    200            6           2606    16431    sales_item sales_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    201            8           2606    16433    sales_order sales_order_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    202            :           2606    16435    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            =           2606    16436    sales_order fktest    FK CONSTRAINT     u   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT fktest FOREIGN KEY (customer_id) REFERENCES public.users(id);
 <   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT fktest;
       public          postgres    false    202    2874    203            ;           2606    16441    sales_item fktest2    FK CONSTRAINT     p   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fktest2 FOREIGN KEY (book_id) REFERENCES public.book(id);
 <   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fktest2;
       public          postgres    false    2868    201    200            <           2606    16446    sales_item fktest3    FK CONSTRAINT     x   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fktest3 FOREIGN KEY (order_id) REFERENCES public.sales_order(id);
 <   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fktest3;
       public          postgres    false    201    202    2872            �   �   x�mN�N1��_� �l�^4':�!�o׷�$��!�W|��������3�Al1R*����	�cΑϕ�!et9dⱴه4��(��3��Jt'VF���/J�(��]�\]���u�Hq:T�sL�LS_����~�#-�\ ��[��G��#�F;�I�Te�-y��R7��%(����`�GV_Dnts���o�a������;�1l�+�WҜ	�ͩ�K���C�u�7kns      �      x�3�4B#SNC#cS�=... ��      �   (   x�3�4�42�3�0�pt��4202�50�50����� ^0�      �   I   x�3��M,�����ȯ�/�r�9`�Cznbf�^r~.�����)giqj���������ƺ���\1z\\\ *(�     