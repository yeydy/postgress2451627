PGDMP     &    (                {            Empresa    13.4    13.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32778    Empresa    DATABASE     h   CREATE DATABASE "Empresa" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Empresa";
                postgres    false            �            1259    32784 	   Empleados    TABLE     �  CREATE TABLE public."Empleados" (
    "ID" integer NOT NULL,
    "DNI" integer NOT NULL,
    "Nombre" character varying(45) NOT NULL,
    "Direccion" character varying(45) NOT NULL,
    "Telefono" integer NOT NULL,
    "Fecha_Nac" date NOT NULL,
    "Cargo" character varying(45) NOT NULL,
    "Fecha_Ingreso" date NOT NULL,
    "Salario_Anual" double precision NOT NULL,
    "Id_Oficina" integer NOT NULL
);
    DROP TABLE public."Empleados";
       public         heap    postgres    false            �            1259    32779    Oficinas    TABLE     �   CREATE TABLE public."Oficinas" (
    "ID" integer NOT NULL,
    direccion character varying(45) NOT NULL,
    telefono integer NOT NULL,
    fax integer NOT NULL
);
    DROP TABLE public."Oficinas";
       public         heap    postgres    false            �            1259    32794    Pariente    TABLE       CREATE TABLE public."Pariente" (
    "ID" integer NOT NULL,
    "Nombre" character varying(45) NOT NULL,
    "Parentesco" character varying(45) NOT NULL,
    "Direccion" character varying(45) NOT NULL,
    "Telefono" integer NOT NULL,
    "Id_Empleado" integer NOT NULL
);
    DROP TABLE public."Pariente";
       public         heap    postgres    false            �          0    32784 	   Empleados 
   TABLE DATA           �   COPY public."Empleados" ("ID", "DNI", "Nombre", "Direccion", "Telefono", "Fecha_Nac", "Cargo", "Fecha_Ingreso", "Salario_Anual", "Id_Oficina") FROM stdin;
    public          postgres    false    201   �       �          0    32779    Oficinas 
   TABLE DATA           D   COPY public."Oficinas" ("ID", direccion, telefono, fax) FROM stdin;
    public          postgres    false    200   �       �          0    32794    Pariente 
   TABLE DATA           j   COPY public."Pariente" ("ID", "Nombre", "Parentesco", "Direccion", "Telefono", "Id_Empleado") FROM stdin;
    public          postgres    false    202   8       +           2606    32788    Empleados Empleados_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_pkey" PRIMARY KEY ("ID");
 F   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_pkey";
       public            postgres    false    201            )           2606    32783    Oficinas Oficinas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Oficinas"
    ADD CONSTRAINT "Oficinas_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."Oficinas" DROP CONSTRAINT "Oficinas_pkey";
       public            postgres    false    200            -           2606    32798    Pariente Pariente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Pariente"
    ADD CONSTRAINT "Pariente_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY public."Pariente" DROP CONSTRAINT "Pariente_pkey";
       public            postgres    false    202            /           2606    32799    Pariente Id_Empleado    FK CONSTRAINT     �   ALTER TABLE ONLY public."Pariente"
    ADD CONSTRAINT "Id_Empleado" FOREIGN KEY ("Id_Empleado") REFERENCES public."Empleados"("ID");
 B   ALTER TABLE ONLY public."Pariente" DROP CONSTRAINT "Id_Empleado";
       public          postgres    false    202    201    2859            .           2606    32789    Empleados Id_Oficina    FK CONSTRAINT     �   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Id_Oficina" FOREIGN KEY ("Id_Oficina") REFERENCES public."Oficinas"("ID");
 B   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Id_Oficina";
       public          postgres    false    2857    200    201            �   �  x�}����0Dϭ��p�Z-K:�&!6���B.
�`l�Ǔ�O���z7���[OU]m4�Xvl��)_��'OeH'�I؊�!�Fk�����|��(p��i2=
�h�:+�y����"�^���0�]g4���\/s�P熳g<Y�pQ�x��N��5-i�y�zb��Ƌ��<���DX��cNu�ybf�eV������^�n0�zHp؞~Ա�e��(A�ٽ6"=�[���|���z;��Ј�rd����.uz%�8�c�?��Mɿ���)i�=�z}�,Hk]�����|���-�Ɋ����aT �} �-Y�s�[m;��[��%OK=�5�4������XHnH�cI�7�B�a,S�-��DdM��"ö���0,���E�B�a�K��-��ڌ��A)�����      �   �   x�5�;�1�����	�������ZPd��o���z�x�s-��3���n���!	mYe;�͝bH���i��r����!�<��E'�#�n��3�H�!�d����B�dH;�u�w@����$���ND�A5s      �   �   x�]��J1��3O�'��r)��eoR3��lVR(�ۛT���\�|#��sƖ�ˌ��3o�@����@��`;~̸=sS�����򸯜҂��/�a���h���a���+^c�|M9��3����.N�)^!���`�4a�ˏ7�z]�H���%4�VE��1V+	M
�q������5�� E��1��	��(k������دsJvT[���5$_�     