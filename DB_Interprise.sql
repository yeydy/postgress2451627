PGDMP         $                {         
   Interprise    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24675 
   Interprise    DATABASE     �   CREATE DATABASE "Interprise" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Interprise";
                postgres    false            �            1259    24681 	   Empleados    TABLE     �  CREATE TABLE public."Empleados" (
    "ID_Emp" integer NOT NULL,
    "ID_Ofi" integer NOT NULL,
    "DNI_Emp" integer NOT NULL,
    "Nombre_Emp" character varying(250) NOT NULL,
    "Direccion" character varying(50) NOT NULL,
    "Telefono" integer NOT NULL,
    "Fecha_Naci_Emp" date NOT NULL,
    "Cargo_Emp" character varying(50) NOT NULL,
    "Salario_Anual_Emp" money NOT NULL
);
    DROP TABLE public."Empleados";
       public         heap    postgres    false            �            1259    24676    Oficinas    TABLE     �   CREATE TABLE public."Oficinas" (
    "ID_Ofi" integer NOT NULL,
    "Direccion" character varying(250) NOT NULL,
    "Telefono" character varying(30) NOT NULL,
    "Fax" character varying(30)
);
    DROP TABLE public."Oficinas";
       public         heap    postgres    false            �            1259    24686    Pariente    TABLE     �   CREATE TABLE public."Pariente" (
    "ID_Pariente" integer NOT NULL,
    "ID_emp" integer NOT NULL,
    "Nombre_Par" character varying(250) NOT NULL,
    "Dirrecion_Par" character varying(50) NOT NULL,
    "Telefono_Par" integer NOT NULL
);
    DROP TABLE public."Pariente";
       public         heap    postgres    false                      0    24681 	   Empleados 
   TABLE DATA           �   COPY public."Empleados" ("ID_Emp", "ID_Ofi", "DNI_Emp", "Nombre_Emp", "Direccion", "Telefono", "Fecha_Naci_Emp", "Cargo_Emp", "Salario_Anual_Emp") FROM stdin;
    public          postgres    false    215   7                  0    24676    Oficinas 
   TABLE DATA           N   COPY public."Oficinas" ("ID_Ofi", "Direccion", "Telefono", "Fax") FROM stdin;
    public          postgres    false    214   W                 0    24686    Pariente 
   TABLE DATA           l   COPY public."Pariente" ("ID_Pariente", "ID_emp", "Nombre_Par", "Dirrecion_Par", "Telefono_Par") FROM stdin;
    public          postgres    false    216          o           2606    24685    Empleados Empleados_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_pkey" PRIMARY KEY ("ID_Emp");
 F   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_pkey";
       public            postgres    false    215            m           2606    24680    Oficinas Oficinas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Oficinas"
    ADD CONSTRAINT "Oficinas_pkey" PRIMARY KEY ("ID_Ofi");
 D   ALTER TABLE ONLY public."Oficinas" DROP CONSTRAINT "Oficinas_pkey";
       public            postgres    false    214            q           2606    24690    Pariente Pariente_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Pariente"
    ADD CONSTRAINT "Pariente_pkey" PRIMARY KEY ("ID_Pariente");
 D   ALTER TABLE ONLY public."Pariente" DROP CONSTRAINT "Pariente_pkey";
       public            postgres    false    216                 x�u�Ao!���Wp��k�=�NZ5r���|�zA��$v�C}��Ʊ	i/0ߛ���I&Š{#���CK�7����P�����?d�㘓g�����fl'�NI�=��B��1�S|�#���J	�B,�X(P���he��ɷ��g�4�bIϥZ�m�W?�:��6R����a_�3.�V�}�W�&�ֳ�I�9��R,@�>��d��h|8��vF[2�L�u���@ߦ��lʼr48  c�硖���x���>�L��#\WЌ�+���M'-��?ԙ��ffX��� �2ߦ�[)9�޴�xaۑ�넣v.ҷ�wL3J�sD1W��J��$�ǘc9)�*�1���8l��S�e��m[H;m�TN��1xd��<"��p�%��/�ب�$�2(�S�}�;͎�I?�4x*a�z=�Sms*B;Z���b��~_z`��;��} mOS�_�C1K�x�:�I�yI�yu����D+~+��LIm�q#d�ծ����uT瀩!����
��;5כ�s�X,�l��Y          �   x�E�9�P��s� �����h"�)m$�O��iflGô,os:����l9bʥ6K��5^�Y�'�j�)�yA��@jzR@tQ�j��$�(����QQ�u�(��)*$�m�QAtWT�?��gT�=5��-�Q�vfW������g9����[�         ?  x�u�MN�0���S��*v��Y�E����X���Veal��,�g�b8�
	�������/aC�nb"o[�6�!�c�[�\l��T�k�4�w~o(u.�wX��yS���6d5���XֽkqI����J*-�`$�(�0�~�u�7�m�l��G*�@�ʽD\PJ��1E��]Hm�4���{�(>ā.����yO9��.�y�1D�3)*��í����Χ��䧜���͔�u�	J+ɳހ�����>?�֨
��.�<Bť�y��5P��?�����0�R��ij�?���_u/g� Ё�n*���bŞg��/c �     