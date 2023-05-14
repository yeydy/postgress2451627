PGDMP                         {         
   bd ventas     15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16567 
   bd ventas     DATABASE        CREATE DATABASE "bd ventas " WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "bd ventas ";
                postgres    false            �            1259    24769    book    TABLE     N  CREATE TABLE public.book (
    "id " integer NOT NULL,
    title character(250) NOT NULL,
    "slug " character(250) NOT NULL,
    "description " "char",
    "price " money NOT NULL,
    cover_path character(250),
    file_path character(250),
    create_at time with time zone NOT NULL,
    update_at time with time zone NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    24788 
   sales_item    TABLE     �   CREATE TABLE public.sales_item (
    "id " integer NOT NULL,
    book_id integer NOT NULL,
    order_id integer NOT NULL,
    price money NOT NULL,
    dows_ava integer NOT NULL
);
    DROP TABLE public.sales_item;
       public         heap    postgres    false            �            1259    24777    sales_order    TABLE     �   CREATE TABLE public.sales_order (
    "id " integer NOT NULL,
    customer_id integer NOT NULL,
    "total " money NOT NULL,
    playment_status bigint NOT NULL,
    create_at time with time zone NOT NULL
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    24776    sales_order_playment_status_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_order_playment_status_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.sales_order_playment_status_seq;
       public          postgres    false    217                       0    0    sales_order_playment_status_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.sales_order_playment_status_seq OWNED BY public.sales_order.playment_status;
          public          postgres    false    216            �            1259    24763    user_    TABLE     o  CREATE TABLE public.user_ (
    "id " integer NOT NULL,
    "firstname " character(45) NOT NULL,
    lastname character(45) NOT NULL,
    "fullname " character(100) NOT NULL,
    email character(45) NOT NULL,
    password character(250) NOT NULL,
    create_at timestamp with time zone NOT NULL,
    update_at timestamp with time zone NOT NULL,
    "role " "char"
);
    DROP TABLE public.user_;
       public         heap    postgres    false                      0    24769    book 
   TABLE DATA           |   COPY public.book ("id ", title, "slug ", "description ", "price ", cover_path, file_path, create_at, update_at) FROM stdin;
    public          postgres    false    215   *                 0    24788 
   sales_item 
   TABLE DATA           O   COPY public.sales_item ("id ", book_id, order_id, price, dows_ava) FROM stdin;
    public          postgres    false    218   [                 0    24777    sales_order 
   TABLE DATA           _   COPY public.sales_order ("id ", customer_id, "total ", playment_status, create_at) FROM stdin;
    public          postgres    false    217   �       
          0    24763    user_ 
   TABLE DATA           {   COPY public.user_ ("id ", "firstname ", lastname, "fullname ", email, password, create_at, update_at, "role ") FROM stdin;
    public          postgres    false    214   +                  0    0    sales_order_playment_status_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.sales_order_playment_status_seq', 1, false);
          public          postgres    false    216            t           2606    24775    book book_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY ("id ");
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    215            v           2606    24782    sales_order pk 
   CONSTRAINT     O   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT pk PRIMARY KEY ("id ");
 8   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT pk;
       public            postgres    false    217            x           2606    24792    sales_item sales_item_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT sales_item_pkey PRIMARY KEY ("id ");
 D   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT sales_item_pkey;
       public            postgres    false    218            r           2606    24768    user_ user _pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.user_
    ADD CONSTRAINT "user _pkey" PRIMARY KEY ("id ");
 <   ALTER TABLE ONLY public.user_ DROP CONSTRAINT "user _pkey";
       public            postgres    false    214            z           2606    24793    sales_item fk_book_id    FK CONSTRAINT     v   ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_book_id FOREIGN KEY (book_id) REFERENCES public.book("id ");
 ?   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_book_id;
       public          postgres    false    215    3188    218            {           2606    24798    sales_item fk_order_id    FK CONSTRAINT        ALTER TABLE ONLY public.sales_item
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES public.sales_order("id ");
 @   ALTER TABLE ONLY public.sales_item DROP CONSTRAINT fk_order_id;
       public          postgres    false    3190    217    218            y           2606    24783    sales_order pk_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT pk_customer_id FOREIGN KEY (customer_id) REFERENCES public.user_("id ");
 D   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT pk_customer_id;
       public          postgres    false    3186    217    214               !  x���j� �ϓ���F�[h�����������y���Ij�в���D��8x�q����fڶ����U:�� �4՚Z'ݱ���k't;������A���8*Gֱ�(Dm���Ҝ���[C>lhH.��y�)=������1�����p� �!6��V\��[
��R&����9�a��3��vx�N����Rǝ}�P��%g;�_;,�A�H�v�v�LW g;D(?�9ہ���d�]�Yx6H'�Ik�.chC�_&g;h��a&g;��vx�����{B�         W   x�]���0г3�*I?�]��y��Ip��d��J��Z�}w���Ac̶���b]6d��՚���T,Ve���iW1���:         Y   x�eι�0�x�
r����Z��z��J�D6ΟF��VR$ 0��EA؋yf� 8;m��N����*������c��A	Y�Z�WGb��o)&      
   N  x��An� E��)��# v,g��d3��!�8j{��!�v�����ʬ������?1g�^[j��{�Q�v�e
�Ȋ$��i�P�������L|N����2^eR0^�y�2�E"9����L��v����=>��)�@��s�=�!:�9]��|��GRT8X���c"�yb y���@:����@��ښ�6���"����_ξ��U���@6!�i�gȁȣx�"�G�xt<Ya�[C�z5�j��n2U|���C>�{.5�c�t8ؖhI�u0q.�ͯ5}9;i뻩˨B���݃Ǉ�_��"M�wm��     