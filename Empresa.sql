PGDMP     +                    {            Empresa    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            
           1262    24610    Empresa    DATABASE     |   CREATE DATABASE "Empresa" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE "Empresa";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    24616 	   Empleados    TABLE     �  CREATE TABLE public."Empleados" (
    id_emp integer NOT NULL,
    dni_emp integer NOT NULL,
    nombre_emp character(50) NOT NULL,
    telefono_emp character(35) NOT NULL,
    fecha_naci_emp date NOT NULL,
    cargo_emp character(50) NOT NULL,
    fecha_ingreso_emp date NOT NULL,
    salario_anual_emp money NOT NULL,
    id_ofi integer NOT NULL,
    dirrecion_emp character(60) NOT NULL
);
    DROP TABLE public."Empleados";
       public         heap    postgres    false    4            �            1259    24611    Oficinas    TABLE     �   CREATE TABLE public."Oficinas" (
    id_ofi integer NOT NULL,
    dirrecion_ofi character(50) NOT NULL,
    telefono_ofi character(30) NOT NULL,
    fax_ofi integer NOT NULL
);
    DROP TABLE public."Oficinas";
       public         heap    postgres    false    4            �            1259    24626    Pariente    TABLE       CREATE TABLE public."Pariente" (
    id_par integer NOT NULL,
    nombre_par character(60) NOT NULL,
    parentesco_par character(50) NOT NULL,
    dirrecion_par character(70) NOT NULL,
    telefono_par character(35) NOT NULL,
    id_emp integer NOT NULL
);
    DROP TABLE public."Pariente";
       public         heap    postgres    false    4                      0    24616 	   Empleados 
   TABLE DATA           �   COPY public."Empleados" (id_emp, dni_emp, nombre_emp, telefono_emp, fecha_naci_emp, cargo_emp, fecha_ingreso_emp, salario_anual_emp, id_ofi, dirrecion_emp) FROM stdin;
    public          postgres    false    215   v                 0    24611    Oficinas 
   TABLE DATA           R   COPY public."Oficinas" (id_ofi, dirrecion_ofi, telefono_ofi, fax_ofi) FROM stdin;
    public          postgres    false    214   $                 0    24626    Pariente 
   TABLE DATA           m   COPY public."Pariente" (id_par, nombre_par, parentesco_par, dirrecion_par, telefono_par, id_emp) FROM stdin;
    public          postgres    false    216   I       m           2606    24615    Oficinas Empleados_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Oficinas"
    ADD CONSTRAINT "Empleados_pkey" PRIMARY KEY (id_ofi);
 E   ALTER TABLE ONLY public."Oficinas" DROP CONSTRAINT "Empleados_pkey";
       public            postgres    false    214            o           2606    24620    Empleados Empleados_pkey1 
   CONSTRAINT     _   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT "Empleados_pkey1" PRIMARY KEY (id_emp);
 G   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT "Empleados_pkey1";
       public            postgres    false    215            q           2606    24630    Pariente Pariente_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Pariente"
    ADD CONSTRAINT "Pariente_pkey" PRIMARY KEY (id_par);
 D   ALTER TABLE ONLY public."Pariente" DROP CONSTRAINT "Pariente_pkey";
       public            postgres    false    216            s           2606    24631    Pariente id_emp    FK CONSTRAINT     y   ALTER TABLE ONLY public."Pariente"
    ADD CONSTRAINT id_emp FOREIGN KEY (id_emp) REFERENCES public."Empleados"(id_emp);
 ;   ALTER TABLE ONLY public."Pariente" DROP CONSTRAINT id_emp;
       public          postgres    false    3183    216    215            r           2606    24621    Empleados id_ofi    FK CONSTRAINT     y   ALTER TABLE ONLY public."Empleados"
    ADD CONSTRAINT id_ofi FOREIGN KEY (id_ofi) REFERENCES public."Oficinas"(id_ofi);
 <   ALTER TABLE ONLY public."Empleados" DROP CONSTRAINT id_ofi;
       public          postgres    false    215    214    3181               �  x����n�0���SX���q��g� H��R/�S\�d�dW,G����I'�*��|D�������MQZg�����+>�A*�n˻��E �
�4l�6=Vm��W��Z(Y��R�����ϯ�LI�ú��;NGs<r�|�;�k�.~N��96O��nyLc`Z����5ʕ��VH���#��]
%��6�ݝ�UqZ䆨0Ė���wsGg�������}�_�Vz��� ��WϷm���UJZ6���2<�&T�� �%���д���9I���
5���ɇ^�XC���`��ǰm��}�#ֳ�$�1m����/	���KB��ݷۚ�j��`�&'ɿP��YS���j��$Z�b'�z��«�D.�" I��ϋK��7����a\j#�9�9��-���*,�rJ�48�2*g�m�Z�Z���$����F���5�=v��,'pG���p����a��6:$�G��������j�M�Ni{�x�j��V8N��\3�2=*nح_)8��S�φ.���V]���x���er7�_�4=*� �:$�i&���e@��0���^���62u���q3�:���>.�$��ި�yO�F��\�5��$5S[�MX��!_��kFs+8�=0�LL7�����_<b��s#����E��l��M�e ���           x���1n�0К9�H� {<c�6�HcX
d"�����H���>�VEƱGm�4\�ŷ�i^a��WQ��[9&C�cx!�_q	9�%�MV���)�T���q�;=/a-��s�h�a��[�2��:�b���Y���0+,��?�s��l![�b�;��;�#�F�;��M�c�Ʌ�jk9�� �UQ�O=,�on�`�X��YX��aCe��&���wp����5YXie�c>�p�x��X��o36�}��7�8ˢ%w��?�5 � ����         }  x����R�0E��Wx�5�+ɿ�QR��8�q��=NHa玌�ʕ�u�"�]P��cO��u���V� Nc��H��V�t���W֏�R8{ڽ~��W�����Y%*m�`áa'fG��+L��ė?(E�1&�7���s��	1�j5[����]�q���T��π�'	2��&����T*6a��n��	�� �'0�R�c����jm�5��e��,)�E�$��bcL+�q�ƾ��g2 ������]���BA�6[31'���ˬ�l���4����K��T���n(�\�)|`�5��bܧ���ٟR��e��\�t�͟:�'9�4�ջH�+���}~B%Ĵ>��˔#�{��eq     