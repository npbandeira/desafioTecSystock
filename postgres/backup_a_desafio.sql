--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-07-24 20:04:27 UTC

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
-- TOC entry 3397 (class 1262 OID 16384)
-- Name: a; Type: DATABASE; Schema: -; Owner: devops
--

CREATE DATABASE a WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE a OWNER TO devops;

\connect a

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
-- TOC entry 215 (class 1259 OID 16390)
-- Name: consumos_a; Type: TABLE; Schema: public; Owner: devops
--

CREATE TABLE public.consumos_a (
    ano integer NOT NULL,
    mes integer NOT NULL,
    status character varying(10) NOT NULL,
    valor_total numeric(12,4) DEFAULT 0 NOT NULL
);


ALTER TABLE public.consumos_a OWNER TO devops;

--
-- TOC entry 3391 (class 0 OID 16390)
-- Dependencies: 215
-- Data for Name: consumos_a; Type: TABLE DATA; Schema: public; Owner: devops
--

COPY public.consumos_a (ano, mes, status, valor_total) FROM stdin;
2024	1	VENDA	700000.0000
2024	1	DEVOLUCAO	70000.0000
2024	2	VENDA	500000.0000
2024	2	DEVOLUCAO	50000.0000
2024	3	VENDA	700000.0000
2024	3	DEVOLUCAO	70000.0000
2024	4	VENDA	500000.0000
2024	4	DEVOLUCAO	50000.0000
2024	5	VENDA	700000.0000
2024	5	DEVOLUCAO	70000.0000
2024	6	VENDA	500000.0000
2024	6	DEVOLUCAO	50000.0000
\.


--
-- TOC entry 3247 (class 2606 OID 16395)
-- Name: consumos_a pk_consumo_a; Type: CONSTRAINT; Schema: public; Owner: devops
--

ALTER TABLE ONLY public.consumos_a
    ADD CONSTRAINT pk_consumo_a PRIMARY KEY (ano, mes, status);


-- Completed on 2024-07-24 20:04:27 UTC

--
-- PostgreSQL database dump complete
--

