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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    score integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 15);
INSERT INTO public.games VALUES (2, 1, 10);
INSERT INTO public.games VALUES (3, 6, 706);
INSERT INTO public.games VALUES (4, 6, 671);
INSERT INTO public.games VALUES (5, 7, 127);
INSERT INTO public.games VALUES (6, 7, 937);
INSERT INTO public.games VALUES (7, 6, 960);
INSERT INTO public.games VALUES (8, 6, 357);
INSERT INTO public.games VALUES (9, 6, 806);
INSERT INTO public.games VALUES (10, 8, 456);
INSERT INTO public.games VALUES (11, 8, 491);
INSERT INTO public.games VALUES (12, 9, 588);
INSERT INTO public.games VALUES (13, 9, 258);
INSERT INTO public.games VALUES (14, 8, 749);
INSERT INTO public.games VALUES (15, 8, 82);
INSERT INTO public.games VALUES (16, 8, 622);
INSERT INTO public.games VALUES (17, 10, 613);
INSERT INTO public.games VALUES (18, 10, 361);
INSERT INTO public.games VALUES (19, 11, 38);
INSERT INTO public.games VALUES (20, 11, 140);
INSERT INTO public.games VALUES (21, 10, 570);
INSERT INTO public.games VALUES (22, 10, 365);
INSERT INTO public.games VALUES (23, 10, 563);
INSERT INTO public.games VALUES (24, 12, 312);
INSERT INTO public.games VALUES (25, 12, 255);
INSERT INTO public.games VALUES (26, 13, 192);
INSERT INTO public.games VALUES (27, 13, 923);
INSERT INTO public.games VALUES (28, 12, 31);
INSERT INTO public.games VALUES (29, 12, 604);
INSERT INTO public.games VALUES (30, 12, 300);
INSERT INTO public.games VALUES (31, 14, 500);
INSERT INTO public.games VALUES (32, 14, 614);
INSERT INTO public.games VALUES (33, 15, 315);
INSERT INTO public.games VALUES (34, 15, 383);
INSERT INTO public.games VALUES (35, 14, 175);
INSERT INTO public.games VALUES (36, 14, 279);
INSERT INTO public.games VALUES (37, 14, 646);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'thytran91');
INSERT INTO public.users VALUES (2, 'user_1693276858575');
INSERT INTO public.users VALUES (3, 'user_1693276858574');
INSERT INTO public.users VALUES (4, 'user_1693276999258');
INSERT INTO public.users VALUES (5, 'user_1693276999257');
INSERT INTO public.users VALUES (6, 'user_1693277977657');
INSERT INTO public.users VALUES (7, 'user_1693277977656');
INSERT INTO public.users VALUES (8, 'user_1693278310279');
INSERT INTO public.users VALUES (9, 'user_1693278310278');
INSERT INTO public.users VALUES (10, 'user_1693278355396');
INSERT INTO public.users VALUES (11, 'user_1693278355395');
INSERT INTO public.users VALUES (12, 'user_1693278411162');
INSERT INTO public.users VALUES (13, 'user_1693278411161');
INSERT INTO public.users VALUES (14, 'user_1693278585355');
INSERT INTO public.users VALUES (15, 'user_1693278585354');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

