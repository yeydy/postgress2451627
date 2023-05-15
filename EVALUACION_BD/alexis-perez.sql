PGDMP     8                    {            Ventas-evaluacion    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    16423    Ventas-evaluacion    DATABASE     �   CREATE DATABASE "Ventas-evaluacion" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
 #   DROP DATABASE "Ventas-evaluacion";
                postgres    false            �            1259    16431 	   empleados    TABLE     �  CREATE TABLE public.empleados (
    id_emp integer NOT NULL,
    dni_emp integer NOT NULL,
    nombre_emp character varying NOT NULL,
    direccion_emp character varying NOT NULL,
    telefono_emp numeric NOT NULL,
    fecha_naci_emp date NOT NULL,
    cargo_emp character varying NOT NULL,
    fecha_ingreso_emp character varying NOT NULL,
    salario_anual_emp numeric NOT NULL,
    id_ofi integer NOT NULL
);
    DROP TABLE public.empleados;
       public         heap    postgres    false            �            1259    16424    oficinas    TABLE     �   CREATE TABLE public.oficinas (
    id_ofi integer NOT NULL,
    direccion_ofi character varying NOT NULL,
    telefono_ofi character varying NOT NULL,
    fax_ofi character varying NOT NULL
);
    DROP TABLE public.oficinas;
       public         heap    postgres    false            �            1259    16438    pariente    TABLE     �   CREATE TABLE public.pariente (
    id_par integer NOT NULL,
    nombre_par character varying NOT NULL,
    parentesco_par character varying NOT NULL,
    direccion character varying NOT NULL,
    telefono numeric NOT NULL,
    id_emp integer NOT NULL
);
    DROP TABLE public.pariente;
       public         heap    postgres    false                      0    16431 	   empleados 
   TABLE DATA           �   COPY public.empleados (id_emp, dni_emp, nombre_emp, direccion_emp, telefono_emp, fecha_naci_emp, cargo_emp, fecha_ingreso_emp, salario_anual_emp, id_ofi) FROM stdin;
    public          postgres    false    215                    0    16424    oficinas 
   TABLE DATA           P   COPY public.oficinas (id_ofi, direccion_ofi, telefono_ofi, fax_ofi) FROM stdin;
    public          postgres    false    214   V                 0    16438    pariente 
   TABLE DATA           c   COPY public.pariente (id_par, nombre_par, parentesco_par, direccion, telefono, id_emp) FROM stdin;
    public          postgres    false    216   c       o           2606    16437    empleados empleados_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_emp);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public            postgres    false    215            m           2606    16430    oficinas oficinas_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.oficinas
    ADD CONSTRAINT oficinas_pkey PRIMARY KEY (id_ofi);
 @   ALTER TABLE ONLY public.oficinas DROP CONSTRAINT oficinas_pkey;
       public            postgres    false    214            q           2606    16444    pariente pariente_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.pariente
    ADD CONSTRAINT pariente_pkey PRIMARY KEY (id_par);
 @   ALTER TABLE ONLY public.pariente DROP CONSTRAINT pariente_pkey;
       public            postgres    false    216            s           2606    16445    pariente fktest    FK CONSTRAINT     u   ALTER TABLE ONLY public.pariente
    ADD CONSTRAINT fktest FOREIGN KEY (id_emp) REFERENCES public.empleados(id_emp);
 9   ALTER TABLE ONLY public.pariente DROP CONSTRAINT fktest;
       public          postgres    false    216    3183    215            r           2606    16450    empleados fktest2    FK CONSTRAINT     v   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT fktest2 FOREIGN KEY (id_ofi) REFERENCES public.oficinas(id_ofi);
 ;   ALTER TABLE ONLY public.empleados DROP CONSTRAINT fktest2;
       public          postgres    false    3181    214    215               A  x�m�͎�0�������q�8pb� qqS���ĕ��X��'!�SU����(Pr��	�{�����q��;�n��K]�TK��
F;o}���ZH+d��5�sm����b��W������(�Ai����0�V�¯��"��$���.[:�R�(�#�����
.�%���H;H�f�D���5>�%�Q��5|s���c�_Q0���9���w.;�(m@u����-�;� K�����r-t��SI?��o����|��$n��)�� E�A\ӊ֝��2\�-V;�2�h{�����]�=�ˮ��W����� cwЀ %�N�� �: �y�ћ�=LqΥ�e����W<�o���5.8C /�Z��y�K�'�=(f�x���0�>}����ig���(~
�4��q���%M�6�J����P͎@�6��Kj�\��Ԗ��{(.�q88�������R�d���j��.F�?�lD��������?�[Ꙅ6��g�wCjz���(a��<�Uq�:��8���.�XQB�"�Tr'D�C��9�i�$tA��~!���q��.�=.S��c��d         �   x�-�KN�0е������e�d���a�&�Daň��kq.��a�OU��٩��v��Wb�Q�Y"��ƂD u˔����^R�@*p��P̺���0tUX�����/Qz,"�O�ӥG�|च �����v�>����	Y���`���ʴ�h������;#�{��*��2�Ƽ��</[>>��L�����X���R�HE
B��Y��Ni\oy+�B��IU?J3���o)��ײ��G˵2/w ���Ws         T  x�U�Mj�0�����KlI��,��E
]d��Ğ��d�I 9}G�)���y�<�0�aOQ�g<`�}8 �Y[7U]�c^��c8�Lc�k�k=Ԫ�w�i�z�/r:��T�k��n�SNG�Q�Z`��a
e��31���j�����1�4�`�~��,\)aQ�A<LOiݏ�#ic0u�WU$%��A3��!a졺g�"�{��jaC9ɔ��rd�5�)�3��-'�=`����&`Ҝ��dW9��'B>�A҆W�M�u�"|��U�=DӀ����T��I��y�>������n�Ur��Wb���t���=V���O�q�Rҽ���W��E)�O     