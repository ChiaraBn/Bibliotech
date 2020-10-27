--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO adminbiblio;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO adminbiblio;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO adminbiblio;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO adminbiblio;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO adminbiblio;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO adminbiblio;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO adminbiblio;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO adminbiblio;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO adminbiblio;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO adminbiblio;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO adminbiblio;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO adminbiblio;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO adminbiblio;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO adminbiblio;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO adminbiblio;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO adminbiblio;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO adminbiblio;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO adminbiblio;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO adminbiblio;

--
-- Name: prestito_book; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE prestito_book (
    id integer NOT NULL,
    titolo character varying(100) NOT NULL,
    autore character varying(100) NOT NULL,
    img character varying(100) NOT NULL,
    trama text NOT NULL
);


ALTER TABLE prestito_book OWNER TO adminbiblio;

--
-- Name: prestito_book_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE prestito_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prestito_book_id_seq OWNER TO adminbiblio;

--
-- Name: prestito_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE prestito_book_id_seq OWNED BY prestito_book.id;


--
-- Name: prestito_exchange; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE prestito_exchange (
    id integer NOT NULL,
    data_inizio date NOT NULL,
    data_fine date NOT NULL,
    book_id_id integer NOT NULL,
    user_id_id integer NOT NULL
);


ALTER TABLE prestito_exchange OWNER TO adminbiblio;

--
-- Name: prestito_exchange_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE prestito_exchange_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE prestito_exchange_id_seq OWNER TO adminbiblio;

--
-- Name: prestito_exchange_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE prestito_exchange_id_seq OWNED BY prestito_exchange.id;


