PGDMP     !                    {            postgres    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3346                        2615    16401    Empresa(clase)    SCHEMA         CREATE SCHEMA "Empresa(clase)";
    DROP SCHEMA "Empresa(clase)";
                postgres    false            �            1259    16402    Clientes    TABLE     $  CREATE TABLE "Empresa(clase)"."Clientes" (
    "Id_cli" integer NOT NULL,
    "Nombre_cli" character varying NOT NULL,
    "Dirrecion_cli" character varying NOT NULL,
    "Telefono_cli" numeric NOT NULL,
    "Inmueble_cli" character varying NOT NULL,
    "Importe_maximo" integer NOT NULL
);
 (   DROP TABLE "Empresa(clase)"."Clientes";
       Empresa(clase)         heap    postgres    false    8            �            1259    16409    Facturas    TABLE     ,  CREATE TABLE "Empresa(clase)"."Facturas" (
    "Id_fac" integer NOT NULL,
    "Importe_fac" date NOT NULL,
    "Metodo_de_pago" character varying(30) NOT NULL,
    "Importe_deposito" date NOT NULL,
    plazo_pago date NOT NULL,
    "Observaciones" text NOT NULL,
    "ID_cliente" integer NOT NULL
);
 (   DROP TABLE "Empresa(clase)"."Facturas";
       Empresa(clase)         heap    postgres    false    8            �            1259    16416    Pago    TABLE     �   CREATE TABLE "Empresa(clase)"."Pago" (
    "Id_pag" integer NOT NULL,
    "Importe" integer NOT NULL,
    fecha_pago date NOT NULL,
    "ID_fac" integer NOT NULL
);
 $   DROP TABLE "Empresa(clase)"."Pago";
       Empresa(clase)         heap    postgres    false    8            
          0    16402    Clientes 
   TABLE DATA           �   COPY "Empresa(clase)"."Clientes" ("Id_cli", "Nombre_cli", "Dirrecion_cli", "Telefono_cli", "Inmueble_cli", "Importe_maximo") FROM stdin;
    Empresa(clase)          postgres    false    218   �                 0    16409    Facturas 
   TABLE DATA           �   COPY "Empresa(clase)"."Facturas" ("Id_fac", "Importe_fac", "Metodo_de_pago", "Importe_deposito", plazo_pago, "Observaciones", "ID_cliente") FROM stdin;
    Empresa(clase)          postgres    false    219   �                 0    16416    Pago 
   TABLE DATA           U   COPY "Empresa(clase)"."Pago" ("Id_pag", "Importe", fecha_pago, "ID_fac") FROM stdin;
    Empresa(clase)          postgres    false    220   �       s           2606    16408    Clientes Clientes_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY "Empresa(clase)"."Clientes"
    ADD CONSTRAINT "Clientes_pkey" PRIMARY KEY ("Id_cli");
 N   ALTER TABLE ONLY "Empresa(clase)"."Clientes" DROP CONSTRAINT "Clientes_pkey";
       Empresa(clase)            postgres    false    218            u           2606    16454    Facturas Facturas_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY "Empresa(clase)"."Facturas"
    ADD CONSTRAINT "Facturas_pkey" PRIMARY KEY ("Id_fac");
 N   ALTER TABLE ONLY "Empresa(clase)"."Facturas" DROP CONSTRAINT "Facturas_pkey";
       Empresa(clase)            postgres    false    219            x           2606    16428    Pago Pago_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Empresa(clase)"."Pago"
    ADD CONSTRAINT "Pago_pkey" PRIMARY KEY ("Id_pag");
 F   ALTER TABLE ONLY "Empresa(clase)"."Pago" DROP CONSTRAINT "Pago_pkey";
       Empresa(clase)            postgres    false    220            v           1259    16426    fki_cliente_facturas    INDEX     ]   CREATE INDEX fki_cliente_facturas ON "Empresa(clase)"."Facturas" USING btree ("ID_cliente");
 2   DROP INDEX "Empresa(clase)".fki_cliente_facturas;
       Empresa(clase)            postgres    false    219            y           1259    16460    fki_factura_pago    INDEX     Q   CREATE INDEX fki_factura_pago ON "Empresa(clase)"."Pago" USING btree ("ID_fac");
 .   DROP INDEX "Empresa(clase)".fki_factura_pago;
       Empresa(clase)            postgres    false    220            z           2606    16421    Facturas cliente_facturas    FK CONSTRAINT     �   ALTER TABLE ONLY "Empresa(clase)"."Facturas"
    ADD CONSTRAINT cliente_facturas FOREIGN KEY ("ID_cliente") REFERENCES "Empresa(clase)"."Clientes"("Id_cli") NOT VALID;
 O   ALTER TABLE ONLY "Empresa(clase)"."Facturas" DROP CONSTRAINT cliente_facturas;
       Empresa(clase)          postgres    false    219    218    3187            {           2606    16455    Pago factura_pago    FK CONSTRAINT     �   ALTER TABLE ONLY "Empresa(clase)"."Pago"
    ADD CONSTRAINT factura_pago FOREIGN KEY ("ID_fac") REFERENCES "Empresa(clase)"."Facturas"("Id_fac") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY "Empresa(clase)"."Pago" DROP CONSTRAINT factura_pago;
       Empresa(clase)          postgres    false    220    219    3189            
   �   x�E�Mn�0F��a*��/z�n<�F6�l����c�4�����T�Ȑq	�hC�����Ɣ��z��	K���p�'�Z9���f�ga��@�@�T���̜)pi��B�
MS.����F9�C��K5�z&)vǔ�JJ��u����7�pb��ꌒ�-,����咎�R=[2�|a~e[�A8Ż��Hy�!S�4<��h��M���5�����˦䝒E���!����*{gm��G�u��q�         �   x���Y�0D��)r�d����"!uS[z�p[����ּ�؆ΠM�k��gm�֏�y�����!k�C���t=�7U_��>���íR�Q5}��I͒�ks;��I� ��~�h��J��`�$�d��g(�#,L��9�ˢ- z���ޭ7N=G($�@L��țAn�B1������f��	�_�8a����XJ6aV�NĐ|�D�G�i�#�S߈         V   x�M��� �o��P�����(9�^��͚����y�H"A��H��	A|Ѭ����H�k�<|�f>�ArP�A�~]�CD?�m     