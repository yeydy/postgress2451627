PGDMP     -                    {         
   evaluacion    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    32768 
   evaluacion    DATABASE     �   CREATE DATABASE evaluacion WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE evaluacion;
                postgres    false            �            1259    32786    clientes    TABLE     %  CREATE TABLE public.clientes (
    id_clie integer NOT NULL,
    nombre_clie character(100) NOT NULL,
    direccion_clie character(100) NOT NULL,
    telefono_clie numeric(100,0) NOT NULL,
    importe_maximo_clie numeric(100,0) NOT NULL,
    inmueble_preferido_clie numeric(100,0) NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    32799    facturas    TABLE     1  CREATE TABLE public.facturas (
    "id-fac" integer NOT NULL,
    importe_fac numeric(100,0) NOT NULL,
    metodo_pago character(100) NOT NULL,
    importe_deposito numeric(100,0) NOT NULL,
    palzo_pago character(100) NOT NULL,
    observaciones character(100) NOT NULL,
    id_clie integer NOT NULL
);
    DROP TABLE public.facturas;
       public         heap    postgres    false            �            1259    32809    pago    TABLE     �   CREATE TABLE public.pago (
    id_pago integer NOT NULL,
    importe numeric(100,0) NOT NULL,
    fecha_pago date NOT NULL,
    id_fac integer NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false                      0    32786    clientes 
   TABLE DATA           �   COPY public.clientes (id_clie, nombre_clie, direccion_clie, telefono_clie, importe_maximo_clie, inmueble_preferido_clie) FROM stdin;
    public          postgres    false    214   2                 0    32799    facturas 
   TABLE DATA           |   COPY public.facturas ("id-fac", importe_fac, metodo_pago, importe_deposito, palzo_pago, observaciones, id_clie) FROM stdin;
    public          postgres    false    215   r                 0    32809    pago 
   TABLE DATA           D   COPY public.pago (id_pago, importe, fecha_pago, id_fac) FROM stdin;
    public          postgres    false    216   |       m           2606    32798    clientes clientes_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_clie);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    214            o           2606    32803    facturas facturas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_pkey PRIMARY KEY ("id-fac");
 @   ALTER TABLE ONLY public.facturas DROP CONSTRAINT facturas_pkey;
       public            postgres    false    215            q           2606    32813    pago pago_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pago);
 8   ALTER TABLE ONLY public.pago DROP CONSTRAINT pago_pkey;
       public            postgres    false    216            r           2606    32804    facturas id_clie    FK CONSTRAINT     w   ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT id_clie FOREIGN KEY (id_clie) REFERENCES public.clientes(id_clie);
 :   ALTER TABLE ONLY public.facturas DROP CONSTRAINT id_clie;
       public          postgres    false    214    215    3181            s           2606    32814    pago id_fac    FK CONSTRAINT     r   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT id_fac FOREIGN KEY (id_fac) REFERENCES public.facturas("id-fac");
 5   ALTER TABLE ONLY public.pago DROP CONSTRAINT id_fac;
       public          postgres    false    215    216    3183               0  x���An� E��)|�j ��viKD�8Qr���+vR%���>��D��kr���ɇ`�ɦ��=*���: \bv|�;��fw]]�����4�d���̖���χ�q�uZ�e�������Z�����S���<�bg�jnwgz�	;E@JX�|a��Ƶɏ��Rjww����R`/�����?���[�w�{�����g?��\`���=\���4��y+S���f�����->�i�v�r�[l.1�z�X\C�'y�`PH�6�̼	����[>�����2��"����N�         �   x�ݕ=n!��Sp��]�%^&	���§�.�P ��|�7�$x�Iۑ�E\�J�"����t�����?�D��+X&rց� ���)u��S}�-���"W\�i�*�t�&�K0Ӏ[qcy��Z����U��M�ck<L����4��޴Y�j$�i�Y4�	,�k�a��Խ ���xr<�4*p��qJJP����($��v)�c���"�i;C�A�G?!��v5�qA�_���n         j   x�M���0�3��},�٥��Q�I��<U0&jC�0�
/�,�bM7\�ґͅ�#zd1�!�D�Kp"�N-ϖI�[�ː��4D��d�Qa��8������     