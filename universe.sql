--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    remark text,
    remark_2 character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: important_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.important_info (
    has_water boolean NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    name character varying(30),
    important_info_id integer NOT NULL
);


ALTER TABLE public.important_info OWNER TO freecodecamp;

--
-- Name: important_info_important_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.important_info_important_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.important_info_important_info_id_seq OWNER TO freecodecamp;

--
-- Name: important_info_important_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.important_info_important_info_id_seq OWNED BY public.important_info.important_info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_million_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: important_info important_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.important_info ALTER COLUMN important_info_id SET DEFAULT nextval('public.important_info_important_info_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy_1', 6, 500, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_2', 7, 500, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_3', 8, 500, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_4', 9, 500, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_5', 10, 500, NULL, NULL);
INSERT INTO public.galaxy VALUES ('galaxy_6', 11, 500, NULL, NULL);


--
-- Data for Name: important_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.important_info VALUES (true, 6, NULL, NULL, 1);
INSERT INTO public.important_info VALUES (true, 8, NULL, NULL, 2);
INSERT INTO public.important_info VALUES (true, 10, NULL, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon_1', 2, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('moon_2', 3, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('moon_3', 4, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('moon_4', 5, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('moon_5', 6, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES ('moon_7', 8, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('moon_8', 9, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('moon_9', 10, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('moon_10', 11, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('moon_11', 12, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('moon_12', 13, NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES ('moon_13', 14, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES ('moon_14', 15, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('moon_15', 16, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('moon_16', 17, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('moon_17', 18, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES ('moon_18', 19, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES ('moon_19', 20, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES ('moon_20', 21, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES ('moon_6', 7, NULL, NULL, NULL, NULL, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet_1', 5, true, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('planet_2', 6, true, true, NULL, NULL, 6);
INSERT INTO public.planet VALUES ('planet_3', 7, true, true, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('planet_4', 8, true, true, NULL, NULL, 8);
INSERT INTO public.planet VALUES ('planet_5', 9, true, true, NULL, NULL, 9);
INSERT INTO public.planet VALUES ('planet_6', 10, true, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('planet_7', 12, true, true, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('planet_8', 13, true, true, NULL, NULL, 5);
INSERT INTO public.planet VALUES ('planet_9', 14, true, true, NULL, NULL, 6);
INSERT INTO public.planet VALUES ('planet_10', 15, true, true, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('planet_11', 16, true, true, NULL, NULL, 7);
INSERT INTO public.planet VALUES ('planet_12', 17, true, true, NULL, NULL, 8);
INSERT INTO public.planet VALUES ('planet_13', 11, true, true, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star_1', 4, true, true, 2, 500, 6);
INSERT INTO public.star VALUES ('star_2', 5, true, true, 2, 500, 7);
INSERT INTO public.star VALUES ('star_3', 6, true, true, 2, 500, 8);
INSERT INTO public.star VALUES ('star_4', 7, true, true, 2, 500, 9);
INSERT INTO public.star VALUES ('star_5', 8, true, true, 2, 500, 10);
INSERT INTO public.star VALUES ('star_6', 9, true, true, 2, 500, 11);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: important_info_important_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.important_info_important_info_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: important_info important_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.important_info
    ADD CONSTRAINT important_info_pkey PRIMARY KEY (important_info_id);


--
-- Name: important_info importantnameunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.important_info
    ADD CONSTRAINT importantnameunique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moonnameunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moonnameunique UNIQUE (name);


--
-- Name: galaxy nameunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT nameunique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planetnameunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planetnameunique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star starnameunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT starnameunique UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

