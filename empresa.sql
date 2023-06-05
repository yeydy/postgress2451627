PGDMP     :    -                {            Trabajo    15.2    15.2 L    |           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            }           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ~           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16500    Trabajo    DATABASE        CREATE DATABASE "Trabajo" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Trabajo";
                postgres    false            �            1259    16528    administrativo    TABLE     �   CREATE TABLE public.administrativo (
    id_adm integer NOT NULL,
    id_emp integer NOT NULL,
    velocidad_escri_admin character varying(45) NOT NULL
);
 "   DROP TABLE public.administrativo;
       public         heap    postgres    false            �            1259    16602    clientes    TABLE       CREATE TABLE public.clientes (
    id_cli integer NOT NULL,
    nombre_cli character varying(45) NOT NULL,
    direccion_cli character varying(45) NOT NULL,
    telefono_cli integer NOT NULL,
    inmueble_pre_cli text NOT NULL,
    importe_max_cli double precision NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    16695    contrato    TABLE     �  CREATE TABLE public.contrato (
    id_con integer NOT NULL,
    importe_mensual_con double precision NOT NULL,
    metodo_mensual_con character varying(15) NOT NULL,
    importe_deposito_con double precision NOT NULL,
    estado_cancel_con character varying(15) NOT NULL,
    fecha_inicio_con date NOT NULL,
    fecha_fin_con date NOT NULL,
    duracion_con character varying(15) NOT NULL,
    id_inm integer NOT NULL,
    id_emp integer NOT NULL,
    id_cli integer NOT NULL
);
    DROP TABLE public.contrato;
       public         heap    postgres    false            �            1259    16518 
   directores    TABLE     �   CREATE TABLE public.directores (
    id_dir integer NOT NULL,
    id_emp integer NOT NULL,
    pago_anual_dir double precision NOT NULL,
    bonif_mensual_dir double precision NOT NULL
);
    DROP TABLE public.directores;
       public         heap    postgres    false            �            1259    16506 	   empleados    TABLE     q  CREATE TABLE public.empleados (
    id_emp integer NOT NULL,
    id_ofi integer NOT NULL,
    nombre_emp character varying(45) NOT NULL,
    direccion_emp character varying(45) NOT NULL,
    telefono_emp integer NOT NULL,
    fecha_nac_emp date NOT NULL,
    cargo_emp text NOT NULL,
    fecha_ingr_emp date NOT NULL,
    salario_anual_emp double precision NOT NULL
);
    DROP TABLE public.empleados;
       public         heap    postgres    false            �            1259    16624    entrevistas    TABLE     �   CREATE TABLE public.entrevistas (
    id_ent integer NOT NULL,
    id_emp integer NOT NULL,
    id_cli integer NOT NULL,
    fecha_ent date NOT NULL,
    comentario_ent text
);
    DROP TABLE public.entrevistas;
       public         heap    postgres    false            �            1259    16658    facturas    TABLE       CREATE TABLE public.facturas (
    id_fac integer NOT NULL,
    importe_fac double precision NOT NULL,
    metodo_pag character varying(15) NOT NULL,
    importe_deposito double precision NOT NULL,
    plazo_pago date NOT NULL,
    observaciones text,
    id_cli integer NOT NULL
);
    DROP TABLE public.facturas;
       public         heap    postgres    false            �            1259    16680    inmueble_factura    TABLE     �   CREATE TABLE public.inmueble_factura (
    id_inmfac integer NOT NULL,
    id_inm integer NOT NULL,
    id_fac integer NOT NULL
);
 $   DROP TABLE public.inmueble_factura;
       public         heap    postgres    false            �            1259    16567 	   inmuebles    TABLE     �  CREATE TABLE public.inmuebles (
    id_inm integer NOT NULL,
    id_ofi integer NOT NULL,
    id_emp integer NOT NULL,
    direccion_inm character varying(45) NOT NULL,
    tipo_inm character varying(45) NOT NULL,
    nro_habi_inm integer NOT NULL,
    precio_alquiler_inm double precision NOT NULL,
    precio_venta_inm double precision NOT NULL,
    galeria integer NOT NULL,
    id_pro integer NOT NULL
);
    DROP TABLE public.inmuebles;
       public         heap    postgres    false            �            1259    16587    inspecciones    TABLE     |   CREATE TABLE public.inspecciones (
    id_ins integer NOT NULL,
    id_inm integer NOT NULL,
    fecha_ins date NOT NULL
);
     DROP TABLE public.inspecciones;
       public         heap    postgres    false            �            1259    16501    oficinas    TABLE     �   CREATE TABLE public.oficinas (
    id_ofi integer NOT NULL,
    direccion_ofi character varying(45) NOT NULL,
    telefono_ofi integer NOT NULL,
    fax_ofi integer NOT NULL
);
    DROP TABLE public.oficinas;
       public         heap    postgres    false            �            1259    16670    pago    TABLE     �   CREATE TABLE public.pago (
    id_pag integer NOT NULL,
    importe_pag double precision NOT NULL,
    fecha_pag date NOT NULL,
    id_fac integer NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false            �            1259    16538 	   parientes    TABLE       CREATE TABLE public.parientes (
    id_par integer NOT NULL,
    id_emp integer NOT NULL,
    nombre_par character varying(45) NOT NULL,
    parentesco_par text NOT NULL,
    direccion_par character varying(45) NOT NULL,
    telefono_par integer NOT NULL
);
    DROP TABLE public.parientes;
       public         heap    postgres    false            �            1259    16597 	   periodico    TABLE     �   CREATE TABLE public.periodico (
    id_per integer NOT NULL,
    nombre_per character varying(45) NOT NULL,
    telefono_per integer NOT NULL,
    fax_per integer NOT NULL,
    nombre_pers_cont_per character varying(60) NOT NULL
);
    DROP TABLE public.periodico;
       public         heap    postgres    false            �            1259    16550    propietarios    TABLE     #  CREATE TABLE public.propietarios (
    id_pro integer NOT NULL,
    nombre_pro character varying(45) NOT NULL,
    direccion_pro character varying(45) NOT NULL,
    telefono_pro integer NOT NULL,
    tipo_empresa_pro text NOT NULL,
    persona_contrato_pro character varying(45) NOT NULL
);
     DROP TABLE public.propietarios;
       public         heap    postgres    false            �            1259    16609 
   publicidad    TABLE     �   CREATE TABLE public.publicidad (
    id_pu integer NOT NULL,
    fecha_pu date NOT NULL,
    costo_pu double precision NOT NULL,
    id_inm integer NOT NULL,
    id_per integer NOT NULL
);
    DROP TABLE public.publicidad;
       public         heap    postgres    false            �            1259    16641    vistas    TABLE     �   CREATE TABLE public.vistas (
    id_vis integer NOT NULL,
    id_inm integer NOT NULL,
    id_cli integer NOT NULL,
    fecha_vis date NOT NULL,
    comentario_vis text
);
    DROP TABLE public.vistas;
       public         heap    postgres    false            l          0    16528    administrativo 
   TABLE DATA           O   COPY public.administrativo (id_adm, id_emp, velocidad_escri_admin) FROM stdin;
    public          postgres    false    217   �^       r          0    16602    clientes 
   TABLE DATA           v   COPY public.clientes (id_cli, nombre_cli, direccion_cli, telefono_cli, inmueble_pre_cli, importe_max_cli) FROM stdin;
    public          postgres    false    223   �^       y          0    16695    contrato 
   TABLE DATA           �   COPY public.contrato (id_con, importe_mensual_con, metodo_mensual_con, importe_deposito_con, estado_cancel_con, fecha_inicio_con, fecha_fin_con, duracion_con, id_inm, id_emp, id_cli) FROM stdin;
    public          postgres    false    230   j_       k          0    16518 
   directores 
   TABLE DATA           W   COPY public.directores (id_dir, id_emp, pago_anual_dir, bonif_mensual_dir) FROM stdin;
    public          postgres    false    216   S`       j          0    16506 	   empleados 
   TABLE DATA           �   COPY public.empleados (id_emp, id_ofi, nombre_emp, direccion_emp, telefono_emp, fecha_nac_emp, cargo_emp, fecha_ingr_emp, salario_anual_emp) FROM stdin;
    public          postgres    false    215   �`       t          0    16624    entrevistas 
   TABLE DATA           X   COPY public.entrevistas (id_ent, id_emp, id_cli, fecha_ent, comentario_ent) FROM stdin;
    public          postgres    false    225   �a       v          0    16658    facturas 
   TABLE DATA           x   COPY public.facturas (id_fac, importe_fac, metodo_pag, importe_deposito, plazo_pago, observaciones, id_cli) FROM stdin;
    public          postgres    false    227   b       x          0    16680    inmueble_factura 
   TABLE DATA           E   COPY public.inmueble_factura (id_inmfac, id_inm, id_fac) FROM stdin;
    public          postgres    false    229   �b       o          0    16567 	   inmuebles 
   TABLE DATA           �   COPY public.inmuebles (id_inm, id_ofi, id_emp, direccion_inm, tipo_inm, nro_habi_inm, precio_alquiler_inm, precio_venta_inm, galeria, id_pro) FROM stdin;
    public          postgres    false    220   �b       p          0    16587    inspecciones 
   TABLE DATA           A   COPY public.inspecciones (id_ins, id_inm, fecha_ins) FROM stdin;
    public          postgres    false    221   �c       i          0    16501    oficinas 
   TABLE DATA           P   COPY public.oficinas (id_ofi, direccion_ofi, telefono_ofi, fax_ofi) FROM stdin;
    public          postgres    false    214   �c       w          0    16670    pago 
   TABLE DATA           F   COPY public.pago (id_pag, importe_pag, fecha_pag, id_fac) FROM stdin;
    public          postgres    false    228   Yd       m          0    16538 	   parientes 
   TABLE DATA           l   COPY public.parientes (id_par, id_emp, nombre_par, parentesco_par, direccion_par, telefono_par) FROM stdin;
    public          postgres    false    218   �d       q          0    16597 	   periodico 
   TABLE DATA           d   COPY public.periodico (id_per, nombre_per, telefono_per, fax_per, nombre_pers_cont_per) FROM stdin;
    public          postgres    false    222   He       n          0    16550    propietarios 
   TABLE DATA              COPY public.propietarios (id_pro, nombre_pro, direccion_pro, telefono_pro, tipo_empresa_pro, persona_contrato_pro) FROM stdin;
    public          postgres    false    219   �e       s          0    16609 
   publicidad 
   TABLE DATA           O   COPY public.publicidad (id_pu, fecha_pu, costo_pu, id_inm, id_per) FROM stdin;
    public          postgres    false    224   f       u          0    16641    vistas 
   TABLE DATA           S   COPY public.vistas (id_vis, id_inm, id_cli, fecha_vis, comentario_vis) FROM stdin;
    public          postgres    false    226   �f       �           2606    16532    administrativo id_adm 
   CONSTRAINT     W   ALTER TABLE ONLY public.administrativo
    ADD CONSTRAINT id_adm PRIMARY KEY (id_adm);
 ?   ALTER TABLE ONLY public.administrativo DROP CONSTRAINT id_adm;
       public            postgres    false    217            �           2606    16608    clientes id_cli 
   CONSTRAINT     Q   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT id_cli PRIMARY KEY (id_cli);
 9   ALTER TABLE ONLY public.clientes DROP CONSTRAINT id_cli;
       public            postgres    false    223            �           2606    16699    contrato id_con 
   CONSTRAINT     Q   ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT id_con PRIMARY KEY (id_con);
 9   ALTER TABLE ONLY public.contrato DROP CONSTRAINT id_con;
       public            postgres    false    230            �           2606    16522    directores id_dir 
   CONSTRAINT     S   ALTER TABLE ONLY public.directores
    ADD CONSTRAINT id_dir PRIMARY KEY (id_dir);
 ;   ALTER TABLE ONLY public.directores DROP CONSTRAINT id_dir;
       public            postgres    false    216            �           2606    16512    empleados id_emp 
   CONSTRAINT     R   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT id_emp PRIMARY KEY (id_emp);
 :   ALTER TABLE ONLY public.empleados DROP CONSTRAINT id_emp;
       public            postgres    false    215            �           2606    16630    entrevistas id_ent 
   CONSTRAINT     T   ALTER TABLE ONLY public.entrevistas
    ADD CONSTRAINT id_ent PRIMARY KEY (id_ent);
 <   ALTER TABLE ONLY public.entrevistas DROP CONSTRAINT id_ent;
       public            postgres    false    225            �           2606    16664    facturas id_fac 
   CONSTRAINT     Q   ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT id_fac PRIMARY KEY (id_fac);
 9   ALTER TABLE ONLY public.facturas DROP CONSTRAINT id_fac;
       public            postgres    false    227            �           2606    16571    inmuebles id_inm 
   CONSTRAINT     R   ALTER TABLE ONLY public.inmuebles
    ADD CONSTRAINT id_inm PRIMARY KEY (id_inm);
 :   ALTER TABLE ONLY public.inmuebles DROP CONSTRAINT id_inm;
       public            postgres    false    220            �           2606    16684    inmueble_factura id_inmfac 
   CONSTRAINT     _   ALTER TABLE ONLY public.inmueble_factura
    ADD CONSTRAINT id_inmfac PRIMARY KEY (id_inmfac);
 D   ALTER TABLE ONLY public.inmueble_factura DROP CONSTRAINT id_inmfac;
       public            postgres    false    229            �           2606    16591    inspecciones id_ins 
   CONSTRAINT     U   ALTER TABLE ONLY public.inspecciones
    ADD CONSTRAINT id_ins PRIMARY KEY (id_ins);
 =   ALTER TABLE ONLY public.inspecciones DROP CONSTRAINT id_ins;
       public            postgres    false    221            �           2606    16505    oficinas id_ofi 
   CONSTRAINT     Q   ALTER TABLE ONLY public.oficinas
    ADD CONSTRAINT id_ofi PRIMARY KEY (id_ofi);
 9   ALTER TABLE ONLY public.oficinas DROP CONSTRAINT id_ofi;
       public            postgres    false    214            �           2606    16674    pago id_pag 
   CONSTRAINT     M   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT id_pag PRIMARY KEY (id_pag);
 5   ALTER TABLE ONLY public.pago DROP CONSTRAINT id_pag;
       public            postgres    false    228            �           2606    16544    parientes id_par 
   CONSTRAINT     R   ALTER TABLE ONLY public.parientes
    ADD CONSTRAINT id_par PRIMARY KEY (id_par);
 :   ALTER TABLE ONLY public.parientes DROP CONSTRAINT id_par;
       public            postgres    false    218            �           2606    16601    periodico id_per 
   CONSTRAINT     R   ALTER TABLE ONLY public.periodico
    ADD CONSTRAINT id_per PRIMARY KEY (id_per);
 :   ALTER TABLE ONLY public.periodico DROP CONSTRAINT id_per;
       public            postgres    false    222            �           2606    16556    propietarios id_pro 
   CONSTRAINT     U   ALTER TABLE ONLY public.propietarios
    ADD CONSTRAINT id_pro PRIMARY KEY (id_pro);
 =   ALTER TABLE ONLY public.propietarios DROP CONSTRAINT id_pro;
       public            postgres    false    219            �           2606    16613    publicidad id_pu 
   CONSTRAINT     Q   ALTER TABLE ONLY public.publicidad
    ADD CONSTRAINT id_pu PRIMARY KEY (id_pu);
 :   ALTER TABLE ONLY public.publicidad DROP CONSTRAINT id_pu;
       public            postgres    false    224            �           2606    16647    vistas id_vis 
   CONSTRAINT     O   ALTER TABLE ONLY public.vistas
    ADD CONSTRAINT id_vis PRIMARY KEY (id_vis);
 7   ALTER TABLE ONLY public.vistas DROP CONSTRAINT id_vis;
       public            postgres    false    226            �           2606    16636    entrevistas id_cli    FK CONSTRAINT     w   ALTER TABLE ONLY public.entrevistas
    ADD CONSTRAINT id_cli FOREIGN KEY (id_cli) REFERENCES public.clientes(id_cli);
 <   ALTER TABLE ONLY public.entrevistas DROP CONSTRAINT id_cli;
       public          postgres    false    3255    225    223            �           2606    16653    vistas id_cli    FK CONSTRAINT     r   ALTER TABLE ONLY public.vistas
    ADD CONSTRAINT id_cli FOREIGN KEY (id_cli) REFERENCES public.clientes(id_cli);
 7   ALTER TABLE ONLY public.vistas DROP CONSTRAINT id_cli;
       public          postgres    false    226    3255    223            �           2606    16665    facturas id_cli    FK CONSTRAINT     t   ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT id_cli FOREIGN KEY (id_cli) REFERENCES public.clientes(id_cli);
 9   ALTER TABLE ONLY public.facturas DROP CONSTRAINT id_cli;
       public          postgres    false    223    3255    227            �           2606    16710    contrato id_cli    FK CONSTRAINT     t   ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT id_cli FOREIGN KEY (id_cli) REFERENCES public.clientes(id_cli);
 9   ALTER TABLE ONLY public.contrato DROP CONSTRAINT id_cli;
       public          postgres    false    3255    223    230            �           2606    16523    directores id_emp    FK CONSTRAINT     w   ALTER TABLE ONLY public.directores
    ADD CONSTRAINT id_emp FOREIGN KEY (id_emp) REFERENCES public.empleados(id_emp);
 ;   ALTER TABLE ONLY public.directores DROP CONSTRAINT id_emp;
       public          postgres    false    215    3239    216            �           2606    16533    administrativo id_emp    FK CONSTRAINT     {   ALTER TABLE ONLY public.administrativo
    ADD CONSTRAINT id_emp FOREIGN KEY (id_emp) REFERENCES public.empleados(id_emp);
 ?   ALTER TABLE ONLY public.administrativo DROP CONSTRAINT id_emp;
       public          postgres    false    215    3239    217            �           2606    16545    parientes id_emp    FK CONSTRAINT     v   ALTER TABLE ONLY public.parientes
    ADD CONSTRAINT id_emp FOREIGN KEY (id_emp) REFERENCES public.empleados(id_emp);
 :   ALTER TABLE ONLY public.parientes DROP CONSTRAINT id_emp;
       public          postgres    false    215    218    3239            �           2606    16582    inmuebles id_emp    FK CONSTRAINT     v   ALTER TABLE ONLY public.inmuebles
    ADD CONSTRAINT id_emp FOREIGN KEY (id_emp) REFERENCES public.empleados(id_emp);
 :   ALTER TABLE ONLY public.inmuebles DROP CONSTRAINT id_emp;
       public          postgres    false    3239    220    215            �           2606    16631    entrevistas id_emp    FK CONSTRAINT     x   ALTER TABLE ONLY public.entrevistas
    ADD CONSTRAINT id_emp FOREIGN KEY (id_emp) REFERENCES public.empleados(id_emp);
 <   ALTER TABLE ONLY public.entrevistas DROP CONSTRAINT id_emp;
       public          postgres    false    215    225    3239            �           2606    16705    contrato id_emp    FK CONSTRAINT     u   ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT id_emp FOREIGN KEY (id_emp) REFERENCES public.empleados(id_emp);
 9   ALTER TABLE ONLY public.contrato DROP CONSTRAINT id_emp;
       public          postgres    false    215    230    3239            �           2606    16675    pago id_fac    FK CONSTRAINT     p   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT id_fac FOREIGN KEY (id_fac) REFERENCES public.facturas(id_fac);
 5   ALTER TABLE ONLY public.pago DROP CONSTRAINT id_fac;
       public          postgres    false    3263    228    227            �           2606    16690    inmueble_factura id_fac    FK CONSTRAINT     |   ALTER TABLE ONLY public.inmueble_factura
    ADD CONSTRAINT id_fac FOREIGN KEY (id_fac) REFERENCES public.facturas(id_fac);
 A   ALTER TABLE ONLY public.inmueble_factura DROP CONSTRAINT id_fac;
       public          postgres    false    3263    229    227            �           2606    16592    inspecciones id_inm    FK CONSTRAINT     y   ALTER TABLE ONLY public.inspecciones
    ADD CONSTRAINT id_inm FOREIGN KEY (id_inm) REFERENCES public.inmuebles(id_inm);
 =   ALTER TABLE ONLY public.inspecciones DROP CONSTRAINT id_inm;
       public          postgres    false    220    221    3249            �           2606    16614    publicidad id_inm    FK CONSTRAINT     w   ALTER TABLE ONLY public.publicidad
    ADD CONSTRAINT id_inm FOREIGN KEY (id_inm) REFERENCES public.inmuebles(id_inm);
 ;   ALTER TABLE ONLY public.publicidad DROP CONSTRAINT id_inm;
       public          postgres    false    3249    224    220            �           2606    16648    vistas id_inm    FK CONSTRAINT     s   ALTER TABLE ONLY public.vistas
    ADD CONSTRAINT id_inm FOREIGN KEY (id_inm) REFERENCES public.inmuebles(id_inm);
 7   ALTER TABLE ONLY public.vistas DROP CONSTRAINT id_inm;
       public          postgres    false    3249    226    220            �           2606    16685    inmueble_factura id_inm    FK CONSTRAINT     }   ALTER TABLE ONLY public.inmueble_factura
    ADD CONSTRAINT id_inm FOREIGN KEY (id_inm) REFERENCES public.inmuebles(id_inm);
 A   ALTER TABLE ONLY public.inmueble_factura DROP CONSTRAINT id_inm;
       public          postgres    false    220    229    3249            �           2606    16700    contrato id_inm    FK CONSTRAINT     u   ALTER TABLE ONLY public.contrato
    ADD CONSTRAINT id_inm FOREIGN KEY (id_inm) REFERENCES public.inmuebles(id_inm);
 9   ALTER TABLE ONLY public.contrato DROP CONSTRAINT id_inm;
       public          postgres    false    230    3249    220            �           2606    16513    empleados id_ofi    FK CONSTRAINT     u   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT id_ofi FOREIGN KEY (id_ofi) REFERENCES public.oficinas(id_ofi);
 :   ALTER TABLE ONLY public.empleados DROP CONSTRAINT id_ofi;
       public          postgres    false    3237    214    215            �           2606    16572    inmuebles id_ofi    FK CONSTRAINT     u   ALTER TABLE ONLY public.inmuebles
    ADD CONSTRAINT id_ofi FOREIGN KEY (id_ofi) REFERENCES public.oficinas(id_ofi);
 :   ALTER TABLE ONLY public.inmuebles DROP CONSTRAINT id_ofi;
       public          postgres    false    220    214    3237            �           2606    16619    publicidad id_per    FK CONSTRAINT     w   ALTER TABLE ONLY public.publicidad
    ADD CONSTRAINT id_per FOREIGN KEY (id_per) REFERENCES public.periodico(id_per);
 ;   ALTER TABLE ONLY public.publicidad DROP CONSTRAINT id_per;
       public          postgres    false    3253    224    222            �           2606    16577    inmuebles id_pro    FK CONSTRAINT     y   ALTER TABLE ONLY public.inmuebles
    ADD CONSTRAINT id_pro FOREIGN KEY (id_pro) REFERENCES public.propietarios(id_pro);
 :   ALTER TABLE ONLY public.inmuebles DROP CONSTRAINT id_pro;
       public          postgres    false    219    220    3247            l   7   x�36�44��I�+��26�44�,J,�Lr�8M`����p	NC#�D� 9e�      r   �   x�=�A�0D���=Av��.�X�U RD��ktk?���9g��sz�����O�!*i�d�n���ؕ�`,K�J������r�p�&�nM{��.�2,����=k�o
��O�nv�����cҪ?���$�P)1�      y   �   x�m�MN�0����S�F�'�+uE$(�g�b��$@��l��3�z$�az�;���-/�R��Ls��p�!��V	��"ޗS��X{pD�H�%�~+[]�T�o˯�O[-��Q粗�k��"�����qn�����R�}����](n��Zo*�(�=������5X��G��G����"��&jr7�/���b�^j�Z���������S�u_�.]�      k   L   x����@ߤ�N�^�9>��B?�6)�e�F���:w��x�߱b:�4�Cc6z�c&������'�      j   �   x�]�MR� F��)r�����e6Ѣ$!5K��M��{���x������K,%Ȍ�f-`d��-X���/��2�H���G�ypPr�{��;E@�<5�IA���	Һ����BJA�,lȁ@�ʏ��D��|��Q�!"�R�{�8
�v���,ʯK�~�2uA]J=�5�m�5/��R��������f F=��d���U�      t   t   x�E�M
�0���)z���K"�]܈���D��T�]�R�GX�)�EQ���?�>J�X^]�0�	sm���.�4��>����Hh�qkw'fݧ�M���V�j��p>��~#�      v   �   x�]�[
�0���Ut)������Ed,�j$ڮ�)X�>���/QiĖ�y,�܏�
�8xj<[�)��NH˨���m|'TU�K����zv�Z>�D�S�$>4XR�L�H�˥p�D�Q���#���}�7�/�=�B��]�s)�:�      x   2   x�ƹ�@�����\�uER	�D���^��<�w�|� 	(      o   �   x�5�1
1��+򂀽�l�%͑������?28���Ҹ����<����С�UQ�)��L<�m�Dm\�5&hQ�5%*������tj�p`��B�{ѡA��M{������(�LՆ�,�����͜a���V6D�,{<�"��<2�      p   F   x�-���0Bϰ�+�ݥ��[�ą�����K4X�D7я�`��ˑ~A�Y��;y��H���      i   O   x�-�1
�@D�:s
O �̈��؈���k#��=�aϽֻ�8�S)sA�ӘCS*%ؚ�:k-D�CU���,��u��|�e!      w   Q   x�E��	�@�o�ŢQ{�.���п�BR�2{	a^�����`&� �u��4�MN2d����䐵��!�>����v�      m   ~   x�=�Q
�0���Sx�f6��ş�ili�?�B��1c-xxo8�io/��,����\h&Fh�s�=���$C�\�$�E�7ǻ� ��
�J,������?#��d�)~��ͷ�`2KL��UD>D�-+      q   x   x�=�A�0ϛW��ڮj���A��HU�_s(�=��N����M#��x/͓�I��j"� �{��3(����ś��f1�(0��5)�dF��Ƅ������k�p�4��5���vI)JA'q      n   �   x�M�m� ������8J7��:�è��ۋ:?H��i���|�1��� ��@}�ʝp�JeE�m��7�;0I#+spܾT�IV��q�,�S��!ˍA������0-߈F�Ѩ�=�����?��ĕ?ɀ���3#]��A�/���^)� ~�E      s   \   x�-��� D��Ћ9�T�%�ב1G�����Cch#��k����1��X��h�JZ\ۧcV�\Aͯ5ς�QN�c��۰�:f(���oj      u   `   x�E�1
�@���.�l��]l,DEQ��.�֏m�Q��ʒY�8]�p�:<#r5cy��>���!�Rb	���2\�[�2�'Dz�N��o���b9     