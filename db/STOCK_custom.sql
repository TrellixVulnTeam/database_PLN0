PGDMP                     
    y            Stock    14.0    14.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16853    Stock    DATABASE     R   CREATE DATABASE "Stock" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "Stock";
                postgres    false                        2615    25370    stock    SCHEMA        CREATE SCHEMA stock;
    DROP SCHEMA stock;
                postgres    false            �            1259    25486 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    25485    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    225            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    224            �            1259    25495    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    25494    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    227            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    226            �            1259    25479    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    25478    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    223            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    222            �            1259    25502 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    25511    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    25510    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    231            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    230            �            1259    25501    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    229            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    228            �            1259    25518    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    25517 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    233            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    232            �            1259    25577    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    25576    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    235            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    234            �            1259    25470    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    25469    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    221            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    220            �            1259    25461    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    25460    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    219            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    218            �            1259    25696    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    25380    company    TABLE     �   CREATE TABLE stock.company (
    cid character varying NOT NULL,
    cname character varying NOT NULL,
    cowner character varying NOT NULL,
    yield numeric,
    pe_ratio numeric,
    industry_type character varying NOT NULL
);
    DROP TABLE stock.company;
       stock         heap    postgres    false    5            �            1259    25447    deal    TABLE     �   CREATE TABLE stock.deal (
    company_id character varying NOT NULL,
    ddate date NOT NULL,
    open_price numeric NOT NULL,
    close_price numeric NOT NULL,
    volume character varying,
    high numeric,
    low numeric
);
    DROP TABLE stock.deal;
       stock         heap    postgres    false    5            �            1259    25435    ema    TABLE     �   CREATE TABLE stock.ema (
    sid integer NOT NULL,
    company_id character varying NOT NULL,
    fast_line numeric,
    slow_line numeric,
    loss numeric,
    profit numeric
);
    DROP TABLE stock.ema;
       stock         heap    postgres    false    5            �            1259    25371    investor    TABLE     �   CREATE TABLE stock.investor (
    iid integer NOT NULL,
    iname character varying(10) NOT NULL,
    acct_no character varying(10) NOT NULL,
    pwd character varying NOT NULL,
    phone character varying
);
    DROP TABLE stock.investor;
       stock         heap    postgres    false    5            �            1259    25411    kd    TABLE     �   CREATE TABLE stock.kd (
    sid integer NOT NULL,
    company_id character varying NOT NULL,
    threshold numeric,
    kd_length numeric,
    loss numeric,
    profit numeric
);
    DROP TABLE stock.kd;
       stock         heap    postgres    false    5            �            1259    25423    macd    TABLE     �   CREATE TABLE stock.macd (
    sid integer NOT NULL,
    company_id character varying NOT NULL,
    fast_line numeric,
    slow_line numeric,
    loss numeric,
    profit numeric
);
    DROP TABLE stock.macd;
       stock         heap    postgres    false    5            �            1259    25399    rsi    TABLE     �   CREATE TABLE stock.rsi (
    sid integer NOT NULL,
    company_id character varying NOT NULL,
    threshold numeric,
    rsi_length numeric,
    loss numeric,
    profit numeric
);
    DROP TABLE stock.rsi;
       stock         heap    postgres    false    5            �            1259    25387    strategy    TABLE     �   CREATE TABLE stock.strategy (
    sid integer NOT NULL,
    budget numeric NOT NULL,
    creator_id integer,
    strategy_type character(1) NOT NULL
);
    DROP TABLE stock.strategy;
       stock         heap    postgres    false    5            �           2604    25489    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    25498    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    25482    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    25505    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    25514    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    25521    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    25580    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    25473    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    25464    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �          0    25486 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    225   -�       �          0    25495    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    227   J�       �          0    25479    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    223   g�       �          0    25502 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    229   ��       �          0    25511    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    231   ��       �          0    25518    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    233   ��       �          0    25577    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    235   ٪       �          0    25470    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    221   ��       �          0    25461    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    219   ��       �          0    25696    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    236   J�       �          0    25380    company 
   TABLE DATA           T   COPY stock.company (cid, cname, cowner, yield, pe_ratio, industry_type) FROM stdin;
    stock          postgres    false    211   g�       �          0    25447    deal 
   TABLE DATA           \   COPY stock.deal (company_id, ddate, open_price, close_price, volume, high, low) FROM stdin;
    stock          postgres    false    217   U�       �          0    25435    ema 
   TABLE DATA           Q   COPY stock.ema (sid, company_id, fast_line, slow_line, loss, profit) FROM stdin;
    stock          postgres    false    216   h�       �          0    25371    investor 
   TABLE DATA           B   COPY stock.investor (iid, iname, acct_no, pwd, phone) FROM stdin;
    stock          postgres    false    210   ��       �          0    25411    kd 
   TABLE DATA           P   COPY stock.kd (sid, company_id, threshold, kd_length, loss, profit) FROM stdin;
    stock          postgres    false    214   ��       �          0    25423    macd 
   TABLE DATA           R   COPY stock.macd (sid, company_id, fast_line, slow_line, loss, profit) FROM stdin;
    stock          postgres    false    215   ��       �          0    25399    rsi 
   TABLE DATA           R   COPY stock.rsi (sid, company_id, threshold, rsi_length, loss, profit) FROM stdin;
    stock          postgres    false    213   ��       �          0    25387    strategy 
   TABLE DATA           I   COPY stock.strategy (sid, budget, creator_id, strategy_type) FROM stdin;
    stock          postgres    false    212   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    224            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    226            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    230            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    228            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    232            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    234            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    220            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    218            �           2606    25604    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    225            �           2606    25534 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    227    227            �           2606    25500 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    227            �           2606    25491    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    225            �           2606    25525 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    223    223            �           2606    25484 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    223            �           2606    25516 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    231            �           2606    25549 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    231    231            �           2606    25507    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    229            �           2606    25523 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    233            �           2606    25563 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    233    233            �           2606    25599     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    229            �           2606    25585 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    235            �           2606    25477 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    221    221            �           2606    25475 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    221            �           2606    25468 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    219            �           2606    25702 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    236            �           2606    25386    company company_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY stock.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (cid);
 =   ALTER TABLE ONLY stock.company DROP CONSTRAINT company_pkey;
       stock            postgres    false    211            �           2606    25453    deal deal_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY stock.deal
    ADD CONSTRAINT deal_pkey PRIMARY KEY (company_id, ddate);
 7   ALTER TABLE ONLY stock.deal DROP CONSTRAINT deal_pkey;
       stock            postgres    false    217    217            �           2606    25441    ema ema_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY stock.ema
    ADD CONSTRAINT ema_pkey PRIMARY KEY (sid);
 5   ALTER TABLE ONLY stock.ema DROP CONSTRAINT ema_pkey;
       stock            postgres    false    216            �           2606    25379    investor investor_acct_no_key 
   CONSTRAINT     Z   ALTER TABLE ONLY stock.investor
    ADD CONSTRAINT investor_acct_no_key UNIQUE (acct_no);
 F   ALTER TABLE ONLY stock.investor DROP CONSTRAINT investor_acct_no_key;
       stock            postgres    false    210            �           2606    25377    investor investor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY stock.investor
    ADD CONSTRAINT investor_pkey PRIMARY KEY (iid);
 ?   ALTER TABLE ONLY stock.investor DROP CONSTRAINT investor_pkey;
       stock            postgres    false    210            �           2606    25417 
   kd kd_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY stock.kd
    ADD CONSTRAINT kd_pkey PRIMARY KEY (sid);
 3   ALTER TABLE ONLY stock.kd DROP CONSTRAINT kd_pkey;
       stock            postgres    false    214            �           2606    25429    macd macd_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY stock.macd
    ADD CONSTRAINT macd_pkey PRIMARY KEY (sid);
 7   ALTER TABLE ONLY stock.macd DROP CONSTRAINT macd_pkey;
       stock            postgres    false    215            �           2606    25405    rsi rsi_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY stock.rsi
    ADD CONSTRAINT rsi_pkey PRIMARY KEY (sid);
 5   ALTER TABLE ONLY stock.rsi DROP CONSTRAINT rsi_pkey;
       stock            postgres    false    213            �           2606    25393    strategy strategy_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY stock.strategy
    ADD CONSTRAINT strategy_pkey PRIMARY KEY (sid);
 ?   ALTER TABLE ONLY stock.strategy DROP CONSTRAINT strategy_pkey;
       stock            postgres    false    212            �           1259    25605    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    225            �           1259    25545 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    227            �           1259    25546 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    227            �           1259    25531 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    223            �           1259    25561 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    231            �           1259    25560 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    231            �           1259    25575 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    233            �           1259    25574 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    233            �           1259    25600     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    229            �           1259    25596 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    235            �           1259    25597 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    235            �           1259    25704 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    236            �           1259    25703 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    236                       2606    25540 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    227    223    3545                       2606    25535 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    225    3550    227                       2606    25526 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    223    3540    221                       2606    25555 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3550    231    225                       2606    25550 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3558    229    231            
           2606    25569 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    233    3545    223            	           2606    25564 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    229    233    3558                       2606    25586 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3540    221    235                       2606    25591 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    229    235    3558                       2606    25454    deal deal_company_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.deal
    ADD CONSTRAINT deal_company_id_fkey FOREIGN KEY (company_id) REFERENCES stock.company(cid) ON DELETE CASCADE;
 B   ALTER TABLE ONLY stock.deal DROP CONSTRAINT deal_company_id_fkey;
       stock          postgres    false    3522    217    211                       2606    25442    ema ema_sid_fkey    FK CONSTRAINT        ALTER TABLE ONLY stock.ema
    ADD CONSTRAINT ema_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 9   ALTER TABLE ONLY stock.ema DROP CONSTRAINT ema_sid_fkey;
       stock          postgres    false    212    3524    216                        2606    25418    kd kd_sid_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY stock.kd
    ADD CONSTRAINT kd_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 7   ALTER TABLE ONLY stock.kd DROP CONSTRAINT kd_sid_fkey;
       stock          postgres    false    3524    212    214                       2606    25430    macd macd_sid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.macd
    ADD CONSTRAINT macd_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 ;   ALTER TABLE ONLY stock.macd DROP CONSTRAINT macd_sid_fkey;
       stock          postgres    false    212    215    3524            �           2606    25406    rsi rsi_sid_fkey    FK CONSTRAINT        ALTER TABLE ONLY stock.rsi
    ADD CONSTRAINT rsi_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 9   ALTER TABLE ONLY stock.rsi DROP CONSTRAINT rsi_sid_fkey;
       stock          postgres    false    3524    213    212            �           2606    25394 !   strategy strategy_creator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.strategy
    ADD CONSTRAINT strategy_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES stock.investor(iid) ON DELETE SET NULL;
 J   ALTER TABLE ONLY stock.strategy DROP CONSTRAINT strategy_creator_id_fkey;
       stock          postgres    false    210    3520    212            �      x������ � �      �      x������ � �      �     x�]�Kn�0D��)r�"�'�u�Q�0b!5�؁����k�#��N�<�����w����m����O�v���t�!��n�FC�5�}��Ղ�$`C����j��#��aY�it�Ƀ?h9�N�G�gX*�$��$Gŝ��u�~�&A:���r9����2 ��d�,���g��kH }h�|��@���p21���X&_�qݶ�[���Z2�Sz��E^`���^x�i�ڋ�M���z���	��+�wa�Y0�v��W0�u�Ȫ ��a���:��HJ��+SsEAJ@�qBK@Up���@g����������{��̔�v�+�V�5f"m_ֹ[���μ>\}mZ������+0����+P/�@�5���o?YmG_��#������F�)��L��ݻ����7��adJMw9�����rF�R"M�w�-��q:��T4ǘɄ�f&0�	Uʜ�lN���޹�����[SC�M��r�\)��L�����`�ٷ�j9�`&L�2��L�r圆S�����6��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�M�K
