PGDMP         ,                {            Empresa    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    Empresa    DATABASE     h   CREATE DATABASE "Empresa" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Empresa";
                postgres    false            �            1259    16449 	   Empleados    TABLE     ?  CREATE TABLE public."Empleados" (
    id_emp integer NOT NULL,
    dni_emp integer NOT NULL,
    nombre_emp character(150),
    direccion_emp text,
    telefono numeric(20,0),
    fecha_naci_emp date,
    cargo_emp character(150),
    fecha_ingreso_emp date,
    salario_anual_emp money,
    id_ofi integer NOT NULL
);
    DROP TABLE public."Empleados";
       public         heap    postgres    false            �            1259    16468 	   Inmuebles    TABLE     ,  CREATE TABLE public."Inmuebles" (
    id_inm integer NOT NULL,
    direccion_inm text,
    tipo_inm character(100),
    nro_habi_inm integer,
    precio_alquiler_inm money,
    precio_venta_inm money,
    galeria character(100),
    id_ofi integer NOT NULL,
    id_pro integer,
    id_emp integer
);
    DROP TABLE public."Inmuebles";
       public         heap    postgres    false            �            1259    16400    Oficinas    TABLE     �   CREATE TABLE public."Oficinas" (
    id_ofi integer NOT NULL,
    direccion_ofi text,
    telefono numeric(20,0),
    fax_ofi integer
);
    DROP TABLE public."Oficinas";
       public         heap    postgres    false            �          0    16449 	   Empleados 
   TABLE DATA           �   COPY public."Empleados" (id_emp, dni_emp, nombre_emp, direccion_emp, telefono, fecha_naci_emp, cargo_emp, fecha_ingreso_emp, salario_anual_emp, id_ofi) FROM stdin;
    public          postgres    false    201   �       �          0    16468 	   Inmuebles 
   TABLE DATA           �   COPY public."Inmuebles" (id_inm, direccion_inm, tipo_inm, nro_habi_inm, precio_alquiler_inm, precio_venta_inm, galeria, id_ofi, id_pro, id_emp) FROM stdin;
    public          postgres    false    202   �       �          0    16400    Oficinas 
   TABLE DATA           N   COPY public."Oficinas" (id_ofi, direccion_ofi, telefono, fax_ofi) FROM stdin;
    public          postgres    false    200   �       /           2606    16456    Empleados Empleados_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_pkey" PRIMARY KEY (id_emp);
 F   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_pkey";
       public            postgres    false    201            1           2606    16475    Inmuebles Inmuebles_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT "Inmuebles_pkey" PRIMARY KEY (id_inm);
 F   ALTER TABLE ONLY public."Inmuebles" DROP CONSTRAINT "Inmuebles_pkey";
       public            postgres    false    202            ,           2606    16407    Oficinas Oficinas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Oficinas"
    ADD CONSTRAINT "Oficinas_pkey" PRIMARY KEY (id_ofi);
 D   ALTER TABLE ONLY public."Oficinas" DROP CONSTRAINT "Oficinas_pkey";
       public            postgres    false    200            2           1259    16481    fki_fk    INDEX     @   CREATE INDEX fki_fk ON public."Inmuebles" USING btree (id_ofi);
    DROP INDEX public.fki_fk;
       public            postgres    false    202            -           1259    16421    fki_id_ofi_FK    INDEX     H   CREATE INDEX "fki_id_ofi_FK" ON public."Oficinas" USING btree (id_ofi);
 #   DROP INDEX public."fki_id_ofi_FK";
       public            postgres    false    200            3           2606    16457    Empleados fk    FK CONSTRAINT     u   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT fk FOREIGN KEY (id_ofi) REFERENCES public."Oficinas"(id_ofi);
 8   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT fk;
       public          postgres    false    200    2860    201            4           2606    16476    Inmuebles fk    FK CONSTRAINT        ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT fk FOREIGN KEY (id_ofi) REFERENCES public."Oficinas"(id_ofi) NOT VALID;
 8   ALTER TABLE ONLY public."Inmuebles" DROP CONSTRAINT fk;
       public          postgres    false    202    2860    200            �   H  x���An� �5s
]�h���%�L"W�]aˋ��@*���/����i4�i�X1,�����,(bp�Ē�ۥF#Y��
��
��F����_棻�%T$T�iN�p�>��^��o\��S�S�>�m�N���>�w9��8]�_bàN�L�uz�8W�g]^Y�<on-f�㬷
�"�u��@_�����.��o�褰W�:�����z��ϛ�;�m��ާ��'t�Bo�����{W�jIy��Ӟ�Kv�v`�W�W�:�?
��I]�N�&W^�}{���OA�1Q�(�K&S?��^��A}+��+ڸa�^0�k�r�_0s:�      �   �   x�Ŗ1� Eg|
��Ud;�.YҪ��dh՞�1U�Pf�O�m��,o���X,����2o��0dN��8 �QB��/~����O��	������p����I��o����_Du�(�Pu@�]�~:�3��L���;o�}�����$�E�;ux/����W�w"��>��#~R�E�޼�/��P��E@=�=X�{���D0 �kyp)      �   `   x�uС�0Q�?E&�b;��]J��,*��-08��Q+�\�T�[�7Rᮣ�"�p����T�#ա������$Ua��B�M�g���� �P�C]     