--
-- Name: prestito_userprofile; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE prestito_userprofile (
    email character varying(50) NOT NULL,
    nome character varying(100) NOT NULL,
    cognome character varying(100) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE prestito_userprofile OWNER TO adminbiblio;

--
-- Name: recensione_review; Type: TABLE; Schema: public; Owner: adminbiblio
--

CREATE TABLE recensione_review (
    id integer NOT NULL,
    data date NOT NULL,
    testo text NOT NULL,
    voto integer NOT NULL,
    book_id_id integer NOT NULL,
    user_id_id integer NOT NULL,
    CONSTRAINT recensione_review_voto_check CHECK ((voto >= 0))
);


ALTER TABLE recensione_review OWNER TO adminbiblio;

--
-- Name: recensione_review_id_seq; Type: SEQUENCE; Schema: public; Owner: adminbiblio
--

CREATE SEQUENCE recensione_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recensione_review_id_seq OWNER TO adminbiblio;

--
-- Name: recensione_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminbiblio
--

ALTER SEQUENCE recensione_review_id_seq OWNED BY recensione_review.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: prestito_book id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY prestito_book ALTER COLUMN id SET DEFAULT nextval('prestito_book_id_seq'::regclass);


--
-- Name: prestito_exchange id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY prestito_exchange ALTER COLUMN id SET DEFAULT nextval('prestito_exchange_id_seq'::regclass);


--
-- Name: recensione_review id; Type: DEFAULT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY recensione_review ALTER COLUMN id SET DEFAULT nextval('recensione_review_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add book	1	add_book
2	Can change book	1	change_book
3	Can delete book	1	delete_book
4	Can add exchange	2	add_exchange
5	Can change exchange	2	change_exchange
6	Can delete exchange	2	delete_exchange
7	Can add user profile	3	add_userprofile
8	Can change user profile	3	change_userprofile
9	Can delete user profile	3	delete_userprofile
10	Can add review	4	add_review
11	Can change review	4	change_review
12	Can delete review	4	delete_review
13	Can add log entry	5	add_logentry
14	Can change log entry	5	change_logentry
15	Can delete log entry	5	delete_logentry
16	Can add permission	6	add_permission
17	Can change permission	6	change_permission
18	Can delete permission	6	delete_permission
19	Can add group	7	add_group
20	Can change group	7	change_group
21	Can delete group	7	delete_group
22	Can add user	8	add_user
23	Can change user	8	change_user
24	Can delete user	8	delete_user
25	Can add content type	9	add_contenttype
26	Can change content type	9	change_contenttype
27	Can delete content type	9	delete_contenttype
28	Can add session	10	add_session
29	Can change session	10	change_session
30	Can delete session	10	delete_session
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('auth_permission_id_seq', 30, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
24	pbkdf2_sha256$120000$F60BCktyJS3D$hD0dgYaAyAyUgC6ELzVuyFhYxrZpbA3fAdpsKR3hBaY=	2019-02-02 15:45:42.241432+01	f	fiona	Fiona	Gallagher	fiona@example.com	f	t	2019-01-31 16:07:08.349179+01
2	pbkdf2_sha256$120000$wvAqbViQDezM$EpNY8IxsW0dApr4JXW68XAKXbM4Z54T62rjIPEBFvxM=	2019-01-30 17:44:33.726138+01	f	monica	Monica	Geller	monica@example.com	f	t	2018-12-19 12:52:54.287326+01
5	pbkdf2_sha256$120000$tDFkTSbXzQ4F$PcLCF2eyutOTMNCTNPbfEGdGVDY0UiP6HMqAL2j+mu8=	2019-01-31 15:19:24.323956+01	f	ross	Ross	Geller	ross@example.com	f	t	2018-12-19 13:28:18.485647+01
30	pbkdf2_sha256$120000$xPpxWDc6Q31u$CPrKFnOJNLVbuSXyVuSFr1YW4+8+agYSyk3ai6xkI98=	2019-02-02 15:59:32.885639+01	f	claire	Claire	Fraser	claire@example.com	f	t	2019-02-02 15:34:31.918224+01
25	pbkdf2_sha256$120000$5rCN2Rw31Eqh$qpU2OxOfbxNvdd02X0n7nh3zRcFeQRIWrYBUjmxBx+0=	2019-02-02 16:04:52.790344+01	f	lip	Lip	Gallagher	lip@example.com	f	t	2019-02-02 15:30:15.635493+01
31	pbkdf2_sha256$120000$w9y6UixPZdTo$o02UPaZRLkfX+lgXn52Z4/tBHon+qs76QXiPxjQHiVI=	2019-02-02 16:09:07.174211+01	f	jamie	Jamie	Fraser	jamie@example.com	f	t	2019-02-02 15:35:31.153762+01
23	pbkdf2_sha256$120000$qBnjxP3HEOMq$U8lMoCEvRfTek3XNTQZZd/np8EsNujOnOiP/3ucoR34=	2019-02-02 16:11:22.834777+01	f	rachel	Rachel	Green	rachel@example.com	f	t	2019-01-26 17:44:20.97931+01
26	pbkdf2_sha256$36000$JQaW9N9re30T$XrMR+Z+ztS35UrbIbpuMfkdT2NMmt2mXLRI2jenkM+0=	2019-02-02 15:31:33.633978+01	f	joey	Joey	Tribbiani	joey@example.com	f	t	2019-02-02 15:30:59.181297+01
27	pbkdf2_sha256$36000$3i8GrjaaEecN$fAU5oMGs0e8hhhJ8hU3QwrdHu+Kvibjs5IoFFCv4NeA=	2019-02-02 15:32:08.193298+01	f	chandler	Chandler	Bing	chandler@example.com	f	t	2019-02-02 15:32:07.971372+01
28	pbkdf2_sha256$36000$Of0q2evbz28O$cMXviQuOmZRVDEEbb/iq65pJbnV0K2+YtmSVNZhfT+U=	2019-02-02 15:32:48.969609+01	f	phoebe	Phoebe	Buffay	phoebe@example.com	f	t	2019-02-02 15:32:48.656482+01
29	pbkdf2_sha256$36000$5v4JjNtIuS1Z$x5guTidLkXGQTTQQAbloTrkiAY29+iauHPvCIN+gJEo=	2019-02-02 15:33:52.973819+01	f	michael	Michael	Scott	michael@example.com	f	t	2019-02-02 15:33:52.787316+01
6	pbkdf2_sha256$36000$4A7FAX6hIYXT$sbKvkWRunuoJNxo6/wwCYkmJ4wEe3zYzgWf/6S9cdTU=	2019-01-26 17:38:10.994051+01	f	cristina	Cristina	Yang	cristina@example.com	f	t	2019-01-20 15:05:47.758291+01
21	pbkdf2_sha256$36000$NsztDSpuNhyV$aXOE7gBifZfnIshe0UDoFB4mv6W72O6NyKv6L/7bbk0=	2019-02-02 16:17:16.589401+01	f	meredith	Meredith	Grey	meredith@example.com	f	t	2019-01-26 16:47:11.4857+01
20	pbkdf2_sha256$120000$6cLSi0cBop3O$eDl1BIZV3lPviRTmkutSwaSQqRU3sN5jiWwa2b4d9AE=	2019-01-26 16:36:58.217205+01	f	jake	Jake	Peralta	jake@example.com	f	t	2019-01-26 16:35:28.757559+01
3	pbkdf2_sha256$36000$lrQNljkddhHy$744IwoPSWX9ZpiWeX5cqd+jNaTKu+nMrJ6+m3Kis6Lw=	2019-02-02 16:24:45.440644+01	t	adminbiblio	Admin	Admin	admin@example.com	t	t	2018-12-19 12:53:54.425471+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('auth_user_id_seq', 31, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-12-19 12:56:44.756531+01	1	Monica	2	[{"changed": {"fields": ["email", "password", "nome", "cognome"]}}]	3	3
2	2018-12-19 12:57:05.874632+01	2	Admin	2	[{"changed": {"fields": ["email", "password", "nome", "cognome"]}}]	3	3
3	2018-12-19 12:58:35.330516+01	1	The Great Gatsby	1	[{"added": {}}]	1	3
4	2018-12-19 12:59:22.54641+01	2	Mrs Dalloway	1	[{"added": {}}]	1	3
5	2018-12-19 13:01:00.948192+01	3	La Mécanique du Cœur	1	[{"added": {}}]	1	3
6	2018-12-19 13:26:43.609117+01	4	ross	3		8	3
7	2018-12-19 13:29:48.079034+01	5	Ross	2	[{"changed": {"fields": ["email", "password", "nome", "cognome"]}}]	3	3
8	2018-12-19 16:37:27.684652+01	3	La Mécanique du Coeur	2	[{"changed": {"fields": ["titolo"]}}]	1	3
9	2018-12-19 16:44:53.094178+01	1	Review object (1)	1	[{"added": {}}]	4	3
10	2018-12-19 16:57:55.935019+01	2	Review object (2)	1	[{"added": {}}]	4	3
11	2018-12-19 16:58:08.596586+01	3	Review object (3)	1	[{"added": {}}]	4	3
12	2019-01-19 16:06:03.280788+01	38	Monica	1	[{"added": {}}]	2	3
13	2019-01-19 16:11:35.296658+01	39	Monica	1	[{"added": {}}]	2	3
14	2019-01-19 16:13:31.646197+01	40	Monica	1	[{"added": {}}]	2	3
15	2019-01-19 16:15:41.321516+01	41	Monica	1	[{"added": {}}]	2	3
16	2019-01-19 16:19:42.382887+01	42	Monica	1	[{"added": {}}]	2	3
17	2019-01-19 16:35:55.717456+01	43	Monica	1	[{"added": {}}]	2	3
18	2019-01-20 14:59:32.370316+01	4	The Book Thief	1	[{"added": {}}]	1	3
19	2019-01-20 15:06:58.220372+01	6	Cristina	2	[{"changed": {"fields": ["email", "password", "nome", "cognome"]}}]	3	3
20	2019-01-20 15:38:26.995874+01	7	prova	3		8	3
21	2019-01-20 15:40:04.041489+01	8	p	3		8	3
22	2019-01-20 15:48:06.491611+01	9	p	3		8	3
23	2019-01-20 15:56:18.393467+01	10	p	3		8	3
24	2019-01-20 16:02:45.627363+01	11	p	3		8	3
25	2019-01-26 16:34:05.771312+01	19	p	3		8	3
26	2019-01-29 14:21:19.090527+01	5	Every Day	1	[{"added": {}}]	1	3
27	2019-01-29 14:36:58.265942+01	5	Every Day	3		1	3
28	2019-01-29 14:37:23.624881+01	6	Every Day	1	[{"added": {}}]	1	3
29	2019-01-29 14:42:11.788346+01	7	Every Day	1	[{"added": {}}]	1	3
30	2019-01-29 14:44:09.07073+01	8	Every Day	1	[{"added": {}}]	1	3
31	2019-01-30 15:04:54.741278+01	32	Review object (32)	2	[{"changed": {"fields": ["testo"]}}]	4	3
32	2019-01-30 15:05:36.521146+01	31	Review object (31)	2	[{"changed": {"fields": ["testo"]}}]	4	3
33	2019-01-30 15:06:07.032964+01	30	Review object (30)	2	[{"changed": {"fields": ["testo"]}}]	4	3
34	2019-01-30 15:06:40.084841+01	2	Review object (2)	2	[{"changed": {"fields": ["testo"]}}]	4	3
35	2019-01-30 15:07:14.554847+01	1	Review object (1)	2	[{"changed": {"fields": ["testo"]}}]	4	3
36	2019-01-30 15:07:30.801891+01	27	Review object (27)	3		4	3
37	2019-01-30 15:07:30.80587+01	26	Review object (26)	3		4	3
38	2019-01-30 15:08:01.669829+01	28	Review object (28)	2	[{"changed": {"fields": ["testo"]}}]	4	3
39	2019-01-30 15:09:14.49449+01	29	Review object (29)	2	[{"changed": {"fields": ["testo"]}}]	4	3
40	2019-01-31 16:28:05.199467+01	65	Fiona	1	[{"added": {}}]	2	3
41	2019-01-31 16:33:23.553114+01	66	Fiona	1	[{"added": {}}]	2	3
42	2019-01-31 16:59:14.11738+01	67	Monica	1	[{"added": {}}]	2	3
43	2019-02-02 15:14:33.944425+01	9	One Day	1	[{"added": {}}]	1	3
44	2019-02-02 15:15:09.645166+01	10	Overshare	1	[{"added": {}}]	1	3
45	2019-02-02 15:15:43.709704+01	11	Turtles all the way down	1	[{"added": {}}]	1	3
46	2019-02-02 15:16:13.562976+01	12	After Dark	1	[{"added": {}}]	1	3
47	2019-02-02 15:16:43.61362+01	13	Sputnik Sweetheart	1	[{"added": {}}]	1	3
48	2019-02-02 15:17:15.036314+01	14	Stelle o Sparo	1	[{"added": {}}]	1	3
49	2019-02-02 15:18:03.153707+01	15	Porto Proibito	1	[{"added": {}}]	1	3
50	2019-02-02 15:18:32.34171+01	16	Hunger Games I	1	[{"added": {}}]	1	3
51	2019-02-02 15:18:58.773819+01	17	Hunger Games II	1	[{"added": {}}]	1	3
52	2019-02-02 15:19:26.784571+01	18	Hunger Games III	1	[{"added": {}}]	1	3
53	2019-02-02 15:20:08.682068+01	19	Up All Night	1	[{"added": {}}]	1	3
54	2019-02-02 15:20:58.638327+01	20	La profezia dell'Armadillo	1	[{"added": {}}]	1	3
55	2019-02-02 15:21:42.341158+01	21	Pride and Prejudice	1	[{"added": {}}]	1	3
56	2019-02-02 15:22:06.357323+01	22	1984	1	[{"added": {}}]	1	3
57	2019-02-02 15:22:31.462424+01	23	Fahrenheit 451	1	[{"added": {}}]	1	3
58	2019-02-02 15:23:00.798582+01	24	To the Lighthouse	1	[{"added": {}}]	1	3
59	2019-02-02 15:23:36.104588+01	25	A Room of One's own	1	[{"added": {}}]	1	3
60	2019-02-02 15:24:08.000398+01	26	The Fault in Our Stars	1	[{"added": {}}]	1	3
61	2019-02-02 15:24:29.442329+01	27	Blindness	1	[{"added": {}}]	1	3
62	2019-02-02 15:25:04.203829+01	28	I Kill Giants	1	[{"added": {}}]	1	3
63	2019-02-02 15:27:06.924618+01	13	Sputnik Sweetheart	2	[{"changed": {"fields": ["img"]}}]	1	3
64	2019-02-02 15:40:31.338134+01	None	Review object	1	[{"added": {}}]	4	3
65	2019-02-02 15:41:53.062847+01	None	Review object	1	[{"added": {}}]	4	3
66	2019-02-02 15:44:12.658053+01	None	Review object (None)	1	[{"added": {}}]	4	3
67	2019-02-02 15:59:08.030143+01	34	Review object (34)	1	[{"added": {}}]	4	3
68	2019-02-02 16:06:31.175386+01	36	Review object (36)	1	[{"added": {}}]	4	3
69	2019-02-02 16:20:59.501416+01	77	Rachel	1	[{"added": {}}]	2	3
70	2019-02-02 16:22:26.925948+01	40	Review object	1	[{"added": {}}]	4	3
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 70, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	prestito	book
2	prestito	exchange
3	prestito	userprofile
4	recensione	review
5	admin	logentry
6	auth	permission
7	auth	group
8	auth	user
9	contenttypes	contenttype
10	sessions	session
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('django_content_type_id_seq', 10, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-12-19 12:44:29.418129+01
2	auth	0001_initial	2018-12-19 12:44:30.966934+01
3	admin	0001_initial	2018-12-19 12:44:31.451016+01
4	admin	0002_logentry_remove_auto_add	2018-12-19 12:44:31.495897+01
5	contenttypes	0002_remove_content_type_name	2018-12-19 12:44:31.5904+01
6	auth	0002_alter_permission_name_max_length	2018-12-19 12:44:31.684799+01
7	auth	0003_alter_user_email_max_length	2018-12-19 12:44:31.726687+01
8	auth	0004_alter_user_username_opts	2018-12-19 12:44:31.766618+01
9	auth	0005_alter_user_last_login_null	2018-12-19 12:44:31.807471+01
10	auth	0006_require_contenttypes_0002	2018-12-19 12:44:31.815483+01
11	auth	0007_alter_validators_add_error_messages	2018-12-19 12:44:31.849384+01
12	auth	0008_alter_user_username_max_length	2018-12-19 12:44:31.901923+01
13	prestito	0001_initial	2018-12-19 12:44:32.295983+01
14	recensione	0001_initial	2018-12-19 12:44:32.533857+01
15	sessions	0001_initial	2018-12-19 12:44:32.83327+01
16	prestito	0002_auto_20181219_1321	2018-12-19 13:21:28.028308+01
17	prestito	0003_auto_20181219_1525	2018-12-19 15:25:55.830937+01
18	prestito	0003_auto_20181219_1533	2018-12-19 15:33:22.023125+01
19	prestito	0004_auto_20190120_1625	2019-01-20 16:25:26.579095+01
20	prestito	0005_remove_userprofile_password	2019-01-26 17:40:21.215125+01
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
ot1vqm90xv4vigbgkq5lm77y9nqtuvzo	MzFjNTFhOTI5NmY5MjJkYzUyYTIxNGE3NmEyYmE0MzllZDFjMTA4Njp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWFiZWUyOGJkZjU1MWNjOGM3YWE1Y2UxMDFkMWUzNzE5MjZiMWU2In0=	2019-02-01 17:42:31.107826+01
2kofamld1dtzkedcfhse846t249htak1	ODc3MTQwNWQyYWUwM2VmNGRhNzdkYWFlNDA1Yjc0ZDVhZjUyZTc5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2ViMjc1MGYwYTAyNWEzYmExYWI3NWJhYzdmMjVjOTliNmE3ZDhkOCJ9	2019-02-03 16:10:14.499137+01
fxsfl1wvxixxfmkl3mjun5s55h760lss	NDk1Y2YwYTkyMmZmZTRmNjE3ZWU4MzBjM2Y0NWYyNzczMjk5ZTk3Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NWM1NDkwN2M2MjA1ZTJiY2YwM2JlMjg3M2E4NjdjOTZkYjdlOTJlIn0=	2019-02-05 16:51:23.931456+01
ppnlvf23yim96qr2ybvzxfirwoyywhyq	NmQ4YzFjMGNlYzQ5MGRlNjhlNGMwY2ZkNTE3NDI5NmMxODUyODY4MTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjI3MmI4MWVjZjMyZTQ1YTU1ZjZlZjRkYWY4M2EzOGJhMzA0MDYzIn0=	2019-01-04 17:29:16.539185+01
5cx21yyarlq22ltx8wfhw9mhntmhv0kg	ZTRhMTVlMWUyZDMzMWIzZTZlOWEzOTBkYzhkZDRhNjM3OTJkZDhmZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTkyZTY5Y2E5NjVmYjk0NzcyZjExNDQ3MzI2YjhlYjI2NTVjYzQzIn0=	2019-02-07 10:47:13.63962+01
42t49kjzdhps2ctuwjny5zy9x4p2xxcb	YjU2NTUyYjk1NTkzZWVlZDU0OTZlN2ZjMmY3NTUyMGMwOGZiMTFmNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZjI1ZmFiMTc3ZjQyYjgwMDE1M2JkYTMxM2M4MGQ1NTU3YzVlMzlhIn0=	2019-02-11 16:37:50.87792+01
d21qfjhuwfxuk2w513r0lo6o28saor4p	NmMyYTllNjljMmYyMzNhMGRlMTE4OTlkODQ5ZDAyNmUyOTk2YmE3Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZDBhODBkNmFkZjFlNDMyMjYxNzhjNjQyZTA5Zjg2YWJhYTIzYmJhIn0=	2019-01-05 17:30:26.071544+01
4kjhdwahdb15s8xkapg7f2mcbh0z9b07	ZTRhMTVlMWUyZDMzMWIzZTZlOWEzOTBkYzhkZDRhNjM3OTJkZDhmZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTkyZTY5Y2E5NjVmYjk0NzcyZjExNDQ3MzI2YjhlYjI2NTVjYzQzIn0=	2019-01-24 20:16:40.323343+01
odtz5kzjobc1a112lf85yn14r8a0hkza	ZTRhMTVlMWUyZDMzMWIzZTZlOWEzOTBkYzhkZDRhNjM3OTJkZDhmZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTkyZTY5Y2E5NjVmYjk0NzcyZjExNDQ3MzI2YjhlYjI2NTVjYzQzIn0=	2019-02-02 16:36:13.330749+01
qhz151ixzyebptczglw8pvyqnhu7o3eb	ZTRhMTVlMWUyZDMzMWIzZTZlOWEzOTBkYzhkZDRhNjM3OTJkZDhmZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZTkyZTY5Y2E5NjVmYjk0NzcyZjExNDQ3MzI2YjhlYjI2NTVjYzQzIn0=	2019-02-08 18:07:35.978638+01
os3ijzwwfu0n5q4ppcv7z4atl3vokb22	NmQ4YzFjMGNlYzQ5MGRlNjhlNGMwY2ZkNTE3NDI5NmMxODUyODY4MTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjI3MmI4MWVjZjMyZTQ1YTU1ZjZlZjRkYWY4M2EzOGJhMzA0MDYzIn0=	2019-01-03 11:29:15.111365+01
xf14o0wb6fgmxafv64atsodm8wrn9hwo	NmEwOWUzYzYwZTBkZTAxNjc1MjA1MzY0Yjk5OWIwZWQ0OTRkMmM2ZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZGQyMzVjMDE5MjVkNzBlYWRmYzEzNGNkMWM0OTgzZjNmMWMwODMwIn0=	2019-01-29 17:11:35.821956+01
wpzdaf9ewrw9qs26gw6we2lbm6nbeai8	NmQ4YzFjMGNlYzQ5MGRlNjhlNGMwY2ZkNTE3NDI5NmMxODUyODY4MTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjI3MmI4MWVjZjMyZTQ1YTU1ZjZlZjRkYWY4M2EzOGJhMzA0MDYzIn0=	2019-01-03 12:02:11.475424+01
ddrzl4xva01f428bde1crdaszbjfuloc	ODI3YjE1YjBhYmU3NTVlYjhiODllM2E1ZmU5ZmM4OWIzMGVhMzE4NTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDk4MTFhYTA3OTNjMWUzMjcyZmYzOGQxMjk2MTMzZTQ0N2M5Nzk3In0=	2019-01-29 17:16:35.350006+01
vyh8mjmb3gjwd13l2offa5relhpekiev	NmQ4YzFjMGNlYzQ5MGRlNjhlNGMwY2ZkNTE3NDI5NmMxODUyODY4MTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjI3MmI4MWVjZjMyZTQ1YTU1ZjZlZjRkYWY4M2EzOGJhMzA0MDYzIn0=	2019-01-03 16:22:19.919889+01
a4pwfstxrfw1c1vt9fe09s111vatbdlf	MDMxYjY5Y2JmMjRiY2FlYWI4OWM4NjY1NDMzNmNhZDA4OTQ3N2VmNjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZTI4MjY0ZTM4YmIwZjU2NzUwMzdlY2E1YTIwMjIyYmU2YzAwMmRjIn0=	2019-01-03 16:25:29.773624+01
k92iy8xlp7sfqcempmlll1pviqod4buh	NDk1Y2YwYTkyMmZmZTRmNjE3ZWU4MzBjM2Y0NWYyNzczMjk5ZTk3Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NWM1NDkwN2M2MjA1ZTJiY2YwM2JlMjg3M2E4NjdjOTZkYjdlOTJlIn0=	2019-02-12 14:57:16.540655+01
52ph6u99a5eclsftixl3pag1rneetzsi	MDMxYjY5Y2JmMjRiY2FlYWI4OWM4NjY1NDMzNmNhZDA4OTQ3N2VmNjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZTI4MjY0ZTM4YmIwZjU2NzUwMzdlY2E1YTIwMjIyYmU2YzAwMmRjIn0=	2019-01-03 16:38:25.814776+01
qzdgfw850kvalc8c64g18867lnx6i4mm	ODI3YjE1YjBhYmU3NTVlYjhiODllM2E1ZmU5ZmM4OWIzMGVhMzE4NTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDk4MTFhYTA3OTNjMWUzMjcyZmYzOGQxMjk2MTMzZTQ0N2M5Nzk3In0=	2019-01-30 18:09:49.354403+01
\.


--
-- Data for Name: prestito_book; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY prestito_book (id, titolo, autore, img, trama) FROM stdin;
1	The Great Gatsby	F. Scott Fitzgerald	gatsby.jpg	In the summer of 1922, Nick Carraway, a Yale graduate and veteran of the Great War from the Midwest,\r\n\ttakes a job in New York.\r\n\tHe rents a small house on Long Island, next door to the lavish mansion of Jay Gatsby, a mysterious \r\n\tmulti-millionaire who holds extravagant parties but does not participate in them.\r\n\tGatsby had hoped that his wild parties would attract an unsuspecting Daisy,\r\n\twho lived across the bay, and who was Nick's cousin.\r\n\tHaving developed a budding friendship with Nick, Gatsby uses him to arrange a \r\n\treunion between himself and Daisy. \r\n\tDoing so, Gatsby was running after an incorruptible dream, even with all his money.
2	Mrs Dalloway	Virginia Woolf	dalloway.jpg	Clarissa Dalloway goes around London in the morning, getting ready to host a party that evening. \r\n\tThe nice day reminds her of her youth spent in the countryside in Bourton and \r\n\tmakes her wonder about her choice of husband; she married the reliable Richard Dalloway \r\n\tinstead of the enigmatic and demanding Peter Walsh, \r\n\tand she "had not the option" to be with Sally Seton.
3	La Mécanique du Coeur	Mathias Malzieu	mecanica.jpg	In the 1874, during the most freezing night of all, a woman gave birth to Jack, \r\n\tour main character on the story.\r\n\tHe had to have an immediately surgery on his heart, because it was freezing.\r\n\tA witch, who helped his mom during the birth, put a clock on Jack's chest, to save his life.\r\n\tBecause this clock is very fragile, Jack now is doomed to live a life very flat, \r\n\ttrying to avoid every strong emotion, because it could break his tiny heart.\r\n\tFor most of his life, Jack is fine living very peacefully, \r\n\tbut one day he met a little dancer and he feel immediately in love with her, \r\n\tleaving Jack with the doubt of living with or without passion, even if it \r\n\tcould mean a great risk on his heart.
4	The Book Thief	Markus Zusak	bookThieve.jpg	After the death of Liesel's younger brother on a train to Molching, \r\n\tLiesel arrives at the home of her new foster parents, Hans and Rosa Hubermann, \r\n\tdistraught and withdrawn.\r\n\tDuring her time there, she is exposed to the horrors of the Nazi regime, \r\n\tcaught between the innocence of childhood and the maturity demanded by her destructive surroundings.\r\n\tHans, who has developed a close relationship with Liesel, teaches her to read, \r\n\tfirst in her bedroom, then in the basement. Recognizing the power of writing \r\n\tand sharing the written word, Liesel not only begins to steal books that \r\n\tthe Nazi party is looking to destroy, but also writes her own story.
8	Every Day	David Levithan	everyDay.jpg	Every Day is about the story of A, a person who wakes up occupying a different body each day.\r\n\tThe story begins with A waking up in the body of a teenage boy named Justin.\r\n\tUpon arriving to school, A meets Justin's girlfriend, Rhiannon, and feels an instant \r\n\tconnection to her. Based on Justin's memories, A can tell that Justin and Rhiannon \r\n\tare having a rough time in their relationship, so in order to learn more about her, \r\n\tA invites her to the beach.\r\n\tA has immediately fallen in love with her.\r\n\tSo the problem is now to learn how to make this impossible love, possible.
9	One Day	David Nicholls	oneDay.jpg	Dexter and Emma spend the night together following their graduation from Edinburgh University, in 1988.\r\n\tThey talk about how they will be once they are 40.\r\n\tEmma wants to improve the world, and begins writing and performing plays, \r\n\twhich remain unsuccessful, while Dexter travels through the world, drinking and hooking up with women.\r\n\tWhile they do not become romantically involved completely, \r\n\tthis is the beginning of their friendship. \r\n\tThe novel visits their lives and their relationship on 15 July in successive years in each chapter, \r\n\tfor 20 years.
10	Overshare	Rose and Rosie	overshare.jpg	Rose and Rosie are known for their candid and hilarious YouTube videos... but now they are taking oversharing to a whole new level. \r\n\tDiscussing sexuality, revealing secrets and empowering others, OVERSHARE is a book packed with Rose and Rosie's unique take on friendships, \r\n\tfame, mental health and LGBT issues.
11	Turtles all the way down	John Green	turtles.jpg	Aza Holmes is a 16-year-old high school student living in Indianapolis who struggles with OCD, \r\n\toften manifest as a fear of the human microbiome. \r\n\tOne day at school Daisy discovers that Russell Pickett, a billionaire construction magnate \r\n\tand the father of one of Aza's old friends, Davis Pickett, has gone missing in the wake of \r\n\tfraud investigations. Tempted by the reward of $100,000 for information leading to Pickett's arrest, \r\n\tDaisy takes Aza on a search for the missing billionaire, who brings them to meet Davis. \r\n\tAfter the meeting, Davis and Aza begin a relationship.\r\n\tSo Aza will trying to make the relationship work, according to her OCD.
12	After Dark	Haruki Murakami	afterDark.jpg	Set in metropolitan Tokyo over the course of one night, characters include Mari Asai, \r\n\ta 19-year-old student, who is spending the night reading in a Denny's. \r\n\tThere she meets Takahashi Tetsuya, a trombone-playing student who loves Curtis Fuller's \r\n\t"Five Spot After Dark" song on Blues-ette; Takahashi knows Mari's sister Eri, \r\n\twho he was once interested in, and insists that the group of them have hung out before. \r\n\tMeanwhile, Eri is in a deep sleep next to a television and seems to be haunted by a menacing figure. \r\n\tThis novel is set all throught one night and brings us to connect all the characters.
14	Stelle o Sparo	Nova	stelleOSparo.jpg	Stella and Ed have always been friends. Stella has been stuck in her paranoia for a while, \r\n\tso Ed forces her to leave on a trip.\r\n\tThey find themselves on an island that tourism has forgotten, and they get to know its inhabitants. \r\n\tThey spend their days as if they were pirates, exploring and understanding what they can from \r\n\twhat surrounds them, to understand what they have inside.
15	Porto Proibito	Stefano Turconi, Teresa Radice	portoProibito.jpg	In the summer of 1807, a ship from Her Majesty's Navy recovers a young shipwreck off \r\n\tthe coast of Siam, Abel, who only remembers his name. He soon became a friend of the first officer, \r\n\tacting as a captain because the commander of the ship is, apparently, escaped \r\n\tafter having appropriated the values ​​present on board. Abel returns to England with the Explorer, \r\n\tand finds accommodation at the inn run by the three fugitive captain's daughters. \r\n\tWell before he can return his memory, however, he will discover something deeply disturbing \r\n\tabout himself, and he will understand the true nature of some of the people who helped him
16	Hunger Games I	Suzanne Collins	HG1.jpg	The Hunger Games takes place in a nation known as Panem, \r\n\testablished in North America after the destruction of the continent's civilization \r\n\tby an unknown apocalyptic event. \r\n\tAs punishment for a past rebellion against the Capitol, one boy and one girl between the ages of 12 and 18 \r\n\tfrom each district are selected by an annual lottery to participate in the Hunger Games, a contest in \r\n\twhich the "tributes" must fight to the death in an outdoor arena until only one remains. The event is televised.\r\n\tThe story is narrated by 16-year-old Katniss Everdeen, a girl from District 12 who volunteers for \r\n\tthe 74th Hunger Games in place of her 12-year-old sister, Primrose. The male tribute is Peeta Mellark, \r\n\ta former schoolmate of Katniss who once gave her bread from his family's bakery when her family was starving.
17	Hunger Games II	Suzanne Collins	HG2.jpg	After the 74th Hunger Games, Katniss Everdeen and Peeta Mellark return to District 12. \r\n\tSnow explains that her actions in the Games have inspired uprisings. \r\n\tHe orders her to use the upcoming Victory Tour to convince people that her actions were out of love for Peeta \r\n\tand not defiance against the Capitol, or District 12 will be destroyed. \r\n\tAs the tour begins, Haymitch Abernathy warns Katniss and Peeta that the "show" of their relationship must \r\n\tcontinue for the rest of their lives. Katniss suggests they announce their engagement, which is approved by Snow, \r\n\twith their wedding to be staged at his mansion in the Capitol. \r\n\tSnow announces that the third Quarter Quell of the upcoming Hunger Games will involve tributes selected \r\n\tfrom previous victors, guaranteeing that Katniss will be selected as she is the only living female victor from District 12.\r\n\tHaymitch reveals that the tributes are angry about being returned to the Games, and all of them will most \r\n\tlikely attempt to stop the games.
18	Hunger Games III	Suzanne Collins	HG3.jpg	Katniss, her sister Prim, and her friends Finnick Odair and Gale Hawthorne all reluctantly adjust to a highly \r\n\tstructured life in the underground District 13, which has been spearheading the rebellion in Panem.\r\n\tKatniss and the rebels learn that Peeta is alive, though he is being tortured by the Capitol in an attempt to demoralize and control Katniss.\r\n\tA controversial strategy proposed by Gale results in a decisive victory in District 2, \r\n\tenabling the rebels to launch a final assault against the Capitol itself.
19	Up All Night	Giulia Argnani	upAllNight.jpg	Chiara meets Greta one winter evening in a club where Greta is playing. \r\n\tFrom that meeting, for Chiara is opening a world in front of her, made of music and the province no longer seems so boring. \r\n\tFor her, who had even abandoned her greatest passion, photography, Greta becomes the focus of her goal.
20	La profezia dell'Armadillo	Zerocalcare	profezia.jpg	Starting from the moment he learns of the death of Camille, his old friend and first great love, \r\n\tthe author uses flashbacks from where he was adolescent, who described the story of their friendship, to stories of his \r\n\tdaily life from almost thirty in Rome.
21	Pride and Prejudice	Jane Austen	prideAndPrejudice.jpg	The novel opens with Mrs. Bennet trying to persuade Mr. Bennet to visit Mr. Bingley, a rich and eligible bachelor \r\n\twho has arrived in the neighbourhood. After some verbal sparring with Mr. Bennet baiting his wife, it transpires that \r\n\tthis visit has already taken place at Netherfield, Mr. Bingley's rented house. The visit is followed by an invitation to a ball\r\n\tat the local assembly rooms that the whole neighbourhood will attend. \r\n\tWhen Jane visits Miss Bingley, she is caught in a rain shower on the way and comes down with a serious cold. \r\n\tElizabeth visits the ill Jane at Netherfield. There Darcy begins to be attracted to Elizabeth, while Miss Bingley becomes jealous, \r\n\tsince she has designs on Darcy herself.
22	1984	George Orwell	1984.jpg	In the year 1984, civilization has been damaged by war, civil conflict, and revolution.\r\n\tIt is ruled by the "Party" under the ideology of "Ingsoc" and the mysterious leader Big Brother, \r\n\twho has an intense cult of personality. The Party stamps out anyone who does not fully conform to their regime using \r\n\tthe Thought Police and constant surveillance through devices such as Telescreens.\r\n\tWinston Smith is a member of the middle class Outer Party. He works at the Ministry of Truth, \r\n\twhere he rewrites historical records to conform to the state's ever-changing version of history. \r\n\tThose who fall out of favour with the Party become "unpersons", disappearing with all evidence of their existence removed.
23	Fahrenheit 451	Ray Bradbury	Far451.jpg	Guy Montag is a "fireman" employed to burn the possessions of those who read outlawed books. \r\n\tHe is married but has no children. One fall night while returning from work, he meets his new neighbor, \r\n\ta teenage girl named Clarisse McClellan, whose free-thinking ideals and liberating spirit cause him to \r\n\tquestion his life and his own perceived happiness. \r\n\tMontag returns home to find that his wife Mildred has overdosed on sleeping pills, \r\n\tand he calls for medical attention. Two uncaring EMTs pump Mildred's stomach, drain her poisoned blood, \r\n\tand fill her with new blood. After the EMTs leave to rescue another overdose victim, Montag goes outside \r\n\tand overhears Clarisse and her family talking about the way life is in this hedonistic, illiterate society. \r\n\tMontag's mind is bombarded with Clarisse's subversive thoughts and the memory of his wife's near-death.
24	To the Lighthouse	Virginia Woolf	lighthouse.jpg	The novel is set in the Ramsays' summer home in the Hebrides, on the Isle of Skye. \r\n\tThe section begins with Mrs Ramsay assuring her son James that they should be able to visit \r\n\tthe lighthouse on the next day. This prediction is denied by Mr Ramsay, who voices his certainty \r\n\tthat the weather will not be clear, an opinion that forces a certain tension between Mr and Mrs Ramsay, \r\n\tand also between Mr Ramsay and James. This particular incident is referred to on various occasions throughout the section, \r\n\tespecially in the context of Mr and Mrs Ramsay's relationship.
25	A Room of One's own	Virginia Woolf	stanzaTuttaPerSe.jpg	The dramatic setting of A Room of One's Own is that Woolf has been invited to lecture on the topic of Women and Fiction.\r\n\tShe advances the thesis that "a woman must have money and a room of her own if she is to write fiction." \r\n\tHer essay is constructed as a partly-fictionalized narrative of the thinking that led her to adopt this thesis. \r\n\tShe dramatizes that mental process in the character of an imaginary narrator ("call me Mary Beton, Mary Seton, \r\n\tMary Carmichael or by any name you please—it is not a matter of any importance") who is in her same position, \r\n\twrestling with the same topic.
26	The Fault in Our Stars	John Green	faultStars.jpg	Hazel Grace Lancaster, a 16-year-old with thyroid cancer that has spread to her lungs, \r\n\tattends a cancer patient support group at her mother's behest. \r\n\tAt one meeting, Hazel meets a 17-year-old boy currently in remission named Augustus Waters, \r\n\twhose Osteosarcoma caused him to lose his right leg. Augustus is at the meeting to support Isaac, \r\n\this friend who has eye cancer. They meet after the support group and begin to talk. \r\n\tAugustus gives Hazel The Price of Dawn, and Hazel recommends An Imperial Affliction, a\r\n\tnovel written by Peter Van Houten, who lives in Amsterdam, about a cancer-stricken girl \r\n\tnamed Anna that parallels Hazel's own experience. \r\n\tA week later, Augustus reveals to Hazel that he has tracked down Van Houten's assistant, Lidewij.\r\n\tVan Houten eventually replies, explaining that he can only answer Hazel's questions in person. \r\n\tAt a picnic, Augustus surprises Hazel with tickets to Amsterdam to meet Van Houten.
27	Blindness	Jose Saramago	cecita.jpg	Blindness is the story of an unexplained mass epidemic of blindness afflicting nearly everyone in an unnamed city, \r\n\tand the social breakdown that swiftly follows. The novel follows the misfortunes of a handful of characters \r\n\twho are among the first to be stricken and centers on "the doctor's wife," her husband, several of his patients, \r\n\tand assorted others, who are thrown together by chance. After lengthy and traumatic quarantine in an asylum, \r\n\tthe group bands together in a family-like unit to survive by their wits and by the unexplained good fortune \r\n\tthat the doctor’s wife has escaped the blindness. The sudden onset and unexplained origin and nature of the blindness \r\n\tcause widespread panic, and the social order rapidly unravels as the government attempts to contain the apparent \r\n\tcontagion and keep order via increasingly repressive and inept measures.
28	I Kill Giants	Anders Walter	killGiants.jpg	Barbara Thorson is a young, independent teenager who lives with her brother and supportive older sister, Karen. \r\n\tBarbara has created a fantasy world inspired by her love of Dungeons & Dragons and the career of former Phillies pitcher, \r\n\tHarry Coveleski. Believing that giants from other worlds are coming to attack her hometown, she spends her days creating \r\n\tweapons and traps to fend off the creatures.\r\n\tOne day, Barbara meets Sophia, who just moved to the area from Leeds, England.\r\n\tAfter Barbara is given detention by the principal for insulting a teacher, she takes Sophia with her on her hunt for a giant.
13	Sputnik Sweetheart	Haruki Murakami	sputnik.jpg	Sumire is an aspiring writer who survives on a family stipend and the creative input \r\n\tof her only friend, the novel's male narrator and protagonist, known in the text only as 'K'. \r\n\tK is an elementary school teacher, 25 years old, and in love with Sumire.\r\n\tAt a wedding, Sumire meets an ethnic Korean woman, Miu, who is 17 years her senior. \r\n\tThe two strike up a conversation, and Sumire finds herself attracted to the older woman.
\.


--
-- Name: prestito_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('prestito_book_id_seq', 28, true);


--
-- Data for Name: prestito_exchange; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY prestito_exchange (id, data_inizio, data_fine, book_id_id, user_id_id) FROM stdin;
59	2019-01-25	2019-02-24	2	2
64	2019-01-31	2019-03-02	2	5
74	2019-02-02	2019-03-04	28	23
77	2018-12-03	2019-02-02	10	23
35	2019-01-18	2019-02-17	1	3
52	2019-01-20	2019-02-19	2	6
\.


--
-- Name: prestito_exchange_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('prestito_exchange_id_seq', 77, true);


--
-- Data for Name: prestito_userprofile; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY prestito_userprofile (email, nome, cognome, user_id) FROM stdin;
monica@example.com	Monica	Geller	2
admin@example.com	Admin	Admin	3
ross@example.com	Ross	Geller	5
jake@example.com	Jake	Peralta	20
cristina@example.com	Cristina	Yang	6
rachel@example.com	Rachel	Green	23
meredith@example.com	Meredith	Grey	21
fiona@example.com	Fiona	Gallagher	24
lip@example.com	Lip	Gallagher	25
joey@example.com	Joey	Tribbiani	26
chandler@example.com	Chandler	Bing	27
phoebe@example.com	Phoebe	Buffay	28
michael@example.com	Michael	Scott	29
claire@example.com	Claire	Fraser	30
jamie@example.com	Jamie	Fraser	31
\.


--
-- Data for Name: recensione_review; Type: TABLE DATA; Schema: public; Owner: adminbiblio
--

COPY recensione_review (id, data, testo, voto, book_id_id, user_id_id) FROM stdin;
32	2019-01-24	It was nice reading something that famous and actually appreciate it.	3	2	2
31	2019-01-21	Read it because of the film but i actually preferred it, in book!\r\nHighly recommended.	3	1	5
30	2019-01-19	Amazing.\r\nI fall in love with the characters.	4	3	2
2	2018-11-05	I didn't like it at all.\r\nIt was too long and the main message was not clear.	1	2	5
1	2018-12-19	A little boring in some parts but i found it well written, after all.	2	1	2
28	2019-01-15	It is really well written and it makes you think like a little child, for once.	3	3	5
29	2019-01-18	Well done. My english teacher forced me to read it, but i really enjoyed the story.	3	1	5
33	2019-02-02	John Green is a very talented man, thank you!	3	11	24
34	2018-11-12	i did not like it at all!	1	14	5
35	2019-02-02	Very easy to read.	3	4	25
36	2019-01-08	Great series, great book!	4	16	26
37	2019-02-02	Like every book from Murakami, it is very well written	3	13	31
39	2019-02-02	I love them since their Youtube channel and this book is very hilarious!	3	10	21
40	2018-10-21	My girlfriend gave me this book for my birthday and i really liked it!	4	9	29
\.


--
-- Name: recensione_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminbiblio
--

SELECT pg_catalog.setval('recensione_review_id_seq', 40, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: prestito_book prestito_book_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY prestito_book
    ADD CONSTRAINT prestito_book_pkey PRIMARY KEY (id);


--
-- Name: prestito_exchange prestito_exchange_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY prestito_exchange
    ADD CONSTRAINT prestito_exchange_pkey PRIMARY KEY (id);


--
-- Name: prestito_exchange prestito_exchange_user_id_id_book_id_id_0210eb39_uniq; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY prestito_exchange
    ADD CONSTRAINT prestito_exchange_user_id_id_book_id_id_0210eb39_uniq UNIQUE (user_id_id, book_id_id);


--
-- Name: prestito_exchange prestito_exchange_user_id_id_book_id_id_da_13b07b0f_uniq; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY prestito_exchange
    ADD CONSTRAINT prestito_exchange_user_id_id_book_id_id_da_13b07b0f_uniq UNIQUE (user_id_id, book_id_id, data_inizio, data_fine);


--
-- Name: prestito_userprofile prestito_userprofile_user_id_f0fde8f1_pk; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY prestito_userprofile
    ADD CONSTRAINT prestito_userprofile_user_id_f0fde8f1_pk PRIMARY KEY (user_id);


--
-- Name: recensione_review recensione_review_pkey; Type: CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY recensione_review
    ADD CONSTRAINT recensione_review_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: prestito_exchange_book_id_id_e90ca87e; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX prestito_exchange_book_id_id_e90ca87e ON prestito_exchange USING btree (book_id_id);


--
-- Name: prestito_exchange_user_id_id_635f05cd; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX prestito_exchange_user_id_id_635f05cd ON prestito_exchange USING btree (user_id_id);


--
-- Name: recensione_review_book_id_id_fb0d59bf; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX recensione_review_book_id_id_fb0d59bf ON recensione_review USING btree (book_id_id);


--
-- Name: recensione_review_user_id_id_ecaa161e; Type: INDEX; Schema: public; Owner: adminbiblio
--

CREATE INDEX recensione_review_user_id_id_ecaa161e ON recensione_review USING btree (user_id_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: prestito_exchange prestito_exchange_book_id_id_e90ca87e_fk_prestito_book_id; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY prestito_exchange
    ADD CONSTRAINT prestito_exchange_book_id_id_e90ca87e_fk_prestito_book_id FOREIGN KEY (book_id_id) REFERENCES prestito_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: prestito_userprofile prestito_userprofile_user_id_f0fde8f1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY prestito_userprofile
    ADD CONSTRAINT prestito_userprofile_user_id_f0fde8f1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recensione_review recensione_review_book_id_id_fb0d59bf_fk_prestito_book_id; Type: FK CONSTRAINT; Schema: public; Owner: adminbiblio
--

ALTER TABLE ONLY recensione_review
    ADD CONSTRAINT recensione_review_book_id_id_fb0d59bf_fk_prestito_book_id FOREIGN KEY (book_id_id) REFERENCES prestito_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

