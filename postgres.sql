PGDMP  /    4                |            baseer    16.0 (Debian 16.0-1.pgdg120+1)    16.0 8    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    16415    baseer    DATABASE     q   CREATE DATABASE baseer WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE baseer;
                postgres    false            �            1259    24694 
   catalogues    TABLE     >  CREATE TABLE public.catalogues (
    catalogue_id integer NOT NULL,
    catalogue_description text NOT NULL,
    catalogue_name character varying(255) NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.catalogues;
       public         heap    postgres    false            �            1259    24693    catalogues_catalogue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogues_catalogue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.catalogues_catalogue_id_seq;
       public          postgres    false    219            `           0    0    catalogues_catalogue_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.catalogues_catalogue_id_seq OWNED BY public.catalogues.catalogue_id;
          public          postgres    false    218            �            1259    24772    subscription    TABLE     @  CREATE TABLE public.subscription (
    subscription_id integer NOT NULL,
    catalogue_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL,
    subscription_type character varying(255) NOT NULL
);
     DROP TABLE public.subscription;
       public         heap    postgres    false            �            1259    24771     subscription_subscription_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscription_subscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.subscription_subscription_id_seq;
       public          postgres    false    227            a           0    0     subscription_subscription_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.subscription_subscription_id_seq OWNED BY public.subscription.subscription_id;
          public          postgres    false    226            �            1259    24779    subscription_user    TABLE     >  CREATE TABLE public.subscription_user (
    subscription_user_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL,
    national_id numeric(38,0) NOT NULL,
    subscription_id integer NOT NULL
);
 %   DROP TABLE public.subscription_user;
       public         heap    postgres    false            �            1259    24778 *   subscription_user_subscription_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscription_user_subscription_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.subscription_user_subscription_user_id_seq;
       public          postgres    false    229            b           0    0 *   subscription_user_subscription_user_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.subscription_user_subscription_user_id_seq OWNED BY public.subscription_user.subscription_user_id;
          public          postgres    false    228            �            1259    24764 	   user_role    TABLE     �   CREATE TABLE public.user_role (
    user_role_id integer NOT NULL,
    subscription_user_id integer NOT NULL,
    user_roles character varying(255) NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    24763    user_role_user_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_role_user_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.user_role_user_role_id_seq;
       public          postgres    false    225            c           0    0    user_role_user_role_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.user_role_user_role_id_seq OWNED BY public.user_role.user_role_id;
          public          postgres    false    224            �            1259    24649    users    TABLE     �  CREATE TABLE public.users (
    national_id numeric(38,0) NOT NULL,
    code integer NOT NULL,
    company_address character varying(255) NOT NULL,
    company_name character varying(255) NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    dob date NOT NULL,
    dob_type character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    gender character varying(255) NOT NULL,
    mobile_no numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL,
    password character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    user_name_ar character varying(255) NOT NULL,
    user_name_en character varying(255) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24727    userworkspace    TABLE     4  CREATE TABLE public.userworkspace (
    user_workspace_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL,
    national_id numeric(38,0) NOT NULL,
    workspace_id integer NOT NULL
);
 !   DROP TABLE public.userworkspace;
       public         heap    postgres    false            �            1259    24726 #   userworkspace_user_workspace_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userworkspace_user_workspace_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.userworkspace_user_workspace_id_seq;
       public          postgres    false    223            d           0    0 #   userworkspace_user_workspace_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.userworkspace_user_workspace_id_seq OWNED BY public.userworkspace.user_workspace_id;
          public          postgres    false    222            �            1259    24720 	   workspace    TABLE     :  CREATE TABLE public.workspace (
    workspace_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL,
    subscription_id integer NOT NULL,
    workspace_name character varying(255) NOT NULL
);
    DROP TABLE public.workspace;
       public         heap    postgres    false            �            1259    24671    workspace_execution    TABLE     f  CREATE TABLE public.workspace_execution (
    execution_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    execution_name character varying(255) NOT NULL,
    raw_data_id character varying(255) NOT NULL,
    report_id character varying(255) NOT NULL,
    workspace_id integer NOT NULL
);
 '   DROP TABLE public.workspace_execution;
       public         heap    postgres    false            �            1259    24670 $   workspace_execution_execution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workspace_execution_execution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.workspace_execution_execution_id_seq;
       public          postgres    false    217            e           0    0 $   workspace_execution_execution_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.workspace_execution_execution_id_seq OWNED BY public.workspace_execution.execution_id;
          public          postgres    false    216            �            1259    24719    workspace_workspace_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workspace_workspace_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.workspace_workspace_id_seq;
       public          postgres    false    221            f           0    0    workspace_workspace_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.workspace_workspace_id_seq OWNED BY public.workspace.workspace_id;
          public          postgres    false    220            �           2604    24697    catalogues catalogue_id    DEFAULT     �   ALTER TABLE ONLY public.catalogues ALTER COLUMN catalogue_id SET DEFAULT nextval('public.catalogues_catalogue_id_seq'::regclass);
 F   ALTER TABLE public.catalogues ALTER COLUMN catalogue_id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    24775    subscription subscription_id    DEFAULT     �   ALTER TABLE ONLY public.subscription ALTER COLUMN subscription_id SET DEFAULT nextval('public.subscription_subscription_id_seq'::regclass);
 K   ALTER TABLE public.subscription ALTER COLUMN subscription_id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    24782 &   subscription_user subscription_user_id    DEFAULT     �   ALTER TABLE ONLY public.subscription_user ALTER COLUMN subscription_user_id SET DEFAULT nextval('public.subscription_user_subscription_user_id_seq'::regclass);
 U   ALTER TABLE public.subscription_user ALTER COLUMN subscription_user_id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    24767    user_role user_role_id    DEFAULT     �   ALTER TABLE ONLY public.user_role ALTER COLUMN user_role_id SET DEFAULT nextval('public.user_role_user_role_id_seq'::regclass);
 E   ALTER TABLE public.user_role ALTER COLUMN user_role_id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    24730    userworkspace user_workspace_id    DEFAULT     �   ALTER TABLE ONLY public.userworkspace ALTER COLUMN user_workspace_id SET DEFAULT nextval('public.userworkspace_user_workspace_id_seq'::regclass);
 N   ALTER TABLE public.userworkspace ALTER COLUMN user_workspace_id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    24723    workspace workspace_id    DEFAULT     �   ALTER TABLE ONLY public.workspace ALTER COLUMN workspace_id SET DEFAULT nextval('public.workspace_workspace_id_seq'::regclass);
 E   ALTER TABLE public.workspace ALTER COLUMN workspace_id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    24674     workspace_execution execution_id    DEFAULT     �   ALTER TABLE ONLY public.workspace_execution ALTER COLUMN execution_id SET DEFAULT nextval('public.workspace_execution_execution_id_seq'::regclass);
 O   ALTER TABLE public.workspace_execution ALTER COLUMN execution_id DROP DEFAULT;
       public          postgres    false    216    217    217            O          0    24694 
   catalogues 
   TABLE DATA           �   COPY public.catalogues (catalogue_id, catalogue_description, catalogue_name, create_date, creator_id, modified_date) FROM stdin;
    public          postgres    false    219   yI       W          0    24772    subscription 
   TABLE DATA           �   COPY public.subscription (subscription_id, catalogue_id, create_date, creator_id, modified_date, subscription_type) FROM stdin;
    public          postgres    false    227   �J       Y          0    24779    subscription_user 
   TABLE DATA           �   COPY public.subscription_user (subscription_user_id, create_date, creator_id, modified_date, national_id, subscription_id) FROM stdin;
    public          postgres    false    229   K       U          0    24764 	   user_role 
   TABLE DATA           S   COPY public.user_role (user_role_id, subscription_user_id, user_roles) FROM stdin;
    public          postgres    false    225   vK       K          0    24649    users 
   TABLE DATA           �   COPY public.users (national_id, code, company_address, company_name, create_date, dob, dob_type, email, gender, mobile_no, modified_date, password, status, user_name_ar, user_name_en) FROM stdin;
    public          postgres    false    215   �K       S          0    24727    userworkspace 
   TABLE DATA           }   COPY public.userworkspace (user_workspace_id, create_date, creator_id, modified_date, national_id, workspace_id) FROM stdin;
    public          postgres    false    223   �L       Q          0    24720 	   workspace 
   TABLE DATA           z   COPY public.workspace (workspace_id, create_date, creator_id, modified_date, subscription_id, workspace_name) FROM stdin;
    public          postgres    false    221   0M       M          0    24671    workspace_execution 
   TABLE DATA           �   COPY public.workspace_execution (execution_id, create_date, creator_id, execution_name, raw_data_id, report_id, workspace_id) FROM stdin;
    public          postgres    false    217   �M       g           0    0    catalogues_catalogue_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.catalogues_catalogue_id_seq', 1, true);
          public          postgres    false    218            h           0    0     subscription_subscription_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.subscription_subscription_id_seq', 6, true);
          public          postgres    false    226            i           0    0 *   subscription_user_subscription_user_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.subscription_user_subscription_user_id_seq', 7, true);
          public          postgres    false    228            j           0    0    user_role_user_role_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.user_role_user_role_id_seq', 7, true);
          public          postgres    false    224            k           0    0 #   userworkspace_user_workspace_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.userworkspace_user_workspace_id_seq', 2, true);
          public          postgres    false    222            l           0    0 $   workspace_execution_execution_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.workspace_execution_execution_id_seq', 179, true);
          public          postgres    false    216            m           0    0    workspace_workspace_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.workspace_workspace_id_seq', 5, true);
          public          postgres    false    220            �           2606    24701    catalogues catalogues_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.catalogues
    ADD CONSTRAINT catalogues_pkey PRIMARY KEY (catalogue_id);
 D   ALTER TABLE ONLY public.catalogues DROP CONSTRAINT catalogues_pkey;
       public            postgres    false    219            �           2606    24777    subscription subscription_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_pkey PRIMARY KEY (subscription_id);
 H   ALTER TABLE ONLY public.subscription DROP CONSTRAINT subscription_pkey;
       public            postgres    false    227            �           2606    24784 (   subscription_user subscription_user_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.subscription_user
    ADD CONSTRAINT subscription_user_pkey PRIMARY KEY (subscription_user_id);
 R   ALTER TABLE ONLY public.subscription_user DROP CONSTRAINT subscription_user_pkey;
       public            postgres    false    229            �           2606    24769    user_role user_role_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_role_id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    225            �           2606    24655    users users_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (national_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    24732     userworkspace userworkspace_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.userworkspace
    ADD CONSTRAINT userworkspace_pkey PRIMARY KEY (user_workspace_id);
 J   ALTER TABLE ONLY public.userworkspace DROP CONSTRAINT userworkspace_pkey;
       public            postgres    false    223            �           2606    24676 ,   workspace_execution workspace_execution_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.workspace_execution
    ADD CONSTRAINT workspace_execution_pkey PRIMARY KEY (execution_id);
 V   ALTER TABLE ONLY public.workspace_execution DROP CONSTRAINT workspace_execution_pkey;
       public            postgres    false    217            �           2606    24725    workspace workspace_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.workspace
    ADD CONSTRAINT workspace_pkey PRIMARY KEY (workspace_id);
 B   ALTER TABLE ONLY public.workspace DROP CONSTRAINT workspace_pkey;
       public            postgres    false    221            O   6  x��Q�r�0<�W�4�[���ri�����S�N�~}m��N���r�H�ծ6�^_�@��J)@�T(� ��`��n�vluO�=)�Vh�QT��Yh�,�Y����:�'�E��`PG�Ls�e�0`<��դ�a��O7��kE�� g�n�%zR�:JF=��$�F5I�Z��x�G)/����&,��3�t��(���a�0�5[��%�LrH���G��yT��y�L�e�AV�|�>$�f�e��źH��l�V�-�8�'u������<Ώ�&��=�ۤ���}M2�I�?�e��      W   O   x��̱�0���F�`c1K�$U��/�� �O7���nh��Q6��	CsEd�OF����)
����9	��"�>a�~(�      Y   H   x��̻�0��L�����d�9R&�?].��bk�a4X�B����#���s�X�T����45=LD/��)�      U   f   x�3�4�4�sLIQ-N-*V�U.M*N.�,(����2J�H��e$&�r��\�3���R�L�|������Լզ@Y�:��ĒT$�=... �3(~      K   �   x���AK�0����_�]Z�$_Ҥ0�nU�l���%[��N0��߫"�7����KMT�Q
�O�Br��S�<gx�t%t��$��˜q��>>G�Mq���]�{a��I�p!��(e�}�7�����/��.��M�u=��?������Uƿ��tips��o~�IU�B�O����.��|�b�^�%����^�E�e*�S�      S   W   x��α� D�:����持Y���� %e���o��Y��z�\�˧δ�9�$ބ���N(��,��X��1?K7	(;	i?=u9UD.�$)�      Q   �   x��α�0�����@#Ǹq�Vf�����6U��n��ݻc $n�봕p�@�x�@-J�,��&C���*5�i�%��4�X�<�K^�e�}R���l���'��x�aej_6����s~������ <�      M   �  x�u�On4'���)|��/��>e)��'J�}
��fc����x�(P��'�'����l��,����o��I��	��[k>5&�r%0��%OPj\@���Qq��.��WbA"c���(IIX��T8Opf^��?���"f;��n�/�̿Ш���&B��� �q��SL?Pw��u��l�Q=�q�z�HJ���w:Ad]A��í:юi�(߫�ųHƸ�z��f+8uTO��o�n*�g����Wi9��G+B&��%�@><�A??�w�;�o� :΁�O�k2�6R���J�@j� q�2]L�b4�v��E�`w3�	$��'V��7��
Zq�
]�Sz%������q�Y(�,��^��w���.�/1�.�ז�`rC}��v��)��2��Zj���
���;���0| �w���~�B��2���b-�b��� � b�#���?��D�����	���b�Tռ�R>r,8�����0�%�;�w�m�-܏��Zn	N^�rU�Z���kYjp3�	������Y��b��-䰳lA�&�p�!�����ӵ4�9�¡��=�� A]@�aFI����L���8+���}��H������ ������z���z�!G��B�d]�Й[h�Vp��[��6J�$�����Aw0q�5�PBƣ��	N�+8Gjh�I�����fu('��UsLG 	|�3���X�5�;�e��?��;b������DO?�	<` 0#��|�]�_��~��#_E�F�.���eb����C,,��a�I���=��y�g�z[Ғ���	�\A��i�%�����Z_�g`2��b]#����P)�K�[��A��y�]=��A�r�.a��(�M��-@����[��7+����"�;�ds�.ɖP�\���L�6t��7��9H5�5[a^��x8,�zJ��,��ǔq#^n�_8;�a�^�m7r'���WPF���������>}k$�����́r���$����#��,����.�Az9���� ͞اr�5�V���x���S��-�$=�7~�H��J�_�7�(���U��d�'�\~�[#��6��س��&��C��ֆ1z���4�sY:ɇU�$����l�RRMg&m���}>@]���]��$=�=S^w�5<��ֆ	��!���}x�G'�'A�YyKw-�/_��"����<�����b=1.��
R�|j��E��<"�/1��s�Yɇ����1C��/i'1�����9�+��+Df�R�Z����+�E,���_�?��/��gg�$c��d�@���<�w�TG�,��-�1���� J���B���c�|{��������#?�^ӟ��ߛ�5����J�a�����z�b����1����x�q���I�לCM�?��'�g������"�Ƨn|}�0�S�()��K��eͲ����������?�ȫ}     