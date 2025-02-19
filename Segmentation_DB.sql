PGDMP  +                    |            baseer    16.2 (Debian 16.2-1.pgdg120+2)    16.0 8    \
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _
           1262    24576    baseer    DATABASE     q   CREATE DATABASE baseer WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE baseer;
                postgres    false            �            1259    24577 
   catalogues    TABLE     >  CREATE TABLE public.catalogues (
    catalogue_id integer NOT NULL,
    catalogue_description text NOT NULL,
    catalogue_name character varying(255) NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.catalogues;
       public         heap    postgres    false            �            1259    24582    catalogues_catalogue_id_seq    SEQUENCE     �   CREATE SEQUENCE public.catalogues_catalogue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.catalogues_catalogue_id_seq;
       public          postgres    false    215            `
           0    0    catalogues_catalogue_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.catalogues_catalogue_id_seq OWNED BY public.catalogues.catalogue_id;
          public          postgres    false    216            �            1259    24583    subscription    TABLE     @  CREATE TABLE public.subscription (
    subscription_id integer NOT NULL,
    catalogue_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL,
    subscription_type character varying(255) NOT NULL
);
     DROP TABLE public.subscription;
       public         heap    postgres    false            �            1259    24586     subscription_subscription_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscription_subscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.subscription_subscription_id_seq;
       public          postgres    false    217            a
           0    0     subscription_subscription_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.subscription_subscription_id_seq OWNED BY public.subscription.subscription_id;
          public          postgres    false    218            �            1259    24587    subscription_user    TABLE     >  CREATE TABLE public.subscription_user (
    subscription_user_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL,
    national_id numeric(38,0) NOT NULL,
    subscription_id integer NOT NULL
);
 %   DROP TABLE public.subscription_user;
       public         heap    postgres    false            �            1259    24590 *   subscription_user_subscription_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscription_user_subscription_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.subscription_user_subscription_user_id_seq;
       public          postgres    false    219            b
           0    0 *   subscription_user_subscription_user_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.subscription_user_subscription_user_id_seq OWNED BY public.subscription_user.subscription_user_id;
          public          postgres    false    220            �            1259    24591 	   user_role    TABLE     �   CREATE TABLE public.user_role (
    user_role_id integer NOT NULL,
    subscription_user_id integer NOT NULL,
    user_roles character varying(255) NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    24594    user_role_user_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_role_user_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.user_role_user_role_id_seq;
       public          postgres    false    221            c
           0    0    user_role_user_role_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.user_role_user_role_id_seq OWNED BY public.user_role.user_role_id;
          public          postgres    false    222            �            1259    24595    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    24600 
   userworkspace    TABLE     4  CREATE TABLE public.userworkspace (
    user_workspace_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL,
    national_id numeric(38,0) NOT NULL,
    workspace_id integer NOT NULL
);
 !   DROP TABLE public.userworkspace;
       public         heap    postgres    false            �            1259    24603 #   userworkspace_user_workspace_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userworkspace_user_workspace_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.userworkspace_user_workspace_id_seq;
       public          postgres    false    224            d
           0    0 #   userworkspace_user_workspace_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.userworkspace_user_workspace_id_seq OWNED BY public.userworkspace.user_workspace_id;
          public          postgres    false    225            �            1259    24604 	   workspace    TABLE     :  CREATE TABLE public.workspace (
    workspace_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    modified_date timestamp(6) without time zone NOT NULL,
    subscription_id integer NOT NULL,
    workspace_name character varying(255) NOT NULL
);
    DROP TABLE public.workspace;
       public         heap    postgres    false            �            1259    24607    workspace_execution    TABLE     f  CREATE TABLE public.workspace_execution (
    execution_id integer NOT NULL,
    create_date timestamp(6) without time zone NOT NULL,
    creator_id numeric(38,0) NOT NULL,
    execution_name character varying(255) NOT NULL,
    raw_data_id character varying(255) NOT NULL,
    report_id character varying(255) NOT NULL,
    workspace_id integer NOT NULL
);
 '   DROP TABLE public.workspace_execution;
       public         heap    postgres    false            �            1259    24612 $   workspace_execution_execution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workspace_execution_execution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.workspace_execution_execution_id_seq;
       public          postgres    false    227            e
           0    0 $   workspace_execution_execution_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.workspace_execution_execution_id_seq OWNED BY public.workspace_execution.execution_id;
          public          postgres    false    228            �            1259    24613    workspace_workspace_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workspace_workspace_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.workspace_workspace_id_seq;
       public          postgres    false    226            f
           0    0    workspace_workspace_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.workspace_workspace_id_seq OWNED BY public.workspace.workspace_id;
          public          postgres    false    229            �           2604    24614    catalogues catalogue_id    DEFAULT     �   ALTER TABLE ONLY public.catalogues ALTER COLUMN catalogue_id SET DEFAULT nextval('public.catalogues_catalogue_id_seq'::regclass);
 F   ALTER TABLE public.catalogues ALTER COLUMN catalogue_id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    24615    subscription subscription_id    DEFAULT     �   ALTER TABLE ONLY public.subscription ALTER COLUMN subscription_id SET DEFAULT nextval('public.subscription_subscription_id_seq'::regclass);
 K   ALTER TABLE public.subscription ALTER COLUMN subscription_id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    24616 &   subscription_user subscription_user_id    DEFAULT     �   ALTER TABLE ONLY public.subscription_user ALTER COLUMN subscription_user_id SET DEFAULT nextval('public.subscription_user_subscription_user_id_seq'::regclass);
 U   ALTER TABLE public.subscription_user ALTER COLUMN subscription_user_id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    24617    user_role user_role_id    DEFAULT     �   ALTER TABLE ONLY public.user_role ALTER COLUMN user_role_id SET DEFAULT nextval('public.user_role_user_role_id_seq'::regclass);
 E   ALTER TABLE public.user_role ALTER COLUMN user_role_id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    24618    userworkspace user_workspace_id    DEFAULT     �   ALTER TABLE ONLY public.userworkspace ALTER COLUMN user_workspace_id SET DEFAULT nextval('public.userworkspace_user_workspace_id_seq'::regclass);
 N   ALTER TABLE public.userworkspace ALTER COLUMN user_workspace_id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    24619    workspace workspace_id    DEFAULT     �   ALTER TABLE ONLY public.workspace ALTER COLUMN workspace_id SET DEFAULT nextval('public.workspace_workspace_id_seq'::regclass);
 E   ALTER TABLE public.workspace ALTER COLUMN workspace_id DROP DEFAULT;
       public          postgres    false    229    226            �           2604    24620     workspace_execution execution_id    DEFAULT     �   ALTER TABLE ONLY public.workspace_execution ALTER COLUMN execution_id SET DEFAULT nextval('public.workspace_execution_execution_id_seq'::regclass);
 O   ALTER TABLE public.workspace_execution ALTER COLUMN execution_id DROP DEFAULT;
       public          postgres    false    228    227            K
          0    24577 
   catalogues 
   TABLE DATA           �   COPY public.catalogues (catalogue_id, catalogue_description, catalogue_name, create_date, creator_id, modified_date) FROM stdin;
    public          postgres    false    215   AI       M
          0    24583    subscription 
   TABLE DATA           �   COPY public.subscription (subscription_id, catalogue_id, create_date, creator_id, modified_date, subscription_type) FROM stdin;
    public          postgres    false    217   �J       O
          0    24587    subscription_user 
   TABLE DATA           �   COPY public.subscription_user (subscription_user_id, create_date, creator_id, modified_date, national_id, subscription_id) FROM stdin;
    public          postgres    false    219   K       Q
          0    24591 	   user_role 
   TABLE DATA           S   COPY public.user_role (user_role_id, subscription_user_id, user_roles) FROM stdin;
    public          postgres    false    221   |K       S
          0    24595    users 
   TABLE DATA           �   COPY public.users (national_id, code, company_address, company_name, create_date, dob, dob_type, email, gender, mobile_no, modified_date, password, status, user_name_ar, user_name_en) FROM stdin;
    public          postgres    false    223   �K       T
          0    24600 
   userworkspace 
   TABLE DATA           }   COPY public.userworkspace (user_workspace_id, create_date, creator_id, modified_date, national_id, workspace_id) FROM stdin;
    public          postgres    false    224   �L       V
          0    24604 	   workspace 
   TABLE DATA           z   COPY public.workspace (workspace_id, create_date, creator_id, modified_date, subscription_id, workspace_name) FROM stdin;
    public          postgres    false    226   KM       W
          0    24607    workspace_execution 
   TABLE DATA           �   COPY public.workspace_execution (execution_id, create_date, creator_id, execution_name, raw_data_id, report_id, workspace_id) FROM stdin;
    public          postgres    false    227   N       g
           0    0    catalogues_catalogue_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.catalogues_catalogue_id_seq', 1, true);
          public          postgres    false    216            h
           0    0     subscription_subscription_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.subscription_subscription_id_seq', 6, true);
          public          postgres    false    218            i
           0    0 *   subscription_user_subscription_user_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.subscription_user_subscription_user_id_seq', 7, true);
          public          postgres    false    220            j
           0    0    user_role_user_role_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.user_role_user_role_id_seq', 7, true);
          public          postgres    false    222            k
           0    0 #   userworkspace_user_workspace_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.userworkspace_user_workspace_id_seq', 2, true);
          public          postgres    false    225            l
           0    0 $   workspace_execution_execution_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.workspace_execution_execution_id_seq', 449, true);
          public          postgres    false    228            m
           0    0    workspace_workspace_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.workspace_workspace_id_seq', 6, true);
          public          postgres    false    229            �           2606    24622    catalogues catalogues_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.catalogues
    ADD CONSTRAINT catalogues_pkey PRIMARY KEY (catalogue_id);
 D   ALTER TABLE ONLY public.catalogues DROP CONSTRAINT catalogues_pkey;
       public            postgres    false    215            �           2606    24624    subscription subscription_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.subscription
    ADD CONSTRAINT subscription_pkey PRIMARY KEY (subscription_id);
 H   ALTER TABLE ONLY public.subscription DROP CONSTRAINT subscription_pkey;
       public            postgres    false    217            �           2606    24626 (   subscription_user subscription_user_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.subscription_user
    ADD CONSTRAINT subscription_user_pkey PRIMARY KEY (subscription_user_id);
 R   ALTER TABLE ONLY public.subscription_user DROP CONSTRAINT subscription_user_pkey;
       public            postgres    false    219            �           2606    24628    user_role user_role_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (user_role_id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    221            �           2606    24630    users users_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (national_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    223            �           2606    24632     userworkspace userworkspace_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.userworkspace
    ADD CONSTRAINT userworkspace_pkey PRIMARY KEY (user_workspace_id);
 J   ALTER TABLE ONLY public.userworkspace DROP CONSTRAINT userworkspace_pkey;
       public            postgres    false    224            �           2606    24634 ,   workspace_execution workspace_execution_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.workspace_execution
    ADD CONSTRAINT workspace_execution_pkey PRIMARY KEY (execution_id);
 V   ALTER TABLE ONLY public.workspace_execution DROP CONSTRAINT workspace_execution_pkey;
       public            postgres    false    227            �           2606    24636    workspace workspace_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.workspace
    ADD CONSTRAINT workspace_pkey PRIMARY KEY (workspace_id);
 B   ALTER TABLE ONLY public.workspace DROP CONSTRAINT workspace_pkey;
       public            postgres    false    226            K
   V  x�퓻N�0���)��Q�&�t�@l]����9iL})�S�;i+�HU�lֹ����,z~�� �հW�SZ�!@����΀[@p��@7�:�$�v��Cǵ�Q5T��k��9�v�Y��ihI��,Wd-Y0��C�i�e��
C��ZC��g����gh�Z����E7��P�,J�~��P��PX3,�(�Ex�!S��CA7'7�]ͽ 
v��S��ꐔ�:��!��H�O���^~*�Ӽ���<� +�Y�N�r���2]��bY��KV�*�/�8�H݆�#�t�����PZL�nCi����d�%q1����s�0�k����TN�n����[��7�w��      M
   \   x���1
�0F�99�hI�$m�Y\������� t|�FJxŢ#
�QՌ҇{wy�X��[J�:��:���A��%V��
�id��� GC�      O
   Y   x��ϱ
� њ?�lcc�Y��)�&��N�Y�DIc�9$�:�Q��CՕb�5u&y'�7��C%G�*}��:TZ�-��Ǆ��^2E+      Q
   f   x�3�4�4�sLIQ-N-*V�U.M*N.�,(����2J�H��e$&�r��\�3���R�L�|������Լզ@Y�:��ĒT$�=... �3(~      S
   �   x���Mk�@���ͯp/	�q3�c���Ք�n&Ό��
N���Պ��g��D1B�`��k�N#}�|JzT&\&D9P��'�O�ͦ�7�*W��PU�`���V��}/;BĐ����3Ng��H�-��` �WU��V�z�݁�Ԯ�0�̿��4�����M�V�#mm��&����� �ӯ�O�y�ZS�      T
   o   x��л
�0��ڜB���(J���ϑ4�
�i�~�N7C�:�f9����Br	��g��e)���!��#!,�3	�Y�Yn_��~[�O�Ѻ+I��~��3} �`E      V
   �   x����� E��W�%��P،�n&..�VC1c����6�Ƥ�}�{$�XqY	E��+��0�Ț�Q#���dl��z��9���Ҧ�R�w���KM9���h��f>���)�2<���_�v��^�^����ъ��oO��4�����H��##���Vdw      W
      x�}\K�,7������>�>w�h�������4��G��"3��a�|�yRE�<Rؘ�r�����ٿ�����+���C@���׿�5��zk�����`ڒ�q6$�7P��?6�'Y�����EL�f�,����8{�en`
