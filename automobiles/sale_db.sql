--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16
-- Dumped by pg_dump version 11.16

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

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO artas;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO artas;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO artas;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: artas
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


ALTER TABLE public.auth_user OWNER TO artas;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO artas;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO artas;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: artas
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


ALTER TABLE public.django_admin_log OWNER TO artas;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO artas;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO artas;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO artas;

--
-- Name: sales_brandauto; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.sales_brandauto (
    id bigint NOT NULL,
    brand character varying(50) NOT NULL
);


ALTER TABLE public.sales_brandauto OWNER TO artas;

--
-- Name: sales_brandauto_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.sales_brandauto ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.sales_brandauto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: sales_color; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.sales_color (
    id bigint NOT NULL,
    color character varying(30) NOT NULL
);


ALTER TABLE public.sales_color OWNER TO artas;

--
-- Name: sales_color_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.sales_color ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.sales_color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: sales_modelauto; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.sales_modelauto (
    id bigint NOT NULL,
    model_auto character varying(100) NOT NULL,
    brand_auto_id bigint NOT NULL
);


ALTER TABLE public.sales_modelauto OWNER TO artas;

--
-- Name: sales_modelauto_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.sales_modelauto ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.sales_modelauto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: sales_orderbuy; Type: TABLE; Schema: public; Owner: artas
--

CREATE TABLE public.sales_orderbuy (
    id bigint NOT NULL,
    amount integer NOT NULL,
    date timestamp with time zone NOT NULL,
    auto_color_id bigint NOT NULL,
    auto_model_id bigint NOT NULL,
    auto_brand_id bigint NOT NULL
);


ALTER TABLE public.sales_orderbuy OWNER TO artas;

--
-- Name: sales_orderbuy_id_seq; Type: SEQUENCE; Schema: public; Owner: artas
--

