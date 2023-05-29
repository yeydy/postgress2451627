PGDMP     #                    {            examenVentas    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16447    examenVentas    DATABASE     �   CREATE DATABASE "examenVentas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "examenVentas";
                postgres    false            �            1259    16465 	   Empleados    TABLE     [  CREATE TABLE public."Empleados" (
    id_emp integer NOT NULL,
    dni_emp integer,
    nombre_emp character varying(225),
    direccion_emp character varying(225),
    telefono_emp integer,
    fecha_naci_emp date,
    cargo_emp character varying(225),
    fecha_ingreso_emp integer,
    salario_anual_emp integer,
    id_ofi integer NOT NULL
);
    DROP TABLE public."Empleados";
       public         heap    postgres    false            �            1259    16497 	   Inmuebles    TABLE     [  CREATE TABLE public."Inmuebles" (
    id_inm integer NOT NULL,
    direccion_inm character varying(225),
    tipo_inm character varying(225),
    nro_habi_inm integer,
    precio_alquiler_inm integer,
    precio_venta_inm integer,
    galeria character varying(225),
    id_pro integer,
    id_ofi integer NOT NULL,
    id_emp integer NOT NULL
);
    DROP TABLE public."Inmuebles";
       public         heap    postgres    false            �            1259    16453    oficinas    TABLE     �   CREATE TABLE public.oficinas (
    id_ofi integer NOT NULL,
    direccion_ofi character varying,
    telefono_ofi integer,
    fax_ofi integer
);
    DROP TABLE public.oficinas;
       public         heap    postgres    false                      0    16465 	   Empleados 
   TABLE DATA           �   COPY public."Empleados" (id_emp, dni_emp, nombre_emp, direccion_emp, telefono_emp, fecha_naci_emp, cargo_emp, fecha_ingreso_emp, salario_anual_emp, id_ofi) FROM stdin;
    public          postgres    false    215   �                 0    16497 	   Inmuebles 
   TABLE DATA           �   COPY public."Inmuebles" (id_inm, direccion_inm, tipo_inm, nro_habi_inm, precio_alquiler_inm, precio_venta_inm, galeria, id_pro, id_ofi, id_emp) FROM stdin;
    public          postgres    false    216   �                 0    16453    oficinas 
   TABLE DATA           P   COPY public.oficinas (id_ofi, direccion_ofi, telefono_ofi, fax_ofi) FROM stdin;
    public          postgres    false    214          o           2606    16471    Empleados Empleados_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_pkey" PRIMARY KEY (id_emp);
 F   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_pkey";
       public            postgres    false    215            q           2606    16519    Inmuebles Inmuebles_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT "Inmuebles_pkey" PRIMARY KEY (id_inm);
 F   ALTER TABLE ONLY public."Inmuebles" DROP CONSTRAINT "Inmuebles_pkey";
       public            postgres    false    216            m           2606    16459    oficinas oficinas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.oficinas
    ADD CONSTRAINT oficinas_pkey PRIMARY KEY (id_ofi);
 @   ALTER TABLE ONLY public.oficinas DROP CONSTRAINT oficinas_pkey;
       public            postgres    false    214            r           1259    16517    fki_Oficinas_Inmuebles    INDEX     R   CREATE INDEX "fki_Oficinas_Inmuebles" ON public."Inmuebles" USING btree (id_ofi);
 ,   DROP INDEX public."fki_Oficinas_Inmuebles";
       public            postgres    false    216            s           2606    16472    Empleados Empleados_id_ofi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_id_ofi_fkey" FOREIGN KEY (id_ofi) REFERENCES public.oficinas(id_ofi);
 M   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_id_ofi_fkey";
       public          postgres    false    215    214    3181            t           2606    16512    Inmuebles Oficinas_Inmuebles    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT "Oficinas_Inmuebles" FOREIGN KEY (id_ofi) REFERENCES public.oficinas(id_ofi) NOT VALID;
 J   ALTER TABLE ONLY public."Inmuebles" DROP CONSTRAINT "Oficinas_Inmuebles";
       public          postgres    false    214    216    3181               7  x�U�]n� F��U��0(�S�&4*7�5}覺�n��&m"�HΙ��#̴����~���{��'F�q@-��T�X>D8���)�(��E�q�|���0��N� ��{������L���B�}����Z���^�%�.AQ��<H
Z����\��G��w��k7�����D0Y ���� Zظ̼p����������?�w����,���.������&=3�V�Lo|p�������;5A�z&����H�h������r9�$�]��+�B���p�{��7���Fy5v4��E)���k�         �   x�-�Qn� D�Ǉ�0` ��	�'ͦU��H�U{��wk	$��1��+~�>���a���u@M<A���c=�bh�!|�}�f��I�c�:�)**t"�9h��ׄ&١Ͼ��PDn�F��[�XC{j-��hQ�չ��L�Vc��Hq��vX�`����_X.Ԏ&ՙe��g0�5����bn�,�1;<07g��\?o�w��Q�H29��u*�����3�e� �(���uP!���ͷ=�qV./"��;S�         �   x�=�AN1E�?����I&�e+!Tih�nB'�HQ�&���\w@l���3�ퟦiw/�3����l�������xT�A�_Ҝ��	,�փ��t[��Wzp���Ay ]Zm���w�Aq�t}���V�"�W5��s-=-E��v��v�[�pzn��V���߰~�,�屨in���1�� <9�     