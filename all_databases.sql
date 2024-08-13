--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE agiesroot;
ALTER ROLE agiesroot WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md50486371b8d928201156b471a845761f0';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;
CREATE ROLE root;
ALTER ROLE root WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md53025e018f359290d51652cd3b85acf3c';
ALTER ROLE agiesroot SET client_encoding TO 'utf8';
ALTER ROLE agiesroot SET default_transaction_isolation TO 'read committed';
ALTER ROLE agiesroot SET "TimeZone" TO 'UTC';
ALTER ROLE root SET client_encoding TO 'utf8';
ALTER ROLE root SET default_transaction_isolation TO 'read committed';
ALTER ROLE root SET "TimeZone" TO 'UTC';






--
-- Database creation
--

CREATE DATABASE agies_crm_db WITH TEMPLATE = template0 OWNER = postgres;
GRANT ALL ON DATABASE agies_crm_db TO root;
CREATE DATABASE agies_db_crm WITH TEMPLATE = template0 OWNER = postgres;
GRANT ALL ON DATABASE agies_db_crm TO agiesroot;
REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


\connect agies_crm_db

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23 (Ubuntu 10.23-0ubuntu0.18.04.2)
-- Dumped by pg_dump version 10.23 (Ubuntu 10.23-0ubuntu0.18.04.2)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

\connect agies_db_crm

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23 (Ubuntu 10.23-0ubuntu0.18.04.2)
-- Dumped by pg_dump version 10.23 (Ubuntu 10.23-0ubuntu0.18.04.2)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ageis_app_aboutus; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_aboutus (
    id bigint NOT NULL,
    review text NOT NULL,
    company_id bigint NOT NULL
);


ALTER TABLE public.ageis_app_aboutus OWNER TO agiesroot;

--
-- Name: ageis_app_aboutus_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_aboutus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_aboutus_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_aboutus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_aboutus_id_seq OWNED BY public.ageis_app_aboutus.id;


--
-- Name: ageis_app_appliedjobs; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_appliedjobs (
    id bigint NOT NULL,
    applied_date date NOT NULL,
    applied_job_id bigint NOT NULL,
    applied_user_id bigint NOT NULL
);


ALTER TABLE public.ageis_app_appliedjobs OWNER TO agiesroot;

--
-- Name: ageis_app_appliedjobs_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_appliedjobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_appliedjobs_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_appliedjobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_appliedjobs_id_seq OWNED BY public.ageis_app_appliedjobs.id;


--
-- Name: ageis_app_clients; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_clients (
    id bigint NOT NULL,
    company_logo character varying(100),
    company_name character varying(50),
    address text,
    added_by_id integer,
    company_email character varying(254)
);


ALTER TABLE public.ageis_app_clients OWNER TO agiesroot;

--
-- Name: ageis_app_clients_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_clients_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_clients_id_seq OWNED BY public.ageis_app_clients.id;


--
-- Name: ageis_app_country; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_country (
    id bigint NOT NULL,
    name character varying(100)
);


ALTER TABLE public.ageis_app_country OWNER TO agiesroot;

--
-- Name: ageis_app_country_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_country_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_country_id_seq OWNED BY public.ageis_app_country.id;


--
-- Name: ageis_app_district; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_district (
    id bigint NOT NULL,
    name character varying(100),
    state_id bigint
);


ALTER TABLE public.ageis_app_district OWNER TO agiesroot;

--
-- Name: ageis_app_district_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_district_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_district_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_district_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_district_id_seq OWNED BY public.ageis_app_district.id;