ALTER TABLE public.sales_orderbuy ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.sales_orderbuy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: artas
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
25	Can add color	7	add_color
26	Can change color	7	change_color
27	Can delete color	7	delete_color
28	Can view color	7	view_color
29	Can add order buy	8	add_orderbuy
30	Can change order buy	8	change_orderbuy
31	Can delete order buy	8	delete_orderbuy
32	Can view order buy	8	view_orderbuy
33	Can add brand auto	9	add_brandauto
34	Can change brand auto	9	change_brandauto
35	Can delete brand auto	9	delete_brandauto
36	Can view brand auto	9	view_brandauto
37	Can add model auto	10	add_modelauto
38	Can change model auto	10	change_modelauto
39	Can delete model auto	10	delete_modelauto
40	Can view model auto	10	view_modelauto
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$390000$zyhFU60K9iCHyG2uqKRmQz$vJoy4qkygU3OdQfSLvtHLex1ooHGOxsBOhx7dYdseO8=	2022-10-13 19:48:02.360678+05	t	admin				t	t	2022-10-12 14:40:44.535472+05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-10-12 16:30:36.932863+05	1	╨Ъ╤А╨░╤Б╨╜╤Л╨╣	1	[{"added": {}}]	7	1
2	2022-10-12 16:30:44.081146+05	2	╨б╨╕╨╜╨╕╨╣	1	[{"added": {}}]	7	1
3	2022-10-12 16:30:51.566285+05	3	╨з╤С╤А╨╜╤Л╨╣	1	[{"added": {}}]	7	1
4	2022-10-12 16:31:00.477253+05	1	Toyota	1	[{"added": {}}]	9	1
5	2022-10-12 16:31:07.448151+05	2	Mersedes	1	[{"added": {}}]	9	1
6	2022-10-12 16:31:17.609007+05	1	Raw 4	1	[{"added": {}}]	10	1
7	2022-10-12 16:31:27.504417+05	2	SLS	1	[{"added": {}}]	10	1
8	2022-10-12 17:36:33.08708+05	6	OrderBuy object (6)	1	[{"added": {}}]	8	1
9	2022-10-12 17:38:41.405199+05	6	OrderBuy object (6)	2	[{"changed": {"fields": ["Auto color", "Auto model", "Amount"]}}]	8	1
10	2022-10-12 17:38:53.157389+05	7	OrderBuy object (7)	1	[{"added": {}}]	8	1
11	2022-10-13 14:01:24.624551+05	3	Opa	1	[{"added": {}}]	10	1
12	2022-10-13 14:01:44.572724+05	11	OrderBuy object (11)	1	[{"added": {}}]	8	1
13	2022-10-13 19:53:08.15515+05	4	Celica	1	[{"added": {}}]	10	1
14	2022-10-13 19:53:21.30698+05	5	600	1	[{"added": {}}]	10	1
15	2022-10-13 19:53:47.421386+05	21	OrderBuy object (21)	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	sales	color
8	sales	orderbuy
9	sales	brandauto
10	sales	modelauto
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-10-12 14:38:46.006888+05
2	auth	0001_initial	2022-10-12 14:38:46.079496+05
3	admin	0001_initial	2022-10-12 14:38:46.097727+05
4	admin	0002_logentry_remove_auto_add	2022-10-12 14:38:46.102291+05
5	admin	0003_logentry_add_action_flag_choices	2022-10-12 14:38:46.107278+05
6	contenttypes	0002_remove_content_type_name	2022-10-12 14:38:46.120919+05
7	auth	0002_alter_permission_name_max_length	2022-10-12 14:38:46.126106+05
8	auth	0003_alter_user_email_max_length	2022-10-12 14:38:46.13309+05
9	auth	0004_alter_user_username_opts	2022-10-12 14:38:46.13804+05
10	auth	0005_alter_user_last_login_null	2022-10-12 14:38:46.14602+05
11	auth	0006_require_contenttypes_0002	2022-10-12 14:38:46.147091+05
12	auth	0007_alter_validators_add_error_messages	2022-10-12 14:38:46.152028+05
13	auth	0008_alter_user_username_max_length	2022-10-12 14:38:46.16303+05
14	auth	0009_alter_user_last_name_max_length	2022-10-12 14:38:46.171033+05
15	auth	0010_alter_group_name_max_length	2022-10-12 14:38:46.178987+05
16	auth	0011_update_proxy_permissions	2022-10-12 14:38:46.183973+05
17	auth	0012_alter_user_first_name_max_length	2022-10-12 14:38:46.189993+05
18	sessions	0001_initial	2022-10-12 14:38:46.201926+05
19	sales	0001_initial	2022-10-12 16:26:27.578459+05
20	sales	0002_remove_modelauto_brand_auto_orderbuy_auto_brand	2022-10-12 20:04:42.358018+05
21	sales	0003_alter_orderbuy_auto_brand	2022-10-12 20:19:50.748844+05
22	sales	0004_alter_orderbuy_amount_alter_orderbuy_auto_brand	2022-10-13 13:59:02.779399+05
23	sales	0005_modelauto_brand_auto	2022-10-13 14:01:02.166627+05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7j0ap9p37drffcb6deqy947qh25hm5p9	.eJxVjEEOwiAQRe_C2pBCmAIu3XsGMsNMpWogKe3KeHdt0oVu_3vvv1TCbS1p67KkmdVZGXX63QjzQ-oO-I711nRudV1m0ruiD9r1tbE8L4f7d1Cwl289RgsODPngfXRgBycO_cRRxoCS2U6GOBgL3jHnAchDiCESGkGIwan3B8NwN2Y:1oiYEZ:f4zEvhmy5bOesU61ClyN2654d-eZP9UxcZH3hlqGmsk	2022-10-26 14:41:03.135747+05
z8po2ugtbkqaj13cctdbemz5j3rzukut	.eJxVjEEOwiAQRe_C2pBCmAIu3XsGMsNMpWogKe3KeHdt0oVu_3vvv1TCbS1p67KkmdVZGXX63QjzQ-oO-I711nRudV1m0ruiD9r1tbE8L4f7d1Cwl289RgsODPngfXRgBycO_cRRxoCS2U6GOBgL3jHnAchDiCESGkGIwan3B8NwN2Y:1oizVC:vAyXh5pTj5nqpqLdUyzsgRJ6YPBsy4wJc_kUDkr25dA	2022-10-27 19:48:02.361894+05
\.


--
-- Data for Name: sales_brandauto; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.sales_brandauto (id, brand) FROM stdin;
1	Toyota
2	Mersedes
\.


--
-- Data for Name: sales_color; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.sales_color (id, color) FROM stdin;
1	╨Ъ╤А╨░╤Б╨╜╤Л╨╣
2	╨б╨╕╨╜╨╕╨╣
3	╨з╤С╤А╨╜╤Л╨╣
\.


--
-- Data for Name: sales_modelauto; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.sales_modelauto (id, model_auto, brand_auto_id) FROM stdin;
1	Raw 4	1
2	SLS	1
3	Opa	1
4	Celica	1
5	600	2
\.


--
-- Data for Name: sales_orderbuy; Type: TABLE DATA; Schema: public; Owner: artas
--

