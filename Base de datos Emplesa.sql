PGDMP                         {            Empresa    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16406    Empresa    DATABASE        CREATE DATABASE "Empresa" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Empresa";
                postgres    false            �            1259    16456    Empleado    TABLE     :  CREATE TABLE public."Empleado" (
    "ID" integer NOT NULL,
    "DNI" numeric,
    "Nombre" character(250),
    "Direccion" character(250),
    "Telefono" integer,
    "Fecha_Nacimiento " date,
    "Cargo" character(250),
    "Fecha_Ingreso" date,
    "Salario_Anual" numeric,
    "ID_oficina" integer NOT NULL
);
    DROP TABLE public."Empleado";
       public         heap    postgres    false            �            1259    16414    Oficinas    TABLE     �   CREATE TABLE public."Oficinas" (
    "ID" integer NOT NULL,
    "Direccion " character(250),
    "Telefono" integer,
    "Fax" integer
);
    DROP TABLE public."Oficinas";
       public         heap    postgres    false            �            1259    16447    Pariente    TABLE     �   CREATE TABLE public."Pariente" (
    "ID" integer NOT NULL,
    "Nombre" character(250),
    "Parentesco" character(250),
    "Direccion" character(250),
    "Telefono" numeric(15,0),
    "ID_Empleado" integer NOT NULL
);
    DROP TABLE public."Pariente";
       public         heap    postgres    false                      0    16456    Empleado 
   TABLE DATA           �   COPY public."Empleado" ("ID", "DNI", "Nombre", "Direccion", "Telefono", "Fecha_Nacimiento ", "Cargo", "Fecha_Ingreso", "Salario_Anual", "ID_oficina") FROM stdin;
    public          postgres    false    216   s                 0    16414    Oficinas 
   TABLE DATA           K   COPY public."Oficinas" ("ID", "Direccion ", "Telefono", "Fax") FROM stdin;
    public          postgres    false    214   �                 0    16447    Pariente 
   TABLE DATA           j   COPY public."Pariente" ("ID", "Nombre", "Parentesco", "Direccion", "Telefono", "ID_Empleado") FROM stdin;
    public          postgres    false    215   �       r           2606    16462    Empleado Empleado_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Empleado"
    ADD CONSTRAINT "Empleado_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."Empleado" DROP CONSTRAINT "Empleado_pkey";
       public            postgres    false    216            m           2606    16418    Oficinas Oficinas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Oficinas"
    ADD CONSTRAINT "Oficinas_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."Oficinas" DROP CONSTRAINT "Oficinas_pkey";
       public            postgres    false    214            o           2606    16453    Pariente Pariente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Pariente"
    ADD CONSTRAINT "Pariente_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."Pariente" DROP CONSTRAINT "Pariente_pkey";
       public            postgres    false    215            p           1259    16473    fki_Fk_Empleado    INDEX     Q   CREATE INDEX "fki_Fk_Empleado" ON public."Pariente" USING btree ("ID_Empleado");
 %   DROP INDEX public."fki_Fk_Empleado";
       public            postgres    false    215            t           2606    16463    Empleado FK_Oficina    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleado"
    ADD CONSTRAINT "FK_Oficina" FOREIGN KEY ("ID_oficina") REFERENCES public."Oficinas"("ID");
 A   ALTER TABLE ONLY public."Empleado" DROP CONSTRAINT "FK_Oficina";
       public          postgres    false    214    3181    216            s           2606    16468    Pariente Fk_Empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public."Pariente"
    ADD CONSTRAINT "Fk_Empleado" FOREIGN KEY ("ID_Empleado") REFERENCES public."Empleado"("ID") NOT VALID;
 B   ALTER TABLE ONLY public."Pariente" DROP CONSTRAINT "Fk_Empleado";
       public          postgres    false    3186    215    216               Y  x�����0���)�T�cc��6�V�Z�=�b�w�
LdȪۧ���'����܆!����p&�l�&��%?����7)"��;��}O������s�.k���VD0v����$���y:��[
�뎮q?A����$:�Ex% %�iN����w׻6����	��Abk
$��f�<�qvݘ��mA���Q��
��NcU����غ�]�*�(�N�-`��V��'�s|�S�f?8L���!�Q!��B�Tr������p�4ϑ���dH�u�زl���<C�&_��ǹom�/ֺ@b*u���3ɺna
%��"�$��ڬ��6nŷueHD�S�X�t����[C����'���k�[�I$VH#d��fM-y�	��]�Z���0�������^|�.v#��_&�X!Y��I>[��u���!�$7�w�X2�)NbNb+��y})���GL�d�k&y@"�����o��]�5)�6H8	g�%\�,d��i��.~��-�-"L2%�y�ȕ�|�̟�:x�1���	��pI��n7`���4�H��_�m#͔0���K�Pr���T��K�ɧ���%�_����{NqJ         �   x��ձB1�ڞ"}'��)ك�}���C�`�J�t�3:>�z:�{��\�[
��֛���0�gA(��� �>�I�Dc�R\u�m8�M�d���P�dc�g��<h.�F;��.�QK��vP��A�-I�`M���O�KÚLe�����_�ͣXi@�5�Ú
85>��n)r`         L  x��Aj�0E�3��Z"gF��!Ь�v��`�`�eP�ޫg�ŪƤ����z����,<��%���G)b	NKZ��E�C�t�`,?�.�2-]�=[�����a�|N��]�E�*�T�Q������[����9H��e���*x�uү�&�C�D�E��O�?��TJұ�������=C@�����S쳮vx��rQr���������ݜD%�k�Q��/ `l�g�M*������_�� =<�r�'sJ_�R$GEH��:@l@v�ᖀ�Atl���	X�,�zx&ph7�/01u�)��g�5�4 ;j|�+��������     