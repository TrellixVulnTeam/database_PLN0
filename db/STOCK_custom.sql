PGDMP     !                
    y            Stock    14.0    14.0 $    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    16853    Stock    DATABASE     R   CREATE DATABASE "Stock" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "Stock";
                postgres    false                        2615    26698    stock    SCHEMA        CREATE SCHEMA stock;
    DROP SCHEMA stock;
                postgres    false            �            1259    26699    company    TABLE     �   CREATE TABLE stock.company (
    cid character varying NOT NULL,
    cname character varying NOT NULL,
    cowner character varying NOT NULL,
    cyield numeric,
    pe_ratio numeric,
    industry_type character varying NOT NULL
);
    DROP TABLE stock.company;
       stock         heap    postgres    false    3            �            1259    26967    deal    TABLE     �   CREATE TABLE stock.deal (
    did integer NOT NULL,
    company_id character varying,
    ddate date,
    open_price numeric NOT NULL,
    close_price numeric NOT NULL,
    volume character varying,
    high numeric,
    low numeric
);
    DROP TABLE stock.deal;
       stock         heap    postgres    false    3            �            1259    26709    ema    TABLE     �   CREATE TABLE stock.ema (
    sid integer NOT NULL,
    company_id character varying NOT NULL,
    fast_line numeric,
    slow_line numeric,
    loss numeric,
    profit numeric
);
    DROP TABLE stock.ema;
       stock         heap    postgres    false    3            �            1259    26714    investor    TABLE     �   CREATE TABLE stock.investor (
    iid integer NOT NULL,
    iname character varying(10) NOT NULL,
    acct_no character varying(10) NOT NULL,
    pwd character varying NOT NULL,
    phone character varying
);
    DROP TABLE stock.investor;
       stock         heap    postgres    false    3            �            1259    26719    kd    TABLE     �   CREATE TABLE stock.kd (
    sid integer NOT NULL,
    company_id character varying NOT NULL,
    threshold numeric,
    kd_length numeric,
    loss numeric,
    profit numeric
);
    DROP TABLE stock.kd;
       stock         heap    postgres    false    3            �            1259    26724    macd    TABLE     �   CREATE TABLE stock.macd (
    sid integer NOT NULL,
    company_id character varying NOT NULL,
    fast_line numeric,
    slow_line numeric,
    loss numeric,
    profit numeric
);
    DROP TABLE stock.macd;
       stock         heap    postgres    false    3            �            1259    26729    rsi    TABLE     �   CREATE TABLE stock.rsi (
    sid integer NOT NULL,
    company_id character varying NOT NULL,
    threshold numeric,
    rsi_length numeric,
    loss numeric,
    profit numeric
);
    DROP TABLE stock.rsi;
       stock         heap    postgres    false    3            �            1259    26734    strategy    TABLE     �   CREATE TABLE stock.strategy (
    sid integer NOT NULL,
    budget numeric NOT NULL,
    creator_id integer,
    strategy_type character(1) NOT NULL
);
    DROP TABLE stock.strategy;
       stock         heap    postgres    false    3            %          0    26699    company 
   TABLE DATA           U   COPY stock.company (cid, cname, cowner, cyield, pe_ratio, industry_type) FROM stdin;
    stock          postgres    false    210   O(       ,          0    26967    deal 
   TABLE DATA           a   COPY stock.deal (did, company_id, ddate, open_price, close_price, volume, high, low) FROM stdin;
    stock          postgres    false    217   =)       &          0    26709    ema 
   TABLE DATA           Q   COPY stock.ema (sid, company_id, fast_line, slow_line, loss, profit) FROM stdin;
    stock          postgres    false    211   e       '          0    26714    investor 
   TABLE DATA           B   COPY stock.investor (iid, iname, acct_no, pwd, phone) FROM stdin;
    stock          postgres    false    212   8e       (          0    26719    kd 
   TABLE DATA           P   COPY stock.kd (sid, company_id, threshold, kd_length, loss, profit) FROM stdin;
    stock          postgres    false    213   Ue       )          0    26724    macd 
   TABLE DATA           R   COPY stock.macd (sid, company_id, fast_line, slow_line, loss, profit) FROM stdin;
    stock          postgres    false    214   re       *          0    26729    rsi 
   TABLE DATA           R   COPY stock.rsi (sid, company_id, threshold, rsi_length, loss, profit) FROM stdin;
    stock          postgres    false    215   �e       +          0    26734    strategy 
   TABLE DATA           I   COPY stock.strategy (sid, budget, creator_id, strategy_type) FROM stdin;
    stock          postgres    false    216   �e       �           2606    26749    company company_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY stock.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (cid);
 =   ALTER TABLE ONLY stock.company DROP CONSTRAINT company_pkey;
       stock            postgres    false    210            �           2606    26973    deal deal_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY stock.deal
    ADD CONSTRAINT deal_pkey PRIMARY KEY (did);
 7   ALTER TABLE ONLY stock.deal DROP CONSTRAINT deal_pkey;
       stock            postgres    false    217            �           2606    26753    ema ema_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY stock.ema
    ADD CONSTRAINT ema_pkey PRIMARY KEY (sid);
 5   ALTER TABLE ONLY stock.ema DROP CONSTRAINT ema_pkey;
       stock            postgres    false    211            �           2606    26755    investor investor_acct_no_key 
   CONSTRAINT     Z   ALTER TABLE ONLY stock.investor
    ADD CONSTRAINT investor_acct_no_key UNIQUE (acct_no);
 F   ALTER TABLE ONLY stock.investor DROP CONSTRAINT investor_acct_no_key;
       stock            postgres    false    212            �           2606    26757    investor investor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY stock.investor
    ADD CONSTRAINT investor_pkey PRIMARY KEY (iid);
 ?   ALTER TABLE ONLY stock.investor DROP CONSTRAINT investor_pkey;
       stock            postgres    false    212            �           2606    26759 
   kd kd_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY stock.kd
    ADD CONSTRAINT kd_pkey PRIMARY KEY (sid);
 3   ALTER TABLE ONLY stock.kd DROP CONSTRAINT kd_pkey;
       stock            postgres    false    213            �           2606    26761    macd macd_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY stock.macd
    ADD CONSTRAINT macd_pkey PRIMARY KEY (sid);
 7   ALTER TABLE ONLY stock.macd DROP CONSTRAINT macd_pkey;
       stock            postgres    false    214            �           2606    26763    rsi rsi_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY stock.rsi
    ADD CONSTRAINT rsi_pkey PRIMARY KEY (sid);
 5   ALTER TABLE ONLY stock.rsi DROP CONSTRAINT rsi_pkey;
       stock            postgres    false    215            �           2606    26765    strategy strategy_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY stock.strategy
    ADD CONSTRAINT strategy_pkey PRIMARY KEY (sid);
 ?   ALTER TABLE ONLY stock.strategy DROP CONSTRAINT strategy_pkey;
       stock            postgres    false    216            �           2606    26974    deal deal_company_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.deal
    ADD CONSTRAINT deal_company_id_fkey FOREIGN KEY (company_id) REFERENCES stock.company(cid) ON DELETE CASCADE;
 B   ALTER TABLE ONLY stock.deal DROP CONSTRAINT deal_company_id_fkey;
       stock          postgres    false    217    3459    210            �           2606    26771    ema ema_sid_fkey    FK CONSTRAINT        ALTER TABLE ONLY stock.ema
    ADD CONSTRAINT ema_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 9   ALTER TABLE ONLY stock.ema DROP CONSTRAINT ema_sid_fkey;
       stock          postgres    false    211    3473    216            �           2606    26776    kd kd_sid_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY stock.kd
    ADD CONSTRAINT kd_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 7   ALTER TABLE ONLY stock.kd DROP CONSTRAINT kd_sid_fkey;
       stock          postgres    false    3473    216    213            �           2606    26781    macd macd_sid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.macd
    ADD CONSTRAINT macd_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 ;   ALTER TABLE ONLY stock.macd DROP CONSTRAINT macd_sid_fkey;
       stock          postgres    false    3473    216    214            �           2606    26786    rsi rsi_sid_fkey    FK CONSTRAINT        ALTER TABLE ONLY stock.rsi
    ADD CONSTRAINT rsi_sid_fkey FOREIGN KEY (sid) REFERENCES stock.strategy(sid) ON DELETE CASCADE;
 9   ALTER TABLE ONLY stock.rsi DROP CONSTRAINT rsi_sid_fkey;
       stock          postgres    false    215    216    3473            �           2606    26791 !   strategy strategy_creator_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY stock.strategy
    ADD CONSTRAINT strategy_creator_id_fkey FOREIGN KEY (creator_id) REFERENCES stock.investor(iid) ON DELETE SET NULL;
 J   ALTER TABLE ONLY stock.strategy DROP CONSTRAINT strategy_creator_id_fkey;
       stock          postgres    false    216    212    3465            %   �   x�]�mJ�@��ϓ�,;��n�a�EJ��؊H�"�!���%E/�ٗ[��G��3BJ���}�:�ٔ~Z�r�8*B3)��3�3��6�2q�Uv{�o+p��<f}7Dj����	