COPY public.sales_orderbuy (id, amount, date, auto_color_id, auto_model_id, auto_brand_id) FROM stdin;
7	5	2022-10-12 19:38:46+05	1	1	1
8	3	2022-10-12 22:20:52.333092+05	1	1	1
9	3	2022-10-12 22:21:35.599312+05	3	2	2
10	3	2022-10-12 22:22:11.059833+05	3	2	2
11	4	2022-10-13 16:01:30+05	2	3	1
12	4	2022-10-13 16:02:14.671443+05	2	3	1
13	1	2022-10-13 20:57:13.889029+05	1	1	1
14	1	2022-10-13 20:57:17.554096+05	1	1	1
15	1	2022-10-13 20:57:18.660282+05	1	1	1
16	1	2022-10-13 20:57:19.393988+05	1	1	1
17	1	2022-10-13 20:57:20.212504+05	1	1	1
18	1	2022-10-13 20:57:21.530208+05	1	1	1
19	1	2022-10-13 20:57:22.58084+05	1	1	1
20	1	2022-10-13 20:59:02.03844+05	1	2	1
21	6	2022-10-13 21:53:30+05	2	5	2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 15, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- Name: sales_brandauto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.sales_brandauto_id_seq', 2, true);


--
-- Name: sales_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.sales_color_id_seq', 3, true);


--
-- Name: sales_modelauto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.sales_modelauto_id_seq', 5, true);


--
-- Name: sales_orderbuy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: artas
--

SELECT pg_catalog.setval('public.sales_orderbuy_id_seq', 21, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: sales_brandauto sales_brandauto_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.sales_brandauto
    ADD CONSTRAINT sales_brandauto_pkey PRIMARY KEY (id);


--
-- Name: sales_color sales_color_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.sales_color
    ADD CONSTRAINT sales_color_pkey PRIMARY KEY (id);


--
-- Name: sales_modelauto sales_modelauto_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.sales_modelauto
    ADD CONSTRAINT sales_modelauto_pkey PRIMARY KEY (id);


--
-- Name: sales_orderbuy sales_orderbuy_pkey; Type: CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.sales_orderbuy
    ADD CONSTRAINT sales_orderbuy_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: sales_modelauto_brand_auto_id_95f454ad; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX sales_modelauto_brand_auto_id_95f454ad ON public.sales_modelauto USING btree (brand_auto_id);


--
-- Name: sales_orderbuy_auto_brand_id_a23b410b; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX sales_orderbuy_auto_brand_id_a23b410b ON public.sales_orderbuy USING btree (auto_brand_id);


--
-- Name: sales_orderbuy_auto_color_id_6566a2d3; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX sales_orderbuy_auto_color_id_6566a2d3 ON public.sales_orderbuy USING btree (auto_color_id);


--
-- Name: sales_orderbuy_auto_model_id_150515bc; Type: INDEX; Schema: public; Owner: artas
--

CREATE INDEX sales_orderbuy_auto_model_id_150515bc ON public.sales_orderbuy USING btree (auto_model_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sales_modelauto sales_modelauto_brand_auto_id_95f454ad_fk_sales_brandauto_id; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.sales_modelauto
    ADD CONSTRAINT sales_modelauto_brand_auto_id_95f454ad_fk_sales_brandauto_id FOREIGN KEY (brand_auto_id) REFERENCES public.sales_brandauto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sales_orderbuy sales_orderbuy_auto_brand_id_a23b410b_fk_sales_brandauto_id; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.sales_orderbuy
    ADD CONSTRAINT sales_orderbuy_auto_brand_id_a23b410b_fk_sales_brandauto_id FOREIGN KEY (auto_brand_id) REFERENCES public.sales_brandauto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sales_orderbuy sales_orderbuy_auto_color_id_6566a2d3_fk_sales_color_id; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.sales_orderbuy
    ADD CONSTRAINT sales_orderbuy_auto_color_id_6566a2d3_fk_sales_color_id FOREIGN KEY (auto_color_id) REFERENCES public.sales_color(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sales_orderbuy sales_orderbuy_auto_model_id_150515bc_fk_sales_modelauto_id; Type: FK CONSTRAINT; Schema: public; Owner: artas
--

ALTER TABLE ONLY public.sales_orderbuy
    ADD CONSTRAINT sales_orderbuy_auto_model_id_150515bc_fk_sales_modelauto_id FOREIGN KEY (auto_model_id) REFERENCES public.sales_modelauto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

