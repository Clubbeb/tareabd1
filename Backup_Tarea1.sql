PGDMP      /                |         
   Tarea_1_BD    16.2    16.2 *               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16398 
   Tarea_1_BD    DATABASE        CREATE DATABASE "Tarea_1_BD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE "Tarea_1_BD";
                postgres    false            �            1259    32853    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    32852    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    32869    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    32847    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    32846    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    32859    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer NOT NULL,
    fecha_publicacion date NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    32858    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    32894    premio_mejor_actor    TABLE     �   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer NOT NULL,
    anio integer NOT NULL
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    32893     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    32883    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer NOT NULL,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    32882 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    32905    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer NOT NULL,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    32904 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227                      0    32853    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   44                 0    32869    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    221   �;                 0    32847    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   5B                 0    32859    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   �I                 0    32894    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   "`                 0    32883    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   �`                 0    32905    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   Qa       !           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    217            "           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    215            #           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    219            $           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 17, true);
          public          postgres    false    224            %           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 27, true);
          public          postgres    false    222            &           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 46, true);
          public          postgres    false    226            p           2606    32857    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            n           2606    32851    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            r           2606    32863    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220            v           2606    32898 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    225            t           2606    32887 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223            x           2606    32909 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    227            z           2606    32872 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    221    218    4720            {           2606    32877 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    220    221    4722            y           2606    32864 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    4718    220    216            }           2606    32899 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    4720    218    225            |           2606    32888 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    223    216    4718            ~           2606    32910 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    4722    227    220               �  x�eWYv�8�NQ'�Gp�OY�eI�%۲l��T1��ͥ��m�,}���F��o@n�A���~w�v��2��O�7jw1�{՞��d�3��3�hv���B�rv�k�?�Lx������5'5J.��hz�{3��Oj�/y�>.��7NE�+v�Ɠ����L���ٗN��+�O��L�H؛V�������f`9l�=��~���yNLH.Rvޘ�yֻ�c�'�l4"1����ȱ������慥){�R}�}��6�b��B�3�Tߛ�7u2zd)n��^��Sx��pο�<�"�!��}3 oDZ����]���tLV<MBH_Ռ�O�BJE,ƃq�ѕ��É�a�]u��rJ3v�h�[�n�~ֽ>�+r��t<%�+thA���i�$����qtV�/-".�]����I�X�F�׮lk��%���e�}D�ԊL��z��xb� �,e7����T��Y��-9�{9;{:,m��ݣ�bY���u����`E�3�>(��Z���Q� vU�4��<��!�إ
[�n	c�U?�Y�<aרo���(]Q�\0����8�#n<Om�\�萱�3y ��y&M@b ��Y"��\Z&����<é�]"�W�x�.�
�7?�>!������h�����ZK�M����`����؈���]9��f}����3וX�X�n���E/������/J�Z�x�(�`Q���+�p�
�q0C����s'�2�l���<�R���mt�Q|�����44�C
�,��7���>ޖ�IY�� �(%�3-¾A�ңh���M�¹�}P���d��f�:C2^&�؞��q�t�({���2�%/S�xT�{O��� ��9d\�q�~Xz��(�Y���͜h�r��YKl}aE��24��8L�X�'W���=���r�?�4���Ďe�^9�8b#�*c��~�O��<mC�*|m�Ծ����WI��h�(��p�����2��4D��Umc9�H��\'����"T'#�N-{��{uƾ"j|�y��V�v��vt|������(_���k��:.�)�+�$LP�������$�ύ2�
<�Q$"�#�2��[.}7m�^h��X3��������~.I��d��[t����-��^/��P�
�T��,��:p��BX�a����q����}tJ����`�~��ŰX���&�V,ꍶ�8'�L�L$���X�C��* �=���O�#�cx����O� 傕Pٙ�Y�y�t��j�=:݃�������~Q�6�D�X��!4=r:\�dA��O� �2�\�h�U� L���o �4�R�Š p�{��u�?N�R�$����r��:T�^����, �)�V�P�I�Al@�M`��[��BD]�>�,E�Pgϸ��Ԛ�.��ī�oՓӂ���d!b[��B��~X-CŇ>��s�� ���^��,a��ƹSЌ�sH� �5�k	�u�pXˏ�"��V+�"�B����!�"�sj�X@�Z�!2����:�z�����
��x���
�u�� �����)�R��Hr�I)����Jа3�PN5^��,Lx"��<�Pk�(��z�Jv/DW�* �F�(<$%�6t�O�~��5�7�0ؿh?�ޛN���J�"���pG��ć=jog�ޱ�4�{²(���ᆟ���2V���j�i�kK� ".�2�T@@��kO@D���z�!n��$��r��+���f�!]��Q�S�9���'7Đ����U��{��1��im�:�s4ND Q����?��uuO.r����6"�����i+ )�]�E#����9���P>q/yi�ի:
����Oj��������u�����S긋         W  x�=�ّ$7D���(��E�ۡ|�}�vT7��&���i�|���_�������rG���b�o��9�>������>[����x_�lO_���������6�7N�����/Y��wr���ǆq�X�W_�<����P��Mr���w�f�o��J�7�,��˖*`�����9w���R?��xm6m�뽫ZV{��ie��8Hv��T5�oo[; ������+[���]�,>�]�J�n�>���݆6Z�k�n�Stm�(H9�_���x��I� g;�X�����H��ř�|BXG.=�֣@���8�3S��U�{������㇡^�b�o�Guxo�K�j�������U����-��۸6m�tp��:�ȣZUpv3{�Ɛ (�^FT�7v�)�b
��淧k�+D��s�V��M�kyp�٥�Ñ�5OK�y����XN���[%��ρ`'�f�r&�;t`J3������\��K_�]6�vEa�J�Ӱ�+r��e}��K�Ha����t�]�$��!֏�:ˎGåI;̪iCO��RIĖfX�ǚJ��L/�I2�$H�s���p�:�$�8��� ��<<+2���������/+���Fq~6���(���ć^�M��� -ӎK<������ /ԴG5M0���,�y�5q{j[�	���V�HQ[�^�k������pl�����^AjQ<��J?�n���ta�#UD�З˩B(Y��Q�#�RD,:���H5�����X?����X%*.�~�����@��(,����A�6h�_Lh�`x�o�-4��,�Io)���p���@u"���L�lB�w�SP�(���,D��B,,�ǂ©�"@#��*Xn����].��$�J	� �	^2y�~
�. ��C�r���MJ?nJ��#�ȴSѧC���ص|E�̷N�N�[������-�c���H����¹�hl�݈I�I1@RY��G3 �QI��=��g �S���4<8�+oh����SwE[�ٞΈ������Zh�pE���QA�b!��"J	|��l�駿��w$�o�Wl�Fh��,Ӝ	�j d�N��	�&��a������9_�N�2	\$A�С�'�O��������2��F��Q�pv{m�_s[��hc���V��1�I��d��8�n�݉v�d�M���S	�$v�������E	j�ݘ"7�G��D""_Z 0�:��p��ʙ�x�j��wVh��.@�T��հ3y&=�<�z��[��� 	kh���߁�d�EHv�Qw�֜�.* 	K,k�����	�����2 �j$���dV=5�1�]G>ݏG��S
�f�5-kOMUgQ��f�e7wN�����/�����P:��5�KU�bxq�ƹ�b�T�V�y�BO� ���Fw��Y�B�P�ӍR�sܦ0o���Y�(}-�w���f�[�_{��Z\@���c�ge��!��f���}7[^����t;���a��Y�$�{Nq�����OHt���%vO�~�=�h�qk-�հ����(��`��r�1��94�i����zS�a�m��@:ˤ�,����>�K�M"A{�ނS��d���,4'�Z�7���+���?��� +	         e  x�UWYr�6�N��� �Oٲ-y�-�Z*?�<�hH&\�b�&g��������[�u7��gk���V��`/��G�+{��N�b��%���O�=�Nw�<���{���!����6J�e�t�ڌ���fbM��ҽ�WOzoY��}=����G�=���9oؽ��/�~����b��-{�g=�^g��	kM�E����o��Y����b�y��W�l���n�(�{3۝����G�\pQ��z�'��E�bWv(�awԬ�2����ϋ��j�������N��ȏn��6��r� ,���)��\�첳�l��L�v��=u��F�f�^��ddwH��O�U�E���Be-Jv�:�Ce6U)�[��FV����ǣ�Lb�
���(�T�&}gs�.�&t׃�U���O_f��2��/sz����-/�vm�\�YS�˂���!xԼ,�{�<;�BK
^V�[�d�yH�S�����i�T�����v��#�v�k�k�װ�9_��3+�]�>�8��W9��g��=� 5.�D�G�'���"V�q���W%�l�X/U�bo�d=螢�$���1��{}:n�B�{����
9P�RE0[���E�EL��;䠠#P
�\�>�K�[�$�D��h���A��9�.��u��lY����ળ�O����w{6�a�ʆKI豘� �B������� j�f�f}���aq����{? 	�Ӥ�\�+���x#g/��O�H������4�_�O"�K�ʄ�d�UE����j���XM�Fg�D*+*�j̥����M�Uî��f��@ִC�/N�A�	�uI���ϻ�H+� ou�����y
�?`M��m]�b�'�m�k�ޘ�p�-H�=� �u��BX�Nh)U��h6���P��6!~�hr��Ј��G8�)"���*ޔ���g{Q�*����#&�@��P]:L��L4P�^��V�*�7X�i��������kU�w�[��@Y��@�m�k�k̶e�Žu��V+���)x+��t>W��+F��7
L]�Y'����Zl�bjٝ=ͩ�&����}D�'B�����70@B�'�
�/IC��{�Z�W~��@�Փ?_��;9Z
F�
wΦ3��[w��(��v7+���l�;�G�M��Pu�!���������+ӏ�/r@����b���a�iz'�Pw�q���������XJ
��)����r 2��PXI�c����[��5�������ʽD�N�yX5E_�	�@�� '~�\��3"�.�+މ� ��4�R'��K]Zh�v��K}��;DQ�����8������Rl���"��"x8rQ8q�'��-�X �̱3�v��ݫ��DFe�Ǘz<�����V��C$ �	�i�|Dr��"i�?}_�� ("s}���n�<�4�&�*���U������s� 7��7�yu��ۻ6X/�5���j�.Йϗ#�@&��B�##lK�e�~m��\3���!�Q-��d]�7��}gI��O�qv���B�i�N*ȀX	�lH��p�w�*L�SC��C�C�$��s�P���ȥ��-z����?�������?,����ֵ�I������GˆG!�f��Q�����x�B�l�S��j��̛�y��8��o: ��u��?;;8����i��dz�~�JY��	z���6g�%���%��j�JtSCz����-��F$�H���!�X+E��%|�U`77���Q�@�Ȱ�����p�;�Zm"\�/�YBL���[ *4|��;<Q�6�/ �-1���C5���'�������vX��N뻚NV~�6Ɗ�u$��Z����f�	����	����=���W����Gՠ�            x��\��츑�ɯ�?����F���݈u�aW���DU��꺱;3��1����<�x�Q}'B�ZqQ �'O�LHU���O�/��x}����_�/���<|�z�����x=M��t:M�w�l_)�>iSk�	��oo�/��¿2���G��?ϗ�e*��"������JYU�<|y_���������̧����e��������k�}jܓjkSu~l~�n�����_��r�w:��6VJ�J7Zak:��o��x���_�_w��t�.�l�>�{jZ����\�/_��}y�.S�!��>.˸��ѯ�˵�-���OJ=鶶��ؚv�>����2^�V��d�+��,j<�slj���-~(��_��� �e�m����ھ�[,{�������eg�:���:\�� [���<�VUM�z|���>,a��y��F��pN��%t��JZ�o��{Y�W�?�2�Wwh�lbkE~�;�y��'���z<���v�O�yj�Z�C�k�MW�:��ӱ�,���R���!�{����+ى�L/�(����:U�.��X�d8���}�5�]�#��>��?�'M&���͏��<<�o���.�YvϾ&�1�.���� ��yb+��LvBX��M�e����Q�ӧ|������������Ǐ�՟�aG�k G#�yx���,|���_�s�r\��3����t����}��K���|y���i �r(��&���)�D<�pZ&�EO�{��^�~]M���Ci���m�5��;$��E�!F՚�7D������}���?�}-G�� �$��cm��|l�h`[
G
��N��2�;|p�g\�֖�hpv��}p�@�_E����6��3y߫fk�����^��C����@H���!4�L�ɡ�7�&+�d������<L�]��^0����I6�I�˱�a}�N
YJFz���i�x[y�M�k\ݪ��_���㈂� xJ�����x��bݒ���S����r�2��
�i��s��y��/�H��2�<�rv���H��/���H����5�Rm��������r
0���S �=���-ޯ�5˕·ܽ1�B��	(��aj�L7�0B���*=�tMNm8K�����d�5�� R>��o�r߇˼|�oS�˰TS�BJr!fˎ�u^���!(YkY��;�hUS��n�`m�Åݐ��UlS]o��:�|�b�'��O��ɱ4�W�Ѹ��}jQȷ̛��ư[!GL�/���/H��w�uô���� gBՅ��Ȱ��%Ŕ�n��2���w��Jviٖ�6F8A�4of�%܇���̎׽-��)�ƄXߴ2��s�P��6�qJ���x*�n𲴒�7���I��q �!��g������?��&XpL�( :�\��cW¤R���Ɋ#�&,��}�ɀP��c�F����|��.�w2��-˩��,HD�31,>����S.���씌)�X�����:��s�e�֕�.��yz�`LT�R��Wѧ�J����k�	�+ ��D�f~qO�w���z����R��$[��^瑺1�7��u��'(ϴ��}SYq�W�D�2-
̋)���'�`�=s���\���U�5�b?Gߎѵ�/�H)�>��T�J��R��x��ȧ�����'w����Mvh��lM�^���?r��UX͎��g��~_*�r�ؐ�N�pB}�)g�^~׹�r]é�<�=�O���u'� ܘ~�W]�+�)sMo�m����(jl¤�T�;�:�zo��)e*�os@&�����QD���ʂ�# Nw$����F
GW�4
�Q�H��񒄄p#7����OEA�Tb�_��DDL<�
���rӯ�u��u����?��2���1�s%@�~*�}\��_r���lXí�j<���۸
����F8Ԡ�>���ɩI��������?3�[�>���i!�)��[T�)1�����J(��+ϧ�y]P=)K!r&ˎr��~�"Y*J��T�ˎ��T^=���e:��}HE(���u���%f�;�&8��{Q���?�����ӊ6�V�FKkm%W��Z�Ӵ"ᵢI}����H�Q��접��_R�,�˸J)M���!���:�{$dhj��i�.�=di9���w!���>BԊ��@�i8�Z�=]�(B���DI.�D�
�"]�;�z�o7/2�ޏ����J����
��e�������l��F��uO�����`�a���kX�i�q����A���D�		ˊ�$�&/#�#�!W:��E��+&��C�%�(��"gZ��,����ǲr���m#�2%����R<�@֣�*�N�ڥ��i��V����{)x����R��3��V�߆S�O8c��\��z��+�!���"!�2^xE�Z;Fo��V�/�WC7����p�>l3�����! >�;�a��F��'��� ��@��������XL���.� =Dp+)Fh���A�Gq���� 0�Hz�r�qG�vO���k�"�#K%����,Ul�V�t���V���N$�	J0{��?Tum,ɵv���D!,���G�.��2�� �H����o����y>�B2Sx/�7�%��B�(� ˿>�/�t�-��=��E��HM�i�5��U���T��t�RW�l�㜬U�t ���s?�<�;���#.&��,t�RK)�S�k�,7RV�Ǻ��Pɛ���HmjH��@B�g��sn[��[r�H���@�둨��*+�=����ni]���K�4e+��o�ԩ�F6�"�{�5վ��%���kS@�VqO聰U�߬�t!�7���4~[�g�lCs�e�En,�P��J1�&�J%mQIy�rS��=�����
���kЧ8���ߧ˜?�a�G����p�3���e��WkAҡ@D��.{U%(76	n�b�K�		�!�_�C��:'me�y̪��d$֋�v�I�v�'K���HnH�����.�� pUY�誯��y����ﰼ�����CJ�T��P7�;-7��Aw`����Z�(�{���K
:wY�mb[i����vv]=�>��/�[ɲFzy͓�{6Ra���IU�VL��^*;.��c0��:T����¸��?Q�c�/���2̀_Q��n� ��}R�f�]bQ��6m,j��_t�������p���(�VDK�Nv��K	!��Pu7�i��㝏�)�m[�Ԅ..2��+m2Y�S��؈��r��LK��"QfV���vq��y��NZ)߳�깲�hD�Q3<B��^�����xԯ�-�]��P﫞��~T���g��_�)�ᶜ�����*۴���æm�n�5t
���#����z���t�t��:pV�j
�J"-���j��)@��)��b�������Ƿy�~��̈́���3�P�7݊�Q!D���{Ϟ��_D\)��o��B!w�A���0��&F���8�VMJ7{q,rl���&�#%�T���;��rAj`���ۊ8�T�ܛЊ�����}��OQ�4R�)qjT{�#�.Zǫ?�$	c�;m��B��;T:����¬ ��7:�P:��w,"!7U����f�,&ߏ�*],�4�O�D�]���3*���a�Zf����l#�ܒ��|"6'#����dV�]mP��^���qO�>f�G�S�2Ƴg�2�'<�Bpͷ&vc�xN��t�q��Y�mC ;fq��v�RdS9�^?b�%Z�	�<0VÌ�*h�8tGJQ.�ݎ�y0�7b���U�YE-�S�3�2}@��BVe���*4܏(ƉP�r?&˭6��d��c���c:�iҜ̋
}ϟb�K٣K�s��7�Z��E��̎z
��J^ȣ[ݑ�������}�Ǜ���P_[	x%�9��ו U毬�x��e�OvG�y�jCqZ�~�}e��~�[ÉbX9�-�Z�*^�<�t(�u��-�ؠ���Dtݍ6A�oePTWf;�PҸ�zd�[a�6&���Qt�'&M�ax��Q�r��F c  �&�:��ce1�#G;k�Κ����(;�_d�.f!.Y4%Ͻ���e��Τ���R&�W�G3H<2�Xհ��Z}���ї����^���d5����%Z�J	W����������HeF���!�/y@�Eě�J��L�O�EBZXXFk`�$W�ih�qB���� &��AT�0���-��Ǳ�u�g���T�	����5Ts����j�&�����e�vǓ�� "��q\�8���3W,��K�%�OS���S��,��𔮦����Q��W��{A�R�S�fgv�Z��8hB��C6�ѹ�i��T��N����4�Cfl�U/ӊ*2Ua���y�!{+fⲤ����I-�)��-G��Z��E��c��^^x�Ǹ����p�s�D�v�$uY7��-=��.c�!�fDU��,���c�U^��K��������õJƔ�!�)�D�]�T���#���ی��g��,���z�Q��>Py�!�oV�L+�.�|II�y0��k���S@*4tr����~��ƑT����M���A�X��F���C ��m[b��������!��ա �^c$�[���\�xBx��2�3f��۲c��.�����{�
���r<��K� N#�Y���[+Ʊ�4��+i�`3�%is5��A
��ͣ�����GP�l�Eˏ���ث[%Q�↊:u4ŝܸ�a��ǖ��e�}͂W�1]M��qA�*���e{��[�<���i��,_�����$����a�P�s?�d,���T*�<��-���c�:�[�~��Vm�`N-�)�N��=�6�a��[�F�(�3@-�ig��M�U;o�����l�	�ePa[BÛ3Ѵɉ�;-���.�7ZN�9�{�nB�1Q��O(j@�b�ӈc�o��wy�\�gd�嶆Rnϰq�B�W�{�,Ň⹙�D~�\J�p(g�]�P����6c3��.z2�߄k�?%u��Ņf�|�,�h@1��6�"�5�]��:���#-�O`ȫ!���P�Mfn��P��0��m��h�p���_4Mx.�MP��)�w�l�8d�|�By�x�!֣kU�'m��2y��Ӟ�vd���F���S21q�o/(�_ži���M�1|��@�<L�a�
�X6���ڶI��[�ދ�� �Ԧ��`d���
<����@��:�j�7a�D��Iq�OZ5ܟj�p��D.��+c՞<�+IՅ���ݪ���UJ�`���/��"˺p�"l��~�R][��� (��#^y�O���l�UI�����w�}y�&R&''m�:h�^��ğk��y��3!�z�����l�����m7ji*�����އ�xj��a��.�!���-O��oӤ������b�ˊ�~���G���4e�YcN7���$��ӄ>���T�A����X�gJ��b9q�J-��R�5�=���K8��^�V�ά߄>������f�2�b�3YE��d7��Ee!_���a�a��c���C�8|��R>n��f�i���?�9��)�� �<��P�?�*���kBTI�G��c���߇RH����Ih����>�L<�w�Ow�W�K4[�胊X��ك�B&�����ou]�?�{k�         o   x�5��1B�R�1�$�l�u|�̞d4���D�em��00��!o��)��X���۸�����VѭT�A���-��־��'8�^�O����Xّ	.�+��?�&|         �   x�-�� C��0=�
�K���A�%C^���xrÍ�?Nc�|8!�[j9��O���'�4֖s%g>籝-Nh#:�� ��9����R�큦Fϡ9l_����\�U�V~>̻H,2gw�yj\�K�����f˲�-ǁ+��B�f�P��J}0�           x�-Q�0:�0}�b�.��b�S|�����mp�K\�bk�[�@cɊi&J�B]��-��h��((��JS�53��k�\|�\(�5�K���	[rꍶy}��l�3٦X�)>3��WfW����gЩ0VN��{�'�)=�{c~��r�\w<���<Ιy�Y6�c��,��J��b#�7.U�~��a�g��E��<A�wN�A���?��5ʮ��\x�w�1��M7����p$i�W�%7#eI������T�     