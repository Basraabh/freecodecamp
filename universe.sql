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
    galaxy_id integer NOT NULL,
    name character varying,
    is_sperical boolean NOT NULL,
    distance_from_earth integer,
    age_in_millions integer,
    radius numeric(6,3),
    description text
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
    name character varying,
    is_sperical boolean,
    distance_from_earth integer,
    age_in_millions integer,
    planet_id integer NOT NULL
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
    name character varying,
    is_sperical boolean,
    distance_from_earth integer,
    age_in_millions integer,
    star_id integer NOT NULL
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
-- Name: possiblelife; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.possiblelife (
    possiblelife_id integer NOT NULL,
    name character varying NOT NULL,
    lifetype text,
    planet_id integer NOT NULL
);


ALTER TABLE public.possiblelife OWNER TO freecodecamp;

--
-- Name: possiblelife_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.possiblelife_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.possiblelife_life_id_seq OWNER TO freecodecamp;

--
-- Name: possiblelife_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.possiblelife_life_id_seq OWNED BY public.possiblelife.possiblelife_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying,
    is_sperical boolean,
    distance_from_earth integer,
    age_in_millions integer,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: possiblelife possiblelife_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.possiblelife ALTER COLUMN possiblelife_id SET DEFAULT nextval('public.possiblelife_life_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkyway', false, 0, 14, 5.285, 'home galaxy- spiral');
INSERT INTO public.galaxy VALUES (2, 'andromeda', false, 3, 10, 11.100, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, 8, 14, 2.500, 'Peculiar - virgo and corvus');
INSERT INTO public.galaxy VALUES (6, 'whirlpool', false, 7, 12, 1.500, 'grand spiral');
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', false, 6, 11, 1.700, 'Ursa major galaxy');
INSERT INTO public.galaxy VALUES (8, 'Messier81', false, 4, 8, 3.750, 'ursa major-grand spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Our moon', true, 0, 5, 3);
INSERT INTO public.moon VALUES (2, 'phobos', true, 2, 5, 4);
INSERT INTO public.moon VALUES (3, 'deimos', true, 2, 5, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', true, 3, 5, 5);
INSERT INTO public.moon VALUES (6, 'lo', true, 4, 5, 5);
INSERT INTO public.moon VALUES (7, 'callisto', true, 4, 5, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', true, 4, 5, 5);
INSERT INTO public.moon VALUES (9, 'Thebe', true, 4, 5, 5);
INSERT INTO public.moon VALUES (10, 'Valetudo', true, 4, 5, 5);
INSERT INTO public.moon VALUES (11, 'Callirhoe', true, 4, 5, 5);
INSERT INTO public.moon VALUES (12, 'Jupiter LII', true, 4, 5, 5);
INSERT INTO public.moon VALUES (13, 'Himalia', true, 4, 5, 5);
INSERT INTO public.moon VALUES (14, 'Adrastea', true, 4, 5, 5);
INSERT INTO public.moon VALUES (15, 'Carpo', true, 4, 5, 5);
INSERT INTO public.moon VALUES (16, 'Lysithea', true, 4, 5, 5);
INSERT INTO public.moon VALUES (17, 'Sinope', true, 4, 5, 5);
INSERT INTO public.moon VALUES (18, 'Pasiphe', true, 4, 5, 5);
INSERT INTO public.moon VALUES (19, 'Ananke', true, 4, 5, 5);
INSERT INTO public.moon VALUES (20, 'Elara', true, 4, 5, 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, 3, 5, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', true, 2, 5, 1);
INSERT INTO public.planet VALUES (2, 'venus', true, 2, 5, 1);
INSERT INTO public.planet VALUES (3, 'earth', true, 0, 5, 1);
INSERT INTO public.planet VALUES (4, 'mars', true, 2, 5, 1);
INSERT INTO public.planet VALUES (5, 'jupiter', true, 2, 5, 1);
INSERT INTO public.planet VALUES (6, 'saturn', true, 3, 5, 1);
INSERT INTO public.planet VALUES (7, 'neptune', true, 3, 5, 1);
INSERT INTO public.planet VALUES (8, 'uranus', true, 3, 5, 1);
INSERT INTO public.planet VALUES (9, 'pluto', true, 3, 5, 1);
INSERT INTO public.planet VALUES (10, 'Proxima centauri b', true, 4, 5, 2);
INSERT INTO public.planet VALUES (11, 'Proxima centauri Bb', true, 5, 5, 2);
INSERT INTO public.planet VALUES (12, 'Alpha centauri', true, 5, 5, 2);


--
-- Data for Name: possiblelife; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.possiblelife VALUES (1, 'Earthlings', 'Carbon based', 3);
INSERT INTO public.possiblelife VALUES (2, 'Martians', 'Carbon based', 4);
INSERT INTO public.possiblelife VALUES (3, 'Jupiteranites', 'Silicone based', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', true, 1, 5, 1, 1);
INSERT INTO public.star VALUES ('proxima centauri', true, 5, 5, 1, 2);
INSERT INTO public.star VALUES ('Rigil', true, 5, 5, 1, 3);
INSERT INTO public.star VALUES ('Toliman', true, 6, 5, 1, 4);
INSERT INTO public.star VALUES ('Barnard', true, 7, 5, 1, 5);
INSERT INTO public.star VALUES ('Luhman', true, 8, 6, 1, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: possiblelife_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.possiblelife_life_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_description_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_unique UNIQUE (description);


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
-- Name: moon moon_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_name UNIQUE (name);


--
-- Name: possiblelife possiblelife_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.possiblelife
    ADD CONSTRAINT possiblelife_pkey PRIMARY KEY (possiblelife_id);


--
-- Name: possiblelife possiblelife_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.possiblelife
    ADD CONSTRAINT possiblelife_unique_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_name UNIQUE (name);


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
-- Name: possiblelife possiblelife_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.possiblelife
    ADD CONSTRAINT possiblelife_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

