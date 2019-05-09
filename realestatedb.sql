--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 10.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: contacts_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts_contact (
    id integer NOT NULL,
    listing character varying(200) NOT NULL,
    listing_id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    message text NOT NULL,
    contact_date timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.contacts_contact OWNER TO postgres;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_contact_id_seq OWNER TO postgres;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts_contact.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: listings_listing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listings_listing (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    zipcode character varying(20) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    bedrooms integer NOT NULL,
    bathrooms numeric(2,1) NOT NULL,
    garage integer NOT NULL,
    sqft integer NOT NULL,
    lot_size numeric(5,1) NOT NULL,
    photo_main character varying(100) NOT NULL,
    photo_1 character varying(100) NOT NULL,
    photo_2 character varying(100) NOT NULL,
    photo_3 character varying(100) NOT NULL,
    photo_4 character varying(100) NOT NULL,
    photo_5 character varying(100) NOT NULL,
    photo_6 character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL,
    realtor_id integer NOT NULL
);


ALTER TABLE public.listings_listing OWNER TO postgres;

--
-- Name: listings_listing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.listings_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listings_listing_id_seq OWNER TO postgres;

--
-- Name: listings_listing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;


--
-- Name: realtors_realtor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.realtors_realtor (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.realtors_realtor OWNER TO postgres;

--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.realtors_realtor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.realtors_realtor_id_seq OWNER TO postgres;

--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.realtors_realtor_id_seq OWNED BY public.realtors_realtor.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: contacts_contact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact ALTER COLUMN id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: listings_listing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);


--
-- Name: realtors_realtor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor ALTER COLUMN id SET DEFAULT nextval('public.realtors_realtor_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
25	Can add listing	7	add_listing
26	Can change listing	7	change_listing
27	Can delete listing	7	delete_listing
28	Can view listing	7	view_listing
29	Can add realtor	8	add_realtor
30	Can change realtor	8	change_realtor
31	Can delete realtor	8	delete_realtor
32	Can view realtor	8	view_realtor
33	Can add contact	9	add_contact
34	Can change contact	9	change_contact
35	Can delete contact	9	delete_contact
36	Can view contact	9	view_contact
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$150000$zYMKgJMU288u$/QBjCy0T1U9V19deeglpUp155dubM9sn5yIH7E0jc1U=	2019-05-01 19:37:02.260875-04	f	akhiljagini	Akhil	Jagini	akhiljagini@gmail.com	f	t	2019-05-01 19:33:52.565459-04
2	pbkdf2_sha256$150000$suuPu5z6ekqv$p7jI4Jf58ff6gCqTufY+CPWWamtYl9AckoBp/az6WuU=	2019-05-08 10:26:51.563036-04	f	jaginiakhil6598	Akhil	Jagini	jaginiakhil6598@gmail.com	f	t	2019-04-27 20:50:00.220462-04
1	pbkdf2_sha256$150000$FUH4oCLckC63$cxCmcVTC3d4t8KhXstdNfwGtaX5kFwUqCUtOfJrieFI=	2019-05-08 14:11:11.203581-04	t	jagini			jaginiakhil@gmail.com	t	t	2019-04-15 15:02:10.619947-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: contacts_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts_contact (id, listing, listing_id, name, email, phone, message, contact_date, user_id) FROM stdin;
1	33 Essex Circle	6	 akhil	jaginiakhil@gmail.com	2019220529	iam intrested	2019-04-29 14:08:47.614775-04	1
2	33 Essex Circle	6	jakhil	jaginiakhil55@gmail.com			2019-04-29 14:12:05.825778-04	0
3	33 Essex Circle	6	akhilj	hgfh@gmail.com	2019200529	hi	2019-04-29 15:54:03.462443-04	0
4	33 Essex Circle	6	akhilj	hgfh@gmail.com	2019200529	hi	2019-04-29 16:02:23.022726-04	0
5	33 Essex Circle	6	akhilj	j@gmail.com	555555555	hello	2019-04-29 16:03:54.863176-04	0
6	33 Essex Circle	6	akhilj	j@gmail.com	555555555	hello	2019-04-29 16:15:42.739296-04	0
7	33 Essex Circle	6	akhilj	j@gmail.com	555555555	hello	2019-04-29 16:25:23.394188-04	0
8	33 Essex Circle	6	akhilj	j@gmail.com	88888888	hello	2019-04-29 16:28:50.789343-04	0
9	33 Essex Circle	6	akhilj	a@gmail.com	2019200529	hello	2019-04-29 16:33:00.303236-04	0
10	33 Essex Circle	6	Akhil Jagini	akhiljagini@gmail.com	2019200529	iam intrested	2019-05-01 15:34:34.833375-04	3
11	334 SAINT PAULS AVE, APT 1	6	ashjh	sahfh@gmail.com	2019200529	dseff	2019-05-08 09:36:08.393019-04	0
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-04-15 19:09:31.594729-04	1	Akhil Kumar Jagini	1	[{"added": {}}]	8	1
2	2019-04-15 19:15:42.638028-04	2	Jay Koli	1	[{"added": {}}]	8	1
3	2019-04-15 19:17:25.576284-04	3	Isaac Christi	1	[{"added": {}}]	8	1
4	2019-04-15 19:18:35.012727-04	4	Dhamini Muniraju	1	[{"added": {}}]	8	1
5	2019-04-15 19:20:01.630607-04	5	Tejas A Patil	1	[{"added": {}}]	8	1
6	2019-04-15 19:34:11.455666-04	1	45 Drivewood Cirlce	1	[{"added": {}}]	7	1
7	2019-04-15 19:36:24.754335-04	2	18 Jefferson Lane	1	[{"added": {}}]	7	1
8	2019-04-15 19:38:30.053589-04	3	187 Woodrow Street	1	[{"added": {}}]	7	1
9	2019-04-15 19:41:43.976414-04	4	28 Gifford Street	1	[{"added": {}}]	7	1
10	2019-04-15 19:45:32.083549-04	5	12 United Road	1	[{"added": {}}]	7	1
11	2019-04-15 19:47:52.985109-04	6	33 Essex Circle	1	[{"added": {}}]	7	1
12	2019-04-17 21:10:01.331997-04	1	Akhil Kumar Jagini	2	[{"changed": {"fields": ["is_mvp"]}}]	8	1
13	2019-04-17 22:46:44.179675-04	1	Akhil Kumar Jagini	2	[{"changed": {"fields": ["description"]}}]	8	1
14	2019-05-08 13:34:11.037035-04	6	33 Essex Circle	2	[{"changed": {"fields": ["description"]}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	listings	listing
8	realtors	realtor
9	contacts	contact
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-04-14 00:47:34.008099-04
2	auth	0001_initial	2019-04-14 00:47:34.57335-04
3	admin	0001_initial	2019-04-14 00:47:35.370158-04
4	admin	0002_logentry_remove_auto_add	2019-04-14 00:47:35.61997-04
5	admin	0003_logentry_add_action_flag_choices	2019-04-14 00:47:35.635589-04
6	contenttypes	0002_remove_content_type_name	2019-04-14 00:47:35.666792-04
7	auth	0002_alter_permission_name_max_length	2019-04-14 00:47:35.698034-04
8	auth	0003_alter_user_email_max_length	2019-04-14 00:47:35.713655-04
9	auth	0004_alter_user_username_opts	2019-04-14 00:47:35.74493-04
10	auth	0005_alter_user_last_login_null	2019-04-14 00:47:35.760518-04
11	auth	0006_require_contenttypes_0002	2019-04-14 00:47:35.760518-04
12	auth	0007_alter_validators_add_error_messages	2019-04-14 00:47:35.776169-04
13	auth	0008_alter_user_username_max_length	2019-04-14 00:47:35.854247-04
14	auth	0009_alter_user_last_name_max_length	2019-04-14 00:47:35.854247-04
15	auth	0010_alter_group_name_max_length	2019-04-14 00:47:35.869871-04
16	auth	0011_update_proxy_permissions	2019-04-14 00:47:35.885493-04
17	sessions	0001_initial	2019-04-14 00:47:35.963772-04
18	realtors	0001_initial	2019-04-15 14:39:08.821417-04
19	listings	0001_initial	2019-04-15 14:39:09.121193-04
20	contacts	0001_initial	2019-04-29 16:36:39.356475-04
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: listings_listing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listings_listing (id, title, address, city, state, zipcode, description, price, bedrooms, bathrooms, garage, sqft, lot_size, photo_main, photo_1, photo_2, photo_3, photo_4, photo_5, photo_6, is_published, list_date, realtor_id) FROM stdin;
1	45 Drivewood Cirlce	45 Drivewood Cirlce	Norwood	MA	02062	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est.	490000	3	2.0	2	3200	2.3	photos/2019/04/15/home-1.jpg	photos/2019/04/15/home-inside-1.jpg	photos/2019/04/15/home-inside-2.jpg	photos/2019/04/15/home-inside-3.jpg	photos/2019/04/15/home-inside-4.jpg	photos/2019/04/15/home-5.jpg	photos/2019/04/15/home-6.jpg	t	2019-03-14 15:26:31-04	1
2	18 Jefferson Lane	18 Jefferson Lane	Woburn	MA	01801	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est.	550000	4	2.5	1	3200	2.5	photos/2019/04/15/home-2.jpg	photos/2019/04/15/home-inside-1_n9aUCpv.jpg	photos/2019/04/15/home-inside-2_BPdkqCt.jpg	photos/2019/04/15/home-inside-3_tLRu7wr.jpg	photos/2019/04/15/home-inside-4_CUpKUw7.jpg	photos/2019/04/15/home-inside-5.jpg	photos/2019/04/15/home-inside-6.jpg	t	2019-03-28 15:34:11-04	2
3	187 Woodrow Street	187 Woodrow Street	Salem	MA	01915	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est.	580000	4	3.0	0	3107	3.0	photos/2019/04/15/home-3.jpg	photos/2019/04/15/home-inside-1_4YcEM9m.jpg	photos/2019/04/15/home-inside-2_NjOGgIX.jpg	photos/2019/04/15/home-inside-3_g9serlm.jpg	photos/2019/04/15/home-inside-4_M0gENV3.jpg	photos/2019/04/15/home-inside-5_GieBico.jpg	photos/2019/04/15/home-inside-6_fPfMRP3.jpg	t	2019-04-01 15:36:24-04	3
4	28 Gifford Street	28 Gifford Street	Bedford	NH	03103	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est.	380000	2	4.0	2	2927	2.5	photos/2019/04/15/home-4.jpg	photos/2019/04/15/home-inside-1_WP8LdqT.jpg	photos/2019/04/15/home-inside-2_i9kycuM.jpg	photos/2019/04/15/home-inside-3_q4e1nqR.jpg	photos/2019/04/15/home-inside-4_BjAK1MA.jpg	photos/2019/04/15/home-inside-5_HonDogZ.jpg	photos/2019/04/15/home-inside-6_WOo9qiI.jpg	t	2019-04-03 15:38:30-04	4
5	12 United Road	12 United Road	South Hampton	NH	03827	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est.	230000	3	1.5	1	2207	2.5	photos/2019/04/15/home-5_qblyy5b.jpg	photos/2019/04/15/home-inside-1_UyROAcW.jpg	photos/2019/04/15/home-inside-2_yU2uIhx.jpg	photos/2019/04/15/home-inside-3_2KVhKHJ.jpg	photos/2019/04/15/home-inside-4_78RzYv2.jpg	photos/2019/04/15/home-inside-5_oe663T6.jpg	photos/2019/04/15/home-inside-6_KR8yRTE.jpg	t	2019-04-03 15:41:44-04	5
6	33 Essex Circle	33 Essex Circle	Lexington	MA	01731	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est. pool	780000	5	3.5	1	4145	3.7	photos/2019/04/15/home-6_BPN9XOa.jpg	photos/2019/04/15/home-inside-1_AYMsna7.jpg	photos/2019/04/15/home-inside-2_m44D2nd.jpg	photos/2019/04/15/home-inside-3_V97xMPm.jpg	photos/2019/04/15/home-inside-4_6szx47z.jpg	photos/2019/04/15/home-inside-5_7wsOzGN.jpg	photos/2019/04/15/home-inside-6_wVA9NsA.jpg	t	2019-04-11 15:45:32-04	1
\.


--
-- Data for Name: realtors_realtor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.realtors_realtor (id, name, photo, description, phone, email, is_mvp, hire_date) FROM stdin;
2	Jay Koli	photos/2019/04/15/jay.JPG	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est.	2019204935	jk56033n@pace.edu	f	2019-04-15 15:09:31-04
3	Isaac Christi	photos/2019/04/15/isaac.JPG	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est.	3153832609	ic99027n@pace.edu	f	2018-10-19 15:15:42-04
4	Dhamini Muniraju	photos/2019/04/15/aditi.JPG	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est.	4404129583	dm55110n@pace.edu	f	2019-01-17 14:17:25-05
5	Tejas A Patil	photos/2019/04/15/tejas.JPG	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio. Maecenas sollicitudin ex a libero dapibus, eget malesuada nisi molestie. Integer ullamcorper sagittis ornare. Duis ut felis porta, volutpat nulla a, lacinia massa. Mauris fermentum sed leo varius elementum. Fusce velit erat, molestie ac volutpat ac, congue ac est	9890072007	tp15880n@pace.edu	f	2019-02-13 14:18:35-05
1	Akhil Kumar Jagini	photos/2019/04/15/akhil.PNG	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida, nisl a vulputate ornare, turpis nunc sodales justo, quis sodales tortor nibh vitae ipsum. Etiam suscipit facilisis odio..	2019200529	jaginiakhil@gmail.com	t	2017-09-12 14:21:48-04
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: contacts_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_contact_id_seq', 11, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 14, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Name: listings_listing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.listings_listing_id_seq', 6, true);


--
-- Name: realtors_realtor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.realtors_realtor_id_seq', 5, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: contacts_contact contacts_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: listings_listing listings_listing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);


--
-- Name: realtors_realtor realtors_realtor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: listings_listing_realtor_id_90583529; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

