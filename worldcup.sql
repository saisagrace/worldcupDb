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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 129, 131, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 130, 134, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 131, 134, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 129, 130, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 131, 142, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 134, 138, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 130, 140, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 129, 143, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 134, 154, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 138, 212, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 130, 214, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 140, 216, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 131, 218, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 142, 220, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 143, 222, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 129, 147, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 145, 147, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 146, 140, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 147, 146, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 145, 140, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 146, 158, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 147, 130, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 140, 154, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 145, 129, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 140, 242, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 154, 143, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 129, 246, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 145, 248, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 146, 216, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 158, 252, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 147, 212, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 130, 256, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (129, 'France');
INSERT INTO public.teams VALUES (130, 'Belgium');
INSERT INTO public.teams VALUES (131, 'Croatia');
INSERT INTO public.teams VALUES (134, 'England');
INSERT INTO public.teams VALUES (138, 'Sweden');
INSERT INTO public.teams VALUES (140, 'Brazil');
INSERT INTO public.teams VALUES (142, 'Russia');
INSERT INTO public.teams VALUES (143, 'Uruguay');
INSERT INTO public.teams VALUES (145, 'Germany');
INSERT INTO public.teams VALUES (146, 'Netherlands');
INSERT INTO public.teams VALUES (147, 'Argentina');
INSERT INTO public.teams VALUES (154, 'Colombia');
INSERT INTO public.teams VALUES (158, 'Costa Rica');
INSERT INTO public.teams VALUES (212, 'Switzerland');
INSERT INTO public.teams VALUES (214, 'Japan');
INSERT INTO public.teams VALUES (216, 'Mexico');
INSERT INTO public.teams VALUES (218, 'Denmark');
INSERT INTO public.teams VALUES (220, 'Spain');
INSERT INTO public.teams VALUES (222, 'Portugal');
INSERT INTO public.teams VALUES (242, 'Chile');
INSERT INTO public.teams VALUES (246, 'Nigeria');
INSERT INTO public.teams VALUES (248, 'Algeria');
INSERT INTO public.teams VALUES (252, 'Greece');
INSERT INTO public.teams VALUES (256, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 576, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

