PGDMP                     
    z         	   watchlist #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1) #   14.5 (Ubuntu 14.5-0ubuntu0.22.04.1) 4    Z           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            [           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            \           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ]           1262    17355 	   watchlist    DATABASE     ^   CREATE DATABASE watchlist WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE watchlist;
                postgres    false            ?            1259    17396    rating    TABLE     ?   CREATE TABLE public.rating (
    id integer NOT NULL,
    stars integer NOT NULL,
    comment text DEFAULT ''::text NOT NULL,
    watchlist_id integer NOT NULL,
    created_at date DEFAULT now() NOT NULL
);
    DROP TABLE public.rating;
       public         heap    postgres    false            ?            1259    17395    rating_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.rating_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rating_id_seq;
       public          postgres    false    216            ^           0    0    rating_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rating_id_seq OWNED BY public.rating.id;
          public          postgres    false    215            ?            1259    17420    sessions    TABLE     ?   CREATE TABLE public.sessions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    token text NOT NULL,
    created_at date DEFAULT now() NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            ?            1259    17418    sessions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public          postgres    false    219            _           0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
          public          postgres    false    217            ?            1259    17419    sessions_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sessions_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sessions_user_id_seq;
       public          postgres    false    219            `           0    0    sessions_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sessions_user_id_seq OWNED BY public.sessions.user_id;
          public          postgres    false    218            ?            1259    17371    stars    TABLE        CREATE TABLE public.stars (
    id integer NOT NULL,
    stars integer NOT NULL,
    created_at date DEFAULT now() NOT NULL
);
    DROP TABLE public.stars;
       public         heap    postgres    false            ?            1259    17370    stars_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stars_id_seq;
       public          postgres    false    212            a           0    0    stars_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.stars_id_seq OWNED BY public.stars.id;
          public          postgres    false    211            ?            1259    17357    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    image text NOT NULL,
    password text NOT NULL,
    created_at date DEFAULT now() NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    17356    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    210            b           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    209            ?            1259    17381 	   watchlist    TABLE       CREATE TABLE public.watchlist (
    id integer NOT NULL,
    "TMDB_movie_id" integer NOT NULL,
    title text NOT NULL,
    poster_path text NOT NULL,
    overview text NOT NULL,
    user_id integer NOT NULL,
    created_at date DEFAULT now() NOT NULL,
    release_date date
);
    DROP TABLE public.watchlist;
       public         heap    postgres    false            ?            1259    17380    watchlist_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.watchlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.watchlist_id_seq;
       public          postgres    false    214            c           0    0    watchlist_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.watchlist_id_seq OWNED BY public.watchlist.id;
          public          postgres    false    213            ?           2604    17399 	   rating id    DEFAULT     f   ALTER TABLE ONLY public.rating ALTER COLUMN id SET DEFAULT nextval('public.rating_id_seq'::regclass);
 8   ALTER TABLE public.rating ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    17423    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    217    219            ?           2604    17424    sessions user_id    DEFAULT     t   ALTER TABLE ONLY public.sessions ALTER COLUMN user_id SET DEFAULT nextval('public.sessions_user_id_seq'::regclass);
 ?   ALTER TABLE public.sessions ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    219    218    219            ?           2604    17374    stars id    DEFAULT     d   ALTER TABLE ONLY public.stars ALTER COLUMN id SET DEFAULT nextval('public.stars_id_seq'::regclass);
 7   ALTER TABLE public.stars ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    17360    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            ?           2604    17384    watchlist id    DEFAULT     l   ALTER TABLE ONLY public.watchlist ALTER COLUMN id SET DEFAULT nextval('public.watchlist_id_seq'::regclass);
 ;   ALTER TABLE public.watchlist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            T          0    17396    rating 
   TABLE DATA           N   COPY public.rating (id, stars, comment, watchlist_id, created_at) FROM stdin;
    public          postgres    false    216   w9       W          0    17420    sessions 
   TABLE DATA           B   COPY public.sessions (id, user_id, token, created_at) FROM stdin;
    public          postgres    false    219   :       P          0    17371    stars 
   TABLE DATA           6   COPY public.stars (id, stars, created_at) FROM stdin;
    public          postgres    false    212   =<       N          0    17357    users 
   TABLE DATA           M   COPY public.users (id, name, email, image, password, created_at) FROM stdin;
    public          postgres    false    210   {<       R          0    17381 	   watchlist 
   TABLE DATA           y   COPY public.watchlist (id, "TMDB_movie_id", title, poster_path, overview, user_id, created_at, release_date) FROM stdin;
    public          postgres    false    214   >       d           0    0    rating_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rating_id_seq', 12, true);
          public          postgres    false    215            e           0    0    sessions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sessions_id_seq', 10, true);
          public          postgres    false    217            f           0    0    sessions_user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sessions_user_id_seq', 1, false);
          public          postgres    false    218            g           0    0    stars_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.stars_id_seq', 5, true);
          public          postgres    false    211            h           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    209            i           0    0    watchlist_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.watchlist_id_seq', 11, true);
          public          postgres    false    213            ?           2606    17405    rating rating_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_pkey;
       public            postgres    false    216            ?           2606    17407    rating rating_watchlist_id_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_watchlist_id_key UNIQUE (watchlist_id);
 H   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_watchlist_id_key;
       public            postgres    false    216            ?           2606    17429    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    219            ?           2606    17431    sessions sessions_token_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);
 E   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_token_key;
       public            postgres    false    219            ?           2606    17377    stars stars_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.stars DROP CONSTRAINT stars_pkey;
       public            postgres    false    212            ?           2606    17379    stars stars_stars_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_stars_key UNIQUE (stars);
 ?   ALTER TABLE ONLY public.stars DROP CONSTRAINT stars_stars_key;
       public            postgres    false    212            ?           2606    17367    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    210            ?           2606    17369    users users_password_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_password_key UNIQUE (password);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_password_key;
       public            postgres    false    210            ?           2606    17365    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210            ?           2606    17389    watchlist watchlist_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.watchlist
    ADD CONSTRAINT watchlist_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.watchlist DROP CONSTRAINT watchlist_pkey;
       public            postgres    false    214            ?           2606    17408    rating rating_stars_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_stars_fkey FOREIGN KEY (stars) REFERENCES public.stars(id);
 B   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_stars_fkey;
       public          postgres    false    212    216    3249            ?           2606    17413    rating rating_watchlist_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.rating
    ADD CONSTRAINT rating_watchlist_id_fkey FOREIGN KEY (watchlist_id) REFERENCES public.watchlist(id);
 I   ALTER TABLE ONLY public.rating DROP CONSTRAINT rating_watchlist_id_fkey;
       public          postgres    false    214    216    3253            ?           2606    17432    sessions sessions_user_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 H   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_user_id_fkey;
       public          postgres    false    210    219    3247            ?           2606    17390     watchlist watchlist_user_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.watchlist
    ADD CONSTRAINT watchlist_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.watchlist DROP CONSTRAINT watchlist_user_id_fkey;
       public          postgres    false    214    210    3247            T   ?   x?]?;?0D??)?e7HII??44?X??JĂ??H?Λy????? *?M??Y????vHv?m^?tr?Q^??ǴZY?&Y?A??;?2???U ????<??+]n?0N?p?@R???V?????*??1??S2a      W     x???K?@???30KT?A????&F???,"}M7?]6$wy_??30G5	?{??*>?1?R?ĥ???㬾8U\~B?????j8n?ڻ??Ne??x$'2h'_\???:???hG?! ???G/D7??DH㓤?3?@? ?ss8%D?=ĥۃki??cF%>vr/?˔???al??r.?y?????A?^????y$ ?G?шړT?,0???I?(G͐>?F??o7c????o	K??)??????kA??k???X????$>??{???B???s4)?Z?2???"?	~.?,?F?[?eZ?ٌ{?Q ?e?j?????]???|??&7?/?ڽ??9??G?i?? ?V??D?
CV?Bޟ?Q????ѳo?.?a??_?}?????>?]seRIʾ!?t??ޟi?ȅ?%?iXv:l۠dm??pۧ?u?+??F?m?o?8%D?~??=???u?j#?nI2??ʎ?○??Ǉ]?ӫ4z??L(???P/?3?3?货??????l??!?????oɏ?|>??Ү      P   .   x?3?4?4202?54".#N#d?1?12ׄ??k?i?̍???? ?      N   ?  x???mo?0?_'???~?1ͺW??e?@MTM???$?x?M?O????NڤIw'݃???]?=???????L*X?ګ?5?g?????TJ+?PGF??E??C?,g??B왪?O??ֲ?,@??a????ѝT?????|???o!?o?YE???Dm?lWp??K?O?????ɽ??u?v??m?L??|?E??qq?V?V???ߙ???<J-?d?nJ4df?P???S?l?t?B?h?z??V"??1׌?%<?cs?h?&??j?J_?(????"??G?d???ryO???8?L9??@???~7K?????coדx?_???8?f??????????~??? ??6^̦4??vJ?ұW?K&??˶p?0?w??ǫ??????_)>??      R   ?  x??W?r?>???&U??(?{?dS?,˲~l+?8Ӝ??fG?)??G?s?M?$?CI??&??1U,84??????(????$9??u$BA????d0=?W??ptP?Ϗ???l????շM????-?Px??\!s??^H???N8
?3????1??F#|x9퍆???3NF???`?H?4IO??|eM????Ç???ϟ???????ty?z?/??A????"?@iP[z?_???eP&????K???_?Tex
Dm?ܒơ`?7-??|,S>?[r?ݞ?ۣI? Y'?z)]IN????䁘ى+gW?J?!T????i???d?Z???ZȄ.????j6P????ظ??B?ފ?lZ?8%?Nx|????9Q(/?Z??&kx$V2?k??r?#???????Dn\?+V*gk,h??F?Bx[?(HWb?l?Ymk???H??jZH? ??/???,^
?4????O?7????7$?H:C?????
?1/z?)>?i2??ƣirk*M??F???%(?r#n?_???8?1?pb??N?u????q?????u?
?D.?g??19	P??D@R묑[?jd(S?RE:??̹?b??DʹwT
???H??Ϋ ?Z"Ax'??ok?2?ZF{?[?K?Z?j???>????u^?w????v???&C~Z"<-??hp?`? ?c?&??!?!?z2??L?呁?????*!(??=#?m'J?H?'?Lٞ]y??B?vL?ڀ??}i???n w???[k@U *{?U??=f?y7;?"???Hn????:?uJ	?r?B/R???????,Y,f??"??#?o??;?SEN?,?Rû?:,n??ϛ??L????????~j?6???̱t*XT?G?rDJ?X01ʄg)n?Ƞj?????xW?y> j`}?J+\????h
?\??Q?xZW?s
??r??????a?? ?~S?$?E?d?>??qV?Lg?k??5J?]?l?ꒁe-?D?S??sF?S	)k3?|??N{[9i???8)?v?d??J?ML???;#???GO]Q?ӓ?폈s2?i?C?N???TA?h??`S?RA
!K(b??h.e~l?1??ݶ[=???p?[?h`C?R?????u???p4_L?K
??q"&??Z????????j{x0????d6???n?/?Ȉs?J?8???????>???D?H??%?.^?;?R`?b@???$(???E?Ң/??????7s/$?Y???V?u????w?+?????W?౒?|??O???*`?n??~2?fCTSo2?,???dx8M?????'(A??l86???????x3Y??]*??w?桉h-??]lQ??L???;s?x?9'ƃ???6@????tپ????qh/??cd?E'?B?p3eM.c3d8ЌQ)@?&?E??*N#Q#?p?s?2??Ad???*+mw\??6,Q?;??8U???ANa&]+^??p?㐋Z?چ]71??TԮ??h?,Ƌ?ET??@???`|??????avE???|?N˻?o??n?Q~???M$?i%{?|-?Fn?P ?g???G?MP)jq???]/??W?J??f??X?9?????7???$a#?$?ډ????????]w ??.'A?P?x+?|?,(?@x$??k-?Ld8?? ?t??*MoR?W ^??^?U? ?*?H;|Hݍ?%ym0)??<+?~??ׄia???????ؐ؂?1??#c??KֵX?;Xa???+%??5?????y~??}??D	_?b?#?m?%?D?????(2??K??(?WӋr|???
:???5??8?????????kTZv M??kMpCGܿ?
?F??ne???^H?c:^?w	9?HB?bv?3?W?)?.4C?_jl??ߍ????????-???0???t:?޿&P     