��d�<Ȝ�����}%s��e3��l���t!����Ms�ӏ˯�4�Mf}�6�����~ŀ2���\�3� �,;E�?��x|唾����&���9�2[�����@mB�����Gkf_)�;���ӟ��]u�%_,T3��Y7Ч�-�
~�}9�(���Ͽ{���Ly۵���#Of�k��_Ɖ���/c�o�����5�����8�W@���M����� ���Ƨ�4(+c����f.1�4�E�]�s�
�p�)^Ȃ"��?&��od�@l&kz�>W;gj�|�~�i�M!���u?�~_�%�da�������Pʠ�N1�C^@�C@c"2^�Y��B��Io������	#�ii���
���/ �z�1I�܃�f����w2�6/��xEm#w;�i3j`ʒY��ſ)�9�t|��,n2��ް���
�#N�1��qN�7�,}�d[�c�+��?�&�Lc�J�cw��� �4v>i�v!�O2����FFK�̲�\�۴>�
 ( ���/[|ax���M�C�&�&e3���7
L�CE��=��kv���"K��sGr�Xb��,d�D�y��d����k͒�RΙǤ������@�mn���6�����Ǟ΋�d�W�j��Z)�A�N��_@o�M��Mf���/4��C�c������9(@�L�oP����9�+��lY���4����qY���d��؆�P���Q`��������Nq�0�j�l�����6O�汕@nJ)>� x I�>�hQN����M�=m�����,B�e��ܾ �0Y2�,����]d���E�LʦC�@�Cv�
�m�f�iO��{z�k��F�Gp�&J�\B���@�M�>���kF����ge6�5�9�SVb9��&�\)���� F|�q^�^ ��x#[یl"���S����j�,<ɐ�1{�CF9A^6Cy�u{��ٙ�4�_�R�/d�v͖�4�=P�I?bD��2*���,�,�io��MFG.����U���5_@��`��*2�C)����<�ҺR@�X4R�ޕ1l���X\�Y��H�����vG�H�^Hs�堩C����<}tt* ��[��U����R��"�B�Jh���Tes��F����'i�B�pǞ��1���n��)����W�Tj3]���J��@�!����d��8C�t'��ܛ�#q�NT�� ��ӷ:j��Y�� �}}����awD+wE+ʩ
���0J���By̊P50O#�N��+�&���&���T
�*\��Y�̍̉3�Mʕ�M+Ǵ CT/Y0�,q�B�|:��%�{dH�H��R������. j��6&�-Y��$��ܱd��^*�S�֝R
S�vp1�*��Є�d(َ?"�l%�d�x�m6���qD�"s|NU鈌��Y�	�K�N�ѐ��PQ���,2�Ć���\ָ�L�ٕI���
����"g�����u=	�tjB��&�~Yk���S�_�K���0Pwd�ބ�/���8C10�L�l����|��`�wj�&K|�`>j�YZ�O6{��Ӊ�pC
��>ȼ����72��5�IQbS=���l��t
D	 �<.pQ���P:���,o2*��&:A���x�Y��vRB�Jw�@3�a8����	��6��9/�,ل���9�r�tFHm�SVd��R�_1?��7�*Xd��JC-��^?�'@Հ�<��<�(ѧ����C�d;d��,e3�x��T�LO#��N���A.�Hi�"��e�Z���R4�o��{��W$2x�Q�H#�_׌H��6��S�Ѓ�@���������d��N��z�ClX63�j���،͊cT
@��&��o�h�8C�㠶f���4Il3��
�D�S��z�'3��g9)����^��n\�6\�]��@��1�'�����qҴ̓��_��V��%���AF�����|ȸ�X6sG���s��|M��1�}�9`���P?d�^��h�L�uz�_l(
[�H��6���l��TOm���so��H�4*b��܀�m�m�z
4'd�?8�Ï���hؾ��J����-�C��l��Un04@���>a��BL�s+��
;ܖX*��fcL�x�G��J��d�H�H܄�A��6��U�ptv�%�t�)
��@!���BU���\d�C�����;�$.�M���)���"D��[�r���(�C��Y�O%��T���x�v	�R����9k�P p��Ǚ[��I?��ʃ���� �I'�"ܠ*o�fL*�[�_A@�U�r{&����QX�&�R>��[�ݩ���x�"�\�M3��ݚ�A:�7�?"ǻ�o��9J�H��K��
�F�Y�`oh3�����q5�)4�Hٙ���L4ut�) /A�&��n@d|f��G7�%����ie��pT>���L�(�"b����vW�{��
��@�]���z� ��w�'q�D,`�˝��&Ckpٌ0�6��sy( (qg]�7�����d�R�EFk�d��^e�#Q���j�����9�g��(=a{d�� J^
�c��z33o`P�)d��0l��`�Ǳr5��J� }f�p~o��:�L4�U�484Y�c�,lod�ۍ3��9⸀����,+�����R<T�O�'�FF�������&rL2���4��m�$Tq�Κ�1�+T�;zY�b����_�,dA�7#���P���@��f1��v}�4�	[E�dCg*\����C����U_3@���kd�6����.6��Z���T�4�/�|�r�\��]�bjր/Bvk0^�+���d>�̫�]�SM��w��fPj%d�I�yd��,��7��6�'��XBO�2���$��Z�=���,C٤�mM�a�i��I���L�B޸e�"���rM�h/�>�pIXG�CF��͢m�p��+�4�\v2D�Ƴ5�&ý����^�l������Lk/�Q�o��[����ȟ)�cP��s���
T� vQ
��7 ���ǿ��θ��� ��a}���y����U��[SX
.l�>�/����Sa���v�6��34�[uK�ֽ-��ݟ
�}7�P+h�b��ֵ
d��.=��i'�_�1�%���p���ݙ�1�l	*���@��)�'Y^��cO����1�%١��
��ޜQ�a'�?8�}�s�W���PP�/�h J����X����j����(�sʦw��P��vGb��%<���&�{tgS�<���n2ʁ5�%
�[�;�%N:����M�K¢8�9��)=�
L��j��dtp"�AM��(W�Xh����|1
復\ j�H�/�'Y��c��܇���6���,�\@Ԁ��z�O���/�!��Һ@u[�k���YRdTtJB���Ǜ�"��d��+�#��#E�ݷu�q)�^g3��e�8�����4��У%,iwSr����/έ=͕�z|n����1�	��8�d��_0��mN�����T��$�G�pz�����,9/IR����m�8i�`PP.`j ���t�SF>����#�$m�"׮:蹵
4�@_L�䊢P�w9�n@���b�D
p��Ȃ"�jڲ^����ՖX:ߺ�٬�l�N�;�宫�V��V��Qv~
朗�XʜҠ�0�^��P.�k����Y�C��>��/�Du�j�S���Y�)G*�y0�]@� 4i�~$��� WB���=�>m8U;�������f
��xO#-�o7��[�f���M�i-@W��U�n�|�5p�q���"�"��b5�ѷ2���*:�@�A5��}�!�|:k����Ȋ��Fro��BX��D����-<�iwK/)$gQ6�n�@�@�B2�F$9��7���l�� �  �M�J�@Z#�4��J�Pqv^��K5 ��$r�L����Q���r�� ��*�*ج��3��7.g�T0d2ƨM�pY��d�̃�KUq�o*
�yY��D:�ǈI9˼��:�QYE����:����`����,�'(�%J=��4@1��܃����+'ٛ�ƅ�d�U���^�T@���\���]��睖7�c\6{��/ j�"�I=;��|��gE�u>��S!��**-�@� ����?��U�nodN.АM
�T�>툜���� ��z&�'Y䑝]od�-���M�m;��j
�����GP	�d���y��C�Dd�5��S�����jy�h�����/�Z�����+�w���jѐ�22�V)k+u�k�z!�O�ȇ4W?nd�0g_�
��fC����m��Yw����';�6�w�,{�lv�3-�i#$�X>�k����z���"�+q��x쳷��G�m��Uv�E�)�P�F�nޘ$#0�*k���%�Y��ʚ�a�+��á<���[u'q�9��c��(/�fB��ϝ���B���MBrrs��S/9�~�#y�zt�;�N�u�I�k�#n`X/�έ�ȸ����WA��)ܺ�I=��<7�A���^�H�H�|�3)�J�cH��i��a�\�p��\7�J$F~M/����x�d�IYh�=�n6ݬh�������y����?g�MFqS�,7)Q7����*�'�m�C�@���d�(x���96�[��Lcɖ�h��@�c�q�jl u��ݞ�%I�)R��;���w�o���kϏ�a��$�7
4M���X�w�Χ#�}ˌh��j���.]��JYuÉ���I�9R�����lk��:e��16��깉�2�~t�E��C}��3�zUX�HJ'��m�*e5+Ҡ?��2����������_��՝���Y���T5�An�����>�_Y�4�!
ߞ��'�r�z�.�ћ��40��hߓ�������\���l��.Q.�
P�wؘ�>�"G+J9��X*��Q�AwZ�?&d�^rU��(\�7Ү�H;�,I�r��;��.��*�pE�Ţ�2�G[�M���Dl����Y�7@䱘�d�:�e���BZ�% �������`-Y~�e�חN��C��&#��m�W��3�[CQ.�9�.}��|qKLt�l�@T�ЇްC�hK�b-�k���*�4V_��*،����Arz�q�پ���ITxo}�ӏF�|��L����e�
H�,?�w���7��[s�x�m�pIS��$� Pz�U?��ך�u'��5����)*����C���R�GfD�&���T�'�vd��sY(��oڝ�"�u/~��E�3�8��`�C��Bc�}��:�o��C(c���?�e�f���~E�
�B�ғL�t8{8�WW�T�msXm���r3��6n2���}��vq*�9�YĀh�~ܲ�ͅ����?�\7t�f׳X�E6�,�%�>��耡D�Vɥ��G5d�"��Y��&k(/�n)�z�F�4��<G�~�f�t;�S���N"ݝ-P��J��F�q~*Ǚ=��c�w@ϑ�k�����6r�"�� Ii=�O�̚7��_���fd����{��� 2�4�����ڝ��@>p��˫��u �
&���4Y��d
ȥ��$#w��&�Ge�v�(ST����U\�5 |P�xk�X)+��f<r���3?�r�js�^���
O�O#O���3t�U�$�|��Nƹ����k���rN�m�m�&�mh4
��Z�uI�>������iRź`��H���K�jM�. 5 � Qk�N�
����Ʒ̈�,�B!h5�hM�\��er��A��/�1�o��BG*����!�$Y#m( �����d�q��"ո�|]���I�e���-Ƒ�k�/�/=��*;���9�̘xN�6Gv��h�9�~�Ūk-	�V�G���Oq	��W�
KV7a���P���L�����D+���A� 
J�G&(2P�8;���y4a��b��Z���6@��"�O2�'^���Ȯ�.��D�,�W�V5��U��=t� b�ޮ$x�KV����2e}�Zs+��xO�{���_�|�b?����d3N�57����u&CE�������x���"l1�m�-ћ�� >���� K���G�l��;�Pn)I�P����N�tF2O2r}s����esvm3��_Q����"��PVp��z�����::���("
&qE����o�X���.����M��!٬qj�!o =Ȓ�� C��ɟ�Λ�ۤ�rS���=z:M�$
�R���!ߚ��r�|�d�3횭P]S6�������F-
G��M�=?w�EJ��*�<eS�|�} S����E�y��C�L�6��6Ǽ =�\*�7O2��ow�?d��m����
DY3o�d���J҇+H˖LB��m^�c`c
�=��=:���Ȓ�Ȇ^2�=0�p
�?� J��ad�.y;ES�͊�5�@��A�RP���"%W�?"û�uD �+����IF�������m����4/@/&��f�I�8�Kg��Cf�
�����`��=���$���ί}���#������7{�zO���@P��3����{dCOc����`2@�\�"9��_dT0�"�vPh���:<U﮹
L�@�$�O��R�}�p;Hvo6�7���Bf�d��쟢U���y�����}��܃Wg�����쬀��Q6a�Y��L�d���|�V	���&��&󸀢�҅�@p�B�ύ���N~]f)t�Q�r��H[+Ʈ�GL
d2|��|�����N
�f��t0�B8�E�JAxe{ԝ���,�Lv�M��NADE&_S�����_d�qMc�Q�������!)*�9#%�guv#[g#�-���(�j@n �'�|�ѝq?Y���+��"�N��
����������     