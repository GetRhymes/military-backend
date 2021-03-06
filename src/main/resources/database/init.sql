--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

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
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    category_number integer,
    category_name text
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: certificate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certificate (
    id integer NOT NULL,
    cert_number text,
    approve_date date,
    recert_date date,
    id_category integer,
    cert_creator text,
    created timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.certificate OWNER TO postgres;

--
-- Name: certificate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.certificate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificate_id_seq OWNER TO postgres;

--
-- Name: certificate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.certificate_id_seq OWNED BY public.certificate.id;


--
-- Name: component; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.component (
    id integer NOT NULL,
    name text,
    series_number text,
    oi_id integer,
    created timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.component OWNER TO postgres;

--
-- Name: component_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.component_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.component_id_seq OWNER TO postgres;

--
-- Name: component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.component_id_seq OWNED BY public.component.id;


--
-- Name: inner_document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inner_document (
    id integer NOT NULL,
    name text,
    registration_number text,
    approve_date date,
    oi_id integer,
    created timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.inner_document OWNER TO postgres;

--
-- Name: inner_document_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inner_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inner_document_id_seq OWNER TO postgres;

--
-- Name: inner_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inner_document_id_seq OWNED BY public.inner_document.id;


--
-- Name: military_base; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.military_base (
    id integer NOT NULL,
    name text,
    base_number text,
    location text,
    created timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.military_base OWNER TO postgres;

--
-- Name: military_base_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.military_base_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.military_base_id_seq OWNER TO postgres;

--
-- Name: military_base_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.military_base_id_seq OWNED BY public.military_base.id;


--
-- Name: object_informatization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.object_informatization (
    id integer NOT NULL,
    name text,
    cert_id integer,
    si_id integer,
    scr_id integer,
    military_base_id integer,
    created timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.object_informatization OWNER TO postgres;

--
-- Name: object_informatization_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.object_informatization_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.object_informatization_id_seq OWNER TO postgres;

--
-- Name: object_informatization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.object_informatization_id_seq OWNED BY public.object_informatization.id;


--
-- Name: special_check_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.special_check_result (
    id integer NOT NULL,
    scr_number text,
    approve_date date,
    created timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.special_check_result OWNER TO postgres;

--
-- Name: special_check_result_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.special_check_result_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.special_check_result_id_seq OWNER TO postgres;

--
-- Name: special_check_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.special_check_result_id_seq OWNED BY public.special_check_result.id;


--
-- Name: special_investigation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.special_investigation (
    id integer NOT NULL,
    si_number text,
    approve_date date,
    created timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.special_investigation OWNER TO postgres;

--
-- Name: special_investigation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.special_investigation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.special_investigation_id_seq OWNER TO postgres;

--
-- Name: special_investigation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.special_investigation_id_seq OWNED BY public.special_investigation.id;


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: certificate id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate ALTER COLUMN id SET DEFAULT nextval('public.certificate_id_seq'::regclass);


--
-- Name: component id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.component ALTER COLUMN id SET DEFAULT nextval('public.component_id_seq'::regclass);


--
-- Name: inner_document id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inner_document ALTER COLUMN id SET DEFAULT nextval('public.inner_document_id_seq'::regclass);


--
-- Name: military_base id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.military_base ALTER COLUMN id SET DEFAULT nextval('public.military_base_id_seq'::regclass);


--
-- Name: object_informatization id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object_informatization ALTER COLUMN id SET DEFAULT nextval('public.object_informatization_id_seq'::regclass);


--
-- Name: special_check_result id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.special_check_result ALTER COLUMN id SET DEFAULT nextval('public.special_check_result_id_seq'::regclass);


--
-- Name: special_investigation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.special_investigation ALTER COLUMN id SET DEFAULT nextval('public.special_investigation_id_seq'::regclass);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: certificate certificate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_pkey PRIMARY KEY (id);


--
-- Name: component components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT components_pkey PRIMARY KEY (id);


--
-- Name: inner_document inner_document_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inner_document
    ADD CONSTRAINT inner_document_pkey PRIMARY KEY (id);


--
-- Name: military_base military_base_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.military_base
    ADD CONSTRAINT military_base_pkey PRIMARY KEY (id);


--
-- Name: object_informatization object_informatization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object_informatization
    ADD CONSTRAINT object_informatization_pkey PRIMARY KEY (id);


--
-- Name: special_check_result special_check_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.special_check_result
    ADD CONSTRAINT special_check_result_pkey PRIMARY KEY (id);


--
-- Name: special_investigation special_investigation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.special_investigation
    ADD CONSTRAINT special_investigation_pkey PRIMARY KEY (id);


--
-- Name: certificate certificate_id_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_id_category_fkey FOREIGN KEY (id_category) REFERENCES public.category(id);


--
-- Name: component components_oi_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT components_oi_id_fkey FOREIGN KEY (oi_id) REFERENCES public.object_informatization(id);


--
-- Name: inner_document inner_document_oi_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inner_document
    ADD CONSTRAINT inner_document_oi_id_fkey FOREIGN KEY (oi_id) REFERENCES public.object_informatization(id);


--
-- Name: object_informatization object_informatization_cert_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object_informatization
    ADD CONSTRAINT object_informatization_cert_id_fkey FOREIGN KEY (cert_id) REFERENCES public.certificate(id);


--
-- Name: object_informatization object_informatization_military_base_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object_informatization
    ADD CONSTRAINT object_informatization_military_base_id_fkey FOREIGN KEY (military_base_id) REFERENCES public.military_base(id);


--
-- Name: object_informatization object_informatization_scr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object_informatization
    ADD CONSTRAINT object_informatization_scr_id_fkey FOREIGN KEY (scr_id) REFERENCES public.special_check_result(id);


--
-- Name: object_informatization object_informatization_si_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object_informatization
    ADD CONSTRAINT object_informatization_si_id_fkey FOREIGN KEY (si_id) REFERENCES public.special_investigation(id);


--
-- PostgreSQL database dump complete
--

