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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: table_name; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table_name (
    user_name character varying(22) NOT NULL,
    user_id integer NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.table_name OWNER TO freecodecamp;

--
-- Name: table_name_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table_name_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table_name_user_id_seq OWNER TO freecodecamp;

--
-- Name: table_name_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table_name_user_id_seq OWNED BY public.table_name.user_id;


--
-- Name: table_name user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_name ALTER COLUMN user_id SET DEFAULT nextval('public.table_name_user_id_seq'::regclass);


--
-- Data for Name: table_name; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table_name VALUES ('Sam', 1, 3, 4);


--
-- Name: table_name_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table_name_user_id_seq', 9, true);


--
-- Name: table_name table_name_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table_name
    ADD CONSTRAINT table_name_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

