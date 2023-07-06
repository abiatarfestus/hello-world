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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer,
    description text,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_types integer
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer,
    description text,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    moon_types integer,
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
    planet_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer,
    description text,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_types integer,
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
    star_id integer NOT NULL,
    name character varying(40),
    age_in_millions_of_years integer,
    description text,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    star_types integer,
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'earth1', 'Earth1 desc');
INSERT INTO public.earth VALUES (2, 'earth2', 'Earth2 desc');
INSERT INTO public.earth VALUES (3, 'earth3', 'Earth3 desc');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 20, 'Galaxy1 desc', 2355.30, false, false, 7);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 30, 'Galaxy2 desc', 2355.30, false, false, 5);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 30, 'Galaxy3 desc', 2355.30, true, false, 2);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 3, 'Galaxy4 desc', 435.0, true, true, 40);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 8, 'Galaxy5 desc', 463.4, false, false, 15);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 12, 'Galaxy6 desc', 33, false, true, 25);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 30, 'Moon1 desc', 2355.30, true, false, 2, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 3, 'Moon2 desc', 435.0, true, true, 40, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 8, 'Moon3 desc', 463.4, false, false, 15, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 12, 'Moon4 desc', 33, false, true, 25, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 53, 'Moon5 desc', 356, false, true, 632, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 44, 'Moon6 desc', 46, true, true, 888, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 55, 'Moon7 desc', 27, false, false, 898, 7);
INSERT INTO public.moon VALUES (9, 'moon14', 30, 'Moon14 desc', 2355.30, true, false, 2, 1);
INSERT INTO public.moon VALUES (10, 'moon13', 3, 'Moon13 desc', 435.0, true, true, 40, 2);
INSERT INTO public.moon VALUES (11, 'moon12', 8, 'Moon12 desc', 463.4, false, false, 15, 3);
INSERT INTO public.moon VALUES (12, 'moon11', 12, 'Moon11 desc', 33, false, true, 25, 4);
INSERT INTO public.moon VALUES (13, 'moon10', 53, 'Moon10 desc', 356, false, true, 632, 5);
INSERT INTO public.moon VALUES (14, 'moon9', 44, 'Moon9 desc', 46, true, true, 888, 6);
INSERT INTO public.moon VALUES (15, 'moon8', 55, 'Moon8 desc', 27, false, false, 898, 7);
INSERT INTO public.moon VALUES (16, 'moon21', 30, 'Moon21 desc', 2355.30, true, false, 2, 1);
INSERT INTO public.moon VALUES (17, 'moo0n2', 3, 'Mo20n2 desc', 435.0, true, true, 40, 2);
INSERT INTO public.moon VALUES (18, 'moon19', 8, 'Moon19 desc', 463.4, false, false, 15, 3);
INSERT INTO public.moon VALUES (19, 'moon18', 12, 'Moon18 desc', 33, false, true, 25, 4);
INSERT INTO public.moon VALUES (20, 'moon17', 53, 'Moon17 desc', 356, false, true, 632, 5);
INSERT INTO public.moon VALUES (21, 'mo1on6', 44, 'Mo16n6 desc', 46, true, true, 888, 6);
INSERT INTO public.moon VALUES (22, 'moon15', 55, 'Moon15 desc', 27, false, false, 898, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet3', 30, 'Planet3 desc', 2355.30, true, false, 2, 3);
INSERT INTO public.planet VALUES (2, 'planet4', 3, 'Planet4 desc', 435.0, true, true, 40, 4);
INSERT INTO public.planet VALUES (3, 'planet5', 8, 'Planet5 desc', 463.4, false, false, 15, 5);
INSERT INTO public.planet VALUES (4, 'planet6', 12, 'Planet6 desc', 33, false, true, 25, 6);
INSERT INTO public.planet VALUES (5, 'planet1', 30, 'Planet1 desc', 2355.30, true, false, 2, 1);
INSERT INTO public.planet VALUES (6, 'planet2', 3, 'Planet2 desc', 435.0, true, true, 40, 2);
INSERT INTO public.planet VALUES (7, 'planet7', 30, 'Planet7 desc', 2355.30, true, false, 2, 3);
INSERT INTO public.planet VALUES (8, 'planet8', 3, 'Planet8 desc', 435.0, true, true, 40, 4);
INSERT INTO public.planet VALUES (9, 'planet9', 8, 'Planet9 desc', 463.4, false, false, 15, 5);
INSERT INTO public.planet VALUES (10, 'planet6', 10, 'Planet10 desc', 33, false, true, 25, 6);
INSERT INTO public.planet VALUES (11, 'planet12', 30, 'Planet12 desc', 2355.30, true, false, 2, 3);
INSERT INTO public.planet VALUES (12, 'planet11', 3, 'Planet11 desc', 435.0, true, true, 40, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 20, 'Star1 desc', 2355.30, false, false, 7, 1);
INSERT INTO public.star VALUES (2, 'star2', 20, 'Star2 desc', 2355.30, false, false, 7, 2);
INSERT INTO public.star VALUES (3, 'star3', 30, 'Star3 desc', 2355.30, true, false, 2, 3);
INSERT INTO public.star VALUES (4, 'star4', 3, 'Star4 desc', 435.0, true, true, 40, 4);
INSERT INTO public.star VALUES (5, 'star5', 8, 'Star5 desc', 463.4, false, false, 15, 5);
INSERT INTO public.star VALUES (6, 'star6', 12, 'Star6 desc', 33, false, true, 25, 6);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth earth_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_description_key UNIQUE (description);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (description);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (description);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (description);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (description);


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

