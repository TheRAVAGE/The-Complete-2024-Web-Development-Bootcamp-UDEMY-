PGDMP         ;                |            world    15.4    15.4 !               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    world    DATABASE     �   CREATE DATABASE world WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE world;
                postgres    false            �            1259    24578    capitals    TABLE     �   CREATE TABLE public.capitals (
    id integer NOT NULL,
    country character varying(45),
    capital character varying(45)
);
    DROP TABLE public.capitals;
       public         heap    postgres    false            �            1259    24577    capitals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.capitals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.capitals_id_seq;
       public          postgres    false    215                       0    0    capitals_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.capitals_id_seq OWNED BY public.capitals.id;
          public          postgres    false    214            �            1259    24585    flags    TABLE     f   CREATE TABLE public.flags (
    id integer NOT NULL,
    name character varying(45),
    flag text
);
    DROP TABLE public.flags;
       public         heap    postgres    false            �            1259    24584    flags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.flags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.flags_id_seq;
       public          postgres    false    217                       0    0    flags_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.flags_id_seq OWNED BY public.flags.id;
          public          postgres    false    216            �            1259    24601    visited_countries    TABLE     k   CREATE TABLE public.visited_countries (
    id integer NOT NULL,
    country_code character(2) NOT NULL
);
 %   DROP TABLE public.visited_countries;
       public         heap    postgres    false            �            1259    24600    visited_countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.visited_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.visited_countries_id_seq;
       public          postgres    false    221                        0    0    visited_countries_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.visited_countries_id_seq OWNED BY public.visited_countries.id;
          public          postgres    false    220            �            1259    24594 
   world_food    TABLE     �   CREATE TABLE public.world_food (
    id integer NOT NULL,
    country character varying(45),
    rice_production double precision,
    wheat_production double precision
);
    DROP TABLE public.world_food;
       public         heap    postgres    false            �            1259    24593    world_food_id_seq    SEQUENCE     �   CREATE SEQUENCE public.world_food_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.world_food_id_seq;
       public          postgres    false    219            !           0    0    world_food_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.world_food_id_seq OWNED BY public.world_food.id;
          public          postgres    false    218            t           2604    24581    capitals id    DEFAULT     j   ALTER TABLE ONLY public.capitals ALTER COLUMN id SET DEFAULT nextval('public.capitals_id_seq'::regclass);
 :   ALTER TABLE public.capitals ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            u           2604    24588    flags id    DEFAULT     d   ALTER TABLE ONLY public.flags ALTER COLUMN id SET DEFAULT nextval('public.flags_id_seq'::regclass);
 7   ALTER TABLE public.flags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            w           2604    24604    visited_countries id    DEFAULT     |   ALTER TABLE ONLY public.visited_countries ALTER COLUMN id SET DEFAULT nextval('public.visited_countries_id_seq'::regclass);
 C   ALTER TABLE public.visited_countries ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            v           2604    24597    world_food id    DEFAULT     n   ALTER TABLE ONLY public.world_food ALTER COLUMN id SET DEFAULT nextval('public.world_food_id_seq'::regclass);
 <   ALTER TABLE public.world_food ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                      0    24578    capitals 
   TABLE DATA           8   COPY public.capitals (id, country, capital) FROM stdin;
    public          postgres    false    215   �"                 0    24585    flags 
   TABLE DATA           /   COPY public.flags (id, name, flag) FROM stdin;
    public          postgres    false    217   0                 0    24601    visited_countries 
   TABLE DATA           =   COPY public.visited_countries (id, country_code) FROM stdin;
    public          postgres    false    221   �;                 0    24594 
   world_food 
   TABLE DATA           T   COPY public.world_food (id, country, rice_production, wheat_production) FROM stdin;
    public          postgres    false    219   �;       "           0    0    capitals_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.capitals_id_seq', 1, false);
          public          postgres    false    214            #           0    0    flags_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.flags_id_seq', 1, false);
          public          postgres    false    216            $           0    0    visited_countries_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.visited_countries_id_seq', 3, true);
          public          postgres    false    220            %           0    0    world_food_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.world_food_id_seq', 9, true);
          public          postgres    false    218            y           2606    24583    capitals capitals_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.capitals
    ADD CONSTRAINT capitals_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.capitals DROP CONSTRAINT capitals_pkey;
       public            postgres    false    215            {           2606    24592    flags flags_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.flags
    ADD CONSTRAINT flags_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.flags DROP CONSTRAINT flags_pkey;
       public            postgres    false    217                       2606    24608 4   visited_countries visited_countries_country_code_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.visited_countries
    ADD CONSTRAINT visited_countries_country_code_key UNIQUE (country_code);
 ^   ALTER TABLE ONLY public.visited_countries DROP CONSTRAINT visited_countries_country_code_key;
       public            postgres    false    221            �           2606    24606 (   visited_countries visited_countries_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.visited_countries
    ADD CONSTRAINT visited_countries_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.visited_countries DROP CONSTRAINT visited_countries_pkey;
       public            postgres    false    221            }           2606    24599    world_food world_food_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.world_food
    ADD CONSTRAINT world_food_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.world_food DROP CONSTRAINT world_food_pkey;
       public            postgres    false    219               y  x�]��r۸�������$U+)�:_��$>��r���u�	�$4 !��6�j�~�y��5(f��L����c���R7��t�.�*TI��n��k+�V]koM��&2�b�V���F'#��xZ��d�5��nҥ��V��p��K&j���{��L+�>����Q�*��[�d&��2��K�>�2�d���~ݱ���M28�-�NY1=�~r������+���d0P_&5ZӸ6]XoAK_��w��N7� �|Xi��ɓ���b�nV�s'�q/E�`M�!(�l�J�G�x�7!�x�^�6�f�IST:7m�NK��Iv���:w�:�6/L瞚$�cSi0�m�M�e"(l����Tm�Ef��<j�E�l��-o��ܧ�sI6F�k1�]۪s̛��2���K[oːdSu�*�C�eX{��|�����.mӥg�;�T�c�1�%�1Mn9!�����/�?�����K�����` ׵O�C]��1���3�!�ĳC����V�h-�O��ا�m�~eC�����������:�l�^ 2}(vj���ڧK�2=6�f�d��BUh������(����u�{�N	��p"c�]y>�z���x�W���۲quzk�2�Dl�s��];>Bù����߻�����-qm|n�-1�l�l_��K�]G���L��X;]�����lê��S�&��:)u�n~;}���#$�28���E"�`�m�d4A���Z�/�?����b��3�Uݚ��pi�����zƟ���%���\��"Ǯp���MF��jM��m2FwG�G?�In�1�9�y]v�#�u2F%G̥w��hA^��F/י����;Gx�x�=��m��׎qa�]B�xG�j��.�Y%cT�,��wa����?ک�r�:f���[I���xh�~�f]�Y���ԩ��ڳ��u4u���굽$�Kݲʜ�M��%�����ɑ:}�+:��#����m#�ߡ��${�� �K���P�a���bx��b��:[�٫�%���Y��vĜ�J��:���j�,#z�/�d�����D�E��� ZE�&��:#�<�E�N:���Y�H� �m�$�#u֕�m�L��W`G2�s]m�Qk�@�@�4c�;�:p�<�۱�P��o_�K�61z������d:V� ��#��d:��4��H7��$��������i%�IO�16{[���7����(�I��>ŝ��2��֨+�����!��H)f���T�٠Op1�
�6�e�<���v�l�.J9�bMt%���`Y]Q�~%����Ơ�#6m2�DAo��6�l*��AR{h�@�fꂸ0�[9��(ȡ�2R�&��ȓ���w���o���Q��%`���#�/��7�g/P�3>C%s��Ç��χÃ�ӱm[T�H�(��Lēƚ8s*���?�z�{���k�D���S�����2��/���u��am]m�l&�"���ϋ�w���|����R�S(�[ �q���M4��o��ҁ��Iݘ���T�E����Q����;���P}�R|�q4��?q@Q�B;���N%�e�D}m�6��f�%�n�p��v�ڃ5%�h��� p
ID�s�[��m�Nt$+��-e����!�o��L\Ե�
�t������p!�9;4��4{��X�#$��z��Hz/.�\��HR^l�r�.�.<<��@�.���?�m��rc�&l�JS7�a�$� �t�;�(w�����2Rҍ����']��u��Z�h(�Y�k<�D>�-���{����)�8ԃ��3�	���>ت�!�BV�20���w?���Z��X��Ϲ&�
ݮ�^a���dl�ɲSE�=�,�Gd{	�� �v�m�QpFr�3B�+�;��uj������q\aΝ�$J�l+Ci�H	P��_�A�^G<��Vջ�1xYU�����:�,�M}r�9�h�v�qAo֥�����0��b�W.��G���9�'E;�m�:��/��:�d\��&���E� �۵w/0]ٍ�$P�kW�n���P �,4�k�H&�N�o�=H�|*ro
Oĺ�pB��ŁVh�n�}-e �<�5k�Q�P^s���8�z(���58Fi$]���ަ��	y�{m�*��M^:�x��v
0���H��Yؕdd�N��#��@� +�H@XwN��\PiVfq��#��4R���؍�c�^�)m�!�d(D$
���£L��=�WN��/W�P�w�C��XW��n�8 �H��#d���ˍ�>L�8$W�O��V�Vg0�?���V��+��@���˭����|[�(��B�Pk�Me6�axH"#0e߷�밵&�	�;܅��Ʀ��8@��@?�`�C��O��v%32�#b�=���AjnY��66so��-H�5��X����_z�& �8�7З�`�Wb^#{�����S�a�w�`�R1&���Zhũ+��rgB���"�	�*k���?�8�rq��qG�m׎�!.wO�x�O��]^�DD�9��]ڮkc/uj{>�E:2�����(�Bޤ��Fj��Z�ٗI�����Sg��Bx�Vr��s�h�C��s��ӡ�8~-!�b���=&�Dq���xiBĴ��/B��U�.Í{���!��v��u���nͫ�)bÐ�t��*V���A#��R�G�
�@�������
�C���~�"�:�l)=r�"��pUoO�p�Bo���/�O����k���OC��x��JJaOZV��F"�a��K�A��뗫G�cl� KK� �[�E`���!�d��Є��"�bȆ��`P��˾�{��F�u09����4N���^�� $�M"B����prosX���J7}�wR,��$':�7ɠYK��;@��Th�r���0V��o1hE^u���Ѯ2�<�]����tNP��|2�!�;�ޔ��-�Ɠ��� M�|�!�ݧ�]�]2����I(!Xj,�)?�-O�Y�63��sL�S�� dsu_��<r���Ƌ�c]�&��H�3۽�����͠kPP#�Ϡj�hJ�
�𛦒�8dF�X��1;�J�Q8J��F�tĉO$c~��v�c$`�m"�;�-�X�3����HC,W/�?���n�_�dp�{�*����_ҕg��E�m��<����F��T��ԏ�v&����Ֆ�'�(��iI�2%{�"��i������#����Oݖ���A��1�5Χ�C�_ۼkx2h�b���fgsCB<�����Zw�]�~�����l�m���R��m�_�ӥ1�1���z ���_Ai��=P@x<}�4��C}�߃%1_�>�p���H�������?����t�J�c�L � �?�¡��y��;�pMiKtD$DQW,	V��Y�i�m����wSKJ�F��L��o�޷�������'�����s�$�w
}�         `  x�eX�V9}����&Yk:�U�?!@���NzMּȶb+�KnU�����yk���%t�0?4�0[RIe�`��J���-�d��h��f,!��Ͽ���	��B̒a���?�3�I�0�1�9�� ����~~�:Y� �$貉��h�,$C����h�H��J[�E\bg�,cj�aV�~�aE�b�� ��L�󡷟�0$j�1$��-រ�9/�h�T���#�X�f����-Zb�4�W�\���\����-��Ɗ	������Q̆<;��F��Ά2u��B��c�r���Q����';�QUcb�;�'�j��r�sՁ�I�΁�9j��q^���5ɢ�Ů�þ�e|+&�{�I,���<t�tYߏ�F#x-Spkl�\���-��C��H�Y��J�VA��wyV$��|�U�ؾ�tK��A�L��`-
�ٻ��W����gf�U�����5���<1UzyJ�p2W;�h����Nh��9�q��6������pab[mi�+)����j`�,���ZД�r���l/���D��%$1R1X�d�j�O�~,��Z���13�ݛ��� ��/�R�k$�{����꟰t��CS�5x)2^�s$X2z9�5=��ഌ�/��_iNˉT��pE��Z��ݨSZ�WR�<����D��E������x��ok����_5�$K��n�E�.)��4�~���Ϣ�MGz��b�=`~K���gӢ��u8���0�6��|"
k�=���l̃'��z��	S;�O^�F���,�2τ�i�ʉH
ߏ{�ȃOcdoT�2Hz�����Y��*;6k���h6�rJ����]7��$d�I���I �Vr�p��SS�YF�)��m��f�h�Ǧ;5+d99-�{���<?cN+�F%�s�Wڬ�7�xn8�������:y�X2���� � ���>��x�Mgْ�,���5����P��*�੣��d��m���RoU���zc��+�
�
�j$��i+�P�3V`U�2���ڪ��G#�Y��3ڪ����/qK[yNNMB��u���$f�EV�#<���OpC[mO�@�d|�b��=mÕ��|f�B<�|�F��6{�;״]-�_E���Yi��9��v��2a+�]�AV9S.u̺��kQ�t�b�n7ɪL��ub-��u���j���+g���6Y��3��ܯT�ڀ;:��r0$��q�5�HCҧЙ!9�Tɚ�'�	PX�i�7�h1S�d�c���*�c�]k����������[6aE�87���6��]��D5�bz�Ujtn��Jz+հ�3i���������I�<��cO^#�B�>�1�0)�`X���5-�O�k6�z��`�qPYPI�35���/��[�l0{�\�Z
!�6XVH�KӢBh�Aj�N� #����ҁT҆�;�zic �p�����3��~�3�0e����KK=4�F�;������(��|.��,��:����[�W�g(��kO8�@�hlV�ӕ�%TСص��ʲa��L����f� lz��C�
��z�Hk�&L*�8���+�zª�GAJ��r�p�-$N��h���+Kn�R�"�Ӏ��vr&�����n

����	>��*K�����#������ m:h ����ݢ�
�(��GʏF#a5������H��̠��5ӑ����q��$�}Mʰb�:�l"
�t]�P]� ��ɧ,v��e��#���Je��K,�Cw�^[��X��#g��\�k�M4�p_r0�*dS�� pb�r^d'4Ȧ��^�PBvlJ�I�;s�Q�NP�um��h��F��.A�[������P,ƨ�؎���2S4��{l��CMAż��������v����X�4�g΍-1�@<թ=���b�O���ș-lj��B	5�Ŧ��&��<�n,m�3[��CQ��2[\�]�sh�-�u1�b��Pw2["�����|c���eCn@�l��|dS�ƖT�N�LjY-�i��V�o�#�m�'¶�[�A��m9qE~ki�l��ӴĐ�-۸�=�!\�L�Wy���~g݃x��u�e���o�]�pb���e�E�C�XÖ@иU�$c�c�L�ı�>�A�Ջ@�V9������_p%G&�|bw`Ʌ�V���4��ߗ.G��F������P�ټN�c ۃ�2���z��@X1vg�����C,(V��;*ȣ��e6�w�0(�.W�2*zup�g8[wכּ�B]�68z��hWAn}l�
v�)����+@��e^��<w�}GL�Mz����Р���δ����o����W`=Ȼ���+@��xq!֖���*�Z�IlP6
ӓ�t�o���2��|Aiu���q�/%����TԎ�����h�����n���ZP[�]����y�֤Č���s�/{��(�;��#���r��10�'�}{Thá����;S%y? 5H��=��{S��Y�}e��/���컲�/v�&�1���/:�E������
�A�������n��^��{K!t[�_a�j�A1d����r�{��UZ��`�ڱ"����1��7��,Mc��g	Z��7eA��r��o�;�6y?r���zm�~G?�q"'!��'"�CS���D@cp�����"7b%7�����+l��}�`���{bB�K�
��Y<�<�~<Xo�߫ܝF6!�	���y�f�,��/w��``f^"�D6�+/Vqq���tC��m��i�9�B~<K���t����u�(�����B����]?@�;��W�Wa��&���Ѵ�"�W��Zgt���?N�b�%��'��~;n���=r��LBH~�>��q�>�����EG�y            x�3�t�2��2�tw����� $�A         �   x��;�0D��Sp�U����(�!�t4�)V"��pzL�y�y�p��uKkN����H�˖�y��|C�9�Q����5hp�s~������E_ƖU�l4TّC��ŮV�qOK����R��l)���:-M1�\�����N;{Á�LD?�[,7     