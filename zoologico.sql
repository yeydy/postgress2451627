PGDMP     1                    {            postgres    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3324                        2615    16394 	   Zoologico    SCHEMA        CREATE SCHEMA "Zoologico";
    DROP SCHEMA "Zoologico";
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16395 	   Mascotas     TABLE       CREATE TABLE "Zoologico"."Mascotas " (
    "ID" integer NOT NULL,
    "Nombre" character(20) NOT NULL,
    "Propietario " character(60) NOT NULL,
    "Especie" character(20) NOT NULL,
    "Sexo" character(1) NOT NULL,
    "Nacimiento" date,
    "Fallecimiento " date
);
 $   DROP TABLE "Zoologico"."Mascotas ";
    	   Zoologico         heap    postgres    false    7            �          0    16395 	   Mascotas  
   TABLE DATA           }   COPY "Zoologico"."Mascotas " ("ID", "Nombre", "Propietario ", "Especie", "Sexo", "Nacimiento", "Fallecimiento ") FROM stdin;
 	   Zoologico          postgres    false    216   �
       g           2606    16399    Mascotas  Mascotas _pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Zoologico"."Mascotas "
    ADD CONSTRAINT "Mascotas _pkey" PRIMARY KEY ("ID");
 K   ALTER TABLE ONLY "Zoologico"."Mascotas " DROP CONSTRAINT "Mascotas _pkey";
    	   Zoologico            postgres    false    216            �      x������ � �     