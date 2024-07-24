--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-07-24 20:04:38 UTC

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

--
-- TOC entry 3397 (class 1262 OID 16385)
-- Name: b; Type: DATABASE; Schema: -; Owner: devops
--

CREATE DATABASE b WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE b OWNER TO devops;

\connect b

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16396)
-- Name: consumos_b; Type: TABLE; Schema: public; Owner: devops
--

CREATE TABLE public.consumos_b (
    ano integer NOT NULL,
    mes integer NOT NULL,
    status character varying(1) NOT NULL,
    valor numeric(12,4) DEFAULT 0 NOT NULL
);


ALTER TABLE public.consumos_b OWNER TO devops;

--
-- TOC entry 3391 (class 0 OID 16396)
-- Dependencies: 215
-- Data for Name: consumos_b; Type: TABLE DATA; Schema: public; Owner: devops
--

COPY public.consumos_b (ano, mes, status, valor) FROM stdin;
2024	1	V	700000.0000
2024	1	D	70000.0000
2024	2	V	500000.0000
2024	2	D	50000.0000
2024	3	V	700000.0000
2024	3	D	70000.0000
2024	4	V	500000.0000
2024	4	D	50000.0000
2024	5	V	700000.0000
2024	5	D	70000.0000
2024	6	V	500000.0000
2024	6	D	50000.0000
\.


--
-- TOC entry 3247 (class 2606 OID 16401)
-- Name: consumos_b pk_consumo_b; Type: CONSTRAINT; Schema: public; Owner: devops
--

ALTER TABLE ONLY public.consumos_b
    ADD CONSTRAINT pk_consumo_b PRIMARY KEY (ano, mes, status);


-- Completed on 2024-07-24 20:04:39 UTC

--
-- PostgreSQL database dump complete
--

