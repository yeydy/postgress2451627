PGDMP     "                    {            zooo    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24813    zooo    DATABASE     w   CREATE DATABASE zooo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE zooo;
                postgres    false            �            1259    24814    mascotas    TABLE     .  CREATE TABLE public.mascotas (
    "Id" integer NOT NULL,
    "nombre " character varying(20) NOT NULL,
    propietario character varying(20) NOT NULL,
    especie character varying(20) NOT NULL,
    "sexo " character varying(20) NOT NULL,
    "nacimiento " date NOT NULL,
    "fallecimiento " date
);
    DROP TABLE public.mascotas;
       public         heap    postgres    false            �          0    24814    mascotas 
   TABLE DATA           s   COPY public.mascotas ("Id", "nombre ", propietario, especie, "sexo ", "nacimiento ", "fallecimiento ") FROM stdin;
    public          postgres    false    214   1       e           2606    24818    mascotas mascotas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.mascotas
    ADD CONSTRAINT mascotas_pkey PRIMARY KEY ("Id");
 @   ALTER TABLE ONLY public.mascotas DROP CONSTRAINT mascotas_pkey;
       public            postgres    false    214            �   x   x�U�1� �W�G�������D�bs֑��w���bf7`���*ܫ���Ev~.�;��q�ɂ������nðVU���`i{QFH�O&����j�Ќ"���j��#N���!߈��)-     