�K�W��>����wI%�����ow�oa��k��T0��-6�G�?��I
�2���ףv26������:�ՆL���t()�L �}�w����!�E��P�      ,      x�e][���n�e*o�r����L	t"�{�]iJ!$���R�_NY����]�_O�O��Ϣ��
�+*��~J@%�_�)���������/7|���j�����[����W"3[���=#���U�C�%�Y�g{f@�f��o�gX���O�}���W�I���`r�ҿ�Pc�u۵n�`��J�gy���������Ԁ��ԥO�.��H���+���5�Xv���l��d�SG���وN��Gf�%�j��G���r/�!� �^`��'��ZJQNX��O<� ����73lOD(1mhS��S����}j�A ���5������v�6���>t{h�!+aB��ߢ}9Р��gݠ�C��ۓ ���S��tmB��_�ג�}=%А��TyQ�rҐֿ�X}�dt�I�<%�0��2�f��� ���jܨQ�=�� ��I���)-�����MjR��_��)�:��O����Z�&�C������[���)+�:�;C|VS�5��j	i{q�xj`A������j�_�h�QL��ћ =)O<p`�b�͒ �}�����E
�ei驁�`m}�\�A�؋=LT9��S�P��2�?J�� \4C�TT�޺R�B�.X��*�x�����n�?�H�.�"�W�����A�� 3���cs���r�88t3����� �W6J�>���Z�5���C�O��i=����<h�o#�
����ЀQƦif�%�A
m*�ִ�u��,t������`���ԗ������v�mldn���H`A�}5�؈ul�X�Zߺ�u,�gV�M7)��1Æ�e�շ���N�%�s3z�!y	t3�O5J=Ѐ�K�Qpzq�����g�ZQ��<#�ꋓ�����@5��9��?�g"`�g1���"Q�Eİ�F�֖_ZG�ay9_�Uks��3Z�A�:�D�-��`�{(8���6̄KX���3��;�j��B��.����}� �g� �9x#�?�gJ�%���G��h��|�d�;ǷJ����얮���+UM��\5�!�`����T��ͯ�R|Pj���`��� �X����3��N�;����ܭ3G�[�	���,k HHۃ�S�.��hH�DR#�6��@���r��PCV���}m���ذ.:�ֲ�&�������j�6Z������~�C�g̀��>��� �OJlj�����F�=5�Jpٍ�t�'��8���í��U���A����U���ր���9�Fแ���^��]�F])�a���,����L�:,C`�rK��T\��C���1L	T�$>�}l���}�S�H�#�h�����:�H $��!{�ڼ�@H���ZO���?"�w�9<͵??"�����F����%0����r�թ�+�H��>���W+d�ِ�G���X���W�{+�[׭<�R���+��٘�N{$����jQ��ځ���*�+�P<j.6NAm�2|E������̠W��^+�~�G��UA_�5p�\Ix-��\ ��:�M�����{�*���n�r��覄�@|�:�S@4���!����7�E�MT.%";�F,�!�P��@��U���|P��x{��xRd).�QV9�S�PJ�#57{0�}V\�#�w�Bb8�_	|X�X3���:�ӄ}V����L��5�w�]-a0Z�'fR�p�Z(e!7������v�~���Fc��˯ߝɛg�x��P�Xf�kV\��g)4Ž����8�����6L�=ີQ���rA{��<�ϞC�(Yj�C|�BByzr ����9|�w���#-��gZ��i����*�9�޷�Gr}A����]�d��^�>X��KFPoC�#-��y;9��^|@̘g� ���}K �s���Ϫ/w�]�a��ז�}䎿� �Q�7FA�8\s{��*��Ww^l 6��K�����#�YL��>(w^�ec(�� �k�����b)f�j�T���b.�ۍYܾ��z��S������q�������>�+��L��+�����6�?�>��������X�hF��v�����r��䱳��Z��j��H�c0m���T��f�<ցN��i���[n����HΕ�C�nq"��;N^�\��A~��^�%��/�\�;����bܛ�>gm��g�=���'�+q�0�����OA�}�(wL�9Q�}��."d��j���<�ޣ�j�2��wT����gPfA��/��G�<S�1N��������~�0Ơ����6���3����w-�������'�C���w��}`X��
|$s��qe8�=��s��!�uV\�=�)����ѹ���x�~��Z�G��\����{��TKR�����(��
Y*ow�.�<O�t~����'��,�.(���sg�%{ff�>��;D�ګ�.�����*+.U�_U\��sbr����vl
�����9>��N؟�v��|��Dj���|�ON��탺R�@
�|pЧ�пG;��g�lz�WC���1�x������ڞV����y�>�#�?m��W���s��K0����=Y�{D�ӿ#�xMm�o\�q�Kg����A_� �pZwpB\�{Ԏ�#@7��?��_��1i��@��@j
�'�x`��i]VA�w�А�݀�Y��E�Y�p�M��C���#F'�-��,[U:J(�Fl��ڼ�@�Շ���4�����G){�~~r�P���I��J(���f�>۫*�#x��lr>�ˁ�2���ځ�\�����A*U|��ǖ-U.�\���PyTΩb@�H4����Ӷ���"�Z?~Ϝܾ6�l����OU]6p�h����4�ŏ�j)�mR�P��L�Vt��*�:�_u���:;�=`;QD����U��H�%���D�֕���2C ����+`!�J�֏�3z�k
hH5��.^+Nn��S0P�u؟�nZJ���.�Z�)��s���Փk`K{G��$,��몯�a�`�mݗ$�����ü�������9�2���G�c�Ӵ��[�A�݅���~��Tn���BY������	nodݵe�B��8������'3�?�媆���P�x�ص>�Of�B�k���딨�b�+�ޢ ����[�D4������B׃�f��C����T����]�{
����ڮ�i]xmj�rs ���"���)�^���|�f��L濥׎.Ŏ����UO���e�w���V���jPj�B�6�Jx��f���:'���=p�f�S=G�p�ϒd}�j1�P�S}�Xd�F�R�$)�궎�{��^��V1����6����p�g�����\�hX���,�J��#���8��'lf��qӦ��ch�V͊�g
�rV"�Q�*L	�OuX�g}g����5��C�Y�γ�gVh5+M�1��n�m�M#�]Q��?�%���&���|��4x��:�!����X������%���g��|�\��t�մ��Q���P_a/B�Fj�f�������7d֖`�X+���*bߪu����a�����\�$�~�-��4��S��5np>���T�y� �UT�~�V�
`��~�Q��R ׳�kp�py��0��.7�s�C�,3�hH~J*7�#-��=�d�Zt~�PǓ��x-]I���tS��������a��i))p�κe��U����Z��m�������Vby�ӺJ`Ϣ�[�+�=m��P�u��|tA��AY.1�[���xKͻQv��� 0�=؏/���
Ƭ�۷w�OlX����qߺ����5x$��'��K�7��fJL$(w���w�n!�Sr
�q�(���%@����9�i����l������v#6oRxp��,�c��
m
�r�~ա쒹�`.�6�ڭ�U�'�K�X��k34C%�}r�����Y7�����,��ej_>�t/p�6��5�d    >����� ��l��G	�z�X{�ُ��O)�A.~׬g������ߢܺk���_�
��&�O4���a��Er��0�(����Q xr�|;�SJ���r�����_v�����lķ{�R��WQ�B�U����6�я�t5Z5���jb��`-X_[��?�އ2k�z�j�"m/�:�c����FA��.�h^�k���A�%�R/g�\�[0��b���rJ?4D��r[`�ĺ�5Rꦼ_Sk�Tx�Gy,�;D�*�)�-pi���n1��l��n�����)-���nBx��ƕ�L�p��h�A�i3!��9���!���D��m��ۺ	3��5b(�ʹ�bC����ͯk.7�a��u��ʼ��Ï����y�W��VO�E�z9ere^l�vxڸ��r�]l%��Z������u���G�f}]W�#@w> yY�?��ʸؚ�/�q�|p� F��َ��>�t�vlel�B=�������_1{�fV���`r�Oy��I��"s���lq��59�׿i�%s�G`���xU�z�â��XK�񁜆�i4U�#0�����@�SyF`��Y�Q̫�
?o۵���=HP�g`����Ӝ`��wƥ�p�����;�R�s�s����� ����;����y�j�s����v����Y��}�j� ��Xn�N�B�K� V�'9g6,d%�ΰp���V-�?$k���+\�(�|^�����;�µ�VX1��=���
�I��
�wمpDZ�9tL���mWA��30'�k���Th`M�$�:�P�(50��CC�k��]�1N��7���
��[R:�Q��+���Y�$����lo�0W�`���z'W�$˿Y�KS�}�wf��"%S���4��,8�ptN����&��4.��~����]�5�7tr8�z5����jZւZ߉��|aʤ��#Yb.dI��Mf�6����c?N ��W�];��l6DZ���S%�&�L,Xǂ5�Sy��;���uwc��dk��[l�C~%P&�:��;�^�����؜��n+4���m���-�ťB]i{��^GP���4�x	��׈Y%�>��x�����ᄢ,]-�Ps`��j}��@���zĀ�~�+�e�F��
�Wwj%�_��g*�KA��ΫdwƦ;��zgV�������2P�wv��z�w,}�;0�[ɖ�1_s�K��������;��-��V}\��;��M!^�H�*c_�l���$c``�ʰ�pX*ü� �9��Q�^���9�bf�*�Cg�t��󴣔�vJ(��ӿ�t}����|6��Ƶz�QČ~v_k�m Rc{�P�,~�!�\���3(�/V�B����zY�N��g�.	9��;{"���_(��R��ʍ��^�>������ֶ��^S�]��X֋��L�j�K|f)��)5�@lɞ�H:� �������'� Ȓ(2�mOO���kR�=�7ҁ���"]���~L1rQbI�=A-b,%���0jvY��[�H��~���>s�+�/��#+��rby�Y,���H�C�= �b���O:� :nh��,X1�|\*x����j��O�
]�l��y/n����b�t�^��%rs�
��_
� -�%*[Xq��:!{u�F(��&f�V2�NY=� {����Rs��=B+��zC����j����GR�������iڡ��*��]���i��r9)���ݠҤ�����Bi"�t��-&��d�SG`MM�nV���U�XK��>Tey�XK��f.+����e��*0f
�x�n6y��B��m��J��%��ڐqQ'�6�����V������dp6g��w4������ ��3�e��G���\���W�c�`��j�L�������2@%@�79�z>�6����p@�o�� ,os��zU�pz�\T~�������j٬�Yr��� �K �ho�#�����L���j�|��f0�T�C�2H~0���ŠoL5��WP�!�q�� �y�{�"�q��q��r��l@�M��.\���&e�#�q�������N˟��=�k�������+r�{ ��X����áF �(��W�Bg��Y�rU�b��U`�Ƌ�����x�!����*���Q�G���h�� .�Q!6����8�� j�ķ��K�=�<�u�.�<n���~�S9y�q����:4%�(����"`	��&�w�w����]�YZ�:�\�%�#<zuE��.��:����ΚO!J`���C.�K�2�j��.�Wo��L�b����|2�kC��`3
��r���T�]�� ?��X���9@I��om�%`?�b��7��^�Zԫ��G��;�P%����C�G �Cn�wWw�goԽk�r���|:��s�%0'���@%��N_�o�ox`.���YK �z�'�`J /����[	ܥ~�mE.��T�b��G	ܥS'�oEA�һzʬ���"���G.犒op:�r�D��V��{���g��Ö��_���� �lK��n|�zp�����=�U](��^�d	ؿw��������/x�`�����U[]��i�:�[�5l�2O����>.��/�����}$<�(;�șF�=1��\���[�I�Ap`Q��ʠ�B��^�������u5���	���Ol�B�0}R��|�ri�R�r?���4o�Q�5n��^�V��L���t�_���ѽ�N��or�|�9�~���x^�KNv(ǹf���;�Ω�_��ȃ��7|/��Q��=�߉�]�*9�M�Ãp�7��"wm��+`Ӂ���N�H7�m��{�B}pd��/P���.,3��*X�f��y��s��c��q�mR��m݉Ϛ�"�5����g�!0g�toe�)�yC ��71�t	�@��o�-A9����_l��|�g 1�K����W�3P��u�U���-+;�i+���,;kr���G���R'�����|U��W���	��gp_�S����U��z�ۏrg�ުg��۴���/�ŕ��kGˡ�u�<�J��u����������F?i�rJc��>�	b���65�� �N�S�d�@����Ȝm�O��%_�yi^ը�.8�}Uu��!OO����%t����@^*�)ժ����:�W�rq�֠l��]�?_,��u4��n�h���k93k���޷ܾ������W��c�Q���� k5�
�z���Q�+�Dc��K�J��RQ�qp�F�lᕈ�Ţ���4c�N	�i�|��Wv�������!jaف�#�T>�|/����w��w{��.�Ʒk Q�3G\L�%P)A���Q	�~jz�H\����h��q��ǖ����EZr`�ؘ�$�����@`�����U���|5D�qt�;�+G�%h��独_9�# ?�&��0��~��Z[��;��E�@�2=�ҝ����h�����N�؂�w�Y��h����y/������Bs�n�O�����\�e�J �았�Pv�H;�oY<��>Ymr�X�ٕ��u������ҶO��6
5P�^�sZ{B��@ٹ;r'�wg�H*�k� _��3��߶�y�[ �]O�Z��w��TK��K�Zth�=yQ����eE����w��xڗ?ͧ(6�N��R�cNLn����r��8&ɞ~'Yl����=`����Ƹ���{
K%!GɁ?��o���66=V�Z_����*70�M0���R{!��~���@_Z�uG�=�����;��{5��w\A�<�n�yz��Q�6R8pgӪ�~w����^�\G��{�������� vI�ܾz�=�[�e�YG���;����tA��ζ�wð��+ߥ��'�,L����;`b����~�\l=�W�z �L�*�L�n\?�{ /4p��a���S>���v���f{8�~�X�<�i���Y�ĝ`�5�~ހ9�_�wrE���Y�6�*8p�Z�X�x�;5�>'D�5�Om���0l�C�h�t�7p�����:��`�c��s�
�    :O�\�@��~�߼?�+0w�X�x�v���7-hB����;w��z�����^�Eh`m�25�w֩hW�,}��h���Rh ,m=3�6�Z�@Zj�3s�q����ѯ�|����L`���GZe�8�R�u����BҮ��#��W��&�?}n�����6����H�셧�I����4@[�����ר�#����~�T��82+{��9��_�C|�˼��l�e�ޑ�4�_`	����Ǽe-���؞���$�(��Y�c8���wޭ���{�4�%���Y�4p�n�S�Ei�1P����e����;m@e:p0c�#*�Q�&�Ϛ�@�5�_hh����oCs�������jf� �~����W�-`�a���z����a� .���ˁU��t�=��[7T�.y�S{+QR����ż��㵽��:�C	ԝ��uwm�tA`�q�V�.���5���z �u� ��J��*�"C�� [ b�����X�j�5P�v>�Z U � `'����Eh(�&7����V�̀S.�Ӭ���A?�<�P�\�_��.��'3�r���-��i�g$�+'0��V"��y� �P���q��+��C�X/j�uir�b���`hf&9�bB�k0�{]��( ?�*� ��=Ν�����rT�@��ؘ��h1d80�s�� \��,���C��-n)� 0��Nl�ª�$
��e��L��@�;Dc�mn9 �3�Xn�P��9��mn�l�пM���q6}D��++ؐ���xÔ~�{�*C�`R/���d�`~a�jX�X�bb�~�
��-p��"����-:*�8aY���?��������E��U�=��m�d8l��ֱi{`�4���=0� ��@��
z
J���_	*�~�bkD�`��Xl��h�{���l�1��:Uo��`�� /��N4� �Y�(ܔ!�p��4��<m�X�A�ȍ]�RP�
�l%b��p����t�dX��:	�e؝a��`7S;�U��0�#`3�%��!U`�E�n�$�s���h������w	J���6V�ؽ�(1��@�%ݺ�By��}��n�KE='i�$�X
�@{��`l�w]{=7�+qV8�X_m�~dZ��`X!+e�f�}VP?����iw��ϋ�i�A�7���5 Q@�p���lR���0p�����Ļzg@�}}�����^�;��@�i"x�3 +����~��^��h�J�3ܖ���Κ�M������O;u�,(J�89@|��E9v�
̐��7ô�������Wܪ@4+�B��C����(�+Z`uRu�y``. �j�PV���
��v�5�s�g�+�&�8�(��g��
:V���@��ե)0��T�)D�eV����52���сt�jn�m��ER`��`��W(�B}T��W\�xB������~������K�{����plƻ�`?'�G=n�.��~U�
��s�s����NhOC+7���Z�H z/��ZF;�J@16�o�jٔ��-^1ٕ%���Z���X�IJ` �L�v�5	:!����'�L�A�	�`���x|���GfЯ(c���T��S3�X�m�e����I�87�}+f��%�/��y#Ja�$w�/�������́�V�4_���a�c`f�V�Y� ׀PQb`}�+��Y�֞�3z3ųN�S^�pU$��S8ŢԊ����+-0����`Ӊ��?�k��YR ����j���,�;D�����n���|�*���_0ۀ�xD����ׯP��>�OO����W�o��������� �,�`��`%R���hx��UcK�j�st�o�����Ɂf�e�]��"�M�b��Z0���R㾡���,(���<�qM�3�;50���֠�� �G�k����,h-^_�	�Wkk���<|%n�x=4� �0�uT	��bZ c�@hu�&�+tV�ؘ��W�o�Y�ų
Ņޖ"׍�6�p�u.��+�u���ٙ	fqU7����0�I\;sG
��h%PЬ4)ˁ% ��/L?Y��b}K1d��Hk^A��Y�8P<��S���X�2]v�U&�
�m�"M
曺�Ok�-t�U�C����@
� �B̹c`P/��=p�(zZrC��ڕ�(a�e�e>������d��
��v�B�ˤ�-�ZR�"#v��}�*qz��;�3�vئ�$��ɸdo�P�@N�/U�X��1��}��� !�6��p��Ϯl�k�B5�|���*+
'��]������Q�j}�9�yVN�_�-ɝ�zD��r!d���wB�K�r����Y}�;#`+��	�)�+�&wN�+a�כh��ก�w�6�2����@��*��wZ/�jBF ��*6�14����@��J�gB�4J�7f Iܾ��0 ���@:߲t=��	ojmf`��8j|_*�����(�m)';EĠм�I{ ū��5Y��3g�����Q�y����}�ɶ���Gʝ(6��;����.6d>�ߠ�U�����4�8��"��@�R�H��:ĝ(v~R� �7�-�u��܉�+djU�r�Q&������:�T�Y��0s(�Zu-�$�P���\Kȧ�����A���\I���e�㙘�)�*s'L���\��P�aKdƥ?+V,9�l�+S"+^�@�Om'�V~V
�`K_���luc�f���A���1xǣ3X���O�a��O�g��L�\��#[�z���� ;[ls�R`&Ur��Ƿ�hK &�6��O�@` ���DQ╪������ W�l*#5{�B[r��1:XՎ{��eݩ�l!�9;�)���ĳ�� rXp�<��m�kݩ.��J����7y֝�?�o���Qjy֝�o@4��is0�YwZ��l$8l{3gM��y#��R��X(���+થ��0�+�|V�0PV��ۯ���r��7r�3A-J���@	Tuv�~�Q��Ͻ�¾�#��-5\8L�u�>iӌ����NؙXSL��M�`Vj�� �5`b�ef$6����fmW���; �ƪ3�V�ve��p��al/���� ;k�����^kZ/��vV��x�]2r���+$�M����g�@L�phgn|BJ�C|����L�|j��@C-�`
zZ�}k��0�����F`�ka�i8�K��>��iŜ:�z&�P��D:2И��ۆ�+�:0;������ǦY�j�ȑ�<�(tt�ﭱD.�S~��i�H�Ux�a�OA��z̑ث�J�����Àh��^��U
X�Q�KP�;R {���T�
xW�Nw� ��;�B+�D�����3 ��Hs�G�N��W j#����׳�Ĥ�9���ڎ@��aZ�#����Ђ4>���uD�{�V
b1d�L"����>����x�� �a1d���z�x�N^��o(EU��q�^X@'��A�b>{t��/|M���=�-���/���
[i��4�B����+������~=���.�87�ŭ<���KJ;�Ä�/x,%�,���Y=�BQCx�.v��/IXV�6�֬��d��k�iF3��ܸqy��g�)����>�51f�˱�I�zV_�\���$�]�Y# ��|�SCÏ��Cߡ��k5<\�8r Bu2���
��2�6��8�h���Ϩ8� 5S#�-�{
�O�F�ђ12������(�b���^L �ok����mY�:�1�-�Ǉ���ȗ���E�ߏ��A���6����,�l���
���%.>�j����^��o}u�p��[5�ﭕU�py+a���� ·4lw�=L�=@孱Uc����n~��د�a�f ��Wc׀���/V�ʑ�~��΍���mՇ�w�%�_=#�p���dto�vn\�<+�,dV�����k/B��[��VA,���� �  |_S�'��}���ӛ��X���GH9���&�ڻܧ;+�O���[[���
���!qB�2 �ntveW�x�8`q�So���|u�<P�D���	K��������i<ERcn�x�WC���;������!
D��c��Zzq�g\+6��,f=t@���N��˹Y�ݚ�X漱�f�Ź}�a$�w�j��ϐ��ڊ���FĊ/;vCKa#5�,�_.�@g�,�Wr�2w��V�慊բ4����K�c�놮7���\p�����4�^>�����^̰��aʣ������ �V��\~s�jJ`P��D�l�l`�y�����3mbɔu`��z̯`SL��U91oJft��N�ekX�XL��ڐ^��e��G<��4�d/2�&:���j�l�ּXL�<�fa:n}�.�������5%oVv`1��tgS���Ţ�ۣ!��{�����3����7_b�؅^7���x,Б�7W�SI�mZ��t���,��ʊ��E��:+d��^��^Pr@Ws�ЦR�o%X�3̱W,9/5�1�ȕ�?�?\mj�*`�ۍF�>$
��$6X8� t�I�Ӑ)i�"�B9w�2�C��)��%0(}�1��sb=������l�3����d�Lܶ��T�om�Q�"�Ӄ���Vj`�sjv�`��q�y50h�������
ЁA�Z+�>���u�Y'�/xP�mK�Y�[��bV�^�l`/�_����K9��K���g#���0N.�lM������j�[��yyo^L3% J N/�����(�r@���y�Yv	�=�-���kV�|q�WH��p��F�]x^�yI�
�.W�]>�
���i���璱&���6�v�w\���"�^5�7�9K~�pn������� ���Kl�r��^]j�Kl�3f�f�w;ЁMٻ$1�}��IL���`��ǅ<~�)c��q�1��)>ySS��&$xo=��sj��?jp�Cp)��cj���M|��6��*���]��mX�O;�h��o7�s��K#g\dڙ��f(���&őoxv�cʎ��l4�%`�c���wg�I|Ԁo^6�9_��pȍ=�X�߻9����n(nn�G�'�`d~������p��;:ƽ����J���,����^>\sc�C8�2�훁B�R��x�\vM���c����7Nf�p�D`�X�վ���J,���IT�+9��>3��Ӛ�ٯ�R|��}�V'7�ۣLt��Q}݊�1���d'0y�P�q�Ю	J^�ɴ38@��:f���o��Sko��Eds'�F��<�t�h|u#ôi.j��>���4�a1'�Y:'������Q�����0׮	�=��Cd�Q_��"W��<��dD�`���-��Eu딾P�J���G���NFv��!��+_�+ �ϟ_{���ȕ��!�6�����N� %&�YÝd��<��D���w��4
��B)�q��G_�J
�XTk��?[
d�O�A���9������t�ow2p�����"u6���E��N���#�*K �rp�m�o/kXKG�C���.�H�-}	?����S6�����	be׀�R~y~K��-��.j?nl���䡜�r�G�o_967[��� �f9�!~y'�W�;i��LZ�0�5%녊�S6vz�)���&Vn��(3��'2d��۝��FɁC��3l�M{F��Ea��[��Ӽf�$Z�5cjǭ�H|��I��������aZ�."������@ 7
�ʶ��{ɴϒ�i��	��vZ�L;q�_̻��.)�@�G͝��;���ŝ��ŕ����4�	̹ɝ������L�E���ܹ[e���*<��B�r�j|��W��3�����y���&�z�Z�G@�tU��rs�W����f�ُb��Z��͞�.6�w�B���p��,Юo����5�sn]�6#���H��h[��1 ��
�t9|vӝ��G�5e�!=Ё�cR�f�8��F�R��,���͒Y�X���G�{�e����g~�����%G�ϸۡ��>�{b�c�b$8�iS/��q�ӝ���3����6Z��n�O�A���"Y�Ed�=��9a�>sgn�p�=H۱��@p�m�l���u}��s6����b6��*π�{��<B���FZ�B�i�}�y�w�Ɩw�Vi�tz՝�ᚡ�-{�n2%L��B�2xbzY�aq�O�Z�4�-�L���-�-{���s\�˭�4�\��)o�6�[NKyWK�,�JtZɁ8,���H���:�"�K?W�9?��Ⳡ�w�F���e�bq.�_)����f��SU>y����0�����\52�|�gl=h5�c��G<�����3����헐ǝ��&f�4����l;X��3\wc�i̡t����*蝞���)���x�NЈ�܈�|6�<�rz��r	���\`Pv�F����F�O��$�5$�E���w�Q�;��� ̉l{��n���30��k�*��^�����mfqK�)8�1ui����r��'���;y�Ӻ�q����	�'�G���{�(�~>�>�O�qY���n'����K�����ʹ��M�R������ﬡ�������������E�[��Ј���7U�dbK����[&
gh9���z$d��S��-�X�]��Bcb�:x^r��2}�ȜͲ}v4}0/+(��ձ_�{<�Ǥ6,C�e���p��/nP��)�gY��WJ���^��{<,�Tu.>;�с=b��wр�m0�Z|r��� :�ͫ�B��mL����4\��������K��2<�nP qi�>E=\*xǵ�yɆg�+6*r��q�$�ӽljq���je��;��\
.8�o����*�>���,9��g�L�/������x���_����J�]}RA]k/<K��M2���]� 9Kh��|�6��d�H.�n9lC�e�t�'o��ɺ3��z��s���Ph9��Mp?��'��Z����y���D�      &      x������ � �      '      x������ � �      (      x������ � �      )      x������ � �      *      x������ � �      +      x������ � �     