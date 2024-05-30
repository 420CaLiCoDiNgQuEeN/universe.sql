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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    abbreviation character varying(10) NOT NULL,
    location text,
    no_of_stars integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    size numeric,
    has_blackhole boolean NOT NULL,
    distance_from_earth integer,
    age_in_millions integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(100),
    size numeric,
    has_atmosphere boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(100),
    mass numeric,
    has_water boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(100),
    mass numeric,
    is_supernova boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'ORION', 'ORI', 'CELESTIAL-EQUATOR', 7);
INSERT INTO public.constellation VALUES (2, 'LEO', 'LION', 'CELLESTIAL-EQUATOR', 52);
INSERT INTO public.constellation VALUES (3, 'CRUX', 'CRU', 'SOUTHERN-HEMISPHERE', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MILKYWAY', 'HOMEGALAXY', 100000, true, 26000, 13000);
INSERT INTO public.galaxy VALUES (2, 'ANDROMEDA', 'SPRIAL', 120000, false, 222000, 15999);
INSERT INTO public.galaxy VALUES (3, 'TRIANGULUM', 'SMALL', 20000, false, 40000, 120000);
INSERT INTO public.galaxy VALUES (4, 'WHIRLPOOL', 'INTERACTING', 5000, true, 230000, 110000);
INSERT INTO public.galaxy VALUES (5, 'SOMBEREO', 'EDGEON', 40000, false, 230000, 1500);
INSERT INTO public.galaxy VALUES (6, 'CARTWHEEL', 'RING', 24599, true, 349900, 129900);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'MOON', 'TERRESTRIAL', 734000000, false, 1);
INSERT INTO public.moon VALUES (2, 'LUNA', 'TERRESTRIAL', 34559900, false, 1);
INSERT INTO public.moon VALUES (3, 'PHOBOS', 'ROCKY', 2345540000, false, 2);
INSERT INTO public.moon VALUES (4, 'DEIMOS', 'ROCKY', 122399900, false, 5);
INSERT INTO public.moon VALUES (5, 'CHARON', 'ROCKY', 234599900, false, 4);
INSERT INTO public.moon VALUES (6, 'IO', 'ROCKY', 23455000, true, 6);
INSERT INTO public.moon VALUES (7, 'GANYMEDE', 'ICE', 23821000, true, 9);
INSERT INTO public.moon VALUES (8, 'EUROPA', 'ICE', 365100058, true, 3);
INSERT INTO public.moon VALUES (9, 'TITAN', 'ICE', 2399533, true, 8);
INSERT INTO public.moon VALUES (10, 'RHEA', 'ICE', 8834555001, true, 13);
INSERT INTO public.moon VALUES (11, 'ENCELEDAS', 'ICE', 234800989, true, 7);
INSERT INTO public.moon VALUES (12, 'CALLISTO', 'ICE', 8998500, false, 12);
INSERT INTO public.moon VALUES (13, 'CERES', 'ICE', 2340000808, false, 9);
INSERT INTO public.moon VALUES (14, 'PLUTO', 'DWARF', 99834400, false, 13);
INSERT INTO public.moon VALUES (15, 'HAUMEA', 'DWARF', 3455664, false, 10);
INSERT INTO public.moon VALUES (16, 'ERIS', 'DWARF', 34500088569, false, 2);
INSERT INTO public.moon VALUES (17, 'HALIMEDE', 'ROCKY', 23008896, false, 5);
INSERT INTO public.moon VALUES (18, 'OLYMPUS', 'ROCKY', 9985594, true, 1);
INSERT INTO public.moon VALUES (19, 'MIMAS', 'ICE', 23440098, true, 13);
INSERT INTO public.moon VALUES (20, 'OBERON', 'ICE', 2340008889, false, 2);
INSERT INTO public.moon VALUES (21, 'UMBRIEL', 'ICE', 56762293, true, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'EARTH', 'TERRESTRIAL', 592700000, true, 6);
INSERT INTO public.planet VALUES (2, 'MARS', 'TERRESTRIAL', 639400000, false, 5);
INSERT INTO public.planet VALUES (3, 'JUPITER', 'GASGIANT', 486700000, false, 4);
INSERT INTO public.planet VALUES (4, 'VENUS', 'TERRESTRIAL', 198800000, false, 3);
INSERT INTO public.planet VALUES (5, 'SATURN', 'GASGIANT', 568300000, true, 2);
INSERT INTO public.planet VALUES (6, 'NEPTUNE', 'ICEGIANT', 102400000, true, 1);
INSERT INTO public.planet VALUES (7, 'KEPLER452B', 'TERRESTRIAL', 345600000, false, 2);
INSERT INTO public.planet VALUES (8, 'MERCURY', 'TERRESTRIAL', 331100000, false, 3);
INSERT INTO public.planet VALUES (9, 'SATURN II', 'GASGIANT', 546700000, false, 4);
INSERT INTO public.planet VALUES (10, 'URANUS', 'ICEGIANT', 868780000, true, 1);
INSERT INTO public.planet VALUES (11, 'KEPLER62E', 'TERRESTRIAL', 189700000, true, 2);
INSERT INTO public.planet VALUES (12, 'GLIESE876D', 'TERRESTRIAL', 345600000, true, 3);
INSERT INTO public.planet VALUES (13, '55CANCRI F', 'SUPEREARTH', 6534400000, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'SUN', 'GTYPE MAINSEQUENCE', 1989000000, false, 1);
INSERT INTO public.star VALUES (5, 'ALPHA CENTAURIA', 'GTYPE MAINSEQUENCE', 2190000000, false, 2);
INSERT INTO public.star VALUES (4, 'ALPHA CENTAURIB', 'KTYPE MAINSEQUENCE', 17000000, false, 3);
INSERT INTO public.star VALUES (3, 'SIRIUS', 'ATYPE MAINSEQUENCE', 2020200000, true, 4);
INSERT INTO public.star VALUES (2, 'PROXIMA CENTAURI', 'MTYPE MAINSEQUENCE', 2349980000, false, 5);
INSERT INTO public.star VALUES (1, 'BETELGEUSE', 'RED SUPERGIANT', 888998000, true, 4);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

