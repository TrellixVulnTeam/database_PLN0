PGDMP                     
    y            Stock    14.0    14.0 ,    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            B           1262    16853    Stock    DATABASE     R   CREATE DATABASE "Stock" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "Stock";
                postgres    false                        2615    25005    stock    SCHEMA        CREATE SCHEMA stock;
    DROP SCHEMA stock;
                postgres    false            �            1259    25015    company    TABLE     �   CREATE TABLE stock.company (
    cid character varying NOT NULL,
    cname character varying NOT NULL,
    cowner character varying NOT NULL,
    report bytea,
    industry_type character varying NOT NULL
);
    DROP TABLE stock.company;
       stock         heap    postgres    false    6            �            1259    25094    deal    TABLE     d  CREATE TABLE stock.deal (
    company_id character varying NOT NULL,
    ddate date NOT NULL,
    open_price numeric NOT NULL,
    close_price numeric NOT NULL,
    volume character varying,
    kd numeric NOT NULL,
    rsi numeric NOT NULL,
    macd numeric NOT NULL,
    risk numeric,
    week_ma numeric,
    month_ma numeric,
    quarter_ma numeric
);
    DROP TABLE stock.deal;
       stock         heap    postgres    false    6            �            1259    25075    ema    TABLE     G   CREATE TABLE stock.ema (
    sid integer NOT NULL,
    loss numeric
);
    DROP TABLE stock.ema;
       stock         heap    postgres    false    6            �            1259    25106    foreign_inv    TABLE     �   CREATE TABLE stock.foreign_inv (
    company_id character varying NOT NULL,
    deal_date date NOT NULL,
    fbuy character varying,
    fsell character varying,
    fnet character varying,
    fholding character varying,
    fholding_ratio numeric
);
    DROP TABLE stock.foreign_inv;
       stock         heap    postgres    false    6            �            1259    25006    investor    TABLE     �   CREATE TABLE stock.investor (
    iid integer NOT NULL,
    iname character varying(10) NOT NULL,
    acct_no character varying(10) NOT NULL,
    pwd character varying NOT NULL,
    phone character varying
);
    DROP TABLE stock.investor;
       stock         heap    postgres    false    6            �            1259    25051    kd    TABLE     t   CREATE TABLE stock.kd (
    sid integer NOT NULL,
    threshold numeric,
    kd_length numeric,
    loss numeric
);
    DROP TABLE stock.kd;
       stock         heap    postgres    false    6            �            1259    25063    macd    TABLE     H   CREATE TABLE stock.macd (
    sid integer NOT NULL,
    loss numeric
);
    DROP TABLE stock.macd;
       stock         heap    postgres    false    6            �            1259    25087    market    TABLE     �   CREATE TABLE stock.market (
    mdate date NOT NULL,
    mindex numeric NOT NULL,
    fluc_amount numeric NOT NULL,
    fluc_ratio numeric NOT NULL,
    deal_volume character varying NOT NULL
);
    DROP TABLE stock.market;
       stock         heap    postgres    false    6            �            1259    25039    rsi    TABLE     v   CREATE TABLE stock.rsi (
    sid integer NOT NULL,
    threshold numeric,
    rsi_length numeric,
    loss numeric
);
    DROP TABLE stock.rsi;
       stock         heap    postgres    false    6            �            1259    25022    strategy    TABLE     �   CREATE TABLE stock.strategy (
    sid integer NOT NULL,
    company_id character varying NOT NULL,
    creator_id integer,
    strategy_type character(1) NOT NULL
);
    DROP TABLE stock.strategy;
       stock         heap    postgres    false    6            4          0    25015    company 
   TABLE DATA           K   COPY stock.company (cid, cname, cowner, report, industry_type) FROM stdin;
    stock          postgres    false    211   	2       ;          0    25094    deal 
   TABLE DATA           �   COPY stock.deal (company_id, ddate, open_price, close_price, volume, kd, rsi, macd, risk, week_ma, month_ma, quarter_ma) FROM stdin;
    stock          postgres    false    218   &2       9          0    25075    ema 
   TABLE DATA           '   COPY stock.ema (sid, loss) FROM stdin;
    stock          postgres    false    216   C2       <          0    25106    foreign_inv 
   TABLE DATA           h   COPY stock.foreign_inv (company_id, deal_date, fbuy, fsell, fnet, fholding, fholding_ratio) FROM stdin;
    stock          postgres    false    219   `2       3          0    25006    investor 
   TABLE DATA           B   COPY stock.investor (iid, iname, acct_no, pwd, phone) FROM stdin;
    stock          postgres    false    210   }2       7          0    25051    kd 
   TABLE DATA           <   COPY stock.kd (sid, threshold, kd_length, loss) FROM stdin;
    stock          postgres    false    214   �2       8          0    25063    macd 
   TABLE DATA           (   COPY stock.macd (sid, loss) FROM stdin;
    stock          postgres    false    215   �2       :          0    25087    market 
   TABLE DATA           T   COPY stock.market (mdate, mindex, fluc_amount, fluc_ratio, deal_volume) FROM stdin;
    stock          postgres    false    217   �2       6          0    25039    rsi 
   TABLE DATA           >   COPY stock.rsi (sid, threshold, rsi_length, loss) FROM stdin;
    stock          postgres    false    213   �2       5          0    25022    strategy 
   TABLE DATA           M   COPY stock.strategy (sid, company_id, creator_id, strategy_type) FROM stdin;
    stock          postgres    false    212   3       �           2606    25021    company company_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY stock.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (cid);
 =   ALTER TABLE ONLY stock.company DROP CONSTRAINT company_pkey;
       stock            postgres    false    211            �           2606    25100    deal deal_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY stock.deal
    ADD CONSTRAINT deal_pkey PRIMARY KEY (company_id, ddate);
 7   ALTER TABLE ONLY stock.deal DROP CONSTRAINT deal_pkey;
       stock            postgres    false    218    218            �           2606    25081    ema ema_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY stock.ema
    ADD CONSTRAINT ema_pkey PRIMARY KEY (sid);
 5   ALTER TABLE ONLY stock.ema DROP CONSTRAINT ema_pkey;
       stock            postgres    false    216            �           2606    25112    foreign_inv foreign_inv_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY stock.foreign_inv
    ADD CONSTRAINT foreign_inv_pkey PRIMARY KEY (company_id, deal_date);
 E   ALTER TABLE ONLY stock.foreign_inv DROP CONSTRAINT foreign_inv_pkey;
       stock            postgres    false    219    219            �           2606    25014    investor investor_acct_no_key 
   CONSTRAINT     Z   ALTER TABLE ONLY stock.investor
    ADD CONSTRAINT investor_acct_no_key UNIQUE (acct_no);
 F   ALTER TABLE ONLY stock.investor DROP CONSTRAINT investor_acct_no_key;
       stock            postgres    false    210            �           2606    25012    investor investor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY stock.investor
    ADD CONSTRAINT investor_pkey PRIMARY KEY (iid);
 ?   ALTER TABLE ONLY stock.investor DROP CONSTRAINT investor_pkey;
       stock            postgres    false    210            �           2606    25057 
   kd kd_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY stock.kd
    ADD CONSTRAINT kd_pkey PRIMARY KEY (sid);
 3   ALTER TABLE ONLY stock.kd DROP CONSTRAINT kd_pkey;
       stock            postgres    false    214            �           2606    25069    macd macd_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY stock.macd
    ADD CONSTRAINT macd_pkey PRIMARY KEY (sid);
 7   ALTER TABLE ONLY stock.macd DROP CONSTRAINT macd_pkey;
       stock            postgres    false    215            �           2606    25093    market market_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY stock.market
    ADD CONSTRAINT market_pkey PRIMARY KEY (mdate);
 ;   ALTER TABLE ONLY stock.market DROP CONSTRAINT market_pkey;
       stock            postgres    false    217            �           2606    25045    rsi rsi_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY stock.rsi
    ADD CONSTRAINT rsi_pkey PRIMARY KEY (sid);
 5   ALTER TABLE ONLY stock.rsi DROP CONSTRAINT rsi_pkey;
       stock            postgres    false    213            �           2606    25028    strategy strategy_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY stock.strategy
    ADD CONSTRAINT strategy_pkey PRIMARY KEY (sid);
 ?   ALTER TABLE ONLY stock.strategy DROP CONSTRAINT strategy_pkey;
       stock            postgres    false    212            �           2606    25101    deal deal_company_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.deal
    ADD CONSTRAINT deal_company_id_fkey FOREIGN KEY (company_id) REFERENCES stock.company(cid) ON DELETE CASCADE;
 B   ALTER TABLE ONLY stock.deal DROP CONSTRAINT deal_company_id_fkey;
       stock          postgres    false    211    218    3471            �           2606    25082    ema ema_sid_fkey    FK CONSTRAINT        ALTER TABLE ONLY stock.ema
    ADD CONSTRAINT ema_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 9   ALTER TABLE ONLY stock.ema DROP CONSTRAINT ema_sid_fkey;
       stock          postgres    false    216    212    3473            �           2606    25113 1   foreign_inv foreign_inv_company_id_deal_date_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.foreign_inv
    ADD CONSTRAINT foreign_inv_company_id_deal_date_fkey FOREIGN KEY (company_id, deal_date) REFERENCES stock.deal(company_id, ddate) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY stock.foreign_inv DROP CONSTRAINT foreign_inv_company_id_deal_date_fkey;
       stock          postgres    false    218    219    219    3485    218            �           2606    25058    kd kd_sid_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY stock.kd
    ADD CONSTRAINT kd_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 7   ALTER TABLE ONLY stock.kd DROP CONSTRAINT kd_sid_fkey;
       stock          postgres    false    3473    214    212            �           2606    25070    macd macd_sid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.macd
    ADD CONSTRAINT macd_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 ;   ALTER TABLE ONLY stock.macd DROP CONSTRAINT macd_sid_fkey;
       stock          postgres    false    212    3473    215            �           2606    25046    rsi rsi_sid_fkey    FK CONSTRAINT        ALTER TABLE ONLY stock.rsi
    ADD CONSTRAINT rsi_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 9   ALTER TABLE ONLY stock.rsi DROP CONSTRAINT rsi_sid_fkey;
       stock          postgres    false    212    3473    213            �           2606    25029 !   strategy strategy_company_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.strategy
    ADD CONSTRAINT strategy_company_id_fkey FOREIGN KEY (company_id) REFERENCES stock.company(cid) ON DELETE CASCADE;
 J   ALTER TABLE ONLY stock.strategy DROP CONSTRAINT strategy_company_id_fkey;
       stock          postgres    false    3471    212    211            �           2606    25034 !   strategy strategy_creator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.strategy
    ADD CONSTRAINT strategy_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES stock.investor(iid) ON DELETE SET NULL;
 J   ALTER TABLE ONLY stock.strategy DROP CONSTRAINT strategy_creator_id_fkey;
       stock          postgres    false    3469    210    212            4      x������ � �      ;      x������ � �      9      x������ � �      <      x������ � �      3      x������ � �      7      x������ � �      8      x������ � �      :      x������ � �      6      x������ � �      5      x������ � �     