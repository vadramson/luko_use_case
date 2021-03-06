PGDMP     5                     y           luko_db    9.6.2    12.3 4    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    46667    luko_db    DATABASE     ?   CREATE DATABASE luko_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE luko_db;
                postgres    false            ?            1259    46670    avghomeinsurancecostregions    TABLE     ?   CREATE TABLE public.avghomeinsurancecostregions (
    id integer NOT NULL,
    region character varying(254),
    apartment double precision,
    house double precision
);
 /   DROP TABLE public.avghomeinsurancecostregions;
       public            postgres    false            ?            1259    46668 "   avghomeinsurancecostregions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.avghomeinsurancecostregions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.avghomeinsurancecostregions_id_seq;
       public          postgres    false    186            ?           0    0 "   avghomeinsurancecostregions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.avghomeinsurancecostregions_id_seq OWNED BY public.avghomeinsurancecostregions.id;
          public          postgres    false    185            ?            1259    46679    avghomeinsurancecosttown    TABLE     ?   CREATE TABLE public.avghomeinsurancecosttown (
    id integer NOT NULL,
    town character varying(254),
    apartment double precision,
    house double precision
);
 ,   DROP TABLE public.avghomeinsurancecosttown;
       public            postgres    false            ?            1259    46677    avghomeinsurancecosttown_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.avghomeinsurancecosttown_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.avghomeinsurancecosttown_id_seq;
       public          postgres    false    188            ?           0    0    avghomeinsurancecosttown_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.avghomeinsurancecosttown_id_seq OWNED BY public.avghomeinsurancecosttown.id;
          public          postgres    false    187            ?            1259    46688    hospitalization    TABLE     y   CREATE TABLE public.hospitalization (
    id integer NOT NULL,
    clinic double precision,
    phsy double precision
);
 #   DROP TABLE public.hospitalization;
       public            postgres    false            ?            1259    46686    hospitalization_id_seq    SEQUENCE        CREATE SEQUENCE public.hospitalization_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hospitalization_id_seq;
       public          postgres    false    190            ?           0    0    hospitalization_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hospitalization_id_seq OWNED BY public.hospitalization.id;
          public          postgres    false    189            ?            1259    46697 	   indiceffb    TABLE     ?   CREATE TABLE public.indiceffb (
    id integer NOT NULL,
    year integer,
    t1 double precision,
    t2 double precision,
    t3 double precision,
    t4 double precision
);
    DROP TABLE public.indiceffb;
       public            postgres    false            ?            1259    46695    indiceffb_id_seq    SEQUENCE     y   CREATE SEQUENCE public.indiceffb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.indiceffb_id_seq;
       public          postgres    false    192            ?           0    0    indiceffb_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.indiceffb_id_seq OWNED BY public.indiceffb.id;
          public          postgres    false    191            ?            1259    46706 	   indiceicc    TABLE     ?   CREATE TABLE public.indiceicc (
    id integer NOT NULL,
    year integer,
    t1 double precision,
    t2 double precision,
    t3 double precision,
    t4 double precision
);
    DROP TABLE public.indiceicc;
       public            postgres    false            ?            1259    46704    indiceicc_id_seq    SEQUENCE     y   CREATE SEQUENCE public.indiceicc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.indiceicc_id_seq;
       public          postgres    false    194            ?           0    0    indiceicc_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.indiceicc_id_seq OWNED BY public.indiceicc.id;
          public          postgres    false    193            ?            1259    46715    pricem2    TABLE     ?   CREATE TABLE public.pricem2 (
    id integer NOT NULL,
    town character varying(254),
    dptcode character varying(254),
    price double precision
);
    DROP TABLE public.pricem2;
       public            postgres    false            ?            1259    46713    pricem2_id_seq    SEQUENCE     w   CREATE SEQUENCE public.pricem2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pricem2_id_seq;
       public          postgres    false    196            ?           0    0    pricem2_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pricem2_id_seq OWNED BY public.pricem2.id;
          public          postgres    false    195            ?           2604    46673    avghomeinsurancecostregions id    DEFAULT     ?   ALTER TABLE ONLY public.avghomeinsurancecostregions ALTER COLUMN id SET DEFAULT nextval('public.avghomeinsurancecostregions_id_seq'::regclass);
 M   ALTER TABLE public.avghomeinsurancecostregions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    185    186    186            ?           2604    46682    avghomeinsurancecosttown id    DEFAULT     ?   ALTER TABLE ONLY public.avghomeinsurancecosttown ALTER COLUMN id SET DEFAULT nextval('public.avghomeinsurancecosttown_id_seq'::regclass);
 J   ALTER TABLE public.avghomeinsurancecosttown ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    188    187    188            ?           2604    46691    hospitalization id    DEFAULT     x   ALTER TABLE ONLY public.hospitalization ALTER COLUMN id SET DEFAULT nextval('public.hospitalization_id_seq'::regclass);
 A   ALTER TABLE public.hospitalization ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    190    189    190            ?           2604    46700    indiceffb id    DEFAULT     l   ALTER TABLE ONLY public.indiceffb ALTER COLUMN id SET DEFAULT nextval('public.indiceffb_id_seq'::regclass);
 ;   ALTER TABLE public.indiceffb ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    191    192    192            ?           2604    46709    indiceicc id    DEFAULT     l   ALTER TABLE ONLY public.indiceicc ALTER COLUMN id SET DEFAULT nextval('public.indiceicc_id_seq'::regclass);
 ;   ALTER TABLE public.indiceicc ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    193    194    194            ?           2604    46718 
   pricem2 id    DEFAULT     h   ALTER TABLE ONLY public.pricem2 ALTER COLUMN id SET DEFAULT nextval('public.pricem2_id_seq'::regclass);
 9   ALTER TABLE public.pricem2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    196    195    196            ~          0    46670    avghomeinsurancecostregions 
   TABLE DATA           S   COPY public.avghomeinsurancecostregions (id, region, apartment, house) FROM stdin;
    public          postgres    false    186   89       ?          0    46679    avghomeinsurancecosttown 
   TABLE DATA           N   COPY public.avghomeinsurancecosttown (id, town, apartment, house) FROM stdin;
    public          postgres    false    188   ?:       ?          0    46688    hospitalization 
   TABLE DATA           ;   COPY public.hospitalization (id, clinic, phsy) FROM stdin;
    public          postgres    false    190   ?=       ?          0    46697 	   indiceffb 
   TABLE DATA           =   COPY public.indiceffb (id, year, t1, t2, t3, t4) FROM stdin;
    public          postgres    false    192   ?=       ?          0    46706 	   indiceicc 
   TABLE DATA           =   COPY public.indiceicc (id, year, t1, t2, t3, t4) FROM stdin;
    public          postgres    false    194   b?       ?          0    46715    pricem2 
   TABLE DATA           ;   COPY public.pricem2 (id, town, dptcode, price) FROM stdin;
    public          postgres    false    196   N@       ?           0    0 "   avghomeinsurancecostregions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.avghomeinsurancecostregions_id_seq', 37, true);
          public          postgres    false    185            ?           0    0    avghomeinsurancecosttown_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.avghomeinsurancecosttown_id_seq', 54, true);
          public          postgres    false    187            ?           0    0    hospitalization_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.hospitalization_id_seq', 1, true);
          public          postgres    false    189            ?           0    0    indiceffb_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.indiceffb_id_seq', 22, true);
          public          postgres    false    191            ?           0    0    indiceicc_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.indiceicc_id_seq', 17, true);
          public          postgres    false    193            ?           0    0    pricem2_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pricem2_id_seq', 60, true);
          public          postgres    false    195            ?           2606    46675 :   avghomeinsurancecostregions pk_avghomeinsurancecostregions 
   CONSTRAINT     x   ALTER TABLE ONLY public.avghomeinsurancecostregions
    ADD CONSTRAINT pk_avghomeinsurancecostregions PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.avghomeinsurancecostregions DROP CONSTRAINT pk_avghomeinsurancecostregions;
       public            postgres    false    186            ?           2606    46684 4   avghomeinsurancecosttown pk_avghomeinsurancecosttown 
   CONSTRAINT     r   ALTER TABLE ONLY public.avghomeinsurancecosttown
    ADD CONSTRAINT pk_avghomeinsurancecosttown PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.avghomeinsurancecosttown DROP CONSTRAINT pk_avghomeinsurancecosttown;
       public            postgres    false    188            ?           2606    46693 "   hospitalization pk_hospitalization 
   CONSTRAINT     `   ALTER TABLE ONLY public.hospitalization
    ADD CONSTRAINT pk_hospitalization PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.hospitalization DROP CONSTRAINT pk_hospitalization;
       public            postgres    false    190                       2606    46702    indiceffb pk_indiceffb 
   CONSTRAINT     T   ALTER TABLE ONLY public.indiceffb
    ADD CONSTRAINT pk_indiceffb PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.indiceffb DROP CONSTRAINT pk_indiceffb;
       public            postgres    false    192                       2606    46711    indiceicc pk_indiceicc 
   CONSTRAINT     T   ALTER TABLE ONLY public.indiceicc
    ADD CONSTRAINT pk_indiceicc PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.indiceicc DROP CONSTRAINT pk_indiceicc;
       public            postgres    false    194                       2606    46723    pricem2 pk_pricem2 
   CONSTRAINT     P   ALTER TABLE ONLY public.pricem2
    ADD CONSTRAINT pk_pricem2 PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.pricem2 DROP CONSTRAINT pk_pricem2;
       public            postgres    false    196            ?           1259    46676    avghomeinsurancecostregions_pk    INDEX     k   CREATE UNIQUE INDEX avghomeinsurancecostregions_pk ON public.avghomeinsurancecostregions USING btree (id);
 2   DROP INDEX public.avghomeinsurancecostregions_pk;
       public            postgres    false    186            ?           1259    46685    avghomeinsurancecosttown_pk    INDEX     e   CREATE UNIQUE INDEX avghomeinsurancecosttown_pk ON public.avghomeinsurancecosttown USING btree (id);
 /   DROP INDEX public.avghomeinsurancecosttown_pk;
       public            postgres    false    188            ?           1259    46694    hospitalization_pk    INDEX     S   CREATE UNIQUE INDEX hospitalization_pk ON public.hospitalization USING btree (id);
 &   DROP INDEX public.hospitalization_pk;
       public            postgres    false    190            ?           1259    46703    indiceffb_pk    INDEX     G   CREATE UNIQUE INDEX indiceffb_pk ON public.indiceffb USING btree (id);
     DROP INDEX public.indiceffb_pk;
       public            postgres    false    192                       1259    46712    indiceicc_pk    INDEX     G   CREATE UNIQUE INDEX indiceicc_pk ON public.indiceicc USING btree (id);
     DROP INDEX public.indiceicc_pk;
       public            postgres    false    194                       1259    46724 
   pricem2_pk    INDEX     C   CREATE UNIQUE INDEX pricem2_pk ON public.pricem2 USING btree (id);
    DROP INDEX public.pricem2_pk;
       public            postgres    false    196            ~   ?  x????n? ???y*3??}t-??]Y=???E1J??b;R?!????b????i??%???du?????N????^?θ?]??uDY??!?&;?5??{??????O?x0n4C?΁????????q7????s??L??I??S??T????b??ӹ?R,??`?