--
-- Name: ageis_app_experience; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_experience (
    id bigint NOT NULL,
    company character varying(255) NOT NULL,
    "position" character varying(255) NOT NULL,
    start_date date NOT NULL,
    end_date date,
    description text NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.ageis_app_experience OWNER TO agiesroot;

--
-- Name: ageis_app_experience_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_experience_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_experience_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_experience_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_experience_id_seq OWNED BY public.ageis_app_experience.id;


--
-- Name: ageis_app_extendedusermodel; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_extendedusermodel (
    id bigint NOT NULL,
    cv character varying(100),
    user_id integer,
    phone character varying(10),
    location character varying(255),
    comapany_univercity character varying(255),
    "position" character varying(255),
    profile_photo character varying(100)
);


ALTER TABLE public.ageis_app_extendedusermodel OWNER TO agiesroot;

--
-- Name: ageis_app_extendedusermodel_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_extendedusermodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_extendedusermodel_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_extendedusermodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_extendedusermodel_id_seq OWNED BY public.ageis_app_extendedusermodel.id;


--
-- Name: ageis_app_jobcategories; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_jobcategories (
    id bigint NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.ageis_app_jobcategories OWNER TO agiesroot;

--
-- Name: ageis_app_jobcategories_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_jobcategories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_jobcategories_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_jobcategories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_jobcategories_id_seq OWNED BY public.ageis_app_jobcategories.id;


--
-- Name: ageis_app_jobs; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_jobs (
    id bigint NOT NULL,
    job_post_date date NOT NULL,
    job_title character varying(50) NOT NULL,
    end_date date NOT NULL,
    job_des text NOT NULL,
    skills character varying(100) NOT NULL,
    experience integer NOT NULL,
    salary character varying(25) NOT NULL,
    languages character varying(100) NOT NULL,
    website_link character varying(200) NOT NULL,
    company_id bigint NOT NULL,
    country_id bigint NOT NULL,
    district_id bigint NOT NULL,
    job_category_id bigint NOT NULL,
    job_type_id bigint NOT NULL,
    state_id bigint NOT NULL,
    added_by_id integer NOT NULL
);


ALTER TABLE public.ageis_app_jobs OWNER TO agiesroot;

--
-- Name: ageis_app_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_jobs_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_jobs_id_seq OWNED BY public.ageis_app_jobs.id;


--
-- Name: ageis_app_jobtype; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_jobtype (
    id bigint NOT NULL,
    name character varying(25) NOT NULL
);


ALTER TABLE public.ageis_app_jobtype OWNER TO agiesroot;

--
-- Name: ageis_app_jobtype_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_jobtype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_jobtype_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_jobtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_jobtype_id_seq OWNED BY public.ageis_app_jobtype.id;


--
-- Name: ageis_app_qualification; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_qualification (
    id bigint NOT NULL,
    degree character varying(255) NOT NULL,
    institution character varying(255) NOT NULL,
    completion_year integer NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.ageis_app_qualification OWNER TO agiesroot;

--
-- Name: ageis_app_qualification_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_qualification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_qualification_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_qualification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_qualification_id_seq OWNED BY public.ageis_app_qualification.id;


--
-- Name: ageis_app_skills; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_skills (
    id bigint NOT NULL,
    skill character varying(255) NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.ageis_app_skills OWNER TO agiesroot;

--
-- Name: ageis_app_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_skills_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_skills_id_seq OWNED BY public.ageis_app_skills.id;


--
-- Name: ageis_app_state; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_state (
    id bigint NOT NULL,
    name character varying(100),
    country_id bigint
);


ALTER TABLE public.ageis_app_state OWNER TO agiesroot;

--
-- Name: ageis_app_state_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_state_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_state_id_seq OWNED BY public.ageis_app_state.id;


--
-- Name: ageis_app_testimonials; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.ageis_app_testimonials (
    id bigint NOT NULL,
    customer_name character varying(25),
    customer_img character varying(100),
    reviews text,
    added_by_id integer,
    company_name_id bigint
);


ALTER TABLE public.ageis_app_testimonials OWNER TO agiesroot;

--
-- Name: ageis_app_testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.ageis_app_testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ageis_app_testimonials_id_seq OWNER TO agiesroot;

--
-- Name: ageis_app_testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.ageis_app_testimonials_id_seq OWNED BY public.ageis_app_testimonials.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO agiesroot;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO agiesroot;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO agiesroot;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO agiesroot;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO agiesroot;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO agiesroot;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO agiesroot;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO agiesroot;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO agiesroot;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO agiesroot;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO agiesroot;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO agiesroot;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO agiesroot;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO agiesroot;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO agiesroot;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO agiesroot;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO agiesroot;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO agiesroot;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO agiesroot;

--
-- Name: tblleads; Type: TABLE; Schema: public; Owner: agiesroot
--

CREATE TABLE public.tblleads (
    id bigint NOT NULL,
    hash character varying(65),
    name character varying(191) NOT NULL,
    title character varying(100),
    company character varying(191),
    description text,
    country integer NOT NULL,
    zip character varying(15),
    city character varying(100),
    state character varying(50),
    address character varying(100),
    assigned integer NOT NULL,
    dateadded timestamp with time zone NOT NULL,
    from_form_id integer NOT NULL,
    status integer,
    source integer,
    lastcontact timestamp with time zone,
    dateassigned date,
    last_status_change timestamp with time zone,
    addedfrom integer NOT NULL,
    email character varying(100),
    website character varying(150),
    leadorder integer,
    phonenumber character varying(50),
    date_converted timestamp with time zone,
    lost integer NOT NULL,
    junk integer NOT NULL,
    last_lead_status integer NOT NULL,
    is_imported_from_email_integration integer NOT NULL,
    email_integration_uid character varying(30),
    is_public integer NOT NULL,
    default_language character varying(40),
    client_id integer NOT NULL,
    lead_value numeric(15,2)
);


ALTER TABLE public.tblleads OWNER TO agiesroot;

--
-- Name: tblleads_id_seq; Type: SEQUENCE; Schema: public; Owner: agiesroot
--

CREATE SEQUENCE public.tblleads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tblleads_id_seq OWNER TO agiesroot;

--
-- Name: tblleads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: agiesroot
--

ALTER SEQUENCE public.tblleads_id_seq OWNED BY public.tblleads.id;


--
-- Name: ageis_app_aboutus id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_aboutus ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_aboutus_id_seq'::regclass);


--
-- Name: ageis_app_appliedjobs id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_appliedjobs ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_appliedjobs_id_seq'::regclass);


--
-- Name: ageis_app_clients id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_clients ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_clients_id_seq'::regclass);


--
-- Name: ageis_app_country id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_country ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_country_id_seq'::regclass);


--
-- Name: ageis_app_district id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_district ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_district_id_seq'::regclass);


--
-- Name: ageis_app_experience id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_experience ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_experience_id_seq'::regclass);


--
-- Name: ageis_app_extendedusermodel id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_extendedusermodel ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_extendedusermodel_id_seq'::regclass);


--
-- Name: ageis_app_jobcategories id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobcategories ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_jobcategories_id_seq'::regclass);


--
-- Name: ageis_app_jobs id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobs ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_jobs_id_seq'::regclass);


--
-- Name: ageis_app_jobtype id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobtype ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_jobtype_id_seq'::regclass);


--
-- Name: ageis_app_qualification id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_qualification ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_qualification_id_seq'::regclass);


--
-- Name: ageis_app_skills id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_skills ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_skills_id_seq'::regclass);


--
-- Name: ageis_app_state id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_state ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_state_id_seq'::regclass);


--
-- Name: ageis_app_testimonials id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_testimonials ALTER COLUMN id SET DEFAULT nextval('public.ageis_app_testimonials_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: tblleads id; Type: DEFAULT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.tblleads ALTER COLUMN id SET DEFAULT nextval('public.tblleads_id_seq'::regclass);


--
-- Data for Name: ageis_app_aboutus; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_aboutus (id, review, company_id) FROM stdin;
\.


--
-- Data for Name: ageis_app_appliedjobs; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_appliedjobs (id, applied_date, applied_job_id, applied_user_id) FROM stdin;
1	2024-01-03	1	3
\.


--
-- Data for Name: ageis_app_clients; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_clients (id, company_logo, company_name, address, added_by_id, company_email) FROM stdin;
5	Logos/mylogo.jpg	GlobCom	edsgrfd	1	\N
1	Logos/whatsapp_icon.png	Vindhya E-Infomedia Pvt Ltd	No. 1, 4th Main, 2nd Cross, Industrial Town Rd, 4th Stage, Rajajinagar, Bengaluru, Karnataka	1	\N
2	Logos/Good-Health-and-Wellness.png	G7 Teleservices Pvt Ltd	No 2, 2nd Floor, Prestige Commercial Complex, Church St, Shanthala Nagar, Ashok Nagar, Bengaluru, Karnataka 560001	1	\N
3	Logos/Understanding-Ayurvedic-Therapies-for-Holistic-Wellness.jpg	1.1 solutions	Office Address: 4th Floor, Fortune Towers, 200 Feet Radial Rd, Kovilambakkam, Chennai, Tamil Nadu 600117	1	\N
4	Logos/download_1.jpeg	Achu Test	Achu Bhavan	1	\N
6	Logos/icons8-message-48.png	jocart	Achu bhavan villidumpara Kattakode po Kattakada	1	jocart@gmail.com
\.


--
-- Data for Name: ageis_app_country; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_country (id, name) FROM stdin;
2	America
3	India
4	England
\.


--
-- Data for Name: ageis_app_district; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_district (id, name, state_id) FROM stdin;
1	Trivandrum	2
2	EFG	3
\.


--
-- Data for Name: ageis_app_experience; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_experience (id, company, "position", start_date, end_date, description, user_id) FROM stdin;
1	Google	Software Dev	2024-06-11	2024-01-11	edprgfvhoreklnjgvbl	3
\.


--
-- Data for Name: ageis_app_extendedusermodel; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_extendedusermodel (id, cv, user_id, phone, location, comapany_univercity, "position", profile_photo) FROM stdin;
1	CV/Ageis_MGMT_Logo_PNG.png	2	9074430454	\N	\N	\N	\N
2	CV/340007440_771396004381593_7253483454880623975_n.jpg	3	8089407417	\N	\N	\N	\N
3	CV/icons8-empty-hourglass-50.png	5	8848882136	Kannur	City Hosp	Doctor	profile_photos/2776760_f176_10.jpg
\.


--
-- Data for Name: ageis_app_jobcategories; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_jobcategories (id, name) FROM stdin;
1	Accounting / Finance
2	Internship
3	Automotive Jobs
4	Marketing
5	Human Resource
6	Customer Service
7	Development
8	Project Management
9	Design
10	Customer support Executive
\.


--
-- Data for Name: ageis_app_jobs; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_jobs (id, job_post_date, job_title, end_date, job_des, skills, experience, salary, languages, website_link, company_id, country_id, district_id, job_category_id, job_type_id, state_id, added_by_id) FROM stdin;
1	2023-12-29	Python Fullstack Developer	2024-01-12	By doing this, you're allowing the web server user to write to the media directories.	Python	1	30000	English	https://github.com/Achujozef/ageis/blob/main/ageis_app/views.py	5	3	1	1	1	2	1
2	2024-01-11	JavaFullstack Developer	2024-01-17	i'am Jozef	Python	1	30000	English	https://github.com/Achujozef/ageis/blob/main/ageis_app/views.py	5	3	1	2	1	2	1
\.


--
-- Data for Name: ageis_app_jobtype; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_jobtype (id, name) FROM stdin;
1	Remote
\.


--
-- Data for Name: ageis_app_qualification; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_qualification (id, degree, institution, completion_year, user_id) FROM stdin;
\.


--
-- Data for Name: ageis_app_skills; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_skills (id, skill, user_id) FROM stdin;
1	Python	3
2	Django	3
\.


--
-- Data for Name: ageis_app_state; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_state (id, name, country_id) FROM stdin;
1	Florida	2
2	Kerala	3
3	ABC	4
\.


--
-- Data for Name: ageis_app_testimonials; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.ageis_app_testimonials (id, customer_name, customer_img, reviews, added_by_id, company_name_id) FROM stdin;
1	Ajeesh	customerimg/whatsapp_icon.png	Good GOOD	1	5
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add extended user model	7	add_extendedusermodel
26	Can change extended user model	7	change_extendedusermodel
27	Can delete extended user model	7	delete_extendedusermodel
28	Can view extended user model	7	view_extendedusermodel
29	Can add clients	8	add_clients
30	Can change clients	8	change_clients
31	Can delete clients	8	delete_clients
32	Can view clients	8	view_clients
33	Can add testimonials	9	add_testimonials
34	Can change testimonials	9	change_testimonials
35	Can delete testimonials	9	delete_testimonials
36	Can view testimonials	9	view_testimonials
37	Can add job categories	10	add_jobcategories
38	Can change job categories	10	change_jobcategories
39	Can delete job categories	10	delete_jobcategories
40	Can view job categories	10	view_jobcategories
41	Can add country	11	add_country
42	Can change country	11	change_country
43	Can delete country	11	delete_country
44	Can view country	11	view_country
45	Can add state	12	add_state
46	Can change state	12	change_state
47	Can delete state	12	delete_state
48	Can view state	12	view_state
49	Can add district	13	add_district
50	Can change district	13	change_district
51	Can delete district	13	delete_district
52	Can view district	13	view_district
53	Can add job type	14	add_jobtype
54	Can change job type	14	change_jobtype
55	Can delete job type	14	delete_jobtype
56	Can view job type	14	view_jobtype
57	Can add jobs	15	add_jobs
58	Can change jobs	15	change_jobs
59	Can delete jobs	15	delete_jobs
60	Can view jobs	15	view_jobs
61	Can add applied jobs	16	add_appliedjobs
62	Can change applied jobs	16	change_appliedjobs
63	Can delete applied jobs	16	delete_appliedjobs
64	Can view applied jobs	16	view_appliedjobs
65	Can add about us	17	add_aboutus
66	Can change about us	17	change_aboutus
67	Can delete about us	17	delete_aboutus
68	Can view about us	17	view_aboutus
69	Can add leads	18	add_leads
70	Can change leads	18	change_leads
71	Can delete leads	18	delete_leads
72	Can view leads	18	view_leads
73	Can add skills	19	add_skills
74	Can change skills	19	change_skills
75	Can delete skills	19	delete_skills
76	Can view skills	19	view_skills
77	Can add qualification	20	add_qualification
78	Can change qualification	20	change_qualification
79	Can delete qualification	20	delete_qualification
80	Can view qualification	20	view_qualification
81	Can add experience	21	add_experience
82	Can change experience	21	change_experience
83	Can delete experience	21	delete_experience
84	Can view experience	21	view_experience
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$260000$oceneJgvqXWrFZ1URrSS2c$QsTfTNJz7vQTaZVoOLfRf2DwVyPkC2MMFQz2p/K3oFs=	2023-12-28 09:42:49.003887+00	f	Sree	Sreehari 	C S	relover2000@gmail.com	f	t	2023-12-28 09:41:26.318957+00
3	pbkdf2_sha256$260000$eWF7Tp4rNdoRW91KgcA4WB$9Ke5/TG9lm1HiowNhHLrXELMTp4nSaeQqAMr9fnTyyU=	2023-12-28 10:57:38.559589+00	f	acve	achu	vee	akshitathampy@gmail.com	f	t	2023-12-28 10:57:12.83099+00
4	pbkdf2_sha256$260000$YdGU4PnEOuUlnzja7WxnL8$TeKHNNN2PdndIIiDvVO0/gKutQeXEG7Gjx88jN0+558=	2023-12-28 12:18:37.67123+00	f	Ageis_24	christudas	mascreen	banansan@gmail.com	f	t	2023-12-28 11:38:52.52691+00
1	pbkdf2_sha256$260000$lVzqjzoCZmu3AcHCSTm7EA$Wwt5lyGwByUL6pkLYvMEIUuOYzfDgUhuLkXJGPd/F6E=	2024-01-11 06:33:50.193747+00	t	achujozef			achu@gmail.com	t	t	2023-12-28 06:44:25.424148+00
5	pbkdf2_sha256$260000$Vadh27DUWQee1PecOPDtRO$WneDEydbyfqgTpsc+VExuAAybXPE+STk1u75V31ZQrw=	2024-01-12 06:55:56.330665+00	f	alanta	Alanta	Joseph	achujosephsl@gmail.com	f	t	2024-01-03 04:16:21.676267+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	ageis_app	extendedusermodel
8	ageis_app	clients
9	ageis_app	testimonials
10	ageis_app	jobcategories
11	ageis_app	country
12	ageis_app	state
13	ageis_app	district
14	ageis_app	jobtype
15	ageis_app	jobs
16	ageis_app	appliedjobs
17	ageis_app	aboutus
18	ageis_app	leads
19	ageis_app	skills
20	ageis_app	qualification
21	ageis_app	experience
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-12-28 06:37:58.443034+00
2	auth	0001_initial	2023-12-28 06:37:58.550758+00
3	admin	0001_initial	2023-12-28 06:37:58.574028+00
4	admin	0002_logentry_remove_auto_add	2023-12-28 06:37:58.585313+00
5	admin	0003_logentry_add_action_flag_choices	2023-12-28 06:37:58.599511+00
6	ageis_app	0001_initial	2023-12-28 06:37:58.613024+00
7	ageis_app	0002_extendedusermodel_user	2023-12-28 06:37:58.63196+00
8	ageis_app	0003_clients	2023-12-28 06:37:58.642238+00
9	ageis_app	0004_auto_20231116_1217	2023-12-28 06:37:58.657774+00
10	ageis_app	0005_clients_added_by	2023-12-28 06:37:58.6823+00
11	ageis_app	0006_alter_clients_added_by	2023-12-28 06:37:58.741646+00
12	ageis_app	0007_testimonials	2023-12-28 06:37:58.77044+00
13	ageis_app	0008_jobcategories	2023-12-28 06:37:58.777092+00
14	ageis_app	0009_country	2023-12-28 06:37:58.783898+00
15	ageis_app	0010_state	2023-12-28 06:37:58.795761+00
16	ageis_app	0011_district	2023-12-28 06:37:58.807089+00
17	ageis_app	0012_jobtype	2023-12-28 06:37:58.813427+00
18	ageis_app	0013_jobs	2023-12-28 06:37:58.854923+00
19	ageis_app	0014_jobs_added_by	2023-12-28 06:37:58.931937+00
20	ageis_app	0015_appliedjobs	2023-12-28 06:37:58.97497+00
21	ageis_app	0016_alter_extendedusermodel_user	2023-12-28 06:37:59.027574+00
22	ageis_app	0017_aboutus	2023-12-28 06:37:59.061892+00
23	ageis_app	0018_demomodel	2023-12-28 06:37:59.068674+00
24	ageis_app	0019_delete_demomodel	2023-12-28 06:37:59.07338+00
25	ageis_app	0020_leads	2023-12-28 06:37:59.086341+00
26	contenttypes	0002_remove_content_type_name	2023-12-28 06:37:59.128991+00
27	auth	0002_alter_permission_name_max_length	2023-12-28 06:37:59.159227+00
28	auth	0003_alter_user_email_max_length	2023-12-28 06:37:59.179172+00
29	auth	0004_alter_user_username_opts	2023-12-28 06:37:59.20519+00
30	auth	0005_alter_user_last_login_null	2023-12-28 06:37:59.234235+00
31	auth	0006_require_contenttypes_0002	2023-12-28 06:37:59.237811+00
32	auth	0007_alter_validators_add_error_messages	2023-12-28 06:37:59.255719+00
33	auth	0008_alter_user_username_max_length	2023-12-28 06:37:59.281584+00
34	auth	0009_alter_user_last_name_max_length	2023-12-28 06:37:59.297677+00
35	auth	0010_alter_group_name_max_length	2023-12-28 06:37:59.326153+00
36	auth	0011_update_proxy_permissions	2023-12-28 06:37:59.357478+00
37	auth	0012_alter_user_first_name_max_length	2023-12-28 06:37:59.380746+00
38	sessions	0001_initial	2023-12-28 06:37:59.392783+00
39	ageis_app	0021_alter_country_table	2023-12-29 06:03:23.571826+00
40	ageis_app	0021_auto_20240105_1047	2024-01-11 05:43:08.128973+00
41	ageis_app	0022_alter_clients_options	2024-01-11 05:43:08.14596+00
42	ageis_app	0023_rename_company_name_jobs_company_and_more	2024-01-11 05:43:08.228273+00
43	ageis_app	0024_extendedusermodel_comapany_univercity_and_more	2024-01-11 05:43:08.268818+00
44	ageis_app	0025_extendedusermodel_profile_photo	2024-01-11 05:43:08.294308+00
45	ageis_app	0026_merge_20240111_0542	2024-01-11 05:43:08.298549+00
46	ageis_app	0027_alter_country_table	2024-01-11 05:53:02.048546+00
47	ageis_app	0028_alter_country_table	2024-01-11 05:53:02.19728+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
i05rnadkts7v9lycw702j659esu8zp7u	.eJxVjMsOwiAQRf-FtSHC4AAu3fsNZICptCokfWw0_rtt0oVu7zn3vEWgZS5hmXgMfRZnocThd4uU7lw3kAeqtyZTq_PYR7kpcqeTvLbMj8vu_gUKTWV94xE9cYYTO6206RSD9hmIkoPckXOIJlqPaJUBzRqjjWAsKCKfDOEa3XKVnrzWKJVlaC_uxOcLI6o_VQ:1rIn2M:kvSQqN4oniUc0P2WrS-MyVnu5R-waz0rXbQtF8shjMA	2024-01-11 09:50:46.093031+00
14ot8j451riq8nxsmviz45xar58jxhkp	.eJxVjMsOwiAQRf-FtSHC4AAu3fsNZICptCokfWw0_rtt0oVu7zn3vEWgZS5hmXgMfRZnocThd4uU7lw3kAeqtyZTq_PYR7kpcqeTvLbMj8vu_gUKTWV94xE9cYYTO6206RSD9hmIkoPckXOIJlqPaJUBzRqjjWAsKCKfDOEa3XKVnrzWKJVlaC_uxOcLI6o_VQ:1rIq4d:lRnpXDS_g3e0l-KL9jSAQ4V8DV590wYMnbMOLVuMVHw	2024-01-11 13:05:19.350278+00
yl4th8a6v1m3u7ryclq3auio4pd3kc6b	.eJxVjMsOwiAQRf-FtSHC4AAu3fsNZICptCokfWw0_rtt0oVu7zn3vEWgZS5hmXgMfRZnocThd4uU7lw3kAeqtyZTq_PYR7kpcqeTvLbMj8vu_gUKTWV94xE9cYYTO6206RSD9hmIkoPckXOIJlqPaJUBzRqjjWAsKCKfDOEa3XKVnrzWKJVlaC_uxOcLI6o_VQ:1rIs7f:fibE95AbP4YwgcVbrEtu4HWkl1LB-IcaVTHW8VGL3xs	2024-01-11 15:16:35.999961+00
fbwemkvumfmkp2ivzffhglsmcki5ssm7	.eJxVjMsOwiAQRf-FtSHC4AAu3fsNZICptCokfWw0_rtt0oVu7zn3vEWgZS5hmXgMfRZnocThd4uU7lw3kAeqtyZTq_PYR7kpcqeTvLbMj8vu_gUKTWV94xE9cYYTO6206RSD9hmIkoPckXOIJlqPaJUBzRqjjWAsKCKfDOEa3XKVnrzWKJVlaC_uxOcLI6o_VQ:1rJ4ia:1GBUlJol4vkPkGSxz8JFp6DQELg_cSamJ6yMNmcR8kM	2024-01-12 04:43:32.884375+00
wwf5z17sq681e0cmb0425kfzwnxr1kge	.eJxVjssOgjAURP-la9PQxy3UpXu-gQztRVBsEx4r479LExa6nZlzMm_RYd_Gbl956aYoroLE5TfrEZ6cShEfSPcsQ07bMvWyTOTZrrLNkefbuf0TjFjHgzbK2ko7Hw1Z1RzcYCyU92SgOUAPg6udIkcBUTfEtdLQPhA3FImq8qroEl582DAjbRCfL1PPPdI:1rNrXX:2HycGuhvtDZP014XE9TbuZKsh-ELBPV9koLlzKHl7pk	2024-01-25 09:39:55.821896+00
ekeeylm4tjfifxcdw8nfyxf3w2a8icaq	.eJxVjssOgjAURP-la9PQxy3UpXu-gQztRVBsEx4r479LExa6nZlzMm_RYd_Gbl956aYoroLE5TfrEZ6cShEfSPcsQ07bMvWyTOTZrrLNkefbuf0TjFjHgzbK2ko7Hw1Z1RzcYCyU92SgOUAPg6udIkcBUTfEtdLQPhA3FImq8qroEl582DAjbRCfL1PPPdI:1rOBSO:RLMdFWvk5-oTpGRqtqcvDtbi4zHZQ4cWjLRUw4uHg_Y	2024-01-26 06:55:56.332839+00
\.


--
-- Data for Name: tblleads; Type: TABLE DATA; Schema: public; Owner: agiesroot
--

COPY public.tblleads (id, hash, name, title, company, description, country, zip, city, state, address, assigned, dateadded, from_form_id, status, source, lastcontact, dateassigned, last_status_change, addedfrom, email, website, leadorder, phonenumber, date_converted, lost, junk, last_lead_status, is_imported_from_email_integration, email_integration_uid, is_public, default_language, client_id, lead_value) FROM stdin;
1	\N	Achu Joseph S L	Python Fullstack Developer	GlobCom	By doing this, you're allowing the web server user to write to the media directories.	3	\N	Trivandrum	Kerala	edsgrfd	0	2024-01-03 04:16:47.996267+00	0	\N	\N	\N	\N	\N	0	achujosephsl@gmail.com	https://github.com/Achujozef/ageis/blob/main/ageis_app/views.py	1	7736448062	\N	0	0	0	0	\N	0	\N	0	\N
\.


--
-- Name: ageis_app_aboutus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_aboutus_id_seq', 1, false);


--
-- Name: ageis_app_appliedjobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_appliedjobs_id_seq', 1, true);


--
-- Name: ageis_app_clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_clients_id_seq', 6, true);


--
-- Name: ageis_app_country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_country_id_seq', 4, true);


--
-- Name: ageis_app_district_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_district_id_seq', 2, true);


--
-- Name: ageis_app_experience_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_experience_id_seq', 1, true);


--
-- Name: ageis_app_extendedusermodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_extendedusermodel_id_seq', 3, true);


--
-- Name: ageis_app_jobcategories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_jobcategories_id_seq', 10, true);


--
-- Name: ageis_app_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_jobs_id_seq', 2, true);


--
-- Name: ageis_app_jobtype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_jobtype_id_seq', 1, true);


--
-- Name: ageis_app_qualification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_qualification_id_seq', 1, false);


--
-- Name: ageis_app_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_skills_id_seq', 2, true);


--
-- Name: ageis_app_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_state_id_seq', 3, true);


--
-- Name: ageis_app_testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.ageis_app_testimonials_id_seq', 1, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 47, true);


--
-- Name: tblleads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: agiesroot
--

SELECT pg_catalog.setval('public.tblleads_id_seq', 1, true);


--
-- Name: ageis_app_aboutus ageis_app_aboutus_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_aboutus
    ADD CONSTRAINT ageis_app_aboutus_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_appliedjobs ageis_app_appliedjobs_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_appliedjobs
    ADD CONSTRAINT ageis_app_appliedjobs_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_clients ageis_app_clients_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_clients
    ADD CONSTRAINT ageis_app_clients_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_country ageis_app_country_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_country
    ADD CONSTRAINT ageis_app_country_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_district ageis_app_district_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_district
    ADD CONSTRAINT ageis_app_district_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_experience ageis_app_experience_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_experience
    ADD CONSTRAINT ageis_app_experience_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_extendedusermodel ageis_app_extendedusermodel_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_extendedusermodel
    ADD CONSTRAINT ageis_app_extendedusermodel_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_extendedusermodel ageis_app_extendedusermodel_user_id_2afe96db_uniq; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_extendedusermodel
    ADD CONSTRAINT ageis_app_extendedusermodel_user_id_2afe96db_uniq UNIQUE (user_id);


--
-- Name: ageis_app_jobcategories ageis_app_jobcategories_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobcategories
    ADD CONSTRAINT ageis_app_jobcategories_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_jobs ageis_app_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobs
    ADD CONSTRAINT ageis_app_jobs_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_jobtype ageis_app_jobtype_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobtype
    ADD CONSTRAINT ageis_app_jobtype_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_qualification ageis_app_qualification_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_qualification
    ADD CONSTRAINT ageis_app_qualification_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_skills ageis_app_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_skills
    ADD CONSTRAINT ageis_app_skills_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_state ageis_app_state_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_state
    ADD CONSTRAINT ageis_app_state_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_testimonials ageis_app_testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_testimonials
    ADD CONSTRAINT ageis_app_testimonials_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: tblleads tblleads_pkey; Type: CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.tblleads
    ADD CONSTRAINT tblleads_pkey PRIMARY KEY (id);


--
-- Name: ageis_app_aboutus_company_id_8edd4fb4; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_aboutus_company_id_8edd4fb4 ON public.ageis_app_aboutus USING btree (company_id);


--
-- Name: ageis_app_appliedjobs_applied_job_id_75b332fa; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_appliedjobs_applied_job_id_75b332fa ON public.ageis_app_appliedjobs USING btree (applied_job_id);


--
-- Name: ageis_app_appliedjobs_applied_user_id_6f93ca4a; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_appliedjobs_applied_user_id_6f93ca4a ON public.ageis_app_appliedjobs USING btree (applied_user_id);


--
-- Name: ageis_app_clients_added_by_id_7e0c6880; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_clients_added_by_id_7e0c6880 ON public.ageis_app_clients USING btree (added_by_id);


--
-- Name: ageis_app_district_state_id_7f625924; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_district_state_id_7f625924 ON public.ageis_app_district USING btree (state_id);


--
-- Name: ageis_app_experience_user_id_cae04096; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_experience_user_id_cae04096 ON public.ageis_app_experience USING btree (user_id);


--
-- Name: ageis_app_jobs_added_by_id_338b65f8; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_jobs_added_by_id_338b65f8 ON public.ageis_app_jobs USING btree (added_by_id);


--
-- Name: ageis_app_jobs_company_name_id_e14b6c3f; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_jobs_company_name_id_e14b6c3f ON public.ageis_app_jobs USING btree (company_id);


--
-- Name: ageis_app_jobs_country_id_79540048; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_jobs_country_id_79540048 ON public.ageis_app_jobs USING btree (country_id);


--
-- Name: ageis_app_jobs_district_id_a60e96f2; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_jobs_district_id_a60e96f2 ON public.ageis_app_jobs USING btree (district_id);


--
-- Name: ageis_app_jobs_job_category_id_bee60e06; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_jobs_job_category_id_bee60e06 ON public.ageis_app_jobs USING btree (job_category_id);


--
-- Name: ageis_app_jobs_job_type_id_134cb28c; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_jobs_job_type_id_134cb28c ON public.ageis_app_jobs USING btree (job_type_id);


--
-- Name: ageis_app_jobs_state_id_3224230c; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_jobs_state_id_3224230c ON public.ageis_app_jobs USING btree (state_id);


--
-- Name: ageis_app_qualification_user_id_445786e3; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_qualification_user_id_445786e3 ON public.ageis_app_qualification USING btree (user_id);


--
-- Name: ageis_app_skills_user_id_994e460c; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_skills_user_id_994e460c ON public.ageis_app_skills USING btree (user_id);


--
-- Name: ageis_app_state_country_id_76221b4e; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_state_country_id_76221b4e ON public.ageis_app_state USING btree (country_id);


--
-- Name: ageis_app_testimonials_added_by_id_e9b37086; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_testimonials_added_by_id_e9b37086 ON public.ageis_app_testimonials USING btree (added_by_id);


--
-- Name: ageis_app_testimonials_company_name_id_d4c45708; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX ageis_app_testimonials_company_name_id_d4c45708 ON public.ageis_app_testimonials USING btree (company_name_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: agiesroot
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: ageis_app_aboutus ageis_app_aboutus_company_id_8edd4fb4_fk_ageis_app_clients_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_aboutus
    ADD CONSTRAINT ageis_app_aboutus_company_id_8edd4fb4_fk_ageis_app_clients_id FOREIGN KEY (company_id) REFERENCES public.ageis_app_clients(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_appliedjobs ageis_app_appliedjob_applied_job_id_75b332fa_fk_ageis_app; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_appliedjobs
    ADD CONSTRAINT ageis_app_appliedjob_applied_job_id_75b332fa_fk_ageis_app FOREIGN KEY (applied_job_id) REFERENCES public.ageis_app_jobs(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_appliedjobs ageis_app_appliedjob_applied_user_id_6f93ca4a_fk_ageis_app; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_appliedjobs
    ADD CONSTRAINT ageis_app_appliedjob_applied_user_id_6f93ca4a_fk_ageis_app FOREIGN KEY (applied_user_id) REFERENCES public.ageis_app_extendedusermodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_clients ageis_app_clients_added_by_id_7e0c6880_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_clients
    ADD CONSTRAINT ageis_app_clients_added_by_id_7e0c6880_fk_auth_user_id FOREIGN KEY (added_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_district ageis_app_district_state_id_7f625924_fk_ageis_app_state_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_district
    ADD CONSTRAINT ageis_app_district_state_id_7f625924_fk_ageis_app_state_id FOREIGN KEY (state_id) REFERENCES public.ageis_app_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_experience ageis_app_experience_user_id_cae04096_fk_ageis_app; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_experience
    ADD CONSTRAINT ageis_app_experience_user_id_cae04096_fk_ageis_app FOREIGN KEY (user_id) REFERENCES public.ageis_app_extendedusermodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_extendedusermodel ageis_app_extendedusermodel_user_id_2afe96db_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_extendedusermodel
    ADD CONSTRAINT ageis_app_extendedusermodel_user_id_2afe96db_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_jobs ageis_app_jobs_added_by_id_338b65f8_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobs
    ADD CONSTRAINT ageis_app_jobs_added_by_id_338b65f8_fk_auth_user_id FOREIGN KEY (added_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_jobs ageis_app_jobs_company_id_f476bc93_fk_ageis_app_clients_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobs
    ADD CONSTRAINT ageis_app_jobs_company_id_f476bc93_fk_ageis_app_clients_id FOREIGN KEY (company_id) REFERENCES public.ageis_app_clients(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_jobs ageis_app_jobs_country_id_79540048_fk_ageis_app_country_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobs
    ADD CONSTRAINT ageis_app_jobs_country_id_79540048_fk_ageis_app_country_id FOREIGN KEY (country_id) REFERENCES public.ageis_app_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_jobs ageis_app_jobs_district_id_a60e96f2_fk_ageis_app_district_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobs
    ADD CONSTRAINT ageis_app_jobs_district_id_a60e96f2_fk_ageis_app_district_id FOREIGN KEY (district_id) REFERENCES public.ageis_app_district(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_jobs ageis_app_jobs_job_category_id_bee60e06_fk_ageis_app; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobs
    ADD CONSTRAINT ageis_app_jobs_job_category_id_bee60e06_fk_ageis_app FOREIGN KEY (job_category_id) REFERENCES public.ageis_app_jobcategories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_jobs ageis_app_jobs_job_type_id_134cb28c_fk_ageis_app_jobtype_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobs
    ADD CONSTRAINT ageis_app_jobs_job_type_id_134cb28c_fk_ageis_app_jobtype_id FOREIGN KEY (job_type_id) REFERENCES public.ageis_app_jobtype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_jobs ageis_app_jobs_state_id_3224230c_fk_ageis_app_state_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_jobs
    ADD CONSTRAINT ageis_app_jobs_state_id_3224230c_fk_ageis_app_state_id FOREIGN KEY (state_id) REFERENCES public.ageis_app_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_qualification ageis_app_qualificat_user_id_445786e3_fk_ageis_app; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_qualification
    ADD CONSTRAINT ageis_app_qualificat_user_id_445786e3_fk_ageis_app FOREIGN KEY (user_id) REFERENCES public.ageis_app_extendedusermodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_skills ageis_app_skills_user_id_994e460c_fk_ageis_app; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_skills
    ADD CONSTRAINT ageis_app_skills_user_id_994e460c_fk_ageis_app FOREIGN KEY (user_id) REFERENCES public.ageis_app_extendedusermodel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_state ageis_app_state_country_id_76221b4e_fk_ageis_app_country_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_state
    ADD CONSTRAINT ageis_app_state_country_id_76221b4e_fk_ageis_app_country_id FOREIGN KEY (country_id) REFERENCES public.ageis_app_country(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_testimonials ageis_app_testimonia_company_name_id_d4c45708_fk_ageis_app; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_testimonials
    ADD CONSTRAINT ageis_app_testimonia_company_name_id_d4c45708_fk_ageis_app FOREIGN KEY (company_name_id) REFERENCES public.ageis_app_clients(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ageis_app_testimonials ageis_app_testimonials_added_by_id_e9b37086_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.ageis_app_testimonials
    ADD CONSTRAINT ageis_app_testimonials_added_by_id_e9b37086_fk_auth_user_id FOREIGN KEY (added_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: agiesroot
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

\connect postgres

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23 (Ubuntu 10.23-0ubuntu0.18.04.2)
-- Dumped by pg_dump version 10.23 (Ubuntu 10.23-0ubuntu0.18.04.2)

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

\connect template1

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.23 (Ubuntu 10.23-0ubuntu0.18.04.2)
-- Dumped by pg_dump version 10.23 (Ubuntu 10.23-0ubuntu0.18.04.2)

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

