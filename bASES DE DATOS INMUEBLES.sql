PGDMP     ;                    {            Ventas de muebles     15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16449    Ventas de muebles     DATABASE     �   CREATE DATABASE "Ventas de muebles " WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
 $   DROP DATABASE "Ventas de muebles ";
                postgres    false            �            1259    16457 	   Empleados    TABLE     �  CREATE TABLE public."Empleados" (
    "Id_emp" integer NOT NULL,
    "Dni_emp" integer NOT NULL,
    "Nombre_emp" character(150) NOT NULL,
    "Direccion_emp" character(150) NOT NULL,
    "Telefono_emp" numeric(50,0) NOT NULL,
    "Fecha_naci_emp" date NOT NULL,
    "Cargo_emp" character(150) NOT NULL,
    "Fecha_ingreso_emp" date NOT NULL,
    "Salario_anual_emp" money NOT NULL,
    "Id_ofi" integer NOT NULL
);
    DROP TABLE public."Empleados";
       public         heap    postgres    false            �            1259    16464 	   Inmuebles    TABLE     �  CREATE TABLE public."Inmuebles" (
    "Id_inm" integer NOT NULL,
    "Direccion_inm" character(150) NOT NULL,
    "Tipo_inm" character(150) NOT NULL,
    "Nro_habi_inm" numeric(50,0) NOT NULL,
    "Precio_alquiler_inm" money NOT NULL,
    "Precio_ventas_inm" money NOT NULL,
    "Galeria" text NOT NULL,
    "Id_ofi" integer NOT NULL,
    "Id_pro" integer NOT NULL,
    "Id_emp" integer NOT NULL
);
    DROP TABLE public."Inmuebles";
       public         heap    postgres    false            �            1259    16450 	   Oficinas     TABLE     �   CREATE TABLE public."Oficinas " (
    "Id_ofi" integer NOT NULL,
    "Direccion_ofi" character(150) NOT NULL,
    "Telefono_ofi" numeric(50,0) NOT NULL,
    "Fax_ofi" numeric(50,0) NOT NULL
);
    DROP TABLE public."Oficinas ";
       public         heap    postgres    false                      0    16457 	   Empleados 
   TABLE DATA           �   COPY public."Empleados" ("Id_emp", "Dni_emp", "Nombre_emp", "Direccion_emp", "Telefono_emp", "Fecha_naci_emp", "Cargo_emp", "Fecha_ingreso_emp", "Salario_anual_emp", "Id_ofi") FROM stdin;
    public          postgres    false    215   n                 0    16464 	   Inmuebles 
   TABLE DATA           �   COPY public."Inmuebles" ("Id_inm", "Direccion_inm", "Tipo_inm", "Nro_habi_inm", "Precio_alquiler_inm", "Precio_ventas_inm", "Galeria", "Id_ofi", "Id_pro", "Id_emp") FROM stdin;
    public          postgres    false    216   �                 0    16450 	   Oficinas  
   TABLE DATA           [   COPY public."Oficinas " ("Id_ofi", "Direccion_ofi", "Telefono_ofi", "Fax_ofi") FROM stdin;
    public          postgres    false    214          o           2606    16463    Empleados Empleados_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_pkey" PRIMARY KEY ("Id_emp");
 F   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_pkey";
       public            postgres    false    215            q           2606    16470    Inmuebles Inmuebles_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT "Inmuebles_pkey" PRIMARY KEY ("Id_inm");
 F   ALTER TABLE ONLY public."Inmuebles" DROP CONSTRAINT "Inmuebles_pkey";
       public            postgres    false    216            m           2606    16456    Oficinas  Oficinas _pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Oficinas "
    ADD CONSTRAINT "Oficinas _pkey" PRIMARY KEY ("Id_ofi");
 F   ALTER TABLE ONLY public."Oficinas " DROP CONSTRAINT "Oficinas _pkey";
       public            postgres    false    214            s           2606    16508    Empleados Empleados_Id_ofi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_Id_ofi_fkey" FOREIGN KEY ("Id_ofi") REFERENCES public."Oficinas "("Id_ofi") NOT VALID;
 M   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_Id_ofi_fkey";
       public          postgres    false    214    3181    215            t           2606    16518    Inmuebles Inmuebles_Id_emp_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Inmuebles"
    ADD CONSTRAINT "Inmuebles_Id_emp_fkey" FOREIGN KEY ("Id_emp") REFERENCES public."Empleados"("Id_emp") NOT VALID;
 M   ALTER TABLE ONLY public."Inmuebles" DROP CONSTRAINT "Inmuebles_Id_emp_fkey";
       public          postgres    false    216    215    3183            r           2606    16513    Oficinas  Oficinas _Id_ofi_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Oficinas "
    ADD CONSTRAINT "Oficinas _Id_ofi_fkey" FOREIGN KEY ("Id_ofi") REFERENCES public."Oficinas "("Id_ofi") NOT VALID;
 M   ALTER TABLE ONLY public."Oficinas " DROP CONSTRAINT "Oficinas _Id_ofi_fkey";
       public          postgres    false    214    214    3181               7  x�͘1o�0�g�Wh�XwGE�F[�0Щk�VQ�8�������@�����D}��N,�8t)G��S�N�Me��i��/Z��R�Ge��ǖrK�}����p*��l���}h�����H��Lf���.H��}�ÿҎWr[|���Psv�ܒ��@��0�(�
(�����y�t�\��R�3i��u	�LZOc -�9\a���A|�8Шnw���Ҟou�@�AW��R��9M�AΆ��+u]�k&�!��D`�I5Fq�i�;��yɄ�0!,L���܍���R@@��L��@AA�T�}��0��|+P��}(m�V�u�vơe��w����4��}=$X$��0�Ȓ�1��1�Qp�3K[��K1�^����lX-lŠ�oZvߟ��e|<�K�[
X�V��@�P�1v�8��q����� �ci7r~��h�A��ERo?�H���E��@�W��vO��W:�p��^���`k�����n�̩E~�� ����łw���Q�x`PU=�� ��"�ܵŚP��[Y(ذ¦�ƀ7?�6���_�         G  x��׿J�@��:y�+,���)���G��"�pz�=�_��%[����!��a�X��9_.�=�[8u��έ��3X3'#r�G���/��QU.�[��V�M9u��z]��M�A9kK�X)O��T'�ӆAv�OP�_�x�P!'��TM �YA��OPfx��˚?���ں�" ��$��"�A�j9�!ʾ�����=��d_!��T �}���	����O�كLU��_|��ehkYzZ[@��w�فLU�ݿ��z�u;��8�S�lA� SՂl6d��J���B�;��d���d�'�[?�w��# +�T���<���L�         �   x��ԱmC1К�B�Q���p�!��;՞?�A>����p��E�χכս"�F8�O���hE/3�������5w���}���z}���c���]a2"�};ج�o�^X2�Sl==���Y�4o� 8�A"̹[b�o�l�1ĺ��g��m������1d�C����k��.?�1����_��~7��*W�<�ة �s �*�X8��?l��r��K+o��/5��     