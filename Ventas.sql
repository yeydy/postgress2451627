PGDMP     *    0        	        {            Ventas    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16397    Ventas    DATABASE     ~   CREATE DATABASE "Ventas" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Ventas";
                postgres    false            �            1259    16398    Book    TABLE     /  CREATE TABLE public."Book" (
    "ID" integer NOT NULL,
    "Title" character(250) NOT NULL,
    "Slug" character(250),
    "Description" character(250) NOT NULL,
    "Price" real NOT NULL,
    "Cover_path" character(250),
    "File_path" character(250),
    "Created_at" date,
    "Updated_at" date
);
    DROP TABLE public."Book";
       public         heap    postgres    false            �            1259    16405 
   Sales_item    TABLE     �   CREATE TABLE public."Sales_item" (
    "ID" integer NOT NULL,
    "Book_ID" integer NOT NULL,
    "Order_ID" integer NOT NULL,
    "Price" real,
    "Downs_ava" integer
);
     DROP TABLE public."Sales_item";
       public         heap    postgres    false            �            1259    16410    Sales_order    TABLE     �   CREATE TABLE public."Sales_order" (
    "ID" integer NOT NULL,
    "Custoner_ID" integer NOT NULL,
    "Total" real,
    "Paym ent_status " character(250),
    "Created_at" date
);
 !   DROP TABLE public."Sales_order";
       public         heap    postgres    false            �            1259    16415    User    TABLE     E  CREATE TABLE public."User" (
    "ID" integer NOT NULL,
    "Firstname" character(45) NOT NULL,
    "Lastname" character(45) NOT NULL,
    "Fullname" character(100) NOT NULL,
    "Email" character(100) NOT NULL,
    "Password" character(45) NOT NULL,
    "Role" character(50),
    "Created_at" date,
    "Updated_at" date
);
    DROP TABLE public."User";
       public         heap    postgres    false                      0    16398    Book 
   TABLE DATA           �   COPY public."Book" ("ID", "Title", "Slug", "Description", "Price", "Cover_path", "File_path", "Created_at", "Updated_at") FROM stdin;
    public          postgres    false    214   �                 0    16405 
   Sales_item 
   TABLE DATA           Y   COPY public."Sales_item" ("ID", "Book_ID", "Order_ID", "Price", "Downs_ava") FROM stdin;
    public          postgres    false    215   �                 0    16410    Sales_order 
   TABLE DATA           g   COPY public."Sales_order" ("ID", "Custoner_ID", "Total", "Paym ent_status ", "Created_at") FROM stdin;
    public          postgres    false    216   �                 0    16415    User 
   TABLE DATA           �   COPY public."User" ("ID", "Firstname", "Lastname", "Fullname", "Email", "Password", "Role", "Created_at", "Updated_at") FROM stdin;
    public          postgres    false    217   ]       q           2606    16404    Book Book_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Book"
    ADD CONSTRAINT "Book_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."Book" DROP CONSTRAINT "Book_pkey";
       public            postgres    false    214            s           2606    16409    Sales_item Sales_item_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Sales_item"
    ADD CONSTRAINT "Sales_item_pkey" PRIMARY KEY ("ID");
 H   ALTER TABLE ONLY public."Sales_item" DROP CONSTRAINT "Sales_item_pkey";
       public            postgres    false    215            w           2606    16414    Sales_order Sales_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Sales_order"
    ADD CONSTRAINT "Sales_order_pkey" PRIMARY KEY ("ID");
 J   ALTER TABLE ONLY public."Sales_order" DROP CONSTRAINT "Sales_order_pkey";
       public            postgres    false    216            z           2606    16419    User User_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("ID");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    217            t           1259    16431 
   fki_FkItem    INDEX     J   CREATE INDEX "fki_FkItem" ON public."Sales_item" USING btree ("Book_ID");
     DROP INDEX public."fki_FkItem";
       public            postgres    false    215            x           1259    16425    fki_FkOrden    INDEX     P   CREATE INDEX "fki_FkOrden" ON public."Sales_order" USING btree ("Custoner_ID");
 !   DROP INDEX public."fki_FkOrden";
       public            postgres    false    216            u           1259    16437    fki_f    INDEX     D   CREATE INDEX fki_f ON public."Sales_item" USING btree ("Order_ID");
    DROP INDEX public.fki_f;
       public            postgres    false    215            {           2606    16426    Sales_item FkItem    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sales_item"
    ADD CONSTRAINT "FkItem" FOREIGN KEY ("Book_ID") REFERENCES public."Book"("ID") NOT VALID;
 ?   ALTER TABLE ONLY public."Sales_item" DROP CONSTRAINT "FkItem";
       public          postgres    false    215    214    3185            |           2606    16432    Sales_item FkItem2    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sales_item"
    ADD CONSTRAINT "FkItem2" FOREIGN KEY ("Order_ID") REFERENCES public."Sales_order"("ID") NOT VALID;
 @   ALTER TABLE ONLY public."Sales_item" DROP CONSTRAINT "FkItem2";
       public          postgres    false    216    3191    215            }           2606    16420    Sales_order FkOrden    FK CONSTRAINT     �   ALTER TABLE ONLY public."Sales_order"
    ADD CONSTRAINT "FkOrden" FOREIGN KEY ("Custoner_ID") REFERENCES public."User"("ID") NOT VALID;
 A   ALTER TABLE ONLY public."Sales_order" DROP CONSTRAINT "FkOrden";
       public          postgres    false    216    217    3194                 x���j�0���S�:��a�	#�	zQ��p�N�}�ɣ�@{\3�,������vgQFH�5J�����FZ�S�|m��O�(Q�t��(WU��쁝җۍ�6�բ�t5B�Md�~D�# g[֯KZ�����=(��U/6'ҥ�|�fP�	�D:�Ot�p�t��᪻P��[�r�A%�؃�A0|��.WN�8��A,+qb{�I���&�Y?!C�U'6n�0P�p�>��{r/y܄b�T�7";O         3   x�3�4�4�45500�4�2�AϘ�(k
� �s���y1z\\\ g         P   x�3�4�45 N�����̤�T�8���uLu,��99�MMG�&�F���Hxq�p���xx��qqq ���         �   x���M
�0���)����t�T]��p3$��	�U��[�
�b�*����|�H������HL�	X���{�!���n�wR�&��h�wȣn��⸋=֑Y�����e���߃c�2�3�{E�4�IL-UTu	�U�T8w<h����P�g��<�.ٙk�4��f�^!2ϻ��a��(�������7�/����+�ȿd�(�:�(�tD��%و�^�G�ץǖ�x��$In-�	�     