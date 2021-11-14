PGDMP     -    /            
    y            Stock    14.0    14.0 $    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    16853    Stock    DATABASE     R   CREATE DATABASE "Stock" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "Stock";
                postgres    false                        2615    25370    stock    SCHEMA        CREATE SCHEMA stock;
    DROP SCHEMA stock;
                postgres    false            �            1259    25380    company    TABLE     �   CREATE TABLE stock.company (
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
       stock         heap    postgres    false    5            &          0    25380    company 
   TABLE DATA           T   COPY stock.company (cid, cname, cowner, yield, pe_ratio, industry_type) FROM stdin;
    stock          postgres    false    211   V(       ,          0    25447    deal 
   TABLE DATA           \   COPY stock.deal (company_id, ddate, open_price, close_price, volume, high, low) FROM stdin;
    stock          postgres    false    217   D)       +          0    25435    ema 
   TABLE DATA           Q   COPY stock.ema (sid, company_id, fast_line, slow_line, loss, profit) FROM stdin;
    stock          postgres    false    216   �2       %          0    25371    investor 
   TABLE DATA           B   COPY stock.investor (iid, iname, acct_no, pwd, phone) FROM stdin;
    stock          postgres    false    210   3       )          0    25411    kd 
   TABLE DATA           P   COPY stock.kd (sid, company_id, threshold, kd_length, loss, profit) FROM stdin;
    stock          postgres    false    214   $3       *          0    25423    macd 
   TABLE DATA           R   COPY stock.macd (sid, company_id, fast_line, slow_line, loss, profit) FROM stdin;
    stock          postgres    false    215   A3       (          0    25399    rsi 
   TABLE DATA           R   COPY stock.rsi (sid, company_id, threshold, rsi_length, loss, profit) FROM stdin;
    stock          postgres    false    213   ^3       '          0    25387    strategy 
   TABLE DATA           I   COPY stock.strategy (sid, budget, creator_id, strategy_type) FROM stdin;
    stock          postgres    false    212   {3       �           2606    25386    company company_pkey 
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
       stock            postgres    false    212            �           2606    25454    deal deal_company_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.deal
    ADD CONSTRAINT deal_company_id_fkey FOREIGN KEY (company_id) REFERENCES stock.company(cid) ON DELETE CASCADE;
 B   ALTER TABLE ONLY stock.deal DROP CONSTRAINT deal_company_id_fkey;
       stock          postgres    false    217    211    3463            �           2606    25442    ema ema_sid_fkey    FK CONSTRAINT        ALTER TABLE ONLY stock.ema
    ADD CONSTRAINT ema_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 9   ALTER TABLE ONLY stock.ema DROP CONSTRAINT ema_sid_fkey;
       stock          postgres    false    212    216    3465            �           2606    25418    kd kd_sid_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY stock.kd
    ADD CONSTRAINT kd_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 7   ALTER TABLE ONLY stock.kd DROP CONSTRAINT kd_sid_fkey;
       stock          postgres    false    3465    212    214            �           2606    25430    macd macd_sid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.macd
    ADD CONSTRAINT macd_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 ;   ALTER TABLE ONLY stock.macd DROP CONSTRAINT macd_sid_fkey;
       stock          postgres    false    3465    212    215            �           2606    25406    rsi rsi_sid_fkey    FK CONSTRAINT        ALTER TABLE ONLY stock.rsi
    ADD CONSTRAINT rsi_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 9   ALTER TABLE ONLY stock.rsi DROP CONSTRAINT rsi_sid_fkey;
       stock          postgres    false    213    212    3465            �           2606    25394 !   strategy strategy_creator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.strategy
    ADD CONSTRAINT strategy_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES stock.investor(iid) ON DELETE SET NULL;
 J   ALTER TABLE ONLY stock.strategy DROP CONSTRAINT strategy_creator_id_fkey;
       stock          postgres    false    210    3461    212            &   �   x�]�mJ�@��ϓ�,;��n�a�EJ��؊H�"�!���%E/�ٗ[��G��3BJ���}�:�ٔ~Z�r�8*B3)��3�3��6�2q�Uv{�o+p��<f}7Dj����	
�K�W��>����wI%�����ow�oa��k��T0��-6�G�?��I
�2���ףv26������:�ՆL���t()�L �}�w����!�E��P�      ,   �	  x�mY[���n�e&��r�����EΉ0�WZH蕢X�}�1����R�Em�����������$f����V<��ƴ]����cf��{œx fԻf�O��n�\�=���4}0b�g-���w���h�_�D��}�]���;�[M���YaY.
�_9���Rl��E�>G�Jmی3^�'�� ������(�Ď<�պ�{m�(���h��*�$��h���S'M0#}�rVƬ�����kI��x��/��i�	�d�5�p�3��x� �,��2ܒ��0{��2�{.����m����%C[<�A����^:��O���(��o9m�H=#�BwOD�1��q�g��� ���QIKM 3_�(UPN��Y�?�keV��	���i�z�o`�>�"��]~w�V��Ct�`�b�8_tE�X�{�SV�Z��L�e�r	3�V����vd�T��`�Ls	j!�4�2������en��\��-��w��}d���]���=EÏ��)*b(m�-��ٗW׏P�/^��)�7�G}��Q^f{�1Q����S���&EԳ.����Ȱle�����T�阀���a��J�FLK�v��a�CAg��ːc���(���hV�3�YU�+��j�`���ƪ�>R����UĎ��lN�{�/���'!,�
*ݪD�N�<˓'�,���/9����BErrI�Mk��_����CHGx�Z-����[5�]ݭ��Q�,�t�l����r���`<4��y-����Y{�
���1ZiC_��T#��Bn5����rg�nU܌*���x4:`Z�`bq��tJ�3dl,3¾�_�����/�iȫ�u��̦qJb�;������M+��SO�}�b���x�G��:�g.��&�Z@:3���p" �4͟E��Ym�JW��������e&��2>	�=F4��2��f�����9�%i�?w�U ��©A��^Ua��e�������J� ����h�^�H��c)��1���ʆ��	:E1[��H�4�ԑ3b�D9� �W�߃��r(%��V��U���]���$M$���o6/����ﯦ�09�?�s�{sб�۩h�)6~a�C	�P;$�����;�*�u�(�Z7�Cz�t�2�h`�T@�ٛF�;00�GR%��Z�x�H�T4ȩ��K� ��o��#��L����ۼ1�>ӚN�n#���S#������J���&�[C`8D�Cs��&����g�r��o��׮Э}�ͣGP�YS]M�2��4����'�sLߕb`W�WMly�����������{}J"!�?����ya)�^ǳ��'���݃>K�)w����4���-'@�Wz�5�������b��r�|qz��Ψ3�zX&�0�s���n�0��=�4�r.H{����1�:�ɹ2d�|Ɉ9�
�_9.Й��zz�P�=���1
�a:�3qM���͋c��G�ϗ�r&̠g�3qد�ι
��^�|1�\�,�'s��,{��$wٵ��o �����W�d��,�uc��8�,�gȠ(誈�kۜ�s��9^��
��c��\�~��s�$u����3Z`�;~��u~b�ny���>?��W�Pg��8qh{������S������si=1�%��!������:F���� ~���}��'����G�>P�$&�)�2�.?��d��qa8�j|�8��Ϻ�=VU4��s1z�PN�����X�c챪�k��W���������Z���bݟE�u���Z_W��j=^d��T�ɸF`M�ܼ�#V�����S�����~��>N���>T8�m�x�rv���V�z�0^glO��׮�?y�!&�f���~���L���0��Ҫ��q����ψ�����������rF�ݵ�I�c/��_����E�����B9-�{츿zԗCտ����yq�wL˞b�gwǔ�Sy��r�=������M㓷�v��:�R��lBp>�Eg��Oi�W[�Q��8碣��!���+u������p{��6��"
.�w������_M��R�n祈�Ŀ?&���e��?sW_��n��3��9�ב�1���va`j����z���@$�ǋ�n�9_	�zi@?Q�q�k�M�J	����KL�䦅@��x�#L+���N�^�&1������:zf��7�J�x��b��/��饳<{���C�.�k�]���r��N�A���Ƚ�����3Eb�:a�ΠOٛ�k�Y�_fk�/R�q�3~�M�m�����߁�nhǅV���G��+%g�`�$�-�_�.�SŤI�=O�i���rL����IO�ƿ�+QCul�
��KT�����Mj��x����5�EK0��T4��c�8�\-� fջy�⫉'�#�#:�JK�o�p�~�Fa�n��i����߿��s�I      +      x������ � �      %      x������ � �      )      x������ � �      *      x������ � �      (      x������ � �      '      x������ � �     