--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7 (Homebrew)

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
-- Name: band; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.band (
    band_id integer NOT NULL,
    genre text,
    name text,
    available_time time with time zone,
    set_length integer
);


ALTER TABLE public.band OWNER TO postgres;

--
-- Name: band_band_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.band_band_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.band_band_id_seq OWNER TO postgres;

--
-- Name: band_band_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.band_band_id_seq OWNED BY public.band.band_id;


--
-- Name: event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event (
    event_id integer NOT NULL,
    name text,
    type text,
    date timestamp with time zone,
    age_restriction boolean,
    price integer,
    open_hours timestamp with time zone
);


ALTER TABLE public.event OWNER TO postgres;

--
-- Name: event_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_event_id_seq OWNER TO postgres;

--
-- Name: event_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.event_event_id_seq OWNED BY public.event.event_id;


--
-- Name: meet_greet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meet_greet (
    meet_greet_id integer NOT NULL,
    member_size integer,
    start_time timestamp with time zone
);


ALTER TABLE public.meet_greet OWNER TO postgres;

--
-- Name: meet_greet_meet_greet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meet_greet_meet_greet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meet_greet_meet_greet_id_seq OWNER TO postgres;

--
-- Name: meet_greet_meet_greet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meet_greet_meet_greet_id_seq OWNED BY public.meet_greet.meet_greet_id;


--
-- Name: stage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stage (
    stage_id integer NOT NULL,
    name text
);


ALTER TABLE public.stage OWNER TO postgres;

--
-- Name: stage_stage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stage_stage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stage_stage_id_seq OWNER TO postgres;

--
-- Name: stage_stage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stage_stage_id_seq OWNED BY public.stage.stage_id;


--
-- Name: venue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venue (
    venue_id integer NOT NULL,
    location text,
    max_capacity integer
);


ALTER TABLE public.venue OWNER TO postgres;

--
-- Name: venue_venue_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venue_venue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venue_venue_id_seq OWNER TO postgres;

--
-- Name: venue_venue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venue_venue_id_seq OWNED BY public.venue.venue_id;


--
-- Name: band band_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.band ALTER COLUMN band_id SET DEFAULT nextval('public.band_band_id_seq'::regclass);


--
-- Name: event event_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event ALTER COLUMN event_id SET DEFAULT nextval('public.event_event_id_seq'::regclass);


--
-- Name: meet_greet meet_greet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meet_greet ALTER COLUMN meet_greet_id SET DEFAULT nextval('public.meet_greet_meet_greet_id_seq'::regclass);


--
-- Name: stage stage_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stage ALTER COLUMN stage_id SET DEFAULT nextval('public.stage_stage_id_seq'::regclass);


--
-- Name: venue venue_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venue ALTER COLUMN venue_id SET DEFAULT nextval('public.venue_venue_id_seq'::regclass);


--
-- Data for Name: band; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.band (band_id, genre, name, available_time, set_length) FROM stdin;
\.


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event (event_id, name, type, date, age_restriction, price, open_hours) FROM stdin;
\.


--
-- Data for Name: meet_greet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meet_greet (meet_greet_id, member_size, start_time) FROM stdin;
\.


--
-- Data for Name: stage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stage (stage_id, name) FROM stdin;
\.


--
-- Data for Name: venue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venue (venue_id, location, max_capacity) FROM stdin;
\.


--
-- Name: band_band_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.band_band_id_seq', 1, false);


--
-- Name: event_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_event_id_seq', 1, false);


--
-- Name: meet_greet_meet_greet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meet_greet_meet_greet_id_seq', 1, false);


--
-- Name: stage_stage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stage_stage_id_seq', 1, false);


--
-- Name: venue_venue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venue_venue_id_seq', 1, false);


--
-- Name: band band_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.band
    ADD CONSTRAINT band_pkey PRIMARY KEY (band_id);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (event_id);


--
-- Name: meet_greet meet_greet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meet_greet
    ADD CONSTRAINT meet_greet_pkey PRIMARY KEY (meet_greet_id);


--
-- Name: stage stage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stage
    ADD CONSTRAINT stage_pkey PRIMARY KEY (stage_id);


--
-- Name: venue venue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venue
    ADD CONSTRAINT venue_pkey PRIMARY KEY (venue_id);


--
-- PostgreSQL database dump complete
--

