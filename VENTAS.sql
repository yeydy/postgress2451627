PGDMP         /                {            Andres.R    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16451    Andres.R    DATABASE     i   CREATE DATABASE "Andres.R" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Andres.R";
                postgres    false            �            1259    16452 	   Empleados    TABLE     j  CREATE TABLE public."Empleados" (
    id_emp integer NOT NULL,
    dni_emp integer NOT NULL,
    nombre_emp text NOT NULL,
    direccion_emp text NOT NULL,
    telefono_emp numeric NOT NULL,
    fecha_naci_emp date NOT NULL,
    cargo_emp text NOT NULL,
    fecha_ingreso_emp date NOT NULL,
    salario_anual_emp numeric NOT NULL,
    id_ofi integer NOT NULL
);
    DROP TABLE public."Empleados";
       public         heap    postgres    false            �            1259    16462 	   Inmuebles    TABLE     h  CREATE TABLE public."Inmuebles" (
    id_inm integer NOT NULL,
    direccion_inm text NOT NULL,
    tipo_inm "char" NOT NULL,
    nro_habi_inm integer NOT NULL,
    precio_alquiler_inm integer NOT NULL,
    precio_venta_inm integer NOT NULL,
    galeria "char" NOT NULL,
    id_ofi integer NOT NULL,
    id_pro integer NOT NULL,
    id_emp integer NOT NULL
);
    DROP TABLE public."Inmuebles";
       public         heap    postgres    false            �            1259    16457    Oficinas    TABLE     �   CREATE TABLE public."Oficinas" (
    id_ofi integer NOT NULL,
    direccion_ofi text NOT NULL,
    telefono_ofi numeric NOT NULL,
    fax_ofi integer NOT NULL
);
    DROP TABLE public."Oficinas";
       public         heap    postgres    false            �          0    16452 	   Empleados 
   TABLE DATA           �   COPY public."Empleados" (id_emp, dni_emp, nombre_emp, direccion_emp, telefono_emp, fecha_naci_emp, cargo_emp, fecha_ingreso_emp, salario_anual_emp, id_ofi) FROM stdin;
    public          postgres    false    200          �          0    16462 	   Inmuebles 
   TABLE DATA           �   COPY public."Inmuebles" (id_inm, direccion_inm, tipo_inm, nro_habi_inm, precio_alquiler_inm, precio_venta_inm, galeria, id_ofi, id_pro, id_emp) FROM stdin;
    public          postgres    false    202          �          0    16457    Oficinas 
   TABLE DATA           R   COPY public."Oficinas" (id_ofi, direccion_ofi, telefono_ofi, fax_ofi) FROM stdin;
    public          postgres    false    201   �       ,           2606    16456    Empleados Empleados_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_pkey" PRIMARY KEY (id_emp);
 F   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_pkey";
       public            postgres    false    200            0           2606    16466    Inmuebles Inmuebles_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT "Inmuebles_pkey" PRIMARY KEY (id_inm);
 F   ALTER TABLE ONLY public."Inmuebles" DROP CONSTRAINT "Inmuebles_pkey";
       public            postgres    false    202            .           2606    16461    Oficinas Oficinas_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Oficinas"
    ADD CONSTRAINT "Oficinas_pkey" PRIMARY KEY (id_ofi);
 D   ALTER TABLE ONLY public."Oficinas" DROP CONSTRAINT "Oficinas_pkey";
       public            postgres    false    201            1           2606    16467    Empleados Foreign key    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Foreign key" FOREIGN KEY (id_ofi) REFERENCES public."Oficinas"(id_ofi) NOT VALID;
 C   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Foreign key";
       public          postgres    false    2862    201    200            �   �   x�U�?k�0���w��Ew�?�t
��v1�-�C
���c�j�!���c�L�+�,��kvK�m�]�R�	�ɵ�H ���qX6Ţ�[UTE���6��ܯ.��E�ڣv�(@<���m�V�j�ʲe�,S��.�aE�$��EAQ��8�A����c��Y�Ix�� ���8X����x��{�[p�Q{�
)8�_����fh��a�L�]"���?+��pW�F����"z ��hB      �   �   x�m�A� D��p�
f�+4�����q��(Rb��	�V<�R��x�@��{�_�"U"���������P)
E=����"l�b;���	��(*E;��a�G��~���v������aF7�zs��&�������E+������劇,�G)��#E      �     x�}�=K�@�z��(���-�
Am,lֻ���H����
�9�a�w�}Xcx�iPƮSA�H��m�業���JeL�-���/��6`��s��q��e��d��>�HTa��4��&��v�2y`f���&�J�~=�s��{U�*(S*�n�|�w�!�ZI�akc��8������W�0��Yx_~#�v���=L�s�C`B �!�,݀  �#� "w1D�"s �5�ȷ^D�1
�kȁ��}J�꡶�     