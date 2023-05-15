PGDMP         -                {            clientes    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16445    clientes    DATABASE     {   CREATE DATABASE clientes WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE clientes;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16446    clientes    TABLE       CREATE TABLE public.clientes (
    id_cli integer NOT NULL,
    nombre_cli character(15) NOT NULL,
    direccion_cli character(35) NOT NULL,
    telefono_cli numeric(10,0) NOT NULL,
    inmueble_preferido_cli character(50) NOT NULL,
    importe_maximo_cli character(50) NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false    4            �            1259    16453    facturas    TABLE       CREATE TABLE public.facturas (
    id_fac integer NOT NULL,
    importe_fac numeric(20,0) NOT NULL,
    importe_deposito money NOT NULL,
    plazo_pago date NOT NULL,
    observaciones character(50) NOT NULL,
    id_cli integer NOT NULL,
    metodo_pago character(20) NOT NULL
);
    DROP TABLE public.facturas;
       public         heap    postgres    false    4            �            1259    16458    pago    TABLE     �   CREATE TABLE public.pago (
    id_pag integer NOT NULL,
    importe numeric(100,0) NOT NULL,
    fecha_pag date NOT NULL,
    id_fac integer NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false    4                       0    16446    clientes 
   TABLE DATA              COPY public.clientes (id_cli, nombre_cli, direccion_cli, telefono_cli, inmueble_preferido_cli, importe_maximo_cli) FROM stdin;
    public          postgres    false    214   �                 0    16453    facturas 
   TABLE DATA           y   COPY public.facturas (id_fac, importe_fac, importe_deposito, plazo_pago, observaciones, id_cli, metodo_pago) FROM stdin;
    public          postgres    false    215   y                 0    16458    pago 
   TABLE DATA           B   COPY public.pago (id_pag, importe, fecha_pag, id_fac) FROM stdin;
    public          postgres    false    216   ]       m           2606    16452    clientes clientes_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cli);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    214            o           2606    16457    facturas facturas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_pkey PRIMARY KEY (id_fac);
 @   ALTER TABLE ONLY public.facturas DROP CONSTRAINT facturas_pkey;
       public            postgres    false    215            q           2606    16462    pago pago_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pag);
 8   ALTER TABLE ONLY public.pago DROP CONSTRAINT pago_pkey;
       public            postgres    false    216                �  x���Mr� �5>�
��]��ت
.$\B�"��K�LR�a+���ѯ��:���C~���S�\)�+o��'�Ø&���^�qV[����?��@�N���)<��;�%TQ\�R�.5�_q	)��-�j�=@U5Q��bq�qg��*E�JU�%�x�\�
0�:�^q^p�%=+�]� �,�a���O�����/N$��x��pI*�YN7�*�ӯ��Ч�H�}��i�=�.U!�i��v���3v� a)~�.��S��X�Ü��a~����Jz��2��A-�7�H��>�j���i�G��]��uހl	���]���@{vIyx�L��-ҟ���ƻ��{x�Y���8�dm��)ź������ڀo�>쑾t������V|���s��6L��B{�6��S/S���p���K�         �   x���A
1�uz�9������wq#�.�y<�'1�2� )t�#�i�T�� 6���?H )�#3]O��|�����!f����R����J����I��ig�bU�p)J�q���MA�\Ô(��^��T�\6�9��y���)�� ;vse�]͢���f7�I��f��.��K�eX8��T�a���ոNdt�����(��6��K��         d   x�]��� D�s�N6�^�YF��˟L0��#�'����.�Kc�m��Q���B=�UK3�Rː�-�,x�R35��A��Q ������0�U�g$�     