�0���0�N��]��HM�������q�S�4K���#^닲��U}��2��fV���)��V[����}�o�F�q���&ZS��B���0k-\enpg+E=�3�'��v�qWo��p�a^�<� �J�      �   �  x����n� F��������<�J%�E��pռ�uI��J$��3���;�9�9��bc ���3cG��+揽�8qru�L1E��<�ά��A� z�J�v�2���� ��D�-B��\h��`'�au��ks��3�B���ozc�6�����F3��w�l`�Ed��%~�"��l����Lv� E��7D�1٠&c)���d>�h�!��CQ%�X�PtC�1/v2n|Ha(y����S�R��K��CZ{Bh~�MLE�˝����3�UɈ�"���Mo����}�����x�[%ft�|���m>���h�_ޝ���!҆��rX�T�j�5����)�BdE�o�_��0����z]�!���?�w�Gp�e@lÌ侩7��G"ɗj�E����B�P�@�^q�%��x8��dX�      �      x������ � �      �   �   x�]�mJ�@��ϓ�,;��n�a�EJ��؊H�"�!���%E/�ٗ[��G��3BJ���}�:�ٔ~Z�r�8*B3)��3�3��6�2q�Uv{�o+p��<f}7Dj����	
�K�W��>����wI%�����ow�oa��k��T0��-6�G�?��I
�2���ףv26������:�ՆL���t()�L �}�w����!�E��P�      �      x�}]k��
�]�\:��c.w���%�Y��t������hB��\����~Ż_q��C�����S&��qm0N�������vb\W�����eLӲ����N�o��ݍ�l0i�6�mu�Ǐ��YL�W�J��0� Po�W��5~���<�G�q�BG-S@��u�ilpB߽�T���ze�@8P���(,(���dmL�巆L��p�����a��{a������O=1��~���Ҿ������O��qp�tZ1��\���k\���aՏ��:W[��=��`�a��܂`�(��gY�ʳ���¬D��F�h�d��$�/���]����#�n�$�B���E��ѱ��(Yc�O�^1��zW�i*��QH��C`�f�
\4��jؔN3����5~|L���G�'d�m0e��4#�~��f0�BO�N��LV<�"��?CX�}�6(�a�.d؅���m�e��;`�P:14Ӂ�<���"�tL@��;�B�E%J~H�~7�"uZ+�]#e� �=�c��O�������0M��O����ڿ�iRp/�7�~��+C�BJ���j#]����bʀ��24���<z�ɢyC�|i�a�`6mΪ��҉��3L4�<�B�uv���r\|����b2ǳ�0�J���u��(]�K1����o��>�"��a�h��'mX�4�c�sks�WS�7L�2z˸����/ �S=��9���g9�'1k�t≮�cOSB�e���ިu�K)-�O�_0-�X%1���wg0A3Z�����T1�^�,��.�b���A'kwT��h�u �1�S������	�Ab���&�8l"Gy^�Xxt+䟮���W�(���-̩��{=YQ�T�y�N��䡟��Xԍk����~1e���:|B�&�b�bu�Vz�֔U�g����&�~�jU5��qm�E���vq�t�����L�6��_�c*�� �)�*� TЛ�z��i��L#��х��ŹT�n�߁	�v��TZC�^����ŀ�Y�K����q��ڲ�iU�G���l�BA5�i�6+����ŭU�˩`E|v�BN�ݔEw��/{ٔEw�q��u�1���|:��-��:�c�t�E3��$�*�z
G���Ň��i��N��"-�C싈��1e&�4��zy�c&�sI��j��>�̜Ye:�/�I���M��S�󿨍*�j��)�Mtڷi~��LW ���!�2m=��������e\�$�i-�$����:;*�u�e<@��f0 R�	��y3��J��n,�0����2C�OY̠?�̜ƀ����L2�S�h����Θf�h�J���q(�A'h�ܯ�ifo����>���m��vYT�i�-�P1���n0���b�,�R�:>B=��5���Ꮔ-�S��s��pB��S���i�,�'}1wIf�����xkʒ�dv�]f��`��aY�?ɘf0a���}�{���NZ!���`�O�3�f�Θ/2��$�)6e�o��""0�n�EG�A'��|.��: ��t�j�����|):GL�فIsi��9��W���u��~���|ѩ:u2'~:n�sb�
�5e�3�E�aң]Q�� {@y�3çb��{81a�CGRB}��{�gXN�3��v5���ڍ(�Ӑ�2o03l�dO��T��`@�YW*J�QFՔ^}�(���r���?c�Y���̔�Q��Q�(2���M��T6FY���F�ʊm�Q�c�42�ğ���w�C���aSrj�t�0lf�k#6�e��l��񟛮��\�&��p��ѷ��ش�ď��yb��U/�f��7�"�j��p�[��L���u#&����mAb4�Q�1ޖ�rY�#������(<J�`��H+�^�x�`�soƧ|�3�,�o�uL#����^���[�������^G��s��g�-��`��D�%����c���:qN��̥%/u�5��v2�ٷ�\�)����
�N�x�����Q�J�U1�qe�Ok�_����A�|�e9)'U�+��DSg���h_T~�ذ��i��'LV��2&s�Ζ�����۸�鋢O���<c��>3(5t��9|0/����~Sg���
|Z�����E3WSd���l�_+<���wKg�6�@NA&E�<0�Qb�U��Ͷ`I�c7�Ȩ����d0�7�-B渌��7�ݘxGb.���`F=�kb��7�)��㕕�3 ��׊ �:�2��葡�=b�'6�+��w�����*y�v��f��
���B�f5��MC���B���y�[��t������K�ٙ� �	���R��n�qe���8�4\��@}��a�L��;�b�tk@�������\�����F�W�0Lb�ؽ^���n���=�g�Ņu��B�O�bqcHh�C������CU����:�BZr}"��L��^����K�<p����<�5�b�@�n��NT5���.���?��q�>�1�z�\vA��a�6��������}~7�&��M������
.�uKQ�ȕ��_+j2�5)�-\x�Ụd�x�V�!��_Xl�l���/yM(�E������j`m�Xp��0�b}���K�!��_qo��ƣh���:k��k-!T��z�r�c�"�VPd����L�����,rr�� f��"1jX�E�)-[�Iπ��-�]�l�dLN�'�==k'������2𺨦5�����1X߈½{�!��(�˫�Ϣ�T0<�8,�p��ި�#��7�i���%b�q�)D���S� 3����"W���ncԽ$#�`�0Vv�-Vc��3����Q��Pza����]�u3�`�^$�!��&s��T��^��)����H_��nN�
B���U��+QM��������]u�l�hR}�DI��Tdg��M�t�+ۧ�������6�jR���6CxQԒ�3���: �{I��}�٦`|a
'���#�?�A���x�O�~щMɻĴm�G��j욁��6�C�on{�)By O1ݷh�:���Yt����`\_��,��&*��C��	�U�e��k��`��v<1:X���]a�D3ͪk���o,�bM�d�&�MFj��;��^�vD�}R�9S�abݦ�yB��/l*c@e���16��%�U�zK$mA�.2�~��;�j�G#�jb*��vh�y�x,�/��Sz����K�����E5�X�͆2�>��-[��䨓��RQ"�Hg�)�	"��p���q%�pWRX���A)f��V$f��K,�y �2b<|3P�V�n����G�(�j�h�K�Z�1Pd�A1ȯl���{��nzIȣ�7���5�=�D�:���w@/��M ��n<����{곧]�J`㸴��@����Xr�ZD��r�2r�s',$0��A���u(�i|&y/F!9R|�3���7��0���t�%����n��ގ
�Y�^�~Bc[6�������&M��>�bM7�'��8'��[7.s'�$F>�w�_f����a.�dN�*s�_�mSqy��˴���Mh�����EF-cu��a��~�{�0��i#��R�Ԭ�Ǵ�I��IҍQd���`����17����2vM��%Nֳ�2z��`�nmt��$����í���^��|�,跚؜�"N'���ե�d�:�k�� 
��T���Q��Ks���Oe�͙���7��i��1d3pA�ԅLL�V��͵~M��Y�2��J_w��a'�0w��ɀd���	2�/A�%V�F��ބu����>�CT��s$l�>lX��H�dA�=��$�D/�X]w���#`pO_'�"�ſ�*�:G����˳���B�yռ4��~������̭;�r)��O*�G�FF���(�(�;3M����.�?��Ѩ�<������ �|�����F��3�\�ǩ��stG-P��"8v�iV� o�q��;�0�(�T�4�o'Q�    Pa*�T�
(��[<z�?6K�=	�Q�S} ���e�">Y03�^`�C��%?h�Y-�5Sb�5���H��]ܪ�._�ln���P��v��+�k�8��ydn��MZH*EB�<e��J$ϫy��fp��=�y�G��i1�����(�^�Ekײ�6��\.2/���L�N��e:���Q\��m��5E5�Π��U��v���]F��8ޞ�Ƭ?Pa�H��n� ���c{kn_iN�(p��dp3��S�9�1�t�<�\�)��l0)az��W��1)
2���o����o�4�ܓ�h�U�v>[rn�FVEnQ4�HaN��$gAq�.��FˈmK�rIo��$�3��b�QL�T�tJ�8��n6̐�<.�#�X��������^m�1[O��;��s\��R�������c����D�F��Vx�>���M��ڼ�"�H?���?|�/R��B,��*k?�`�~����/��>�s%��S�{�i涐�~~Eum�srCgZ�/!f�o����Hˣ/5��U��-��e���(Ĭ��A��!�'m���ǝ�s����_�V��/�~�����n<������ā���km`�w��%aen�4���In~��0�,�f��ApWe�O�~L�i}V�u�1���` Q��Ñ�9��o���N\�l`�⏬�	�Q�	�-0�I�ᅞ��w��L�`a�@%aR1����q���ey��b�f����6��vQ��9�6@�j��\prk��u%�<lߵ-�n>PZr��{���ܥ*\��b)��17�6��K�dG��w.�p�wǈ$�*b�]�l_8n��R�Lh�m�9Z��1cٙ�z'(T-� ���"P��u�/����M�3$��X���������Yle�,�-Fee�^���bG���EhY���J5��`պGY5�G����������3�XM[a�!�w|8�߀^<ӵ�v ����q��t-̭e2��W��t:h۠Cw����aN����έx�W��������Ymg��&1�xS40��/�+�c[��
<�Iޘ�+�z�W�,�l�����f/�K��!�c���A�`����ȺU~S6��.e�*��x\26��?(�E������9�A�n�y��Q~O%�}_���Cu�.<<[ϸ�ߺ)�/F1?��mw���,$�?tV2�61��Z�5��b���G3ʶ��K�4�l�r�h��q��<��9��>�q+9�K�&���������>|�З�7�����m�p}�iٲ{�K�4�l5���f�m�0�z�P�Y1 �K��v�|)�f���/޸���!�.n��'������0ҭ���{`7PI&[#v�������}����V�ҹnŕ��,�u��z�~I��t����LKmfbH0%����&����Փk��$S`���;��ʘxG3����c�;��Pw}@gԉ�:2�i�� ���gj���@�jh�0�`��)U�Y;׏��+|����^��91��_��,�w3����F��_��@�r�2�)f3kgL=��rغ��W�A4����>r���2�~����:�`P}������,jE����
�Y�g�nå��/ ���:n2��@�Cf=�VV��	K4fl�[4�����IYW�h�����׾��J�*E ��m��� ����,ܘ�?���S��Q��KC0�\ex�����,\����fR�*S�`��Rx��暭�>qk�`�����I�|�;EHF��f���-����fq�4O������_�3�[�W�w]|o�?�f��<�����m�S'��(����E'��~Ѽ�j�Òl�sZ k
��e'5)���A/�Oz�4	�<j��e7pXo�\I��瀅�d�,��cm[VO0�;�,b�_>��Z.,H������t��w������EI-S� ��7���%n&lH�|T�ύ#�v��i����+����z{�+i����}���6����H�n������jx����ԭ���.w3aLY��E��5DH��˷i>��owtb�S�,0�5�W��2�i6�5`�q�_�t��V���ҲxF�5�lPʳW�O��#��:�I��2�����{����Z��T��>E��M���!�� D�'�?���0X��z�3,42�s}�vg�<`�f��_J�4�Y>�Ne>�7�~f����- E7%��(5�lzIZ|���]��#�aagJ�z�S����w��xO��?Y�ͯ�{��0��CL��pqB���0�H<��q�P͢�g��\^-~[��,���+����h?��
�c*�?���1Mc�/Ԝ)���\7-���=^3B��-�6Ӵ*7��W⼁�$v�W�y� �����f�M��Ts�ֽ��`�״��Kn���yg�H��F�����;��<�C�e��	�N�X���{�q[c�@��E�w��51{��tu�~�m����,l�� �{k����#�@��q�~�L�(Xr�t�8������e��94&�Ϳ���=��Kͽ������4��'��[�z�o
�eJtʶh`m�}��h6ZP[wl�=P�/r�����4�c��1�a�u��\]�˷����&�s�,1�s��d�iMlʋX���h��A���д
oW-/��5�;�£!3Cm��^�n�����Z������O�yj�qKO=��j���Yp��m��'��C�g��ݠ��|�0�c��W��,�� N��FsYj���,���}�r;>������I�2T̴�s�؟4�ylS���S��x��s虉k{���h�9ZcR� ��~���vf��U��0=L��c;�����}l+�g����jTӗ{BC=��ɬ�|n#�Hg�$�7���a�O�7�x �攍��3g�n��.��[���8sf^�m���n����_���h�n!��j���f�l�%�z���D�ކ���]��=��{�t��'�alAؘ0���TA�� v)��M9	A�-8qi�h�$����f����p�&��Ǘ���%��|�����{Dj2��M��(l'E�3(a��Ox�B2��<#�3�����z� ��0F@v��t�����-u�*2���B��{8�y;}�A�A�H��:e�zZV(��2Y��!w\�Cq�P��l�����KRs�*7R�w�Ak�5왙=�{մ��c��^lQj?��!9:���A�H�ږ+�]G		o'_>vA޲g��	�ֶF�YG:7Y�Wd4����,uc�a#i���~���m�H3]��ͽ�`xd�4�*<���=�m�М�O���:��h���
���bg��QHƽ�Yq�q�Dgl����HY]�G�U�<�b�	�<��$�@�C�Q��7�n�fRu�� ��|T���	�U����1���E�~_�,@��bM�,(_"���i�Hl�O �=��m^uGj#�OxK	٨����3��1 �W8�xwC��u�r�]%P���٭T��24�C���v�C��^XJA��q�ƖJJ ��<qh���3��p#G6 <Ȁ(,���E#�q��%_Z�D�:J�}�Gu�)��I�./�%����׼��aOFJ�v������s]a�\z�	�D���d�^��wudw?�O�0�܎<�<;�8�������n�O��&WZV̈#9\�.i����7P�~'o�@�ޢ����J�7 '��O��7�A	rQ' <��E�#�=xc�˹t��6� XTwN_��-.
(6� ��LzA��O$3#�i1C�|ʅ td=AA�-�#��'N�dZVz��ͣ�[�,���O��d@E��(�8ȅ�w�P��hl���Z�J
�B6 /�`��SR��B��D�ړ�)yW��E�� ��*��P"��e�y<����C�0��?ur�,mj��E��@�';�1ߊ��e[a�s}1�N����N��Η]�{�-N]R�ë/�h�hd���XS['�(����
�YJ�6E������ŰR�mdޫ�~�A̢b�2�e֔�	]��P�a>Hӎ    �!y�`{��,	�N"�`ȴ)$9\�ه$M�H^�b�K7M���Q��>�\����u�;f��Ia&؋�=�;/Hg��s�ц�^��F�Mw�b�~�2~�Kٻ8c����Nv5z��7�:�m�0� I<S3����L��`Ǎ@ ��`z��ËU�8����W��h@���PTo>�Ia�йMp��<����P(�͔_��X���24�d��N��U���eϬX:o@j&��2)3C�x���@KT��JR'�,�^:qy�ɋl#m	C^�vf�'�ۨQ�y0���ȹ"��\0��j�W�����eم��y�����t���3^
ܚifqM&�~:iŰ��b>�,�=-�˴�{����,7e���u�^�(9 U.�V����s�����.�G�hN�o���`�m�zcp
����lp�Ơ�#�L���Q�<+˟*I0zi�<k@H�ĳ0��-�N`�U�C�^�<��韰F[Ũ:&Ke����v�"�&��ɠ���^�^Es��}H9fu$Ӧ&F"y��8���ђpP���(I�#
�lA���4p�F"�z�y� :���3Q�w	�����#�iJ����9�ć<2M	�����o�Y�qsP�k��
�V����Շ�wۘ��G���$�g@N�ȧ��a�J�����P��py���dY��h�b�#���+��E�IFưp�y�����18D��1�jK4����g<�Ȧ��������Pb(�VLV�۬�YG�m�|��D�CW�b�g�uX`BA�N��2�C2k�A�n�C�K`#�u�N��cDf��;��L+%XO.�x�ރa-'b|�!P���g�1N
@��T^��%�����wSouV�gc����_C�����"�A�ާ���b0Y�$�ּ�ww^��pL�f	@��d�u]�b�$�|/�k�?!����mPYΜ���3_�0�Z?]���8ϲ]��K�47�3'�(e�2�����E;}��Bǋ;;�[Dy��u�lY��| �f��z��D��cW2��������B-��8�89�yF'!�3�/�?��Gg�OHV�� !ml݂d	@Fa��F�4��]��-Ɖ�V�����29
�x*uu<v�Y��c@`�)��뀝s}���j���f;��˺O`q�}�_J���"~2ß�V9p���"���^
�i��u��#IL�#j����ܠu�2���1U����Hm�L�cp�;VY�K4e|����Tւ��LJL��U7�ef��T�� T���dA�a��%l�Ǘ�5f��ے@)((֍�Pü�O�h@8f |�1�!�՛:�
>x��S�7j<2����x��[#,4�"���RZ?A��b��tX�!�[PeA &z��P����4�n�왁S!'���Kx#�6����^�Fh�	i��𛯻T��p�0 �a�S�8��dr��H8M|�$Й΅�@��ԓ��� ����R�@Q䔓�".�63�i5�r����I��%�W�:��\�9z��{��D�Oa�(r x�M����)��G2��e@�P���_���wh%Ϝ���A-EC(�O�6��7�b8�P5�&���/���3���@5
"��2S������� ���W�IZ���@��2c��*ʏ��$��eQ���M������f��Z=)>�m/�~Rԇ	�<d低*�Rt�VM��U�����a�Z-;:��Rt�E�yg=�a?�o���u�� Vn���U�lф��\�Bh�E��ݩr�M�}gp�K�69'O�?�@Dq��]/�	Z�u���a^X�jg=l���f��;U�79�W�t�)���5+v�����E;ٹ�P��n��?6���7�����sK����橮_q2���G��3��T�	���3O�ļ���	�Aoh-.v�̗� ��=��	���w��RM��r)jôD�K^pp1}����U␈1f`\��B�֍�p��h 0ce8!>�e!o�ϋq.#Z W�����*/D��8.�ȁý��c���I��O��l�j]�+�<i��n�^�7y��4�s��rY�st$�ì0���:dvg�����F$�����.k��Ůj�2[kh�E[,5d$�Ef���
��eV��0���~cߗe~P�*��Mq���\j%
�Էv�G%���� �r� R�W"�9�s���a���s.w�h`�k���=�,�S`%������K�sw�hJ��rh�?;�IVS�.r���a����oZ/$�t{��3�k���z�A���E��x�v7l�eq���9�f��B��bE,��sw�ŕ��?�Xr�H���z�0����n�˶�D9ռƋ�n�n,�yA��S����(��V�;b�6�����}`��Ea�a��@�1負|�Y2�����_�Tß��U����A��4�%�AP��1I�d�f�I�/Z;K��A�Q��ym+�9���nss0l�ȳ��C��� Y��K�t�λ�S��^q����y�C��}�p��vi�y����[0|�^�ˑ�~YS~>�W _���pAos����i��� D2�v� wP��{�~��u��x��o}S�C�s�=Dv�d�	�`x�&3��y�����������}i�]�������XdPN����>��m�Ę��>�����"X������-:�Z{,L���>�y���E�%����HZ��nvR��'�	�z��Ηں4�}_���[3�<�Q���i6��W�w�	��I���;T�-�_l}B����IsS�$�f�7z�{��B-Q���:ߎ�7�r������@T�����mOw�q	�hKoN�J�o��4�F��/v�pY�G1Ş��I�e�2XM�+�[��� 'Y^��,s{g'�zT�mNBQ}mq�#�.Ng�fI_�A4ٯy�m�W l����K"ݲʑ7�;�ϩ�$3�KL��^�fJ\ؐu�O�;��k�m��A�I�NS������7T��Ξ� �ΰ�?��2�i�:$�gC3��V�%�GR4g���%��nWx�ޝk�'�������;�nS��kmݣ�;vAi0�&5��;=]jV���������ޜ9N@<�v;O<S�z���MnIհѫf�A4�r���Lu/��cp�!��6���-o��u� ��$s[��6���a�܌h?��1	4i�M��Q��lɡ-+6gb��uy͟5.�R3��F^S�e��^qZ�^���I��+@�ԧ�f#iP#�8_�ICm� Ҝ!��XɃ�XE����h��B�4�1_�'�͒��.	�lH1��3m)��@�񍢆 ���t�H��a'2Y�24=�W �cve��m��,e���&%�g���5�6�2�d�B�X�{���x�l�!��g`���7:�[�M2\�5+4�{�I� ���2���F�<��0��Ӱ>)���7C�a�Wg�r<�����Uߣ���G�&�����z*��V1 �N�	L�k��QP�A)��}��=z�2O{zͣ���U����K��Ď�eţfpW�k��V/̀�g�8�	�G41����$�jل�A�b0�f�G1BG%5�С�2-���Iʕ��"µ�zuy;�	�<�ֈ���3�(�^jhL2��|�Q{�CC��?�zS���>�K_k�YB60F>�,�s�A�Jv�,Tt� #k���D-qG֟�������?��ܸ�(8�H(���ץm�W)��ޖٌ�4<��s�����R��oס?"^6g5� ���[Sֵ�b@�����#2l�S����x]8�Gҙ��|/�xj�R��A���LL7��Hז=I0as��	���ᲃ�l���"�(���.|�`��,�2�&�.2�������~�2_�ۅ�[�T(���*6jw!֋��P�)h*��l۪�ؼ�+8����B�N�1��������_פ�ȕ%.&&
:e�Q��z��U��HG�A�7���Q}َAs�p6/)�	<P@XR% 2y�P�O �   �Z7]:��􎬾�y+o{]J�^�E�����I�D9�8V+�2F�+#܋$˼)�a~4�UeP�?�f��<�"(��c�.�Umw�v2�I��O�Ç��9��Y5�*3�z�*C,���O`Xb��j�����t����7S�T�U��Wz�K����D�V,j�EB[_��� )(m���p<A\x�@K�
+�N���	��`�@n��ɲ0E��#�#q)���I����w������      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     