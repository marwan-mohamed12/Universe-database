PGDMP                         z            universe    15.1    15.1 .    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    16458    universe    DATABASE     �   CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE universe;
                postgres    false            �            1259    16516    black_holes    TABLE     �   CREATE TABLE public.black_holes (
    black_holes_id integer NOT NULL,
    name character varying(30),
    category character varying(30),
    galaxy_id integer,
    mass integer
);
    DROP TABLE public.black_holes;
       public         heap    postgres    false            �            1259    16515    black_holes_black_holes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.black_holes_black_holes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.black_holes_black_holes_id_seq;
       public          postgres    false    223            0           0    0    black_holes_black_holes_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.black_holes_black_holes_id_seq OWNED BY public.black_holes.black_holes_id;
          public          postgres    false    222            �            1259    16460    galaxy    TABLE     �   CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    stars_num integer,
    description text,
    galaxy_type character varying(30) NOT NULL,
    size numeric(10,0)
);
    DROP TABLE public.galaxy;
       public         heap    postgres    false            �            1259    16459    galaxy_galaxy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.galaxy_galaxy_id_seq;
       public          postgres    false    215            1           0    0    galaxy_galaxy_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;
          public          postgres    false    214            �            1259    16502    moon    TABLE     �   CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    plant_id integer,
    is_spherical boolean,
    distance_from_earth integer
);
    DROP TABLE public.moon;
       public         heap    postgres    false            �            1259    16501    moon_moon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.moon_moon_id_seq;
       public          postgres    false    221            2           0    0    moon_moon_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;
          public          postgres    false    220            �            1259    16483    planet    TABLE     �   CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_number integer,
    star_id integer,
    has_life boolean,
    planet_type character varying(30)
);
    DROP TABLE public.planet;
       public         heap    postgres    false            �            1259    16482    planet_star_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.planet_star_id_seq;
       public          postgres    false    219            3           0    0    planet_star_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.planet_id;
          public          postgres    false    218            �            1259    16471    star    TABLE     �   CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    age_in_million_years integer,
    orbit_plants integer,
    galaxy_id integer NOT NULL
);
    DROP TABLE public.star;
       public         heap    postgres    false            �            1259    16470    star_star_id_seq    SEQUENCE     �   CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.star_star_id_seq;
       public          postgres    false    217            4           0    0    star_star_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;
          public          postgres    false    216            }           2604    16519    black_holes black_holes_id    DEFAULT     �   ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_holes_id_seq'::regclass);
 I   ALTER TABLE public.black_holes ALTER COLUMN black_holes_id DROP DEFAULT;
       public          postgres    false    223    222    223            y           2604    16463    galaxy galaxy_id    DEFAULT     t   ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);
 ?   ALTER TABLE public.galaxy ALTER COLUMN galaxy_id DROP DEFAULT;
       public          postgres    false    215    214    215            |           2604    16505    moon moon_id    DEFAULT     l   ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);
 ;   ALTER TABLE public.moon ALTER COLUMN moon_id DROP DEFAULT;
       public          postgres    false    221    220    221            {           2604    16486    planet planet_id    DEFAULT     r   ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);
 ?   ALTER TABLE public.planet ALTER COLUMN planet_id DROP DEFAULT;
       public          postgres    false    218    219    219            z           2604    16474    star star_id    DEFAULT     l   ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);
 ;   ALTER TABLE public.star ALTER COLUMN star_id DROP DEFAULT;
       public          postgres    false    217    216    217            )          0    16516    black_holes 
   TABLE DATA           V   COPY public.black_holes (black_holes_id, name, category, galaxy_id, mass) FROM stdin;
    public          postgres    false    223   4       !          0    16460    galaxy 
   TABLE DATA           \   COPY public.galaxy (galaxy_id, name, stars_num, description, galaxy_type, size) FROM stdin;
    public          postgres    false    215   Z4       '          0    16502    moon 
   TABLE DATA           Z   COPY public.moon (moon_id, name, plant_id, is_spherical, distance_from_earth) FROM stdin;
    public          postgres    false    221   +5       %          0    16483    planet 
   TABLE DATA           ^   COPY public.planet (planet_id, name, moon_number, star_id, has_life, planet_type) FROM stdin;
    public          postgres    false    219   �5       #          0    16471    star 
   TABLE DATA           \   COPY public.star (star_id, name, age_in_million_years, orbit_plants, galaxy_id) FROM stdin;
    public          postgres    false    217   �6       5           0    0    black_holes_black_holes_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.black_holes_black_holes_id_seq', 1, false);
          public          postgres    false    222            6           0    0    galaxy_galaxy_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);
          public          postgres    false    214            7           0    0    moon_moon_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);
          public          postgres    false    220            8           0    0    planet_star_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);
          public          postgres    false    218            9           0    0    star_star_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);
          public          postgres    false    216            �           2606    16521    black_holes black_holes_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);
 F   ALTER TABLE ONLY public.black_holes DROP CONSTRAINT black_holes_pkey;
       public            postgres    false    223                       2606    16469    galaxy galaxy_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_name_key;
       public            postgres    false    215            �           2606    16467    galaxy galaxy_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);
 <   ALTER TABLE ONLY public.galaxy DROP CONSTRAINT galaxy_pkey;
       public            postgres    false    215            �           2606    16509    moon moon_name_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);
 <   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_name_key;
       public            postgres    false    221            �           2606    16507    moon moon_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);
 8   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_pkey;
       public            postgres    false    221            �           2606    16490    planet planet_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_name_key;
       public            postgres    false    219            �           2606    16488    planet planet_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);
 <   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_pkey;
       public            postgres    false    219            �           2606    16476    star star_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);
 8   ALTER TABLE ONLY public.star DROP CONSTRAINT star_pkey;
       public            postgres    false    217            �           2606    16522 &   black_holes black_holes_galaxy_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
 P   ALTER TABLE ONLY public.black_holes DROP CONSTRAINT black_holes_galaxy_id_fkey;
       public          postgres    false    223    3201    215            �           2606    16510    moon moon_plant_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_plant_id_fkey FOREIGN KEY (plant_id) REFERENCES public.planet(planet_id);
 A   ALTER TABLE ONLY public.moon DROP CONSTRAINT moon_plant_id_fkey;
       public          postgres    false    219    3207    221            �           2606    16496    planet planet_star_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);
 D   ALTER TABLE ONLY public.planet DROP CONSTRAINT planet_star_id_fkey;
       public          postgres    false    3203    217    219            �           2606    16477    star star_galaxy_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
 B   ALTER TABLE ONLY public.star DROP CONSTRAINT star_galaxy_id_fkey;
       public          postgres    false    215    3201    217            )   1   x�3�,N��,.I��I,�4�44 .#dQ#N#��1��1�1T8F��� Ӥ3      !   �   x��α� �Y�����ЩS�.]�R%El<�����$��������F�_��*\V��d�-tp�B���A����o5����ɠB�L�P~��Ͳ���ZMЊs��ܯ�A�(;H�.�Ȏ���h3�SY�hFS˨����b4���<�hu�V��՞���xj��&�51Z���xڽ �� ��8�      '   �   x�]�M
�0���a$���E\	�MĊ�@��ۛ�0I�@�7�2�pIia��ZK)\_�>��j
�����Ҁ�;.1���.��:4=|�ǸL�.��}O����0$��d忭$�q�N�c��|�<��ږ�hka��qD���Y�ŕ9 465x��x;!~D�\�      %   �   x�m�A
�0����)<����z 7��M�TE�e2��	�Bʿ�Ë��ߡS�\��_�;V�X�܀����BZ��!,�ubr��^�G��=�q|��D��Ìi�n�D�G|��Z�X�^ޖ&��j�`9�_��l�fE/[��}d      #   D   x�Mȹ	�0�x��{A��'���7�����6����m�5S�s����@��=7�<�v}     