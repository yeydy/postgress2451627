PGDMP     /                    {            postgres    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3350                        2615    24577    Ventas    SCHEMA        CREATE SCHEMA "Ventas";
    DROP SCHEMA "Ventas";
                postgres    false            �            1259    24604    Book    TABLE     ~  CREATE TABLE "Ventas"."Book" (
    "Id_" integer NOT NULL,
    "Title" character varying(20) NOT NULL,
    slug character varying(20) NOT NULL,
    descripition text NOT NULL,
    price money NOT NULL,
    cover_path character varying(20) NOT NULL,
    file_path character varying(20) NOT NULL,
    update_at timestamp(6) without time zone NOT NULL,
    created_at date NOT NULL
);
    DROP TABLE "Ventas"."Book";
       Ventas         heap    postgres    false    7            �            1259    24618 
   Sales_Item    TABLE     �   CREATE TABLE "Ventas"."Sales_Item" (
    "Id" integer NOT NULL,
    "Book_id" integer NOT NULL,
    order_id integer NOT NULL,
    price double precision NOT NULL,
    downs_ava integer NOT NULL
);
 "   DROP TABLE "Ventas"."Sales_Item";
       Ventas         heap    postgres    false    7            �            1259    24611    Sales_Order    TABLE     �   CREATE TABLE "Ventas"."Sales_Order" (
    "Id" integer NOT NULL,
    customer_id integer NOT NULL,
    "Total" integer NOT NULL,
    payment_status integer NOT NULL,
    created_at date NOT NULL
);
 #   DROP TABLE "Ventas"."Sales_Order";
       Ventas         heap    postgres    false    7            �            1259    24623    User    TABLE     �  CREATE TABLE "Ventas"."User" (
    "Id" integer NOT NULL,
    firstname character varying(30) NOT NULL,
    lastaname character varying(30) NOT NULL,
    fullname character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    password character varying(30) NOT NULL,
    created_ad timestamp without time zone NOT NULL,
    update_at timestamp without time zone NOT NULL,
    role character varying(30) NOT NULL
);
    DROP TABLE "Ventas"."User";
       Ventas         heap    postgres    false    7                      0    24604    Book 
   TABLE DATA           {   COPY "Ventas"."Book" ("Id_", "Title", slug, descripition, price, cover_path, file_path, update_at, created_at) FROM stdin;
    Ventas          postgres    false    216   �                 0    24618 
   Sales_Item 
   TABLE DATA           U   COPY "Ventas"."Sales_Item" ("Id", "Book_id", order_id, price, downs_ava) FROM stdin;
    Ventas          postgres    false    218   �                 0    24611    Sales_Order 
   TABLE DATA           a   COPY "Ventas"."Sales_Order" ("Id", customer_id, "Total", payment_status, created_at) FROM stdin;
    Ventas          postgres    false    217                    0    24623    User 
   TABLE DATA           v   COPY "Ventas"."User" ("Id", firstname, lastaname, fullname, email, password, created_ad, update_at, role) FROM stdin;
    Ventas          postgres    false    219   j       s           2606    24610    Book Book_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "Ventas"."Book"
    ADD CONSTRAINT "Book_pkey" PRIMARY KEY ("Id_");
 >   ALTER TABLE ONLY "Ventas"."Book" DROP CONSTRAINT "Book_pkey";
       Ventas            postgres    false    216            u           2606    24617    Sales_Order Sales_Item_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Ventas"."Sales_Order"
    ADD CONSTRAINT "Sales_Item_pkey" PRIMARY KEY ("Id");
 K   ALTER TABLE ONLY "Ventas"."Sales_Order" DROP CONSTRAINT "Sales_Item_pkey";
       Ventas            postgres    false    217            x           2606    40961    Sales_Item Sales_Item_pkey1 
   CONSTRAINT     a   ALTER TABLE ONLY "Ventas"."Sales_Item"
    ADD CONSTRAINT "Sales_Item_pkey1" PRIMARY KEY ("Id");
 K   ALTER TABLE ONLY "Ventas"."Sales_Item" DROP CONSTRAINT "Sales_Item_pkey1";
       Ventas            postgres    false    218            }           2606    24627    User User_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY "Ventas"."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY "Ventas"."User" DROP CONSTRAINT "User_pkey";
       Ventas            postgres    false    219            y           1259    24633    fki_book_item    INDEX     M   CREATE INDEX fki_book_item ON "Ventas"."Sales_Item" USING btree ("Book_id");
 #   DROP INDEX "Ventas".fki_book_item;
       Ventas            postgres    false    218            z           1259    24639    fki_order_item    INDEX     M   CREATE INDEX fki_order_item ON "Ventas"."Sales_Item" USING btree (order_id);
 $   DROP INDEX "Ventas".fki_order_item;
       Ventas            postgres    false    218            {           1259    24656    fki_order_itemfk    INDEX     O   CREATE INDEX fki_order_itemfk ON "Ventas"."Sales_Item" USING btree (order_id);
 &   DROP INDEX "Ventas".fki_order_itemfk;
       Ventas            postgres    false    218            v           1259    24645    fki_order_user    INDEX     Q   CREATE INDEX fki_order_user ON "Ventas"."Sales_Order" USING btree (customer_id);
 $   DROP INDEX "Ventas".fki_order_user;
       Ventas            postgres    false    217            ~           2606    24640    Sales_Order order_user    FK CONSTRAINT     �   ALTER TABLE ONLY "Ventas"."Sales_Order"
    ADD CONSTRAINT order_user FOREIGN KEY (customer_id) REFERENCES "Ventas"."User"("Id") ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 D   ALTER TABLE ONLY "Ventas"."Sales_Order" DROP CONSTRAINT order_user;
       Ventas          postgres    false    217    3197    219                  x�]�=n�0Fg�2�-�F�)c�v񜅱�ֆ,��[��Xi;i��B���
8%JAk��u��C6�?s��4n�,����'�d�r$Шu�e^T����Y���wJC��H62�Ц���$B�%��Gg#}Q�!M}��J�r���1�:ץ*�Ù=-X�G2x�l�A����M^(��B���-��/�+�����9��NXY��'�Ʌ�P��	�O�p ˓����G.��.(E�Ĩ
�p�i���ή��4������ n^�K	��������VǭR����/         ;   x����@¾�0U.}����h*#K8���_+f�ߜJ6).e���֨���{H� U�	�         O   x�%̻�PC�:�%(vޏ]�h\YWa��v�*=�GB4ʶ�F~� ��nT�ǁ�8�Q�����En���g� �.E           x�u�Mn�0F��)|"� i��A��2
6�Rs��!�SBP�Y�{#�͌R,��7��,z�S�c/���X�_u�v�B˔6yQ2-�ɤ�d!���+�X��z� ���%�>ghG �У{�/�ȍV�G����A��ǆ
��\�8�.\=��� �?Cbb��q��a���%��������7����U�p6���{��-��E�n�.G���d5�(�-�@\�:���lF�KZ��)�w�7�b���ha:���9�A~�U     