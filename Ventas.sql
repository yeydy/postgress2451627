PGDMP         6        
        {            Ventas    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16397    Ventas    DATABASE     {   CREATE DATABASE "Ventas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Ventas";
                postgres    false            �            1259    16398    Book    TABLE     �  CREATE TABLE public."Book" (
    "ID" integer NOT NULL,
    "Title" character varying(250) NOT NULL,
    "Slug" character varying(250) NOT NULL,
    "Description" character varying(250) NOT NULL,
    "Price" money NOT NULL,
    "Cover_path" character varying(250) NOT NULL,
    "File_path" character varying(250) NOT NULL,
    "Created_at" date NOT NULL,
    "Update_at" date NOT NULL
);
    DROP TABLE public."Book";
       public         heap    postgres    false            �            1259    16415    Sales_Intem    TABLE     �   CREATE TABLE public."Sales_Intem" (
    "ID" integer NOT NULL,
    "ID_Book" integer NOT NULL,
    "ID_Order" integer NOT NULL,
    "Price" money NOT NULL,
    "Downs_ava" integer NOT NULL
);
 !   DROP TABLE public."Sales_Intem";
       public         heap    postgres    false            �            1259    16410    Sales_Order    TABLE     �   CREATE TABLE public."Sales_Order" (
    "ID" integer NOT NULL,
    "ID_User" integer NOT NULL,
    "Total" money NOT NULL,
    "Payment_status" character varying(20) NOT NULL,
    "Created_at" date NOT NULL
);
 !   DROP TABLE public."Sales_Order";
       public         heap    postgres    false            �            1259    16405    User    TABLE     �  CREATE TABLE public."User" (
    "ID" integer NOT NULL,
    "Fristname" character varying(45) NOT NULL,
    "Lastname" character varying(45) NOT NULL,
    "Fullname" character varying(100) NOT NULL,
    "Email" character varying(45) NOT NULL,
    "Password" character varying(250) NOT NULL,
    "Role" character(1) NOT NULL,
    "Created_at" date NOT NULL,
    "Uptade_at" date NOT NULL
);
    DROP TABLE public."User";
       public         heap    postgres    false                      0    16398    Book 
   TABLE DATA           �   COPY public."Book" ("ID", "Title", "Slug", "Description", "Price", "Cover_path", "File_path", "Created_at", "Update_at") FROM stdin;
    public          postgres    false    214   >       	          0    16415    Sales_Intem 
   TABLE DATA           Z   COPY public."Sales_Intem" ("ID", "ID_Book", "ID_Order", "Price", "Downs_ava") FROM stdin;
    public          postgres    false    217   �                 0    16410    Sales_Order 
   TABLE DATA           a   COPY public."Sales_Order" ("ID", "ID_User", "Total", "Payment_status", "Created_at") FROM stdin;
    public          postgres    false    216   �                 0    16405    User 
   TABLE DATA           �   COPY public."User" ("ID", "Fristname", "Lastname", "Fullname", "Email", "Password", "Role", "Created_at", "Uptade_at") FROM stdin;
    public          postgres    false    215          q           2606    16404    Book Book_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Book"
    ADD CONSTRAINT "Book_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."Book" DROP CONSTRAINT "Book_pkey";
       public            postgres    false    214            w           2606    16419    Sales_Intem Sales_Intem_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Sales_Intem"
    ADD CONSTRAINT "Sales_Intem_pkey" PRIMARY KEY ("ID_Book");
 J   ALTER TABLE ONLY public."Sales_Intem" DROP CONSTRAINT "Sales_Intem_pkey";
       public            postgres    false    217            u           2606    16414    Sales_Order Sales_Order_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."Sales_Order"
    ADD CONSTRAINT "Sales_Order_pkey" PRIMARY KEY ("ID_User");
 J   ALTER TABLE ONLY public."Sales_Order" DROP CONSTRAINT "Sales_Order_pkey";
       public            postgres    false    216            s           2606    16409    User User_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    215               5  x���An�0E��)x Ӗ�(�����vt�͈�m���V�xٛtY�Y=�nғ�SV긶��q>9��6Ӫ������{kTA�XTY/�V��{e(h�P�2�:�>�i���Fm8^�"�C��~m��v�wA�6�{ը�������
;di6�N��/��H"����O���ڨc��X�dz~!�L�c��i*�3'Q��ĥn��܀�V�Y����xX���܅�W^:��o��:m�rK�|�-�Sn]����j*.Q����&7d�d��{���?�<��YǠ�X����q�J~�9P���GP4[\DD��������o=� �4-R�D���j�kT�Q�V(�������la'�湈Ӿ�c�d��2�J4��Z����p��4�SF����s{	�Z�����Ј.=���:�1%�No�v�\�+�iCp%��������,�}�0"��>e�*��̖�Ӳ!^�[�,6�Z1��bؙ���E ^��Z�������5�����/|�g^­o������֟(h����L�QIzR�N���(�~0_��      	      x������ � �         ]   x�3�4�45�10PxԴ�3 5/%35�$�����H��P�ДˈӘ���$1=1%!o�e�i�i��s.�
Ns�fXp�r�r�3Ò+F��� �c,�         �   x�u�=n�@���)� ���2�			�ҥ�m�?֬����p�3���I D����7�n
�=:X�+�s��w��\(Noꄶ0��{V�ޕ�A�/�w�){���f1��@��̻s��kq/,��#�������+L:懰T�B�ڵA�E��V?�?��N�����g�2V�'�B܋���v����Au�g0E2>�)���(~0opǤ��p�!=m:�?�I�� =��U     