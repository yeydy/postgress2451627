PGDMP         ,                {            ventas    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16404    ventas    DATABASE     |   CREATE DATABASE ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE ventas;
                postgres    false            �            1259    16405    book    TABLE     N  CREATE TABLE public.book (
    id_book integer NOT NULL,
    title character(250) NOT NULL,
    slug character(250) NOT NULL,
    description character(250) NOT NULL,
    price money NOT NULL,
    cover_path character(250) NOT NULL,
    file_path character(250) NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16427 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    id_item integer NOT NULL,
    book_id integer NOT NULL,
    order_id integer NOT NULL,
    "price " money NOT NULL,
    downs_ava integer NOT NULL
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    16417    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    id_order integer NOT NULL,
    "customer_id " integer NOT NULL,
    total money NOT NULL,
    payment_status character(45) NOT NULL,
    created_at date NOT NULL
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    16412    user    TABLE     Q  CREATE TABLE public."user" (
    id_user integer NOT NULL,
    firstname character(45) NOT NULL,
    lastname character(45) NOT NULL,
    fullname character(45) NOT NULL,
    email character(45) NOT NULL,
    password character(250) NOT NULL,
    role character(45) NOT NULL,
    created_at date NOT NULL,
    update_at date NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            	          0    16405    book 
   TABLE DATA           w   COPY public.book (id_book, title, slug, description, price, cover_path, file_path, created_at, updated_at) FROM stdin;
    public          postgres    false    214   �                 0    16427 
   sales_item 
   TABLE DATA           U   COPY public.sales_item (id_item, book_id, order_id, "price ", downs_ava) FROM stdin;
    public          postgres    false    217   2                 0    16417    sales_order 
   TABLE DATA           b   COPY public.sales_order (id_order, "customer_id ", total, payment_status, created_at) FROM stdin;
    public          postgres    false    216   �       
          0    16412    user 
   TABLE DATA           v   COPY public."user" (id_user, firstname, lastname, fullname, email, password, role, created_at, update_at) FROM stdin;
    public          postgres    false    215   A       q           2606    16411    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id_book);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    214            w           2606    16431    sales_item sales_item_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY (id_item);
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    217            u           2606    16421    sales_order sales_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (id_order);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    216            s           2606    16416    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id_user);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    215            y           2606    16432    sales_item book_id    FK CONSTRAINT     u   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES public.book(id_book);
 <   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT book_id;
       public          postgres    false    214    3185    217            x           2606    16422    sales_order customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT customer_id FOREIGN KEY ("customer_id ") REFERENCES public."user"(id_user);
 A   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT customer_id;
       public          postgres    false    3187    216    215            z           2606    16437    sales_item order_id    FK CONSTRAINT        ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT order_id FOREIGN KEY (order_id) REFERENCES public.sales_order(id_order);
 =   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT order_id;
       public          postgres    false    217    3189    216            	   e  x���n�F���S,Cے��:&iRh�NS �e���.w�]RA�6y ?_���H�Q6�FlHρ�D.�?w�����K#d���HA8Ґ�T""��ci��)�Ò��������[�J���E&A�UՍo�/���/��9/��Ӱ7��d��xQ�I})4�;��O�9�R!p�ӍO�����3T����Ȥt������t)��mK�ë|���t��5�(��Y����M�''��Y<��L�WZȌ��P�8,�<`Q�E4�p�]�n���������ߴsR�XQ���-X%��$8�e�
�e�N���o�v�� ����$*,��`3d��,���,^k������>X�[�h|��{ӠwT\��~彣bO��$�,	w��=�,u���D�e\K#?(�k�0c��ErZ���nҰ�c����?/�Z|�3��k�P�҈+>?B��dJ�>�Az��03I��U�ʄ�K�J^|9h�[r�:�Nȋ��|F��O��d�۲�w�ۈ%�*��6����^�P2�L
���-��}U Ò��Aw_)�u\�*�����ZGF\(*
Oô�?��W���xG�:�V�sP{D>].�l\�2{
�a���uuS��XH[�Eꅴ�L�;[�Ւ��f!]��|�����0�Ѵ�73��������(<����Ӯ;�MY�:
�V���5!��{~������V��������;��R]����[�)a�qa\P!�ЛA�-8\�������:}�|��`P�{�mD�u���O���N$�
��އ��k��i����Houp�wݙE�uoQz�]����wQ�Y&r��W'vuϵ�n��W�h49k��[���d����v(�/[(��q�x�3�ۇ���%�w�4;A��:��#@0D4:9��qM��	�%	��BE�g�/\�� C�>�P�IO�M�0-�ǆ� =�cq��?h�{�Ev�ͷ���A����������-�>�r�x������G�e�˻�`>���2~�0kPݦ8�{��(캳���z�q*9�$}۰�a!S*�`�?Ȉ�>�x��?6���l�M���`+?�轢�         `   x�5��� ��<�*	�.���R����)�+�
��?eE]8dNZ��\<P�35v�BWQ���j;&獾pn��f�^�)���?<�H�         �   x���11��WP�̡�_���������!g��w]P��+��q�]O�LV�RDCE��9���/D�
G�x3�D���#��]�"�CꞥY��+�H�sͤ��c���qÆT��Tb��r�}�0v4|ĥp?�|h:m�      
   �  x�嗽n�0�盧�@��n��B�D�.]b��N ���N�ԥ� y2w���+_ۉi��Y-�hý����ҩ��/ń��Kǣ�o%��K�N���q8����hD[�᳤���koTB'K�^V�����t6_���U�R%��3�1�u���.ùW��a%:950zb����;���	��8���!�`*����st��]������B��~J;q~�_]�L�JHY:q0t��</�I�/�^?�=3��7�*��;��5�;:u0r�������p�������3��*��U[oPCgG5ܝy����<�xH�e��1s�]v�
�Wm�Q	)K�F;��^*/��W����VY���o�AqG���<I^(���T^���	.Q���7&���Uw�����m��G�sE�/7�
{     