?B????&^???3???!?$???0?x???+a~???o0?2)V?Z??d:????!??{???Y??|r??֜?~???V?Y?{m?ڍ?}?"&D*?kw^̀b????????_^U ??G?/?????
?P?D??@????f?P,c@?????0_??EX\a??:V?(?????KD?H??@??.3Pm???gě?u4??w?w
1.??e??coP?ig      ?   ?  x?MSKr1\?w
.`j?IK;)`W?b?FNTF0?͌+???????PŶ??u?](i i,)?Y?6?!???$? m-+?z?3I?I7?5??S?O&??+????}}`ȴ?[?y??֓?[?K??T$?#?;??y|?]?b?vI?????C???oY4t5??,?Ĝ_	?s,$?t?=??o>?S?3F1?ކ???????{0@?kX???z???ޗ??}?Ax.XX?L_1$|? ]???C?O+ ???KU?\)?T?OefJY?J??
܆??J/???*?ծ?????ԸO*??b9°ջXJ?P?HIlҴ)q??5??:??ٟbm???dI?????X$?Ф?],???C??ពA????93ݠ
m???W???r?2?{?W??=?Ft??7+IKw~?o?f?m???ܢ?n$+M7??,if3??]?\;ڪ9??E?cs?ZV??"7??a????~?lAт??j??? Pɺ????P7??(??W?}ʇ??ئ????>Iնe?h}?_sm??74???j???6??Zڣ]?????6???.??-??S?Ym?cmi?'4??U-lkG?!??o??n?ioY{???P?Vˈ??a???BF5,L????:?4,-V?j?fVS|;j݅???q@f?<sC???]iɟ?2?_???      ?      x?3?42?44?????? D?      ?   ?  x?mT[r?0???h@?????(???!??3A??e?a?&????x?Ǵ?&I?.??#PAKp'G:?Un??;?????S??ܑ?}??????x? D??@QY?Lv[ JA*ĎJyx????gH^?n?
?S?$?u?=L??Pn??#?.?ц??0?p?I?uz??l??/ğ?i#S????ɺ)????.1	|??"??w???ۆ\J????v8Y:[?	r??<1?J?i`f??"???,I??M??q??k?,g?tK
?ev?3.c?3??<?u?k???,?1?X??N6rI?.?D?L?K??3z[??:?Jon???z?E.?'_J?4?Ϊ??S[?596??U 1:%1?As??^?k?@???u?d'>ֱx? ??? b?????֗??B?_??1?      ?   ?   x?5?K??0C??0S?w???c???A\????~<?=?	?c?v???xfXBi? ????ն????;????VPJ?G|a???iu4/??e?_c#?3[?|f???U?Y;4u?v?????~??)L??:|?eJ??p A??/,W?j]?2i????A??	???>?o?7ws:qB?SGL?7+?)?ل?c????BC????9e??3??kM?      ?   ?  x?-S=r?8?O?(C??,%g????w\m3???? ?q|?\c??4[???>P.???????:??|\??t???
?3u%????>$?5?h?Ja}
>?hkHYו?:|9 %??2X??!??V??Xl?8?O?U????<??y????????_?I)8?a?a?J??E?͐/?g??&?/??/P$ݶ?d?i?jy?lҜ~?h!tY???~? ;?Z0?\~???Di????u>rr?np{tC??qΫw?=2?T?ͷG???E?????a<m?w????dM???D?9??*n?O)N?>g??*He?O?}?V<4DPx???>?=?.nn?????}LO?_????i???ܧ??I???͒[?ɝ3??^3?Mw.?????۫"?l???m?)W?暆??M???`ʪ??????%?sy??*?Pa??W??2???(??THɃ?	???????2ȥ?{?0?4I5??Jkք?҂???`??³?>?浥	??5???N??????????/Z ?>??wn?e;???
w>??????)??]
?R??XWvbyJ?G??Ƿ?TJ?-?????i?h?np?ÉT??5?%c?f(?ٟ?4?????y+KF?M-6L??.?@{??B???p??o?.?I?{AUB2N??0e7.?m?z٬?g????YA[6?+RB`??8ð??>?x???,l?Ĺ?<1???)<????c)?ʏR?%1[??????`EC"????'?)|     