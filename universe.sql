--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: commet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.commet (
    commet_id integer NOT NULL,
    name character varying,
    size integer NOT NULL,
    galaxy_id integer,
    solar_system boolean
);


ALTER TABLE public.commet OWNER TO freecodecamp;

--
-- Name: commet_commet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.commet_commet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commet_commet_id_seq OWNER TO freecodecamp;

--
-- Name: commet_commet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.commet_commet_id_seq OWNED BY public.commet.commet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    size integer NOT NULL,
    spilar boolean,
    color text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_first_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_first_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_first_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_first_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_first_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    solar_system boolean,
    size numeric(10,2) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_first_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_first_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_first_id_seq OWNER TO freecodecamp;

--
-- Name: moon_first_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_first_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    solar_system boolean,
    star_id integer NOT NULL,
    near_planet text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_first_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_first_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_first_id_seq OWNER TO freecodecamp;

--
-- Name: planet_first_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_first_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    size integer NOT NULL,
    galaxy_id integer,
    color text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_first_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_first_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_first_id_seq OWNER TO freecodecamp;

--
-- Name: star_first_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_first_id_seq OWNED BY public.star.star_id;


--
-- Name: commet commet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet ALTER COLUMN commet_id SET DEFAULT nextval('public.commet_commet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_first_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_first_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_first_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_first_id_seq'::regclass);


--
-- Data for Name: commet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.commet VALUES (1, 'Andromeda Comment', 300, 1, true);
INSERT INTO public.commet VALUES (2, 'Milky Way Comment', 150, 2, true);
INSERT INTO public.commet VALUES (3, 'Whirlpool Comment', 250, 3, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 76000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 50000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 170000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', true, 3474.00, 1);
INSERT INTO public.moon VALUES (2, 'Io', true, 3643.00, 2);
INSERT INTO public.moon VALUES (3, 'Europa', true, 3121.00, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', true, 5268.00, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', true, 4821.00, 2);
INSERT INTO public.moon VALUES (6, 'Titan', true, 5150.00, 3);
INSERT INTO public.moon VALUES (7, 'Rhea', true, 1528.00, 3);
INSERT INTO public.moon VALUES (8, 'Iapetus', true, 1469.00, 3);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 504.00, 3);
INSERT INTO public.moon VALUES (10, 'Tethys', true, 1062.00, 3);
INSERT INTO public.moon VALUES (11, 'Charon', true, 1212.00, 4);
INSERT INTO public.moon VALUES (12, 'Hydra', true, 63.00, 4);
INSERT INTO public.moon VALUES (13, 'Nix', true, 45.00, 4);
INSERT INTO public.moon VALUES (14, 'Kerberos', true, 13.00, 4);
INSERT INTO public.moon VALUES (15, 'Styx', true, 10.00, 4);
INSERT INTO public.moon VALUES (16, 'Deimos', true, 12.40, 5);
INSERT INTO public.moon VALUES (17, 'Phobos', true, 22.40, 5);
INSERT INTO public.moon VALUES (18, 'Titania', true, 1578.00, 6);
INSERT INTO public.moon VALUES (19, 'Oberon', true, 1523.00, 6);
INSERT INTO public.moon VALUES (20, 'Miranda', true, 471.00, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 'Mars');
INSERT INTO public.planet VALUES (2, 'Mars', true, 1, 'Earth');
INSERT INTO public.planet VALUES (3, 'Jupiter', true, 1, 'Saturn');
INSERT INTO public.planet VALUES (4, 'Saturn', true, 1, 'Jupiter');
INSERT INTO public.planet VALUES (5, 'Uranus', true, 1, 'Neptune');
INSERT INTO public.planet VALUES (6, 'Neptune', true, 1, 'Uranus');
INSERT INTO public.planet VALUES (7, 'Proxima Centauri b', false, 2, NULL);
INSERT INTO public.planet VALUES (8, 'Alpha Centauri A b', false, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Gliese 581 d', false, 3, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', false, 4, NULL);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', false, 5, NULL);
INSERT INTO public.planet VALUES (12, 'Trappist-1e', false, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 2, 1, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 2, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 887, 3, NULL);
INSERT INTO public.star VALUES (4, 'Vega', 2, 4, NULL);
INSERT INTO public.star VALUES (5, 'Altair', 2, 5, NULL);
INSERT INTO public.star VALUES (6, 'Rigel', 79, 6, NULL);


--
-- Name: commet_commet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.commet_commet_id_seq', 3, true);


--
-- Name: galaxy_first_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_first_id_seq', 1, true);


--
-- Name: moon_first_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_first_id_seq', 20, true);


--
-- Name: planet_first_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_first_id_seq', 12, true);


--
-- Name: star_first_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_first_id_seq', 1, true);


--
-- Name: commet commet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_pkey PRIMARY KEY (commet_id);


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
-- Name: planet planet_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: commet uni_commet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT uni_commet UNIQUE (name);


--
-- Name: galaxy uni_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uni_galaxy UNIQUE (name);


--
-- Name: moon uni_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uni_moon UNIQUE (name);


--
-- Name: star uni_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uni_star UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: commet fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

