PGDMP                         {            postgres    15.2    15.2 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3324                        2615    16394    Mascotas    SCHEMA        CREATE SCHEMA "Mascotas";
    DROP SCHEMA "Mascotas";
                postgres    false            �            1259    16395 	   Zoloogico    TABLE       CREATE TABLE "Mascotas"."Zoloogico" (
    "Id" integer NOT NULL,
    "Nombre" character(1) NOT NULL,
    "Propietario" character(1) NOT NULL,
    especie character(1) NOT NULL,
    sexo character(1) NOT NULL,
    "Nacimiento" date NOT NULL,
    "Fallecimiento" date NOT NULL
);
 #   DROP TABLE "Mascotas"."Zoloogico";
       Mascotas         heap    postgres    false    7            �          0    16395 	   Zoloogico 
   TABLE DATA           v   COPY "Mascotas"."Zoloogico" ("Id", "Nombre", "Propietario", especie, sexo, "Nacimiento", "Fallecimiento") FROM stdin;
    Mascotas          postgres    false    216   �       g           2606    16399    Zoloogico Zoloogico_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Mascotas"."Zoloogico"
    ADD CONSTRAINT "Zoloogico_pkey" PRIMARY KEY ("Id");
 J   ALTER TABLE ONLY "Mascotas"."Zoloogico" DROP CONSTRAINT "Zoloogico_pkey";
       Mascotas            postgres    false    216            �      x������ � �     