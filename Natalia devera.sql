PGDMP     -                    {            empresa    15.2    15.2 7    %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    16438    empresa    DATABASE     }   CREATE DATABASE empresa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE empresa;
                postgres    false            �            1259    16480    Clientes    TABLE     !  CREATE TABLE public."Clientes" (
    "id _cli" integer NOT NULL,
    nombre_cli character varying NOT NULL,
    direccion_cli character varying NOT NULL,
    telefono_cli integer NOT NULL,
    inmueble_preferido_cli character varying NOT NULL,
    "importe_maximo_Cli" integer NOT NULL
);
    DROP TABLE public."Clientes";
       public         heap    postgres    false            �            1259    16477    Clientes_id _cli_seq    SEQUENCE     �   CREATE SEQUENCE public."Clientes_id _cli_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Clientes_id _cli_seq";
       public          postgres    false    217            )           0    0    Clientes_id _cli_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Clientes_id _cli_seq" OWNED BY public."Clientes"."id _cli";
          public          postgres    false    214            �            1259    16479    Clientes_importe_maximo_Cli_seq    SEQUENCE     �   CREATE SEQUENCE public."Clientes_importe_maximo_Cli_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Clientes_importe_maximo_Cli_seq";
       public          postgres    false    217            *           0    0    Clientes_importe_maximo_Cli_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Clientes_importe_maximo_Cli_seq" OWNED BY public."Clientes"."importe_maximo_Cli";
          public          postgres    false    216            �            1259    16478    Clientes_telefono_cli_seq    SEQUENCE     �   CREATE SEQUENCE public."Clientes_telefono_cli_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Clientes_telefono_cli_seq";
       public          postgres    false    217            +           0    0    Clientes_telefono_cli_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Clientes_telefono_cli_seq" OWNED BY public."Clientes".telefono_cli;
          public          postgres    false    215            �            1259    16494    Facturas    TABLE       CREATE TABLE public."Facturas" (
    id_fac integer NOT NULL,
    importe_fac integer NOT NULL,
    metodo_pago character varying NOT NULL,
    importe_deposito integer NOT NULL,
    plazo_pago date NOT NULL,
    observaciones character varying NOT NULL,
    id_cli integer NOT NULL
);
    DROP TABLE public."Facturas";
       public         heap    postgres    false            �            1259    16493    Facturas_id_cli_seq    SEQUENCE     �   CREATE SEQUENCE public."Facturas_id_cli_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Facturas_id_cli_seq";
       public          postgres    false    222            ,           0    0    Facturas_id_cli_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Facturas_id_cli_seq" OWNED BY public."Facturas".id_cli;
          public          postgres    false    221            �            1259    16490    Facturas_id_fac_seq    SEQUENCE     �   CREATE SEQUENCE public."Facturas_id_fac_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Facturas_id_fac_seq";
       public          postgres    false    222            -           0    0    Facturas_id_fac_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Facturas_id_fac_seq" OWNED BY public."Facturas".id_fac;
          public          postgres    false    218            �            1259    16492    Facturas_importe_deposito_seq    SEQUENCE     �   CREATE SEQUENCE public."Facturas_importe_deposito_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Facturas_importe_deposito_seq";
       public          postgres    false    222            .           0    0    Facturas_importe_deposito_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Facturas_importe_deposito_seq" OWNED BY public."Facturas".importe_deposito;
          public          postgres    false    220            �            1259    16491    Facturas_importe_fac_seq    SEQUENCE     �   CREATE SEQUENCE public."Facturas_importe_fac_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Facturas_importe_fac_seq";
       public          postgres    false    222            /           0    0    Facturas_importe_fac_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Facturas_importe_fac_seq" OWNED BY public."Facturas".importe_fac;
          public          postgres    false    219            �            1259    16513    pago    TABLE     �   CREATE TABLE public.pago (
    id_pag integer NOT NULL,
    importe integer NOT NULL,
    fecha_pag date NOT NULL,
    id_fac integer NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false            �            1259    16512    pago_id_fac_seq    SEQUENCE     �   CREATE SEQUENCE public.pago_id_fac_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pago_id_fac_seq;
       public          postgres    false    226            0           0    0    pago_id_fac_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pago_id_fac_seq OWNED BY public.pago.id_fac;
          public          postgres    false    225            �            1259    16510    pago_id_pag_seq    SEQUENCE     �   CREATE SEQUENCE public.pago_id_pag_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pago_id_pag_seq;
       public          postgres    false    226            1           0    0    pago_id_pag_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pago_id_pag_seq OWNED BY public.pago.id_pag;
          public          postgres    false    223            �            1259    16511    pago_importe_seq    SEQUENCE     �   CREATE SEQUENCE public.pago_importe_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pago_importe_seq;
       public          postgres    false    226            2           0    0    pago_importe_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pago_importe_seq OWNED BY public.pago.importe;
          public          postgres    false    224            v           2604    16483    Clientes id _cli    DEFAULT     z   ALTER TABLE ONLY public."Clientes" ALTER COLUMN "id _cli" SET DEFAULT nextval('public."Clientes_id _cli_seq"'::regclass);
 C   ALTER TABLE public."Clientes" ALTER COLUMN "id _cli" DROP DEFAULT;
       public          postgres    false    214    217    217            w           2604    16484    Clientes telefono_cli    DEFAULT     �   ALTER TABLE ONLY public."Clientes" ALTER COLUMN telefono_cli SET DEFAULT nextval('public."Clientes_telefono_cli_seq"'::regclass);
 F   ALTER TABLE public."Clientes" ALTER COLUMN telefono_cli DROP DEFAULT;
       public          postgres    false    215    217    217            x           2604    16485    Clientes importe_maximo_Cli    DEFAULT     �   ALTER TABLE ONLY public."Clientes" ALTER COLUMN "importe_maximo_Cli" SET DEFAULT nextval('public."Clientes_importe_maximo_Cli_seq"'::regclass);
 N   ALTER TABLE public."Clientes" ALTER COLUMN "importe_maximo_Cli" DROP DEFAULT;
       public          postgres    false    217    216    217            y           2604    16497    Facturas id_fac    DEFAULT     v   ALTER TABLE ONLY public."Facturas" ALTER COLUMN id_fac SET DEFAULT nextval('public."Facturas_id_fac_seq"'::regclass);
 @   ALTER TABLE public."Facturas" ALTER COLUMN id_fac DROP DEFAULT;
       public          postgres    false    222    218    222            z           2604    16498    Facturas importe_fac    DEFAULT     �   ALTER TABLE ONLY public."Facturas" ALTER COLUMN importe_fac SET DEFAULT nextval('public."Facturas_importe_fac_seq"'::regclass);
 E   ALTER TABLE public."Facturas" ALTER COLUMN importe_fac DROP DEFAULT;
       public          postgres    false    219    222    222            {           2604    16499    Facturas importe_deposito    DEFAULT     �   ALTER TABLE ONLY public."Facturas" ALTER COLUMN importe_deposito SET DEFAULT nextval('public."Facturas_importe_deposito_seq"'::regclass);
 J   ALTER TABLE public."Facturas" ALTER COLUMN importe_deposito DROP DEFAULT;
       public          postgres    false    222    220    222            |           2604    16500    Facturas id_cli    DEFAULT     v   ALTER TABLE ONLY public."Facturas" ALTER COLUMN id_cli SET DEFAULT nextval('public."Facturas_id_cli_seq"'::regclass);
 @   ALTER TABLE public."Facturas" ALTER COLUMN id_cli DROP DEFAULT;
       public          postgres    false    222    221    222            }           2604    16516    pago id_pag    DEFAULT     j   ALTER TABLE ONLY public.pago ALTER COLUMN id_pag SET DEFAULT nextval('public.pago_id_pag_seq'::regclass);
 :   ALTER TABLE public.pago ALTER COLUMN id_pag DROP DEFAULT;
       public          postgres    false    226    223    226            ~           2604    16517    pago importe    DEFAULT     l   ALTER TABLE ONLY public.pago ALTER COLUMN importe SET DEFAULT nextval('public.pago_importe_seq'::regclass);
 ;   ALTER TABLE public.pago ALTER COLUMN importe DROP DEFAULT;
       public          postgres    false    224    226    226                       2604    16518    pago id_fac    DEFAULT     j   ALTER TABLE ONLY public.pago ALTER COLUMN id_fac SET DEFAULT nextval('public.pago_id_fac_seq'::regclass);
 :   ALTER TABLE public.pago ALTER COLUMN id_fac DROP DEFAULT;
       public          postgres    false    226    225    226                      0    16480    Clientes 
   TABLE DATA           �   COPY public."Clientes" ("id _cli", nombre_cli, direccion_cli, telefono_cli, inmueble_preferido_cli, "importe_maximo_Cli") FROM stdin;
    public          postgres    false    217   @>                 0    16494    Facturas 
   TABLE DATA           {   COPY public."Facturas" (id_fac, importe_fac, metodo_pago, importe_deposito, plazo_pago, observaciones, id_cli) FROM stdin;
    public          postgres    false    222   :?       "          0    16513    pago 
   TABLE DATA           B   COPY public.pago (id_pag, importe, fecha_pag, id_fac) FROM stdin;
    public          postgres    false    226   5@       3           0    0    Clientes_id _cli_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Clientes_id _cli_seq"', 1, false);
          public          postgres    false    214            4           0    0    Clientes_importe_maximo_Cli_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Clientes_importe_maximo_Cli_seq"', 1, false);
          public          postgres    false    216            5           0    0    Clientes_telefono_cli_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Clientes_telefono_cli_seq"', 1, false);
          public          postgres    false    215            6           0    0    Facturas_id_cli_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Facturas_id_cli_seq"', 1, false);
          public          postgres    false    221            7           0    0    Facturas_id_fac_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Facturas_id_fac_seq"', 1, false);
          public          postgres    false    218            8           0    0    Facturas_importe_deposito_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Facturas_importe_deposito_seq"', 1, false);
          public          postgres    false    220            9           0    0    Facturas_importe_fac_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Facturas_importe_fac_seq"', 1, false);
          public          postgres    false    219            :           0    0    pago_id_fac_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pago_id_fac_seq', 1, false);
          public          postgres    false    225            ;           0    0    pago_id_pag_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pago_id_pag_seq', 1, false);
          public          postgres    false    223            <           0    0    pago_importe_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pago_importe_seq', 1, false);
          public          postgres    false    224            �           2606    16489    Clientes pk id_cli 
   CONSTRAINT     [   ALTER TABLE ONLY public."Clientes"
    ADD CONSTRAINT "pk id_cli" PRIMARY KEY ("id _cli");
 @   ALTER TABLE ONLY public."Clientes" DROP CONSTRAINT "pk id_cli";
       public            postgres    false    217            �           2606    16504    Facturas pk_id_fac 
   CONSTRAINT     V   ALTER TABLE ONLY public."Facturas"
    ADD CONSTRAINT pk_id_fac PRIMARY KEY (id_fac);
 >   ALTER TABLE ONLY public."Facturas" DROP CONSTRAINT pk_id_fac;
       public            postgres    false    222            �           2606    16520    pago pk_id_pag 
   CONSTRAINT     P   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pk_id_pag PRIMARY KEY (id_pag);
 8   ALTER TABLE ONLY public.pago DROP CONSTRAINT pk_id_pag;
       public            postgres    false    226            �           2606    16505    Facturas fk _id_cli    FK CONSTRAINT     �   ALTER TABLE ONLY public."Facturas"
    ADD CONSTRAINT "fk _id_cli" FOREIGN KEY (id_cli) REFERENCES public."Clientes"("id _cli");
 A   ALTER TABLE ONLY public."Facturas" DROP CONSTRAINT "fk _id_cli";
       public          postgres    false    3201    217    222            �           2606    16521    pago fk_id_fac    FK CONSTRAINT     u   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT fk_id_fac FOREIGN KEY (id_fac) REFERENCES public."Facturas"(id_fac);
 8   ALTER TABLE ONLY public.pago DROP CONSTRAINT fk_id_fac;
       public          postgres    false    3203    222    226               �   x�E�Kn� D�ݧ��h�1���lA
�Ɩr�4��#v��W������o� �Y11KRk�#C��M�	B(�h�@��K���'�J�}��l򹉋q�dk(�l�t���F�P�OY�����J|�H)pŅ,�#N���{�ƣSӤ%JBh�a������[:�e2�����W�@.���_�O����~kg4 ����0wR�1����&W,HwQ�������[��e����� �Nfp         �   x���ͪ� ���S��ҋ�O�w�ojJ �b�>-[�W�9h�sH�sL�@H!��r$���s�b�Ks�=R`���3��J0�8��s)kZr�`�l
K�ƅ���kdK(W��ȥ	}�jy}�
5�C��aͅk��p�M��\O0u�������;�I0�`@$z��S��`������/�z�C${��c���cy��P���t� ��?��� ��      "   c   x�E���0�7ً����:��;`p(٬�%���l!�P?��$;4����s@��Z�DbrA:�-����eG�G���~Ϗ�.�     