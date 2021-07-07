--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO mrp;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO mrp;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO mrp;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO mrp;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO mrp;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO mrp;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: mrp
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


ALTER TABLE public.auth_user OWNER TO mrp;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO mrp;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO mrp;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO mrp;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO mrp;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO mrp;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: mrp
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


ALTER TABLE public.django_admin_log OWNER TO mrp;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO mrp;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO mrp;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO mrp;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO mrp;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO mrp;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_redirect; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.django_redirect (
    id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.django_redirect OWNER TO mrp;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.django_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_redirect_id_seq OWNER TO mrp;

--
-- Name: django_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.django_redirect_id_seq OWNED BY public.django_redirect.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO mrp;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO mrp;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO mrp;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: entries_todo; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.entries_todo (
    id integer NOT NULL,
    description text NOT NULL,
    user_id integer NOT NULL,
    completed boolean NOT NULL,
    priority integer NOT NULL
);


ALTER TABLE public.entries_todo OWNER TO mrp;

--
-- Name: entries_todo_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.entries_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entries_todo_id_seq OWNER TO mrp;

--
-- Name: entries_todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.entries_todo_id_seq OWNED BY public.entries_todo.id;


--
-- Name: manager_profile; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.manager_profile (
    id integer NOT NULL,
    ssn character varying(4) NOT NULL,
    title character varying(20) NOT NULL,
    user_id integer NOT NULL,
    payroll boolean NOT NULL,
    payroll_name character varying(20) NOT NULL,
    health_insurance numeric(5,2) NOT NULL,
    hourly boolean NOT NULL,
    salaried boolean NOT NULL
);


ALTER TABLE public.manager_profile OWNER TO mrp;

--
-- Name: manager_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.manager_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_profile_id_seq OWNER TO mrp;

--
-- Name: manager_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.manager_profile_id_seq OWNED BY public.manager_profile.id;


--
-- Name: timepiece_entry; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.timepiece_entry (
    id integer NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone,
    activities character varying(350) NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    hours numeric(11,5) NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    "end" time without time zone
);


ALTER TABLE public.timepiece_entry OWNER TO mrp;

--
-- Name: timepiece_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.timepiece_entry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timepiece_entry_id_seq OWNER TO mrp;

--
-- Name: timepiece_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.timepiece_entry_id_seq OWNED BY public.timepiece_entry.id;


--
-- Name: timepiece_project; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.timepiece_project (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    inactive boolean NOT NULL
);


ALTER TABLE public.timepiece_project OWNER TO mrp;

--
-- Name: timepiece_project_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.timepiece_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timepiece_project_id_seq OWNER TO mrp;

--
-- Name: timepiece_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.timepiece_project_id_seq OWNED BY public.timepiece_project.id;


--
-- Name: timepiece_projecthours; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.timepiece_projecthours (
    id integer NOT NULL,
    week_start date NOT NULL,
    hours numeric(11,5) NOT NULL,
    published boolean NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.timepiece_projecthours OWNER TO mrp;

--
-- Name: timepiece_projecthours_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.timepiece_projecthours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timepiece_projecthours_id_seq OWNER TO mrp;

--
-- Name: timepiece_projecthours_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.timepiece_projecthours_id_seq OWNED BY public.timepiece_projecthours.id;


--
-- Name: timepiece_projectrelationship; Type: TABLE; Schema: public; Owner: mrp
--

CREATE TABLE public.timepiece_projectrelationship (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.timepiece_projectrelationship OWNER TO mrp;

--
-- Name: timepiece_projectrelationship_id_seq; Type: SEQUENCE; Schema: public; Owner: mrp
--

CREATE SEQUENCE public.timepiece_projectrelationship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timepiece_projectrelationship_id_seq OWNER TO mrp;

--
-- Name: timepiece_projectrelationship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mrp
--

ALTER SEQUENCE public.timepiece_projectrelationship_id_seq OWNED BY public.timepiece_projectrelationship.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_redirect id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_redirect ALTER COLUMN id SET DEFAULT nextval('public.django_redirect_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: entries_todo id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.entries_todo ALTER COLUMN id SET DEFAULT nextval('public.entries_todo_id_seq'::regclass);


--
-- Name: manager_profile id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.manager_profile ALTER COLUMN id SET DEFAULT nextval('public.manager_profile_id_seq'::regclass);


--
-- Name: timepiece_entry id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_entry ALTER COLUMN id SET DEFAULT nextval('public.timepiece_entry_id_seq'::regclass);


--
-- Name: timepiece_project id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_project ALTER COLUMN id SET DEFAULT nextval('public.timepiece_project_id_seq'::regclass);


--
-- Name: timepiece_projecthours id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projecthours ALTER COLUMN id SET DEFAULT nextval('public.timepiece_projecthours_id_seq'::regclass);


--
-- Name: timepiece_projectrelationship id; Type: DEFAULT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projectrelationship ALTER COLUMN id SET DEFAULT nextval('public.timepiece_projectrelationship_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.auth_group (id, name) FROM stdin;
2	time_user
3	modify_admin_site
4	mrp_admin
5	mrp_user
1	Normal Users
6	redirect_user
7	time_supervisor
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
88	2	41
4	1	37
5	1	38
6	1	39
7	1	40
8	1	41
9	1	42
10	1	43
11	1	44
12	1	45
13	1	46
89	2	42
90	2	37
96	3	1
97	3	2
98	3	3
99	3	4
100	3	5
101	3	6
102	3	7
103	3	8
104	3	9
105	3	10
106	3	11
107	3	12
108	3	13
109	3	14
110	3	15
111	3	16
112	3	17
113	3	18
114	3	19
115	3	20
120	3	25
121	3	26
122	3	27
123	3	28
124	3	21
125	3	22
126	3	23
127	3	24
128	3	134
129	3	43
130	3	44
131	3	45
132	3	46
133	3	47
134	3	48
135	3	49
137	3	50
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: mrp
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
25	Can add profile	7	add_profile
26	Can change profile	7	change_profile
27	Can delete profile	7	delete_profile
28	Can view profile	7	view_profile
171	Can add manufacturer relationship	17	add_manufacturerrelationship
172	Can change manufacturer relationship	17	change_manufacturerrelationship
173	Can delete manufacturer relationship	17	delete_manufacturerrelationship
174	Can view manufacturer relationship	17	view_manufacturerrelationship
175	Can modify, add, view, or delete manufacturer relationships	17	modify_admin_site
176	Can add part	18	add_part
177	Can change part	18	change_part
178	Can delete part	18	delete_part
37	Can add entry	10	add_entry
38	Can change entry	10	change_entry
39	Can delete entry	10	delete_entry
40	Can view entry	10	view_entry
41	Can use Pendulum to clock in	10	can_clock_in
42	Can use Pendulum to clock out	10	can_clock_out
43	Can add project hours entry	11	add_projecthours
44	Can change project hours entry	11	change_projecthours
45	Can delete project hours entry	11	delete_projecthours
46	Can view project hours entry	11	view_projecthours
47	Can add site	12	add_site
48	Can change site	12	change_site
49	Can delete site	12	delete_site
50	Can view site	12	view_site
179	Can view part	18	view_part
180	Can modify, add, view, or delete parts	18	modify_admin_site
181	Can add type	19	add_type
182	Can change type	19	change_type
183	Can delete type	19	delete_type
184	Can view type	19	view_type
185	Can modify, add, view, or delete types	19	mrp_user
186	Can add field	20	add_field
187	Can change field	20	change_field
188	Can delete field	20	delete_field
189	Can view field	20	view_field
190	Can modify, add, view, or delete fields	20	modify_admin_site
191	Can add location	21	add_location
192	Can change location	21	change_location
193	Can delete location	21	delete_location
194	Can view location	21	view_location
195	Can modify, add, view, or delete locations	21	mrp_user
196	Can add location relationship	22	add_locationrelationship
197	Can change location relationship	22	change_locationrelationship
198	Can delete location relationship	22	delete_locationrelationship
199	Can view location relationship	22	view_locationrelationship
200	Can modify, add, view, or location relationships	22	modify_admin_site
201	Can add digi key api	23	add_digikeyapi
202	Can change digi key api	23	change_digikeyapi
203	Can delete digi key api	23	delete_digikeyapi
204	Can view digi key api	23	view_digikeyapi
205	Can add product	24	add_product
206	Can change product	24	change_product
207	Can delete product	24	delete_product
208	Can view product	24	view_product
209	Can modify, add, view, or delete products	24	mrp_user
210	Can add product amount	25	add_productamount
211	Can change product amount	25	change_productamount
212	Can delete product amount	25	delete_productamount
213	Can view product amount	25	view_productamount
214	Can modify, add, view, or delete product amounts	25	mrp_user
215	Can add part amount	26	add_partamount
216	Can change part amount	26	change_partamount
217	Can delete part amount	26	delete_partamount
218	Can view part amount	26	view_partamount
219	Can modify, add, view, or delete part amounts	26	mrp_user
220	Can add product location	27	add_productlocation
221	Can change product location	27	change_productlocation
222	Can delete product location	27	delete_productlocation
223	Can view product location	27	view_productlocation
224	Can modify, add, view, or delete product locations	27	modify_admin_site
225	Can add manufacturing order	28	add_manufacturingorder
226	Can change manufacturing order	28	change_manufacturingorder
227	Can delete manufacturing order	28	delete_manufacturingorder
228	Can view manufacturing order	28	view_manufacturingorder
229	Can modify, add, view, or delete manufacturing orders	28	modify_admin_site
230	Can add mo product	29	add_moproduct
231	Can change mo product	29	change_moproduct
232	Can delete mo product	29	delete_moproduct
233	Can view mo product	29	view_moproduct
234	Can modify, add, view, or delete MO products	29	modify_admin_site
235	Can add purchase order	30	add_purchaseorder
236	Can change purchase order	30	change_purchaseorder
237	Can delete purchase order	30	delete_purchaseorder
238	Can view purchase order	30	view_purchaseorder
239	Can modify, add, view, or delete purchase orders	30	mrp_user
240	Can add vendor	16	add_vendor
241	Can change vendor	16	change_vendor
242	Can delete vendor	16	delete_vendor
243	Can view vendor	16	view_vendor
244	Can modify, add, view, or delete vendors	16	mrp_user
245	Can add purchase order parts	31	add_purchaseorderparts
246	Can change purchase order parts	31	change_purchaseorderparts
247	Can delete purchase order parts	31	delete_purchaseorderparts
248	Can view purchase order parts	31	view_purchaseorderparts
249	Can modify, add, view, or delete purchase order parts	31	mrp_user
132	Can use Pendulum to clock in and out	10	can_clock_in_out
134	Can view, modify, add, or delete project hours	11	modify_admin_site
156	Can modify, add, view, or delete locations	32	mrp_user
167	Can access admin site, do redirects	32	modify_admin_site
168	Can clock in and out and handle todos	32	time_user
169	Can manage projects	32	time_supervisor
170	Can view, add, modify, or delete digikeys	32	mrp_admin
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
6	pbkdf2_sha256$120000$akKS2HPnPEqj$tZkNCVqx1mTJHnzsM+X5nEX/nU4JqAX+P0oy8JLODgs=	2019-05-17 07:45:31-06	f	timg	Tim	George	timg@engimusing.com	f	f	2018-10-03 12:08:21-06
9	pbkdf2_sha256$120000$yQ9mKpWG35D4$ad/hj0X4OydeVqEHT4NiR/s88isQFyorwCWb4nfRqW4=	2019-04-16 18:19:28-06	f	mikem	Michael	Mancuso	mnt.mancuso@q.com	f	f	2019-03-02 12:45:36-07
10	pbkdf2_sha256$120000$snPRFBSZDd4c$DBdp8bLySjww7TsTCh9hhI+g25bLonwX4gQ4+BIyAAI=	2019-07-31 19:18:38-06	f	lisal	Lisa	Larsen	lisal@engimusing.com	f	f	2019-03-04 14:46:46-07
4	pbkdf2_sha256$120000$MY4c0uvuVKpB$Y3XcgS2b9Se/nLCO/WoFFPLj/i/az/yPbo6HPPz47hk=	2019-03-25 19:12:43-06	f	melissag	Melissa	George	melissag@engimusing.com	f	f	2018-10-03 12:02:31-06
18	pbkdf2_sha256$120000$g4afKcZ3ekT7$z13JsnYj037LCQjo+mzCSJCSOilHFQ9FqS9d+wr4B1Q=	2020-07-27 15:08:33-06	f	carterp	Carter	Palmer	carter.palmer300@gmail.com	f	f	2020-07-27 14:16:46-06
19	pbkdf2_sha256$120000$DukId1HePjkq$BR4Y8A4Qngt+lgsMIGu63pmf4I3L4B8xH8n+iBXRLTg=	2020-07-27 15:19:11-06	f	braedenp	Braeden	Palmer	braeden4134312@gmail.com	f	f	2020-07-27 14:52:29-06
5	pbkdf2_sha256$120000$edUNaQmQfeYs$qrep4YqyWOmaF5OuvVoETnsM/mfGi4hK/RpckyyZkhk=	2020-10-23 12:53:06.785891-06	t	joeg	Joe	George	joeg@engimusing.com	t	t	2018-10-03 12:07:14-06
7	pbkdf2_sha256$120000$qWJ6Meaa9l7W$nor65jUKnXK0RWLMfMcT4Y2BkehSYqFmFvGsknp8Qzc=	2020-08-12 10:21:05.279266-06	f	barbg	Barbara	George	barbg@clearcore.com	f	t	2018-10-03 12:09:32-06
17	pbkdf2_sha256$120000$k1Q1Dg2WKKwp$WITeaYYQhfPUpN2HyNV/ve/6AH+jL6gD1VgTtQdwUlY=	2020-10-26 09:29:21.185387-06	t	owenb	Owen	Burton	owenb@clearcore.com	t	t	2020-07-17 15:31:59-06
3	pbkdf2_sha256$120000$wdMH9O4ZFLov$nm05qoji4soRbkS3jkpMWiOfLkr/zk0f+h6svsEBso0=	2020-10-27 12:26:06.534464-06	f	jasone	Jason	Edginton	jasone@engimusing.com	f	t	2018-10-03 12:00:40-06
11	pbkdf2_sha256$120000$KnyqmQhqWHrx$HbHP8u31khtx1y9ChQEz18HJdf3wymSnkuQvSjTam/o=	2020-08-13 16:55:11.245748-06	f	jacobc	Jacob	Christensen	jacobc@engimusing.com	f	t	2019-03-04 17:08:20-07
13	pbkdf2_sha256$120000$FIJshJaukVsv$anREyMtsut951xrt6FeepJALgHzBjgJZdsWa9a/BKt8=	2020-08-13 16:56:17.718071-06	f	tatec	Tate	Christensen	tatec@engimusing.com	f	t	2019-04-22 18:33:41-06
15	pbkdf2_sha256$120000$5PSjVb8yPrVD$3i6sSbtFvZv0Ic3JgM96OINLLmW8RvdSm86S1LAPLvE=	2020-06-28 21:23:52-06	f	beng	Ben	George	beng@clearcore.com	f	f	2020-04-15 08:40:06-06
14	pbkdf2_sha256$120000$wetdjgi7HNQL$R299zkZAkY/fuShAD/PHJkmbLKBXUIRjPyJsXls6sFw=	2019-11-06 17:54:34-07	t	dougg	Doug	George	douglasgeorge@gmail.com	t	f	2019-11-04 18:57:20-07
8	pbkdf2_sha256$120000$Wm6cF5Hyg1cz$6hBHIQJ66l+fPCvreiGgXbL2mAB5A4N1vdFHcGmBGCM=	2020-01-04 14:56:01-07	f	brittanye	Brittany	Edwards	brittanye@engimusing.com	f	f	2018-10-20 19:37:24-06
20	pbkdf2_sha256$216000$pUKSEthgE9pO$DCP5aFD2s2L/LF3fRoGtV/WCPLlPiESyMdeYl/G6s1s=	2021-07-06 17:32:08.669602-06	t	meganm	Megan	Miller	meganm@clearcore.com	t	t	2020-09-04 16:38:06-06
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
2	7	1
3	8	1
5	3	1
6	9	1
8	14	1
9	14	2
10	14	3
11	14	4
12	14	5
13	14	6
14	14	7
15	15	1
16	15	2
17	15	3
18	15	4
19	15	5
20	15	6
21	15	7
22	19	1
23	19	2
24	19	3
25	19	4
26	19	5
27	19	6
28	19	7
29	18	1
30	18	2
31	18	3
32	18	4
33	18	5
34	18	6
35	18	7
36	20	1
37	20	2
38	20	3
39	20	4
40	20	5
41	20	6
42	20	7
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
1507	9	168
1508	9	156
1509	6	168
1510	6	156
1511	10	170
1512	14	1
1513	14	2
1514	14	3
1515	14	4
1516	14	5
1517	14	6
1518	14	7
1519	14	8
1520	14	9
1521	14	10
1522	14	11
1523	14	12
1524	14	13
1525	14	14
1526	14	15
1527	14	16
1528	14	17
1529	14	18
1530	14	19
1531	14	20
1532	14	21
1533	14	22
1534	14	23
1535	14	24
1536	14	25
1537	14	26
1538	14	27
1539	14	28
1540	14	37
1541	14	38
1542	14	39
1543	14	40
1544	14	41
1545	14	42
1546	14	43
1547	14	44
1548	14	45
1549	14	46
1550	14	47
1551	14	48
1552	14	49
1553	14	50
1554	14	132
1555	14	134
1556	14	156
1557	14	167
1558	14	168
1559	14	169
1560	14	170
1561	14	171
1562	14	172
1563	14	173
1564	14	174
1565	14	175
1566	14	176
1567	14	177
1568	14	178
1569	14	179
1570	14	180
1571	14	181
1572	14	182
1573	14	183
1574	14	184
1575	14	185
1576	14	186
1577	14	187
1578	14	188
1579	14	189
1580	14	190
1581	14	191
1582	14	192
1583	14	193
1584	14	194
1585	14	195
1586	14	196
1587	14	197
1588	14	198
1589	14	199
1590	14	200
1591	14	201
1592	14	202
1593	14	203
1594	14	204
1595	14	205
1596	14	206
1597	14	207
1598	14	208
1599	14	209
1600	14	210
1601	14	211
1602	14	212
1603	14	213
1604	14	214
1605	14	215
1606	14	216
1607	14	217
1608	14	218
1609	14	219
1610	14	220
1611	14	221
1612	14	222
1613	14	223
1614	14	224
1615	14	225
1616	14	226
1617	14	227
1618	14	228
1619	14	229
1620	14	230
1621	14	231
1622	14	232
1623	14	233
1624	14	234
1625	14	235
1626	14	236
1627	14	237
1628	14	238
1629	14	239
1630	14	240
1631	14	241
1632	14	242
1633	14	243
1634	14	244
1635	14	245
1636	14	246
1637	14	247
1638	14	248
1639	14	249
231	5	1
232	5	2
233	5	3
234	5	4
235	5	5
236	5	6
237	5	7
238	5	8
239	5	9
240	5	10
241	5	11
242	5	12
243	5	13
244	5	14
245	5	15
246	5	16
247	5	17
248	5	18
249	5	19
250	5	20
251	5	21
252	5	22
253	5	23
254	5	24
255	5	25
256	5	26
257	5	27
258	5	28
1640	15	1
1641	15	2
1642	15	3
1643	15	4
1644	15	5
1645	15	6
1646	15	7
1647	15	8
267	5	37
268	5	38
269	5	39
270	5	40
271	5	41
272	5	42
273	5	43
274	5	44
275	5	45
276	5	46
277	4	1
1648	15	9
1649	15	10
1650	15	11
1651	15	12
1652	15	13
278	4	2
279	4	3
280	4	4
281	4	5
282	4	6
283	4	7
284	4	8
285	4	9
286	4	10
287	4	11
288	4	12
289	4	13
290	4	14
291	4	15
292	4	16
293	4	17
294	4	18
295	4	19
296	4	20
297	4	21
298	4	22
299	4	23
300	4	24
301	4	25
302	4	26
303	4	27
304	4	28
1653	15	14
1654	15	15
1655	15	16
1656	15	17
1657	15	18
1658	15	19
1659	15	20
1660	15	21
313	4	37
314	4	38
315	4	39
316	4	40
317	4	41
318	4	42
319	4	43
320	4	44
321	4	45
322	4	46
1661	15	22
1662	15	23
1663	15	24
1664	15	25
1665	15	26
1666	15	27
1667	15	28
1668	15	37
1669	15	38
1670	15	39
1671	15	40
1672	15	41
1673	15	42
1674	15	43
1675	15	44
1676	15	45
1677	15	46
1678	15	47
1679	15	48
1680	15	49
1681	15	50
1682	15	132
1683	15	134
1684	15	156
1685	15	167
1686	15	168
1687	15	169
1688	15	170
1689	15	171
1690	15	172
1691	15	173
1692	15	174
1693	15	175
1694	15	176
1695	15	177
1696	15	178
1697	15	179
1698	15	180
1699	15	181
1700	15	182
1701	15	183
1702	15	184
1703	15	185
1704	15	186
1705	15	187
1706	15	188
1707	15	189
1708	15	190
1709	15	191
1710	15	192
1711	15	193
1712	15	194
1713	15	195
1714	15	196
1715	15	197
1716	15	198
1717	15	199
1718	15	200
1719	15	201
1720	15	202
1721	15	203
1722	15	204
1723	15	205
1724	15	206
1725	15	207
1726	15	208
1727	15	209
1728	15	210
1729	15	211
1730	15	212
1731	15	213
1732	15	214
1733	15	215
1734	15	216
1735	15	217
1736	15	218
1737	15	219
1738	15	220
1739	15	221
1740	15	222
1741	15	223
1742	15	224
1743	15	225
1744	15	226
1745	15	227
1746	15	228
1747	15	229
1748	15	230
1749	15	231
1750	15	232
1751	15	233
1752	15	234
1753	15	235
1754	15	236
1755	15	237
1756	15	238
419	10	1
420	10	2
421	10	3
422	10	4
423	10	5
424	10	6
425	10	7
426	10	8
427	10	9
428	10	10
429	10	11
430	10	12
431	10	13
432	10	14
433	10	15
434	10	16
435	10	17
436	10	18
437	10	19
438	10	20
439	10	21
440	10	22
441	10	23
442	10	24
443	10	25
444	10	26
445	10	27
446	10	28
1757	15	239
1758	15	240
1759	15	241
1760	15	242
1761	15	243
1762	15	244
1763	15	245
1764	15	246
455	10	37
456	10	38
457	10	39
458	10	40
459	10	41
460	10	42
461	10	43
462	10	44
463	10	45
464	10	46
465	10	47
466	10	48
467	10	49
468	10	50
1765	15	247
1766	15	248
1767	15	249
853	7	156
1019	11	156
1185	3	156
1351	13	156
1471	8	156
1483	8	168
1486	3	168
1490	7	168
1494	11	168
1498	13	168
1768	19	1
1769	19	2
1770	19	3
1771	19	4
1772	19	5
1773	19	6
1774	19	7
1775	19	8
1776	19	9
1777	19	10
1778	19	11
1779	19	12
1780	19	13
1781	19	14
1782	19	15
1783	19	16
1784	19	17
1785	19	18
1786	19	19
1787	19	20
1788	19	21
1789	19	22
1790	19	23
1791	19	24
1792	19	25
1793	19	26
1794	19	27
1795	19	28
1796	19	37
1797	19	38
1798	19	39
1799	19	40
1800	19	41
1801	19	42
1802	19	43
1803	19	44
1804	19	45
1805	19	46
1806	19	47
1807	19	48
1808	19	49
1809	19	50
1810	19	132
1811	19	134
1812	19	156
1813	19	167
1814	19	168
1815	19	169
1816	19	170
1817	19	171
1818	19	172
1819	19	173
1820	19	174
1821	19	175
1822	19	176
1823	19	177
1824	19	178
1825	19	179
1826	19	180
1827	19	181
1828	19	182
1829	19	183
1830	19	184
1831	19	185
1832	19	186
1833	19	187
1834	19	188
1835	19	189
1836	19	190
1837	19	191
1838	19	192
1839	19	193
1840	19	194
1841	19	195
1842	19	196
1843	19	197
1844	19	198
1845	19	199
1846	19	200
1847	19	201
1848	19	202
1849	19	203
1850	19	204
1851	19	205
1852	19	206
1853	19	207
1854	19	208
1855	19	209
1856	19	210
1857	19	211
1858	19	212
1859	19	213
1860	19	214
1861	19	215
1862	19	216
1863	19	217
1864	19	218
1865	19	219
1866	19	220
1867	19	221
1868	19	222
1869	19	223
1870	19	224
1871	19	225
1872	19	226
1873	19	227
1874	19	228
1875	19	229
1876	19	230
1877	19	231
1878	19	232
1879	19	233
1880	19	234
1881	19	235
1882	19	236
1883	19	237
1884	19	238
1885	19	239
1886	19	240
1887	19	241
1888	19	242
1889	19	243
1890	19	244
1891	19	245
1892	19	246
1893	19	247
1894	19	248
1895	19	249
1896	18	1
1897	18	2
1898	18	3
1899	18	4
1900	18	5
1901	18	6
1902	18	7
1903	18	8
1904	18	9
1905	18	10
1906	18	11
1907	18	12
1908	18	13
1909	18	14
1910	18	15
1911	18	16
1912	18	17
1913	18	18
1914	18	19
1915	18	20
1916	18	21
1917	18	22
1918	18	23
1919	18	24
1920	18	25
1921	18	26
1922	18	27
1923	18	28
1924	18	37
1925	18	38
1926	18	39
1927	18	40
1928	18	41
1929	18	42
1930	18	43
1931	18	44
1932	18	45
1933	18	46
1934	18	47
1935	18	48
1936	18	49
1937	18	50
1938	18	132
1939	18	134
1940	18	156
1941	18	167
1942	18	168
1943	18	169
1944	18	170
1945	18	171
1946	18	172
1947	18	173
1948	18	174
1949	18	175
1950	18	176
1951	18	177
1952	18	178
1953	18	179
1954	18	180
1955	18	181
1956	18	182
1957	18	183
1958	18	184
1959	18	185
1960	18	186
1961	18	187
1962	18	188
1963	18	189
1964	18	190
1965	18	191
1966	18	192
1967	18	193
1968	18	194
1969	18	195
1970	18	196
1971	18	197
1972	18	198
1973	18	199
1974	18	200
1975	18	201
1976	18	202
1977	18	203
1978	18	204
1979	18	205
1980	18	206
1981	18	207
1982	18	208
1983	18	209
1984	18	210
1985	18	211
1986	18	212
1987	18	213
1988	18	214
1989	18	215
1990	18	216
1991	18	217
1992	18	218
1993	18	219
1994	18	220
1995	18	221
1996	18	222
1997	18	223
1998	18	224
1999	18	225
2000	18	226
2001	18	227
2002	18	228
2003	18	229
2004	18	230
2005	18	231
2006	18	232
2007	18	233
2008	18	234
2009	18	235
2010	18	236
2011	18	237
2012	18	238
2013	18	239
2014	18	240
2015	18	241
2016	18	242
2017	18	243
2018	18	244
2019	18	245
2020	18	246
2021	18	247
2022	18	248
2023	18	249
2024	20	1
2025	20	2
2026	20	3
2027	20	4
2028	20	5
2029	20	6
2030	20	7
2031	20	8
2032	20	9
2033	20	10
2034	20	11
2035	20	12
2036	20	13
2037	20	14
2038	20	15
2039	20	16
2040	20	17
2041	20	18
2042	20	19
2043	20	20
2044	20	21
2045	20	22
2046	20	23
2047	20	24
2048	20	25
2049	20	26
2050	20	27
2051	20	28
2052	20	37
2053	20	38
2054	20	39
2055	20	40
2056	20	41
2057	20	42
2058	20	43
2059	20	44
2060	20	45
2061	20	46
2062	20	47
2063	20	48
2064	20	49
2065	20	50
2066	20	132
2067	20	134
2068	20	156
2069	20	167
2070	20	168
2071	20	169
2072	20	170
2073	20	171
2074	20	172
2075	20	173
2076	20	174
2077	20	175
2078	20	176
2079	20	177
2080	20	178
2081	20	179
2082	20	180
2083	20	181
2084	20	182
2085	20	183
2086	20	184
2087	20	185
2088	20	186
2089	20	187
2090	20	188
2091	20	189
2092	20	190
2093	20	191
2094	20	192
2095	20	193
2096	20	194
2097	20	195
2098	20	196
2099	20	197
2100	20	198
2101	20	199
2102	20	200
2103	20	201
2104	20	202
2105	20	203
2106	20	204
2107	20	205
2108	20	206
2109	20	207
2110	20	208
2111	20	209
2112	20	210
2113	20	211
2114	20	212
2115	20	213
2116	20	214
2117	20	215
2118	20	216
2119	20	217
2120	20	218
2121	20	219
2122	20	220
2123	20	221
2124	20	222
2125	20	223
2126	20	224
2127	20	225
2128	20	226
2129	20	227
2130	20	228
2131	20	229
2132	20	230
2133	20	231
2134	20	232
2135	20	233
2136	20	234
2137	20	235
2138	20	236
2139	20	237
2140	20	238
2141	20	239
2142	20	240
2143	20	241
2144	20	242
2145	20	243
2146	20	244
2147	20	245
2148	20	246
2149	20	247
2150	20	248
2151	20	249
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
53	2018-10-23 11:49:56.261226-06	7	barbg	2	[{"changed": {"fields": ["user_permissions"]}}]	4	4
54	2018-10-23 11:50:10.977872-06	8	brittanye	2	[{"changed": {"fields": ["user_permissions"]}}, {"changed": {"name": "profile", "object": "Profile object (6)", "fields": ["title"]}}]	4	4
55	2018-10-23 11:50:24.419152-06	3	jasone	2	[{"changed": {"fields": ["user_permissions"]}}, {"changed": {"name": "profile", "object": "Profile object (1)", "fields": ["title"]}}]	4	4
56	2018-10-23 11:50:37.658593-06	5	joeg	2	[{"changed": {"fields": ["user_permissions"]}}, {"changed": {"name": "profile", "object": "Profile object (3)", "fields": ["title"]}}]	4	4
57	2018-10-23 11:50:55.744-06	4	melissag	2	[{"changed": {"fields": ["user_permissions"]}}]	4	4
58	2018-10-23 11:51:19.437471-06	6	timg	2	[{"changed": {"fields": ["user_permissions"]}}]	4	4
59	2018-11-27 13:02:31.753069-07	8	/8 ---> https://www.accel.com	2	[{"changed": {"fields": ["new_path"]}}]	13	4
60	2018-11-27 13:28:55.194776-07	6	/9 ---> http://server.com	2	[{"changed": {"fields": ["new_path"]}}]	13	4
61	2018-11-27 13:39:59.249749-07	5	/a ---> http://openhab.org	2	[{"changed": {"fields": ["new_path"]}}]	13	4
62	2018-11-27 13:40:59.054041-07	5	/a ---> http://www.openhab.org	2	[{"changed": {"fields": ["new_path"]}}]	13	4
63	2018-11-27 19:23:57.307333-07	1	/2 ---> http://www.google.com	1	[{"added": {}}]	15	4
64	2018-11-27 19:24:38.382623-07	1	/2 ---> http://www.youtube.com	2	[{"changed": {"fields": ["new_path"]}}]	15	4
65	2018-11-27 19:32:41.384804-07	1	/2 ---> http://www.google.com	2	[{"changed": {"fields": ["new_path"]}}]	15	4
66	2018-11-27 19:34:02.84902-07	1	/2 ---> http://www.engimusing.com	2	[{"changed": {"fields": ["new_path"]}}]	15	4
67	2018-11-27 19:35:14.808826-07	1	/2 ---> http://www.google.com	2	[{"changed": {"fields": ["new_path"]}}]	15	4
68	2018-11-27 19:35:44.942991-07	1	/2 ---> http://www.wgu.edu	2	[{"changed": {"fields": ["new_path"]}}]	15	4
69	2018-11-27 20:04:35.205407-07	5	/c ---> http://easy-to-use-video	1	new through import_export	15	4
70	2018-11-27 20:04:35.211141-07	2	/b ---> http://www.easy-to-use.org/	1	new through import_export	15	4
71	2018-11-27 20:04:35.217244-07	3	openhab-system-layout-examples ---> http://store.engimusing.com/pages/openhab-system-layout-examples	1	new through import_export	15	4
72	2018-11-27 20:04:35.224096-07	4	openhab-installation-instructions ---> http://store.engimusing.com/pages/openhab-installation-instructions	1	new through import_export	15	4
73	2018-11-27 20:04:35.231965-07	7	/wiring-kit-a ---> http://engimusing.myshopify.com/products/wiring-kit-a	1	new through import_export	15	4
74	2018-11-27 20:04:35.237787-07	9	/iot-video ---> https://www.youtube.com/watch?v=kDNXSqgYdwg	1	new through import_export	15	4
75	2018-11-27 20:04:35.243334-07	10	/blink-video ---> https://www.youtube.com/watch?v=Vkf9ICDySFU	1	new through import_export	15	4
76	2018-11-27 20:04:35.248961-07	11	/efm-usb-video ---> https://www.youtube.com/watch?v=RJAgtqJLRjw	1	new through import_export	15	4
77	2018-11-27 20:04:35.255169-07	12	/easy-to-use-video ---> https://www.youtube.com/watch?v=Zec-dIEkxdY	1	new through import_export	15	4
78	2018-11-27 20:04:35.261666-07	13	/openhab-tutorial-video ---> https://www.youtube.com/watch?v=lkkaNu28N98	1	new through import_export	15	4
79	2018-11-27 20:04:35.27001-07	14	/garage-door-video ---> https://www.youtube.com/watch?v=MxVHatPNJJI	1	new through import_export	15	4
80	2018-11-27 20:04:35.276056-07	15	/co-sensor-video ---> https://www.youtube.com/watch?v=pITPqvL1A9c	1	new through import_export	15	4
81	2018-11-27 20:04:35.281597-07	16	/module-formats-video ---> https://www.youtube.com/watch?v=N6TOCYJMjbE	1	new through import_export	15	4
82	2018-11-27 20:04:35.287323-07	17	/thermostat-video ---> https://www.youtube.com/watch?v=aT0tMNKyoVM	1	new through import_export	15	4
83	2018-11-27 20:04:35.293198-07	18	/module-sizes-video ---> https://www.youtube.com/watch?v=zQRmLV2aHMM	1	new through import_export	15	4
84	2018-11-27 20:04:35.298663-07	19	/accelerometers-video ---> https://www.youtube.com/watch?v=gKkRoAKT4HA	1	new through import_export	15	4
85	2018-11-27 20:04:35.304242-07	20	/rfs-video ---> https://www.youtube.com/watch?v=zQ9v7qFFiu8	1	new through import_export	15	4
86	2018-11-27 20:04:35.312175-07	21	/tilt-sensors ---> http://store.engimusing.com/collections/tilt-sensors	1	new through import_export	15	4
87	2018-11-27 20:04:35.317765-07	22	/reed-switches ---> http://store.engimusing.com/collections/reed-switches	1	new through import_export	15	4
88	2018-11-27 20:04:35.324162-07	23	/proximity-sensors ---> http://store.engimusing.com/collections/proximity-sensors	1	new through import_export	15	4
89	2018-11-27 20:04:35.332261-07	24	/humidity-sensors ---> http://store.engimusing.com/collections/humidity-sensors	1	new through import_export	15	4
90	2018-11-27 20:04:35.338889-07	25	/hall-effect-switches ---> http://store.engimusing.com/collections/hall-effect-switches	1	new through import_export	15	4
91	2018-11-27 20:04:35.350667-07	26	/current-sensors ---> http://store.engimusing.com/collections/current-sensors	1	new through import_export	15	4
92	2018-11-27 20:04:35.360852-07	27	/temperature-sensors ---> http://store.engimusing.com/collections/temperature-sensors	1	new through import_export	15	4
93	2018-11-27 20:04:35.367826-07	28	/color-and-light-sensors ---> http://store.engimusing.com/collections/color-and-light-sensors	1	new through import_export	15	4
94	2018-11-27 20:04:35.375245-07	29	/carbon-monoxide-sensors ---> http://store.engimusing.com/collections/carbon-monoxide-sensors	1	new through import_export	15	4
95	2018-11-27 20:04:35.390007-07	30	/pressure-sensors ---> http://store.engimusing.com/collections/pressure-sensors	1	new through import_export	15	4
96	2018-11-27 20:04:35.396472-07	31	/accelerometer-sensors ---> http://store.engimusing.com/collections/accelerometer-sensors	1	new through import_export	15	4
97	2018-11-27 20:04:35.402634-07	32	/power-converters ---> http://store.engimusing.com/collections/power-converters	1	new through import_export	15	4
98	2018-11-27 20:04:35.408034-07	33	/relays ---> http://store.engimusing.com/collections/relays	1	new through import_export	15	4
99	2018-11-27 20:04:35.413677-07	34	/breadboard-aids-connectors-wiring ---> http://store.engimusing.com/collections/breadboard-aids-connectors-wiring	1	new through import_export	15	4
100	2018-11-27 20:04:35.421765-07	35	/learning-aids ---> http://store.engimusing.com/collections/learning-aids	1	new through import_export	15	4
101	2018-11-27 20:04:35.428199-07	36	/communication_modules ---> http://store.engimusing.com/collections/communication-modules	1	new through import_export	15	4
102	2018-11-27 20:04:35.433463-07	37	/processor_modules ---> http://store.engimusing.com/collections/processor-modules	1	new through import_export	15	4
103	2018-11-27 20:04:35.444191-07	38	/m9-1 ---> http://store.engimusing.com/products/m9-1	1	new through import_export	15	4
52	2018-10-23 11:27:06.603885-06	1	melissa	3		4	4
104	2018-11-27 20:04:35.453117-07	39	/rsw-3 ---> http://store.engimusing.com/products/rsw-3	1	new through import_export	15	4
105	2018-11-27 20:04:35.468121-07	40	/rstsw-1 ---> http://store.engimusing.com/products/rstsw-1	1	new through import_export	15	4
106	2018-11-27 20:04:35.477107-07	41	/android_openhab6 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_11.png	1	new through import_export	15	4
107	2018-11-27 20:04:35.485553-07	42	/android_openhab5 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_10.png	1	new through import_export	15	4
108	2018-11-27 20:04:35.501615-07	43	/android_openhab4 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_09.png	1	new through import_export	15	4
109	2018-11-27 20:04:35.511561-07	44	/android_openhab3 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_08.png	1	new through import_export	15	4
110	2018-11-27 20:04:35.525346-07	45	/android_openhab2 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_07.png	1	new through import_export	15	4
111	2018-11-27 20:04:35.539013-07	46	/android_openhab1 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_06.png	1	new through import_export	15	4
112	2018-11-27 20:04:35.549796-07	47	/linux_config_openHAB2 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_05.png	1	new through import_export	15	4
113	2018-11-27 20:04:35.558218-07	48	linux_config_editor2 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_04.png	1	new through import_export	15	4
114	2018-11-27 20:04:35.566822-07	49	/linux_config_editor1 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_03.png	1	new through import_export	15	4
115	2018-11-27 20:04:35.57264-07	50	/linux_config_openhab1 ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_02.png	1	new through import_export	15	4
116	2018-11-27 20:04:35.577945-07	51	/linux_config_cmds ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_01.png	1	new through import_export	15	4
117	2018-11-27 20:04:35.583634-07	52	/openhab_starter_config ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_openhab_starter_config.zip	1	new through import_export	15	4
118	2018-11-27 20:04:35.58954-07	53	/openhab-list ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_CL/Linux_CL_openhab.list	1	new through import_export	15	4
119	2018-11-27 20:04:35.594901-07	54	/14_synaptic ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_14.png	1	new through import_export	15	4
120	2018-11-27 20:04:35.600626-07	55	/13_synaptic ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_13.png	1	new through import_export	15	4
121	2018-11-27 20:04:35.606129-07	56	/12_synaptic ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_12.png	1	new through import_export	15	4
122	2018-11-27 20:04:35.611915-07	57	/11_synaptic ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_11.png	1	new through import_export	15	4
123	2018-11-27 20:04:35.618215-07	58	/10_synaptic ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_10.png	1	new through import_export	15	4
124	2018-11-27 20:04:35.623729-07	59	/09_synaptic ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_09.png	1	new through import_export	15	4
125	2018-11-27 20:04:35.62944-07	60	/08_synaptic ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_08.png	1	new through import_export	15	4
126	2018-11-27 20:04:35.635566-07	61	/07_synaptic ---> https://dl.dropboxusercontent.com/u/17278803/Website/Tutorials/openHAB_Installation/Linux_GUI/07.png	1	new through import_export	15	4
127	2018-11-27 20:04:35.643664-07	62	/06_synaptic ---> https://dl.dropboxusercontent.com/u/17278803/Website/Tutorials/openHAB_Installation/Linux_GUI/06.png	1	new through import_export	15	4
128	2018-11-27 20:04:35.656178-07	63	/05_sw_srcs ---> https://dl.dropboxusercontent.com/u/17278803/Website/Tutorials/openHAB_Installation/Linux_GUI/05.png	1	new through import_export	15	4
129	2018-11-27 20:04:35.668175-07	64	/04_sw_srcs ---> https://dl.dropboxusercontent.com/u/17278803/Website/Tutorials/openHAB_Installation/Linux_GUI/04.png	1	new through import_export	15	4
130	2018-11-27 20:04:35.683237-07	65	/03_sw_srcs ---> https://dl.dropboxusercontent.com/u/17278803/Website/Tutorials/openHAB_Installation/Linux_GUI/03.png	1	new through import_export	15	4
131	2018-11-27 20:04:35.694625-07	66	/02_sw_srcs ---> https://dl.dropboxusercontent.com/u/17278803/Website/Tutorials/openHAB_Installation/Linux_GUI/02.png	1	new through import_export	15	4
132	2018-11-27 20:04:35.708197-07	8	/8 ---> https://www.accel.com	1	new through import_export	15	4
133	2018-11-27 20:04:35.720253-07	6	/9 ---> http://server.com	1	new through import_export	15	4
134	2018-11-27 20:04:35.732686-07	5	/a ---> http://www.openhab.org	2	update through import_export	15	4
135	2018-11-27 20:04:35.740161-07	67	/01_sw_srcs ---> https://dl.dropboxusercontent.com/u/17278803/Website/Tutorials/openHAB_Installation/Linux_GUI/01.png	1	new through import_export	15	4
136	2018-11-27 20:04:35.746758-07	68	/openhab-kickstarter-config ---> https://dl.dropboxusercontent.com/u/17278803/openhab_kickstarter_config.zip	1	new through import_export	15	4
137	2018-11-27 20:04:35.756397-07	71	/products ---> http://engimusing.myshopify.com/collections/all	1	new through import_export	15	4
138	2018-11-27 20:04:35.763308-07	69	/openhab_kickstarter_config ---> https://cdn.shopify.com/s/files/1/0240/0391/files/openhab_kickstarter_config.zip?1209	1	new through import_export	15	4
139	2018-11-27 20:04:35.772596-07	70	/store ---> http://engimusing.myshopify.com/	1	new through import_export	15	4
140	2018-11-27 20:04:35.781906-07	72	/kickstarter ---> http://kck.st/1vwQ2ci	1	new through import_export	15	4
141	2018-11-27 20:04:35.79832-07	73	/acssr-4 ---> http://engimusing.myshopify.com/products/acssr-4	1	new through import_export	15	4
142	2018-11-27 20:04:35.805142-07	74	/accelkit-1 ---> http://engimusing.myshopify.com/products/accelkit-1	1	new through import_export	15	4
143	2018-11-27 20:04:35.816338-07	75	/accelkit-2 ---> http://engimusing.myshopify.com/products/accelkit-2	1	new through import_export	15	4
144	2018-11-27 20:04:35.826876-07	76	/adxl362-1 ---> http://engimusing.myshopify.com/products/adxl362-1	1	new through import_export	15	4
145	2018-11-27 20:04:35.832659-07	77	/adxl-4 ---> http://engimusing.myshopify.com/products/adxl-4	1	new through import_export	15	4
146	2018-11-27 20:04:35.838283-07	78	/mpl3115a2-1 ---> http://engimusing.myshopify.com/products/mpl3115a2-1	1	new through import_export	15	4
147	2018-11-27 20:04:35.847299-07	79	/mql3-3 ---> http://engimusing.myshopify.com/products/mql3-3	1	new through import_export	15	4
148	2018-11-27 20:04:35.85655-07	80	/m115a1-1 ---> http://engimusing.myshopify.com/products/m115a1-1	1	new through import_export	15	4
149	2018-11-27 20:04:35.86693-07	81	/mpl115-3 ---> http://engimusing.myshopify.com/products/mpl115-3	1	new through import_export	15	4
260	2018-12-26 15:57:46.915886-07	19	Field object (19)	1	new through import_export	20	4
150	2018-11-27 20:04:35.874605-07	82	/bbadap-2 ---> http://engimusing.myshopify.com/products/bbadap-2	1	new through import_export	15	4
151	2018-11-27 20:04:35.888237-07	83	/cokit-1 ---> http://engimusing.myshopify.com/products/cokit-1	1	new through import_export	15	4
152	2018-11-27 20:04:35.896928-07	84	/cokit-2 ---> http://engimusing.myshopify.com/products/cokit-2	1	new through import_export	15	4
153	2018-11-27 20:04:35.90479-07	85	/gas-5 ---> http://engimusing.myshopify.com/products/gas-5	1	new through import_export	15	4
154	2018-11-27 20:04:35.914781-07	86	/gas-4 ---> http://engimusing.myshopify.com/products/gas-4	1	new through import_export	15	4
155	2018-11-27 20:04:35.926155-07	87	/tcs3472-1 ---> http://engimusing.myshopify.com/products/tcs3472-1	1	new through import_export	15	4
156	2018-11-27 20:04:35.939224-07	88	/tcs3472-3 ---> http://engimusing.myshopify.com/products/tcs3472-3	1	new through import_export	15	4
157	2018-11-27 20:04:35.952212-07	89	/mlx9-1 ---> http://engimusing.myshopify.com/products/mlx9-1	1	new through import_export	15	4
158	2018-11-27 20:04:35.964195-07	90	/irtemp-1 ---> http://engimusing.myshopify.com/products/irtemp-1	1	new through import_export	15	4
159	2018-11-27 20:04:35.973699-07	91	/ssr_ac-1 ---> http://engimusing.myshopify.com/products/ssr_ac-1	1	new through import_export	15	4
160	2018-11-27 20:04:35.9868-07	92	/ssr_ac-4 ---> http://engimusing.myshopify.com/products/ssr_ac-4	1	new through import_export	15	4
161	2018-11-27 20:04:35.995923-07	93	/ssr_dc-2 ---> http://engimusing.myshopify.com/products/ssr_dc-2	1	new through import_export	15	4
162	2018-11-27 20:04:36.012447-07	94	/ssr_dc-5 ---> http://engimusing.myshopify.com/products/ssr_dc-5	1	new through import_export	15	4
163	2018-11-27 20:04:36.029486-07	95	/efm48-4 ---> http://engimusing.myshopify.com/products/efm48-4	1	new through import_export	15	4
164	2018-11-27 20:04:36.043334-07	96	/efm48_1 ---> http://engimusing.myshopify.com/products/efm48_1	1	new through import_export	15	4
165	2018-11-27 20:04:36.056252-07	97	/efm48-6 ---> http://engimusing.myshopify.com/products/efm48-6	1	new through import_export	15	4
166	2018-11-27 20:04:36.274499-07	98	/tcs3200-1 ---> http://engimusing.myshopify.com/products/tcs3200-1	1	new through import_export	15	4
167	2018-11-27 20:04:36.288473-07	99	/tcs3200-3 ---> http://engimusing.myshopify.com/products/tcs3200-3	1	new through import_export	15	4
168	2018-11-27 20:04:36.301146-07	100	/ftdi-4 ---> http://engimusing.myshopify.com/products/ftdi-4	1	new through import_export	15	4
169	2018-11-27 20:04:36.311424-07	101	/garage-1 ---> http://engimusing.myshopify.com/products/garage-1	1	new through import_export	15	4
170	2018-11-27 20:04:36.323052-07	102	/garage-2 ---> http://engimusing.myshopify.com/products/garage-2	1	new through import_export	15	4
171	2018-11-27 20:04:36.331444-07	103	/acs716-2 ---> http://engimusing.myshopify.com/products/acs716-2	1	new through import_export	15	4
172	2018-11-27 20:04:36.344323-07	104	/acs716-1 ---> http://engimusing.myshopify.com/products/acs716-1	1	new through import_export	15	4
173	2018-11-27 20:04:36.372228-07	105	/m92212-1 ---> http://engimusing.myshopify.com/products/m92212-1	1	new through import_export	15	4
174	2018-11-27 20:04:36.384275-07	106	/mlx-3 ---> http://engimusing.myshopify.com/products/mlx-3	1	new through import_export	15	4
175	2018-11-27 20:04:36.393721-07	107	/htu21d-1 ---> http://engimusing.myshopify.com/products/htu21d-1	1	new through import_export	15	4
176	2018-11-27 20:04:36.404375-07	108	/htu-3 ---> http://engimusing.myshopify.com/products/htu-3	1	new through import_export	15	4
177	2018-11-27 20:04:36.418423-07	109	/tmd2771-1 ---> http://engimusing.myshopify.com/products/tmd2771-1	1	new through import_export	15	4
178	2018-11-27 20:04:36.431628-07	110	/tmd2771-3 ---> http://engimusing.myshopify.com/products/tmd2771-3	1	new through import_export	15	4
179	2018-11-27 20:04:36.448235-07	111	/reedsw-2 ---> http://engimusing.myshopify.com/products/reedsw-2	1	new through import_export	15	4
180	2018-11-27 20:04:36.471505-07	112	/reedsw-1 ---> http://engimusing.myshopify.com/products/reedsw-1	1	new through import_export	15	4
181	2018-11-27 20:04:36.484396-07	113	/hab-1 ---> http://engimusing.myshopify.com/products/hab-1	1	new through import_export	15	4
182	2018-11-27 20:04:36.496455-07	114	/openhab-tutorial-kit ---> http://engimusing.myshopify.com/products/openhab-tutorial-kit	1	new through import_export	15	4
183	2018-11-27 20:04:36.507368-07	115	/qre13-3 ---> http://store.engimusing.com/products/qre13-3	1	new through import_export	15	4
184	2018-11-27 20:04:36.525239-07	116	/qre1113-1 ---> http://engimusing.myshopify.com/products/qre1113-1	1	new through import_export	15	4
185	2018-11-27 20:04:36.548266-07	117	/qre2-1 ---> http://engimusing.myshopify.com/products/qre2-1	1	new through import_export	15	4
186	2018-11-27 20:04:36.557859-07	118	/pwrsup-1 ---> http://engimusing.myshopify.com/products/pwrsup-1	1	new through import_export	15	4
187	2018-11-27 20:04:36.568983-07	119	/tmp102-1 ---> http://engimusing.myshopify.com/products/tmp102-1	1	new through import_export	15	4
188	2018-11-27 20:04:36.575213-07	120	/tmp-3 ---> http://engimusing.myshopify.com/products/tmp-3	1	new through import_export	15	4
189	2018-11-27 20:04:36.582214-07	121	/thermostat-1 ---> http://engimusing.myshopify.com/products/thermostat-1	1	new through import_export	15	4
190	2018-11-27 20:04:36.59515-07	122	/thermostat-2 ---> http://engimusing.myshopify.com/products/thermostat-2	1	new through import_export	15	4
191	2018-11-27 20:04:36.60445-07	123	/thermo-1 ---> http://engimusing.myshopify.com/products/thermo-1	1	new through import_export	15	4
192	2018-11-27 20:04:36.620617-07	124	/tilt-4 ---> http://engimusing.myshopify.com/products/tilt-4	1	new through import_export	15	4
193	2018-11-27 20:04:36.636241-07	125	/rpi1031-1 ---> http://engimusing.myshopify.com/products/rpi1031-1	1	new through import_export	15	4
194	2018-11-27 20:04:36.647512-07	126	/thermo-2 ---> http://engimusing.myshopify.com/products/thermo-2	1	new through import_export	15	4
195	2018-11-27 20:04:36.662886-07	127	/acssr-5 ---> http://engimusing.myshopify.com/products/acssr-5	1	new through import_export	15	4
196	2018-11-28 14:37:00.978591-07	4	/openhab-installation-instructions ---> http://store.engimusing.com/pages/openhab-installation-instructions	2	[{"changed": {"fields": ["old_path"]}}]	15	4
197	2018-11-28 14:41:25.320461-07	3	/openhab-system-layout-examples ---> http://store.engimusing.com/pages/openhab-system-layout-examples	2	[{"changed": {"fields": ["old_path"]}}]	15	4
198	2018-11-29 10:35:40.451015-07	67	/01_sw_srcs ---> http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_01.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
199	2018-11-29 10:36:32.674814-07	66	/02_sw_srcs ---> http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_02.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
200	2018-11-29 10:36:56.786914-07	65	/03_sw_srcs ---> http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_03.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
489	2019-05-17 14:14:32.198456-06	2	time_user	1	[{"added": {}}]	3	10
201	2018-11-29 10:37:19.078238-07	64	/04_sw_srcs ---> http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_04.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
202	2018-11-29 10:37:47.022952-07	63	/05_sw_srcs ---> http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_05.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
203	2018-11-29 10:38:11.511184-07	62	/06_synaptic ---> http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_06.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
205	2018-11-29 10:38:59.567847-07	74	/accelkit-1 ---> http://engimusing.myshopify.com/products/accelkit-1	3		15	4
490	2019-05-17 14:16:27.074162-06	2	time_user	2	[]	3	10
491	2019-05-17 14:17:40.293011-06	2	time_user	2	[{"changed": {"fields": ["permissions"]}}]	3	10
492	2019-05-17 14:25:14.244378-06	3	modify_admin_site	1	[{"added": {}}]	3	10
493	2019-05-17 14:26:20.936254-06	4	mrp_admin	1	[{"added": {}}]	3	10
494	2019-05-17 14:29:41.00073-06	5	mrp_user	1	[{"added": {}}]	3	10
495	2019-05-17 14:30:12.739351-06	6	redirect_user	1	[{"added": {}}]	3	10
496	2019-05-17 14:31:18.005643-06	7	time_supervisor	1	[{"added": {}}]	3	10
497	2019-05-18 21:39:08.858636-06	7	barbg	2	[{"changed": {"fields": ["password"]}}]	4	5
498	2019-05-18 21:40:20.703912-06	7	barbg	2	[{"changed": {"fields": ["last_login"]}}]	4	5
499	2019-05-18 21:40:58.508622-06	7	barbg	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
500	2019-05-18 21:42:14.361378-06	11	jacobc	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
501	2019-05-18 21:42:27.779837-06	3	jasone	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
502	2019-05-18 21:42:51.928399-06	13	tatec	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
503	2019-06-03 19:27:23.044581-06	8	brittanye	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
504	2019-06-04 07:43:51.901497-06	3	jasone	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
505	2019-06-04 07:44:06.547851-06	7	barbg	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
506	2019-06-04 07:44:19.851849-06	11	jacobc	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
507	2019-06-04 07:44:47.51729-06	13	tatec	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
508	2019-06-04 16:12:11.389322-06	152	mrp_system | mrp system | Can add location1	3		2	10
509	2019-06-04 16:12:11.393405-06	153	mrp_system | mrp system | Can change location1	3		2	10
510	2019-06-04 16:12:11.396446-06	154	mrp_system | mrp system | Can delete location1	3		2	10
511	2019-06-04 16:33:19.773869-06	162	mrp_system | manufacturer1relationship | Can add manufacturer1 relationship	3		2	10
512	2019-06-04 16:33:19.784591-06	163	mrp_system | manufacturer1relationship | Can change manufacturer1 relationship	3		2	10
513	2019-06-04 16:33:19.788868-06	164	mrp_system | manufacturer1relationship | Can delete manufacturer1 relationship	3		2	10
514	2019-06-04 16:33:19.792898-06	166	mrp_system | manufacturer1relationship | Can modify, add, view, or delete manufacturer relationships	3		2	10
515	2019-06-04 16:33:19.797707-06	165	mrp_system | manufacturer1relationship | Can view manufacturer1 relationship	3		2	10
516	2019-06-04 16:33:19.803356-06	67	mrp_system | manufacturer relationship | Can add manufacturer relationship	3		2	10
517	2019-06-04 16:33:19.808252-06	68	mrp_system | manufacturer relationship | Can change manufacturer relationship	3		2	10
518	2019-06-04 16:33:19.813533-06	69	mrp_system | manufacturer relationship | Can delete manufacturer relationship	3		2	10
519	2019-06-04 16:33:19.817993-06	137	mrp_system | manufacturer relationship | Can modify, add, view, or delete manufacturer relationships	3		2	10
520	2019-06-04 16:33:19.822203-06	70	mrp_system | manufacturer relationship | Can view manufacturer relationship	3		2	10
521	2019-06-04 16:33:48.999853-06	157	mrp_system | location1relationship | Can add location1 relationship	3		2	10
522	2019-06-04 16:33:49.00434-06	158	mrp_system | location1relationship | Can change location1 relationship	3		2	10
523	2019-06-04 16:33:49.008328-06	159	mrp_system | location1relationship | Can delete location1 relationship	3		2	10
524	2019-06-04 16:33:49.012335-06	161	mrp_system | location1relationship | Can modify, add, view, or location relationships	3		2	10
525	2019-06-04 16:33:49.016514-06	160	mrp_system | location1relationship | Can view location1 relationship	3		2	10
526	2019-06-04 16:34:09.005136-06	91	mrp_system | digi key api | Can add digi key api	3		2	10
527	2019-06-04 16:34:09.011942-06	92	mrp_system | digi key api | Can change digi key api	3		2	10
528	2019-06-04 16:34:09.01971-06	93	mrp_system | digi key api | Can delete digi key api	3		2	10
529	2019-06-04 16:34:09.024723-06	94	mrp_system | digi key api | Can view digi key api	3		2	10
530	2019-06-04 16:44:22.118986-06	63	mrp_system | vendor | Can add manufacturer	3		2	10
531	2019-06-04 16:44:22.127456-06	123	mrp_system | vendor | Can add vendor	3		2	10
532	2019-06-04 16:44:22.133312-06	64	mrp_system | vendor | Can change manufacturer	3		2	10
533	2019-06-04 16:44:22.137163-06	124	mrp_system | vendor | Can change vendor	3		2	10
534	2019-06-04 16:44:22.143783-06	65	mrp_system | vendor | Can delete manufacturer	3		2	10
535	2019-06-04 16:44:22.148849-06	125	mrp_system | vendor | Can delete vendor	3		2	10
536	2019-06-04 16:44:22.156483-06	150	mrp_system | vendor | Can modify, add, view, or delete vendors	3		2	10
537	2019-06-04 16:44:22.164593-06	66	mrp_system | vendor | Can view manufacturer	3		2	10
538	2019-06-04 16:44:22.171956-06	126	mrp_system | vendor | Can view vendor	3		2	10
539	2019-06-04 16:44:58.861842-06	33	manager | project relationship | Can add project relationship	3		2	10
540	2019-06-04 16:44:58.866929-06	34	manager | project relationship | Can change project relationship	3		2	10
541	2019-06-04 16:44:58.870459-06	35	manager | project relationship | Can delete project relationship	3		2	10
542	2019-06-04 16:44:58.874404-06	36	manager | project relationship | Can view project relationship	3		2	10
543	2019-06-04 16:44:58.878129-06	83	mrp_system | location | Can add location	3		2	10
544	2019-06-04 16:44:58.881471-06	84	mrp_system | location | Can change location	3		2	10
545	2019-06-04 16:44:58.891042-06	85	mrp_system | location | Can delete location	3		2	10
546	2019-06-04 16:44:58.89457-06	141	mrp_system | location | Can modify, add, view, or delete locations	3		2	10
547	2019-06-04 16:44:58.898238-06	86	mrp_system | location | Can view location	3		2	10
548	2019-06-04 16:44:58.901808-06	87	mrp_system | location relationship | Can add location relationship	3		2	10
549	2019-06-04 16:44:58.906427-06	88	mrp_system | location relationship | Can change location relationship	3		2	10
550	2019-06-04 16:44:58.914941-06	89	mrp_system | location relationship | Can delete location relationship	3		2	10
551	2019-06-04 16:44:58.921051-06	142	mrp_system | location relationship | Can modify, add, view, or location relationships	3		2	10
204	2018-11-29 10:38:35.211172-07	61	/07_synaptic ---> http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_07.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
206	2018-11-29 10:58:37.735203-07	75	/accelkit-2 ---> http://engimusing.myshopify.com/products/accelkit-2	3		15	4
207	2018-11-29 10:59:32.819117-07	73	/acssr-4 ---> https://www.engimusing.com/collections/relays/products/ssr_ac-4	2	[{"changed": {"fields": ["new_path"]}}]	15	4
208	2018-11-29 11:00:34.439409-07	127	/acssr-5 ---> http://engimusing.myshopify.com/products/acssr-5	3		15	4
209	2018-11-29 11:02:03.787124-07	46	/android_openhab1 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_06.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
210	2018-11-29 11:05:57.87507-07	45	/android_openhab2 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_07.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
211	2018-11-29 11:06:53.467445-07	44	/android_openhab3 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_08.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
212	2018-11-29 11:07:59.299502-07	43	/android_openhab4 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_09.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
213	2018-11-29 11:08:30.536326-07	42	/android_openhab5 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_10.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
214	2018-11-29 11:09:05.331622-07	41	/android_openhab6 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_11.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
215	2018-11-29 11:09:42.864934-07	2	/b ---> http://www.easy-to-use.org/	3		15	4
216	2018-11-29 11:10:13.400259-07	83	/cokit-1 ---> http://engimusing.myshopify.com/products/cokit-1	3		15	4
217	2018-11-29 11:11:42.529672-07	84	/cokit-2 ---> http://engimusing.myshopify.com/products/cokit-2	3		15	4
218	2018-11-29 11:11:42.540975-07	95	/efm48-4 ---> http://engimusing.myshopify.com/products/efm48-4	3		15	4
219	2018-11-29 11:11:42.548724-07	97	/efm48-6 ---> http://engimusing.myshopify.com/products/efm48-6	3		15	4
220	2018-11-29 11:11:42.554467-07	102	/garage-2 ---> http://engimusing.myshopify.com/products/garage-2	3		15	4
221	2018-11-29 11:11:42.561232-07	85	/gas-5 ---> http://engimusing.myshopify.com/products/gas-5	3		15	4
222	2018-11-29 11:13:43.773624-07	51	/linux_config_cmds ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_01.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
223	2018-11-29 11:18:05.278279-07	49	/linux_config_editor1 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_03.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
224	2018-11-29 11:18:58.718178-07	48	linux_config_editor2 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_04.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
225	2018-11-29 11:20:20.026811-07	50	/linux_config_openhab1 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_02.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
226	2018-11-29 11:21:01.019534-07	47	/linux_config_openHAB2 ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_05.png	2	[{"changed": {"fields": ["new_path"]}}]	15	4
227	2018-11-29 11:21:56.74695-07	69	/openhab_kickstarter_config ---> https://cdn.shopify.com/s/files/1/0240/0391/files/openhab_kickstarter_config.zip?1209	3		15	4
228	2018-11-29 11:24:15.002359-07	68	/openhab-kickstarter-config ---> https://dl.dropboxusercontent.com/u/17278803/openhab_kickstarter_config.zip	3		15	4
229	2018-11-29 11:24:15.01527-07	53	/openhab-list ---> https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_CL/Linux_CL_openhab.list	3		15	4
230	2018-11-29 11:24:15.027255-07	52	/openhab_starter_config ---> https://engimusing.github.io/Tutorials/Initial_Configuration/Initial_Configuration_openhab_starter_config.zip	3		15	4
231	2018-11-29 11:24:15.039124-07	114	/openhab-tutorial-kit ---> http://engimusing.myshopify.com/products/openhab-tutorial-kit	3		15	4
232	2018-11-29 11:24:15.055606-07	118	/pwrsup-1 ---> http://engimusing.myshopify.com/products/pwrsup-1	3		15	4
233	2018-11-29 11:24:15.065811-07	125	/rpi1031-1 ---> http://engimusing.myshopify.com/products/rpi1031-1	3		15	4
234	2018-11-29 11:25:04.65276-07	121	/thermostat-1 ---> http://engimusing.myshopify.com/products/thermostat-1	3		15	4
235	2018-11-29 11:25:04.663054-07	122	/thermostat-2 ---> http://engimusing.myshopify.com/products/thermostat-2	3		15	4
236	2018-11-29 11:25:04.666489-07	124	/tilt-4 ---> http://engimusing.myshopify.com/products/tilt-4	3		15	4
237	2018-11-29 11:25:37.340441-07	123	/thermo-1 ---> http://engimusing.myshopify.com/products/thermo-1	3		15	4
238	2018-11-29 13:58:53.526641-07	6	/9 ---> http://server.com	3		15	4
239	2018-12-26 15:56:04.728609-07	4	Connector	1	new through import_export	19	4
240	2018-12-26 15:56:04.735272-07	3	Capacitor	1	new through import_export	19	4
241	2018-12-26 15:56:04.739063-07	2	Resistor	1	new through import_export	19	4
242	2018-12-26 15:56:04.743327-07	1	Integrated Circut	1	new through import_export	19	4
243	2018-12-26 15:57:46.841218-07	36	Field object (36)	1	new through import_export	20	4
244	2018-12-26 15:57:46.845823-07	35	Field object (35)	1	new through import_export	20	4
245	2018-12-26 15:57:46.851747-07	34	Field object (34)	1	new through import_export	20	4
246	2018-12-26 15:57:46.855176-07	33	Field object (33)	1	new through import_export	20	4
247	2018-12-26 15:57:46.860968-07	32	Field object (32)	1	new through import_export	20	4
248	2018-12-26 15:57:46.866058-07	31	Field object (31)	1	new through import_export	20	4
249	2018-12-26 15:57:46.871658-07	30	Field object (30)	1	new through import_export	20	4
250	2018-12-26 15:57:46.878717-07	29	Field object (29)	1	new through import_export	20	4
251	2018-12-26 15:57:46.883665-07	28	Field object (28)	1	new through import_export	20	4
252	2018-12-26 15:57:46.887448-07	27	Field object (27)	1	new through import_export	20	4
253	2018-12-26 15:57:46.890707-07	26	Field object (26)	1	new through import_export	20	4
254	2018-12-26 15:57:46.893908-07	25	Field object (25)	1	new through import_export	20	4
255	2018-12-26 15:57:46.897377-07	24	Field object (24)	1	new through import_export	20	4
256	2018-12-26 15:57:46.900894-07	23	Field object (23)	1	new through import_export	20	4
257	2018-12-26 15:57:46.904655-07	22	Field object (22)	1	new through import_export	20	4
258	2018-12-26 15:57:46.9084-07	21	Field object (21)	1	new through import_export	20	4
259	2018-12-26 15:57:46.912134-07	20	Field object (20)	1	new through import_export	20	4
640	2019-06-04 21:57:36.806168-06	3	jasone	2	[]	4	10
261	2018-12-26 15:57:46.92661-07	18	Field object (18)	1	new through import_export	20	4
262	2018-12-26 15:57:46.933156-07	17	Field object (17)	1	new through import_export	20	4
263	2018-12-26 15:57:46.937034-07	16	Field object (16)	1	new through import_export	20	4
264	2018-12-26 15:57:46.940399-07	15	Field object (15)	1	new through import_export	20	4
265	2018-12-26 15:57:46.94541-07	14	Field object (14)	1	new through import_export	20	4
266	2018-12-26 15:57:46.951982-07	12	Field object (12)	1	new through import_export	20	4
267	2018-12-26 15:57:46.956407-07	11	Field object (11)	1	new through import_export	20	4
268	2018-12-26 15:57:46.961231-07	10	Field object (10)	1	new through import_export	20	4
269	2018-12-26 15:57:46.969213-07	9	Field object (9)	1	new through import_export	20	4
270	2018-12-26 15:57:46.97553-07	8	Field object (8)	1	new through import_export	20	4
271	2018-12-26 15:57:46.984349-07	7	Field object (7)	1	new through import_export	20	4
272	2018-12-26 15:57:46.995239-07	6	Field object (6)	1	new through import_export	20	4
273	2018-12-26 15:57:47.002456-07	5	Field object (5)	1	new through import_export	20	4
274	2018-12-26 15:57:47.01382-07	4	Field object (4)	1	new through import_export	20	4
275	2018-12-26 15:57:47.017313-07	3	Field object (3)	1	new through import_export	20	4
276	2018-12-26 15:57:47.020663-07	2	Field object (2)	1	new through import_export	20	4
277	2018-12-26 15:57:47.023768-07	1	Field object (1)	1	new through import_export	20	4
278	2018-12-26 15:59:56.501686-07	4	RCUT00001	1	new through import_export	21	4
279	2018-12-26 15:59:56.505427-07	3	REEL00001	1	new through import_export	21	4
280	2018-12-26 16:01:24.515117-07	115	Yageo	1	new through import_export	16	4
281	2018-12-26 16:01:24.520789-07	114	Walsin Technology Corporation	1	new through import_export	16	4
282	2018-12-26 16:01:24.525381-07	113	Vishay Thin Film	1	new through import_export	16	4
283	2018-12-26 16:01:24.529782-07	112	Vishay Sfernice	1	new through import_export	16	4
284	2018-12-26 16:01:24.533479-07	111	Vishay Foil Resistors (Division of Vishay Precision Group)	1	new through import_export	16	4
285	2018-12-26 16:01:24.54037-07	110	Vishay Electro-Films	1	new through import_export	16	4
286	2018-12-26 16:01:24.545042-07	109	TE Connectivity Passive Product	1	new through import_export	16	4
287	2018-12-26 16:01:24.567554-07	108	Stackpole Electronics Inc.	1	new through import_export	16	4
288	2018-12-26 16:01:24.573924-07	107	Zilog	1	new through import_export	16	4
289	2018-12-26 16:01:24.58831-07	105	Xilinx Inc	1	new through import_export	16	4
290	2018-12-26 16:01:24.593937-07	104	Wurth Electronics Inc.	1	new through import_export	16	4
291	2018-12-26 16:01:24.601972-07	103	WIMA	1	new through import_export	16	4
292	2018-12-26 16:01:24.618063-07	102	Vishay Dale	1	new through import_export	16	4
293	2018-12-26 16:01:24.648916-07	101	TXC Corporation	1	new through import_export	16	4
294	2018-12-26 16:01:24.662874-07	100	Toshiba Semiconductor	1	new through import_export	16	4
295	2018-12-26 16:01:24.674015-07	99	TI	1	new through import_export	16	4
296	2018-12-26 16:01:24.6878-07	98	TE Connectivity AMP Connectors	1	new through import_export	16	4
297	2018-12-26 16:01:24.694926-07	97	TDK Corporation	1	new through import_export	16	4
298	2018-12-26 16:01:24.701768-07	96	Taiyo Yuden	1	new through import_export	16	4
299	2018-12-26 16:01:24.715056-07	95	Tadiran	1	new through import_export	16	4
300	2018-12-26 16:01:24.734958-07	94	Susumu	1	new through import_export	16	4
301	2018-12-26 16:01:24.740421-07	93	Sullins Connector Solutions	1	new through import_export	16	4
302	2018-12-26 16:01:24.754422-07	92	ST Microelectronics	1	new through import_export	16	4
303	2018-12-26 16:01:24.760805-07	91	Silicon Labs	1	new through import_export	16	4
304	2018-12-26 16:01:24.78494-07	90	Sharp Microelectronics	1	new through import_export	16	4
305	2018-12-26 16:01:24.805591-07	89	Semtech Corporation	1	new through import_export	16	4
306	2018-12-26 16:01:24.833248-07	88	Samtec Inc	1	new through import_export	16	4
307	2018-12-26 16:01:24.868441-07	87	Samsung Electro-Mechanics	1	new through import_export	16	4
308	2018-12-26 16:01:24.893249-07	86	Rohm Semiconductor	1	new through import_export	16	4
309	2018-12-26 16:01:24.918565-07	85	Pulse	1	new through import_export	16	4
310	2018-12-26 16:01:24.931693-07	84	Preci-Dip	1	new through import_export	16	4
311	2018-12-26 16:01:24.94713-07	83	Phoenix Contact	1	new through import_export	16	4
312	2018-12-26 16:01:24.963808-07	82	Parallax Inc	1	new through import_export	16	4
313	2018-12-26 16:01:24.981783-07	81	Panasonic Electronic Components	1	new through import_export	16	4
314	2018-12-26 16:01:25.025918-07	80	On Shore Technology	1	new through import_export	16	4
315	2018-12-26 16:01:25.060435-07	79	On Semiconductor	1	new through import_export	16	4
316	2018-12-26 16:01:25.096462-07	78	NXP Semiconductors	1	new through import_export	16	4
317	2018-12-26 16:01:25.118787-07	77	NKK Switches	1	new through import_export	16	4
318	2018-12-26 16:01:25.156054-07	76	Nichicon	1	new through import_export	16	4
319	2018-12-26 16:01:25.168491-07	75	NDK	1	new through import_export	16	4
320	2018-12-26 16:01:25.187039-07	74	Murata Electronics North America	1	new through import_export	16	4
321	2018-12-26 16:01:25.200351-07	73	MPD	1	new through import_export	16	4
322	2018-12-26 16:01:25.220991-07	72	Molex	1	new through import_export	16	4
323	2018-12-26 16:01:25.243851-07	71	MILL-MAX	1	new through import_export	16	4
324	2018-12-26 16:01:25.256376-07	70	Microsemi	1	new through import_export	16	4
325	2018-12-26 16:01:25.267241-07	69	Microchip	1	new through import_export	16	4
326	2018-12-26 16:01:25.285418-07	68	Micro Commercial	1	new through import_export	16	4
327	2018-12-26 16:01:25.312725-07	67	Micrel	1	new through import_export	16	4
328	2018-12-26 16:01:25.338716-07	66	MG Chemicals	1	new through import_export	16	4
329	2018-12-26 16:01:25.348304-07	65	Melexis Technologies	1	new through import_export	16	4
330	2018-12-26 16:01:25.357171-07	64	Meal Well USA inc	1	new through import_export	16	4
331	2018-12-26 16:01:25.367659-07	63	Maxim	1	new through import_export	16	4
332	2018-12-26 16:01:25.378863-07	62	Lumex	1	new through import_export	16	4
333	2018-12-26 16:01:25.38603-07	61	Littlefuse Inc	1	new through import_export	16	4
334	2018-12-26 16:01:25.390076-07	60	Littlefuse Inc	1	new through import_export	16	4
335	2018-12-26 16:01:25.400422-07	59	Lite-On Inc	1	new through import_export	16	4
336	2018-12-26 16:01:25.40804-07	58	Linear Technology	1	new through import_export	16	4
337	2018-12-26 16:01:25.414151-07	57	Linear Systems	1	new through import_export	16	4
338	2018-12-26 16:01:25.420301-07	56	Laird-Signal Integrity	1	new through import_export	16	4
339	2018-12-26 16:01:25.427804-07	55	KOA Speer	1	new through import_export	16	4
340	2018-12-26 16:01:25.435847-07	54	Keystone Electronics	1	new through import_export	16	4
341	2018-12-26 16:01:25.442964-07	53	Kemet	1	new through import_export	16	4
342	2018-12-26 16:01:25.455619-07	52	Judco Manufacturing	1	new through import_export	16	4
343	2018-12-26 16:01:25.463949-07	51	Judco Manufacturing	1	new through import_export	16	4
344	2018-12-26 16:01:25.468608-07	50	Johanson Technology Inc.	1	new through import_export	16	4
345	2018-12-26 16:01:25.474197-07	49	IXYS Integrated Circuits	1	new through import_export	16	4
346	2018-12-26 16:01:25.480981-07	48	IQD	1	new through import_export	16	4
347	2018-12-26 16:01:25.489785-07	47	InvenSense	1	new through import_export	16	4
348	2018-12-26 16:01:25.495524-07	46	International Rectifier	1	new through import_export	16	4
349	2018-12-26 16:01:25.511706-07	45	Infineon	1	new through import_export	16	4
350	2018-12-26 16:01:25.521849-07	44	Honeywell	1	new through import_export	16	4
351	2018-12-26 16:01:25.537831-07	43	Hirose	1	new through import_export	16	4
352	2018-12-26 16:01:25.548568-07	42	Harwin Inc	1	new through import_export	16	4
353	2018-12-26 16:01:25.553726-07	41	Hammond	1	new through import_export	16	4
354	2018-12-26 16:01:25.568323-07	40	FTDI	1	new through import_export	16	4
355	2018-12-26 16:01:25.573891-07	39	Freescale	1	new through import_export	16	4
356	2018-12-26 16:01:25.588379-07	38	Fairchild	1	new through import_export	16	4
357	2018-12-26 16:01:25.59723-07	37	Everlight Electronics	1	new through import_export	16	4
358	2018-12-26 16:01:25.60638-07	36	ETE	1	new through import_export	16	4
359	2018-12-26 16:01:25.622332-07	35	Eaton	1	new through import_export	16	4
360	2018-12-26 16:01:25.627626-07	34	Eagle Plastic Devices	1	new through import_export	16	4
361	2018-12-26 16:01:25.636869-07	33	E-Switch	1	new through import_export	16	4
362	2018-12-26 16:01:25.645444-07	32	Diodes Incorporated	1	new through import_export	16	4
363	2018-12-26 16:01:25.658436-07	31	CUI Inc	1	new through import_export	16	4
364	2018-12-26 16:01:25.663752-07	30	CTS Resistor Products	1	new through import_export	16	4
365	2018-12-26 16:01:25.67483-07	29	Cree, Inc.	1	new through import_export	16	4
366	2018-12-26 16:01:25.68851-07	28	Coto Technology	1	new through import_export	16	4
367	2018-12-26 16:01:25.69458-07	27	Cooper Bussmann	1	new through import_export	16	4
368	2018-12-26 16:01:25.70382-07	26	Connor-Winfield	1	new through import_export	16	4
369	2018-12-26 16:01:25.715239-07	25	Coiltronics/Eaton	1	new through import_export	16	4
370	2018-12-26 16:01:25.727838-07	24	Citizen	1	new through import_export	16	4
371	2018-12-26 16:01:25.736379-07	23	Cinch Connectivity	1	new through import_export	16	4
372	2018-12-26 16:01:25.750076-07	22	Central Semiconductor	1	new through import_export	16	4
373	2018-12-26 16:01:25.756712-07	21	Carling	1	new through import_export	16	4
374	2018-12-26 16:01:25.76759-07	20	C&K Components	1	new through import_export	16	4
375	2018-12-26 16:01:25.7745-07	19	Bourns Inc.	1	new through import_export	16	4
376	2018-12-26 16:01:25.78107-07	18	Bomor	1	new through import_export	16	4
377	2018-12-26 16:01:25.795423-07	17	Berquist	1	new through import_export	16	4
378	2018-12-26 16:01:25.800518-07	16	Bel Fuse Inc	1	new through import_export	16	4
379	2018-12-26 16:01:25.820399-07	15	AVX Corporation	1	new through import_export	16	4
380	2018-12-26 16:01:25.831353-07	14	Avago Technologies	1	new through import_export	16	4
381	2018-12-26 16:01:25.837131-07	13	Atmel	1	new through import_export	16	4
382	2018-12-26 16:01:25.844404-07	12	Amphenol	1	new through import_export	16	4
383	2018-12-26 16:01:25.848757-07	11	Alpha & Omega Semi	1	new through import_export	16	4
384	2018-12-26 16:01:25.85433-07	10	AI-THINKER	1	new through import_export	16	4
385	2018-12-26 16:01:25.86938-07	9	Adesto Technologies	1	new through import_export	16	4
386	2018-12-26 16:01:25.879829-07	8	ADA Fruit	1	new through import_export	16	4
387	2018-12-26 16:01:25.886811-07	7	Active Semi	1	new through import_export	16	4
388	2018-12-26 16:01:25.902291-07	6	4UCON	1	new through import_export	16	4
389	2018-12-26 16:01:25.908438-07	5	Analog Devices Inc	1	new through import_export	16	4
390	2018-12-26 16:01:25.924285-07	4	AMS-TAOS	1	new through import_export	16	4
391	2018-12-26 16:01:25.931351-07	3	Allegro MicroSystems	1	new through import_export	16	4
392	2018-12-26 16:01:25.944401-07	2	Abracon LLC	1	new through import_export	16	4
393	2018-12-26 16:12:01.064692-07	25	1	1	new through import_export	18	4
394	2018-12-26 16:12:01.072731-07	24	12	1	new through import_export	18	4
395	2018-12-26 16:12:01.083052-07	23	11	1	new through import_export	18	4
396	2018-12-26 16:12:01.094076-07	22	10	1	new through import_export	18	4
397	2018-12-26 16:12:01.114907-07	21	9	1	new through import_export	18	4
398	2018-12-26 16:12:01.138839-07	20	8	1	new through import_export	18	4
399	2018-12-26 16:12:01.16199-07	19	7	1	new through import_export	18	4
400	2018-12-26 16:12:01.181701-07	18	6	1	new through import_export	18	4
401	2018-12-26 16:12:01.202215-07	17	5	1	new through import_export	18	4
402	2018-12-26 16:12:01.214478-07	16	4	1	new through import_export	18	4
403	2018-12-26 16:12:01.230191-07	15	3	1	new through import_export	18	4
404	2018-12-26 16:12:01.240513-07	14	2	1	new through import_export	18	4
405	2018-12-26 16:12:01.250583-07	13	1	1	new through import_export	18	4
406	2018-12-26 16:12:01.262258-07	12	10	1	new through import_export	18	4
407	2018-12-26 16:12:01.278106-07	11	9	1	new through import_export	18	4
408	2018-12-26 16:12:01.293044-07	10	8	1	new through import_export	18	4
409	2018-12-26 16:12:01.312601-07	9	7	1	new through import_export	18	4
410	2018-12-26 16:12:01.322347-07	8	6	1	new through import_export	18	4
411	2018-12-26 16:12:01.351502-07	7	5	1	new through import_export	18	4
412	2018-12-26 16:12:01.362144-07	6	4	1	new through import_export	18	4
413	2018-12-26 16:12:01.37225-07	5	3	1	new through import_export	18	4
414	2018-12-26 16:12:01.387576-07	4	2	1	new through import_export	18	4
415	2018-12-26 16:12:01.400545-07	3	1	1	new through import_export	18	4
416	2018-12-26 16:12:01.412099-07	2	4567	1	new through import_export	18	4
417	2018-12-26 16:12:01.421979-07	1	123	1	new through import_export	18	4
418	2018-12-26 16:13:23.459862-07	32	ManufacturerRelationship object (32)	1	new through import_export	17	4
419	2018-12-26 16:13:23.473428-07	31	ManufacturerRelationship object (31)	1	new through import_export	17	4
420	2018-12-26 16:13:23.486754-07	30	ManufacturerRelationship object (30)	1	new through import_export	17	4
421	2018-12-26 16:13:23.495158-07	29	ManufacturerRelationship object (29)	1	new through import_export	17	4
422	2018-12-26 16:13:23.571067-07	28	ManufacturerRelationship object (28)	1	new through import_export	17	4
423	2018-12-26 16:13:23.591247-07	27	ManufacturerRelationship object (27)	1	new through import_export	17	4
424	2018-12-26 16:13:23.603316-07	26	ManufacturerRelationship object (26)	1	new through import_export	17	4
425	2018-12-26 16:13:23.614957-07	25	ManufacturerRelationship object (25)	1	new through import_export	17	4
426	2018-12-26 16:13:23.630381-07	24	ManufacturerRelationship object (24)	1	new through import_export	17	4
427	2018-12-26 16:13:23.645539-07	23	ManufacturerRelationship object (23)	1	new through import_export	17	4
428	2018-12-26 16:13:23.702858-07	22	ManufacturerRelationship object (22)	1	new through import_export	17	4
429	2018-12-26 16:13:23.726446-07	21	ManufacturerRelationship object (21)	1	new through import_export	17	4
430	2018-12-26 16:13:23.747866-07	20	ManufacturerRelationship object (20)	1	new through import_export	17	4
431	2018-12-26 16:13:23.753946-07	19	ManufacturerRelationship object (19)	1	new through import_export	17	4
432	2018-12-26 16:13:23.763664-07	18	ManufacturerRelationship object (18)	1	new through import_export	17	4
433	2018-12-26 16:13:23.78646-07	17	ManufacturerRelationship object (17)	1	new through import_export	17	4
434	2018-12-26 16:13:23.814993-07	16	ManufacturerRelationship object (16)	1	new through import_export	17	4
435	2018-12-26 16:13:23.828587-07	15	ManufacturerRelationship object (15)	1	new through import_export	17	4
436	2018-12-26 16:13:23.836609-07	13	ManufacturerRelationship object (13)	1	new through import_export	17	4
437	2018-12-26 16:13:23.84821-07	12	ManufacturerRelationship object (12)	1	new through import_export	17	4
438	2018-12-26 16:13:23.942261-07	10	ManufacturerRelationship object (10)	1	new through import_export	17	4
439	2018-12-26 16:13:23.966788-07	9	ManufacturerRelationship object (9)	1	new through import_export	17	4
440	2018-12-26 16:13:23.980276-07	8	ManufacturerRelationship object (8)	1	new through import_export	17	4
441	2018-12-26 16:13:24.067217-07	7	ManufacturerRelationship object (7)	1	new through import_export	17	4
442	2018-12-26 16:13:24.081869-07	5	ManufacturerRelationship object (5)	1	new through import_export	17	4
443	2018-12-26 16:13:24.097481-07	4	ManufacturerRelationship object (4)	1	new through import_export	17	4
444	2018-12-26 16:13:24.122025-07	3	ManufacturerRelationship object (3)	1	new through import_export	17	4
445	2018-12-26 16:14:13.546842-07	2	LocationRelationship object (2)	1	new through import_export	22	4
446	2018-12-26 16:14:13.564535-07	1	LocationRelationship object (1)	1	new through import_export	22	4
447	2019-01-21 18:34:06.528945-07	5	joeg	2	[{"changed": {"name": "profile", "object": "Profile object (3)", "fields": ["payroll"]}}]	4	5
448	2019-01-21 18:34:19.372937-07	7	barbg	2	[{"changed": {"name": "profile", "object": "Profile object (5)", "fields": ["payroll"]}}]	4	5
449	2019-01-21 18:34:32.450189-07	6	timg	2	[{"changed": {"name": "profile", "object": "Profile object (4)", "fields": ["payroll"]}}]	4	5
450	2019-03-02 12:45:36.426701-07	9	mikem	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (7)"}}]	4	5
451	2019-03-02 12:48:35.227318-07	9	mikem	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	5
452	2019-03-02 12:52:09.866272-07	9	mikem	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
453	2019-03-02 13:02:27.440088-07	9	mikem	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
454	2019-03-02 13:06:12.106438-07	9	mikem	2	[]	4	5
455	2019-03-04 14:46:47.12431-07	10	lisal	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (8)"}}]	4	5
456	2019-03-04 14:47:57.527133-07	10	lisal	2	[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff", "is_superuser", "user_permissions"]}}]	4	5
457	2019-03-11 17:08:20.970033-06	11	jacobc	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (9)"}}]	4	5
458	2019-03-11 17:09:26.358448-06	11	jacobc	2	[{"changed": {"fields": ["first_name", "last_name", "email", "user_permissions", "date_joined"]}}]	4	5
459	2019-04-11 13:00:13.057182-06	12	conwayl	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (10)"}}]	4	10
460	2019-04-11 13:13:44.365851-06	12	conwayl	2	[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff", "user_permissions", "last_login"]}}]	4	10
461	2019-04-11 13:18:08.442624-06	12	conwayl	2	[{"changed": {"fields": ["is_staff"]}}]	4	10
462	2019-04-11 13:58:48.264129-06	12	conwayl	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
463	2019-04-11 14:21:42.291081-06	12	conwayl	2	[]	4	10
464	2019-04-11 14:29:39.659916-06	7	barbg	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
465	2019-04-11 15:37:27.343464-06	1	Normal Users	1	[{"added": {}}]	3	10
466	2019-04-11 15:39:17.952853-06	12	conwayl	2	[{"changed": {"fields": ["groups", "user_permissions"]}}]	4	10
467	2019-04-11 15:39:55.67462-06	7	barbg	2	[{"changed": {"fields": ["groups", "user_permissions"]}}]	4	10
468	2019-04-11 15:48:45.231815-06	1	Normal Users	2	[{"changed": {"fields": ["permissions"]}}]	3	10
469	2019-04-11 15:48:55.355755-06	1	Normal Users	2	[]	3	10
470	2019-04-11 15:59:17.390474-06	1	Normal Users	2	[]	3	10
471	2019-04-12 19:21:18.694098-06	1	Normal Users	2	[]	3	10
472	2019-04-15 11:12:23.174871-06	1	Normal Users	2	[{"changed": {"fields": ["permissions"]}}]	3	10
473	2019-04-15 11:13:35.663843-06	8	brittanye	2	[{"changed": {"fields": ["groups"]}}]	4	10
474	2019-04-15 11:13:53.607266-06	11	jacobc	2	[{"changed": {"fields": ["groups", "user_permissions"]}}]	4	10
475	2019-04-15 11:14:02.914079-06	8	brittanye	2	[]	4	10
476	2019-04-15 11:14:16.790315-06	3	jasone	2	[{"changed": {"fields": ["groups", "user_permissions"]}}]	4	10
477	2019-04-15 11:14:23.16882-06	3	jasone	2	[]	4	10
478	2019-04-15 11:14:36.02299-06	9	mikem	2	[{"changed": {"fields": ["groups"]}}]	4	10
479	2019-04-22 18:33:41.537735-06	13	tatec	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (11)"}}]	4	5
480	2019-04-22 18:35:19.257576-06	13	tatec	2	[{"changed": {"fields": ["groups"]}}]	4	5
481	2019-04-22 18:41:49.243255-06	13	tatec	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	5
482	2019-04-25 12:32:15.776104-06	12	conwayl	2	[{"changed": {"fields": ["password"]}}]	4	10
483	2019-04-25 13:14:38.087366-06	131	manager | project | Can create, edit, view, delete, activate, and inactivate projects	1	[{"added": {}}]	2	10
484	2019-04-25 13:15:16.007639-06	132	entries | entry | Can clock in and out	1	[{"added": {}}]	2	10
485	2019-04-25 13:20:31.135258-06	132	entries | entry | Can use Pendulum to clock in and out	2	[{"changed": {"fields": ["name"]}}]	2	10
486	2019-04-29 15:31:31.711366-06	13	tatec	2	[{"changed": {"name": "profile", "object": "Profile object (11)", "fields": ["ssn"]}}]	4	5
487	2019-05-13 12:13:15.686055-06	1	Normal Users	2	[]	3	10
488	2019-05-16 14:29:01.048441-06	1	Normal Users	2	[{"changed": {"fields": ["permissions"]}}]	3	10
643	2019-07-29 19:41:57.960828-06	9	mikem	2	[]	4	5
552	2019-06-04 16:44:58.930566-06	90	mrp_system | location relationship | Can view location relationship	3		2	10
553	2019-06-04 16:44:58.935691-06	111	mrp_system | manufacturing order | Can add manufacturing order	3		2	10
554	2019-06-04 16:44:58.939265-06	112	mrp_system | manufacturing order | Can change manufacturing order	3		2	10
555	2019-06-04 16:44:58.943441-06	113	mrp_system | manufacturing order | Can delete manufacturing order	3		2	10
556	2019-06-04 16:44:58.951271-06	147	mrp_system | manufacturing order | Can modify, add, view, or delete manufacturing orders	3		2	10
557	2019-06-04 16:44:58.954687-06	114	mrp_system | manufacturing order | Can view manufacturing order	3		2	10
558	2019-06-04 16:45:26.972816-06	103	mrp_system | part amount | Can add part amount	3		2	10
559	2019-06-04 16:45:26.977282-06	104	mrp_system | part amount | Can change part amount	3		2	10
560	2019-06-04 16:45:26.98125-06	105	mrp_system | part amount | Can delete part amount	3		2	10
561	2019-06-04 16:45:26.984927-06	145	mrp_system | part amount | Can modify, add, view, or delete part amounts	3		2	10
562	2019-06-04 16:45:26.988813-06	106	mrp_system | part amount | Can view part amount	3		2	10
563	2019-06-04 16:45:26.993187-06	95	mrp_system | product | Can add product	3		2	10
564	2019-06-04 16:45:27.000374-06	96	mrp_system | product | Can change product	3		2	10
565	2019-06-04 16:45:27.004082-06	97	mrp_system | product | Can delete product	3		2	10
566	2019-06-04 16:45:27.008774-06	143	mrp_system | product | Can modify, add, view, or delete products	3		2	10
567	2019-06-04 16:45:27.012789-06	98	mrp_system | product | Can view product	3		2	10
568	2019-06-04 16:45:27.016755-06	99	mrp_system | product amount | Can add product amount	3		2	10
569	2019-06-04 16:45:27.023457-06	100	mrp_system | product amount | Can change product amount	3		2	10
570	2019-06-04 16:45:27.027439-06	101	mrp_system | product amount | Can delete product amount	3		2	10
571	2019-06-04 16:45:27.033998-06	144	mrp_system | product amount | Can modify, add, view, or delete product amounts	3		2	10
572	2019-06-04 16:45:27.044282-06	102	mrp_system | product amount | Can view product amount	3		2	10
573	2019-06-04 16:45:27.05568-06	107	mrp_system | product location | Can add product location	3		2	10
574	2019-06-04 16:45:27.065111-06	108	mrp_system | product location | Can change product location	3		2	10
575	2019-06-04 16:45:27.082637-06	109	mrp_system | product location | Can delete product location	3		2	10
576	2019-06-04 16:45:27.09586-06	146	mrp_system | product location | Can modify, add, view, or delete product locations	3		2	10
577	2019-06-04 16:45:27.112124-06	110	mrp_system | product location | Can view product location	3		2	10
578	2019-06-04 16:45:27.121681-06	119	mrp_system | purchase order | Can add purchase order	3		2	10
579	2019-06-04 16:45:27.132085-06	120	mrp_system | purchase order | Can change purchase order	3		2	10
580	2019-06-04 16:45:27.142707-06	121	mrp_system | purchase order | Can delete purchase order	3		2	10
581	2019-06-04 16:45:27.151779-06	149	mrp_system | purchase order | Can modify, add, view, or delete purchase orders	3		2	10
582	2019-06-04 16:45:27.155878-06	122	mrp_system | purchase order | Can view purchase order	3		2	10
583	2019-06-04 16:45:27.1704-06	127	mrp_system | purchase order parts | Can add purchase order parts	3		2	10
584	2019-06-04 16:45:27.194787-06	128	mrp_system | purchase order parts | Can change purchase order parts	3		2	10
585	2019-06-04 16:45:27.200054-06	129	mrp_system | purchase order parts | Can delete purchase order parts	3		2	10
586	2019-06-04 16:45:27.211592-06	151	mrp_system | purchase order parts | Can modify, add, view, or delete purchase order parts	3		2	10
587	2019-06-04 16:45:27.219707-06	130	mrp_system | purchase order parts | Can view purchase order parts	3		2	10
599	2019-06-04 16:46:38.355235-06	115	mrp_system | mo product | Can add mo product	3		2	10
600	2019-06-04 16:46:38.359755-06	116	mrp_system | mo product | Can change mo product	3		2	10
601	2019-06-04 16:46:38.363931-06	117	mrp_system | mo product | Can delete mo product	3		2	10
602	2019-06-04 16:46:38.374906-06	148	mrp_system | mo product | Can modify, add, view, or delete MO products	3		2	10
603	2019-06-04 16:46:38.379594-06	118	mrp_system | mo product | Can view mo product	3		2	10
604	2019-06-04 16:46:38.383199-06	59	redirect | redirect | Can add redirect	3		2	10
605	2019-06-04 16:46:38.38804-06	60	redirect | redirect | Can change redirect	3		2	10
606	2019-06-04 16:46:38.39482-06	61	redirect | redirect | Can delete redirect	3		2	10
607	2019-06-04 16:46:38.398996-06	136	redirect | redirect | Can enter in a redirect for the user	3		2	10
608	2019-06-04 16:46:38.405279-06	62	redirect | redirect | Can view redirect	3		2	10
609	2019-06-04 16:46:38.408699-06	51	redirects | redirect | Can add redirect	3		2	10
610	2019-06-04 16:46:38.417657-06	52	redirects | redirect | Can change redirect	3		2	10
611	2019-06-04 16:46:38.421899-06	53	redirects | redirect | Can delete redirect	3		2	10
612	2019-06-04 16:46:38.426576-06	54	redirects | redirect | Can view redirect	3		2	10
588	2019-06-04 16:46:00.348301-06	155	mrp_system | mrp system | Can view location1	3		2	10
589	2019-06-04 16:46:00.355011-06	71	mrp_system | part | Can add part	3		2	10
590	2019-06-04 16:46:00.359475-06	72	mrp_system | part | Can change part	3		2	10
591	2019-06-04 16:46:00.364436-06	73	mrp_system | part | Can delete part	3		2	10
592	2019-06-04 16:46:00.368265-06	138	mrp_system | part | Can modify, add, view, or delete parts	3		2	10
593	2019-06-04 16:46:00.37186-06	74	mrp_system | part | Can view part	3		2	10
594	2019-06-04 16:46:00.37536-06	75	mrp_system | type | Can add type	3		2	10
595	2019-06-04 16:46:00.37925-06	76	mrp_system | type | Can change type	3		2	10
596	2019-06-04 16:46:00.382759-06	77	mrp_system | type | Can delete type	3		2	10
597	2019-06-04 16:46:00.386244-06	139	mrp_system | type | Can modify, add, view, or delete types	3		2	10
598	2019-06-04 16:46:00.390172-06	78	mrp_system | type | Can view type	3		2	10
613	2019-06-04 16:46:56.12126-06	29	manager | project | Can add project	3		2	10
614	2019-06-04 16:46:56.127729-06	30	manager | project | Can change project	3		2	10
615	2019-06-04 16:46:56.131646-06	31	manager | project | Can delete project	3		2	10
616	2019-06-04 16:46:56.136622-06	131	manager | project | Can create, edit, view, delete, activate, and inactivate projects	3		2	10
617	2019-06-04 16:46:56.139805-06	133	manager | project | Can view, add, delete, modify projects	3		2	10
618	2019-06-04 16:46:56.145215-06	32	manager | project | Can view project	3		2	10
619	2019-06-04 16:47:07.716169-06	55	entries | to do | Can add to do	3		2	10
620	2019-06-04 16:47:07.720471-06	56	entries | to do | Can change to do	3		2	10
621	2019-06-04 16:47:07.724343-06	57	entries | to do | Can delete to do	3		2	10
622	2019-06-04 16:47:07.728234-06	135	entries | to do | Can modify, add, view, or delete todos	3		2	10
623	2019-06-04 16:47:07.732761-06	58	entries | to do | Can view to do	3		2	10
624	2019-06-04 16:48:13.150914-06	79	mrp_system | field | Can add field	3		2	10
625	2019-06-04 16:48:13.159275-06	80	mrp_system | field | Can change field	3		2	10
626	2019-06-04 16:48:13.164474-06	81	mrp_system | field | Can delete field	3		2	10
627	2019-06-04 16:48:13.16929-06	140	mrp_system | field | Can modify, add, view, or delete fields	3		2	10
628	2019-06-04 16:48:13.174063-06	82	mrp_system | field | Can view field	3		2	10
629	2019-06-04 16:57:28.262882-06	7	barbg	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
630	2019-06-04 16:59:07.090372-06	7	barbg	2	[]	4	10
631	2019-06-04 16:59:30.578248-06	8	brittanye	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
632	2019-06-04 17:00:36.000729-06	12	conwayl	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
633	2019-06-04 17:02:06.994897-06	11	jacobc	2	[{"changed": {"fields": ["groups", "user_permissions"]}}]	4	10
634	2019-06-04 17:02:16.419271-06	8	brittanye	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
635	2019-06-04 17:02:28.686635-06	7	barbg	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
636	2019-06-04 17:02:53.442709-06	3	jasone	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
637	2019-06-04 17:03:40.744613-06	9	mikem	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
638	2019-06-04 17:04:02.660069-06	13	tatec	2	[{"changed": {"fields": ["groups", "user_permissions"]}}]	4	10
639	2019-06-04 17:04:29.077037-06	6	timg	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
641	2019-06-17 20:57:17.896319-06	10	lisal	2	[{"changed": {"fields": ["user_permissions"]}}]	4	10
642	2019-07-08 11:25:00.827676-06	9	mikem	2	[{"changed": {"fields": ["is_active"]}}]	4	5
644	2019-09-02 14:17:13.956506-06	4	melissag	2	[{"changed": {"fields": ["is_active"]}}]	4	5
645	2019-09-02 14:18:15.658268-06	6	timg	2	[{"changed": {"fields": ["is_active"]}}]	4	5
646	2019-09-02 14:18:53.838828-06	10	lisal	2	[{"changed": {"fields": ["is_active", "is_staff", "is_superuser"]}}]	4	5
647	2019-09-02 14:19:10.259215-06	9	mikem	2	[]	4	5
648	2019-09-02 14:19:38.253882-06	12	conwayl	3		4	5
649	2019-09-02 14:20:12.091636-06	10	lisal	2	[]	4	5
650	2019-09-02 14:20:21.301147-06	4	melissag	2	[{"changed": {"fields": ["is_staff", "is_superuser"]}}]	4	5
651	2019-11-04 18:57:20.494092-07	14	dougg	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (12)"}}]	4	5
652	2019-11-04 18:59:17.276846-07	14	dougg	2	[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff", "is_superuser", "groups", "user_permissions"]}}]	4	5
653	2020-04-15 08:40:07.077988-06	15	beng	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (13)"}}]	4	5
654	2020-04-15 08:40:52.663721-06	15	beng	2	[{"changed": {"fields": ["first_name", "last_name", "email", "groups", "user_permissions"]}}]	4	5
659	2020-07-17 15:31:59.86734-06	17	owenb	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (14)"}}]	4	5
660	2020-07-17 15:41:19.741872-06	17	owenb	2	[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff", "is_superuser"]}}, {"changed": {"name": "profile", "object": "Profile object (14)", "fields": ["ssn"]}}]	4	5
661	2020-07-17 15:41:31.434258-06	17	owenb	2	[]	4	5
662	2020-07-25 16:37:30.589151-06	5	joeg	2	[{"changed": {"fields": ["password"]}}]	4	5
663	2020-07-27 14:16:46.282323-06	18	carterp	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (15)"}}]	4	5
664	2020-07-27 14:17:17.454702-06	18	carterp	2	[{"changed": {"fields": ["first_name", "last_name"]}}]	4	5
665	2020-07-27 14:52:29.313806-06	19	braedenp	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (16)"}}]	4	5
666	2020-07-27 14:53:07.590215-06	19	braedenp	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	5
667	2020-07-27 14:53:24.059173-06	19	braedenp	2	[{"changed": {"fields": ["groups"]}}]	4	5
668	2020-07-27 14:53:37.95142-06	18	carterp	2	[{"changed": {"fields": ["groups"]}}]	4	5
669	2020-07-27 14:54:11.374457-06	18	carterp	2	[{"changed": {"fields": ["email"]}}]	4	5
670	2020-07-27 14:59:23.756931-06	19	braedenp	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
671	2020-07-27 14:59:23.867056-06	19	braedenp	2	[]	4	5
672	2020-07-27 14:59:48.787579-06	18	carterp	2	[{"changed": {"fields": ["user_permissions"]}}]	4	5
673	2020-08-04 11:21:07.779117-06	15	beng	2	[{"changed": {"fields": ["is_active"]}}]	4	5
674	2020-08-04 11:21:26.300313-06	16	bengsuper	2	[{"changed": {"fields": ["is_active"]}}, {"added": {"name": "profile", "object": "Profile object (17)"}}]	4	5
675	2020-08-04 12:43:31.323049-06	14	dougg	2	[{"changed": {"fields": ["is_active"]}}]	4	5
676	2020-08-04 12:43:54.631821-06	8	brittanye	2	[{"changed": {"fields": ["is_active"]}}]	4	5
677	2020-08-04 12:44:56.548158-06	16	bengsuper	3		4	5
678	2020-08-18 11:32:37.093429-06	18	carterp	2	[{"changed": {"fields": ["is_active"]}}]	4	5
679	2020-08-18 11:32:56.500251-06	19	braedenp	2	[{"changed": {"fields": ["is_active"]}}]	4	5
680	2020-09-04 16:38:06.621923-06	20	meganm	1	[{"added": {}}, {"added": {"name": "profile", "object": "Profile object (18)"}}]	4	5
681	2020-09-04 16:39:33.036441-06	20	meganm	2	[{"changed": {"fields": ["is_staff", "is_superuser", "groups", "user_permissions"]}}]	4	5
682	2020-09-09 08:31:46.275343-06	20	meganm	2	[{"changed": {"fields": ["first_name", "last_name", "email"]}}]	4	5
683	2020-09-23 09:18:39.197368-06	20	meganm	2	[{"changed": {"name": "profile", "object": "Profile object (18)", "fields": ["ssn"]}}]	4	17
684	2020-09-23 09:32:58.334264-06	20	meganm	2	[{"changed": {"name": "profile", "object": "Profile object (18)", "fields": ["ssn"]}}]	4	17
685	2020-10-27 14:18:25.994481-06	20	meganm	2	[{"changed": {"name": "profile", "object": "Profile object (18)", "fields": ["payroll_name"]}}]	4	20
686	2020-10-27 14:26:26.755446-06	20	meganm	2	[{"changed": {"name": "profile", "object": "Profile object (18)", "fields": ["health_insurance"]}}]	4	20
687	2020-10-27 14:29:12.100568-06	20	meganm	2	[]	4	20
688	2020-10-27 14:35:35.659131-06	20	meganm	2	[]	4	20
689	2020-10-27 14:42:12.875728-06	20	meganm	2	[{"changed": {"name": "profile", "object": "Profile object (18)", "fields": ["health_insurance"]}}]	4	20
690	2020-10-27 15:12:16.852375-06	20	meganm	2	[{"changed": {"name": "profile", "object": "Profile object (18)", "fields": ["health_insurance"]}}]	4	20
691	2020-10-28 10:11:04.416673-06	20	meganm	2	[{"changed": {"name": "profile", "object": "Profile object (18)", "fields": ["salaried", "hourly"]}}]	4	20
692	2020-11-01 10:48:36.598037-07	20	meganm	2	[{"changed": {"name": "profile", "object": "Profile object (18)", "fields": ["salaried", "hourly"]}}]	4	20
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	manager	profile
8	manager	project
9	manager	projectrelationship
10	entries	entry
11	entries	projecthours
12	sites	site
13	redirects	redirect
14	entries	todo
15	redirect	redirect
32	mrp_system	mrpsystem
17	mrp_system	manufacturerrelationship
18	mrp_system	part
19	mrp_system	type
20	mrp_system	field
21	mrp_system	location
22	mrp_system	locationrelationship
23	mrp_system	digikeyapi
24	mrp_system	product
25	mrp_system	productamount
26	mrp_system	partamount
27	mrp_system	productlocation
28	mrp_system	manufacturingorder
29	mrp_system	moproduct
16	mrp_system	vendor
30	mrp_system	purchaseorder
31	mrp_system	purchaseorderparts
33	mrp_system	location1relationship
34	mrp_system	manufacturer1relationship
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-10-22 21:07:58.305505-06
2	auth	0001_initial	2018-10-22 21:07:58.415986-06
3	admin	0001_initial	2018-10-22 21:07:58.452619-06
4	admin	0002_logentry_remove_auto_add	2018-10-22 21:07:58.467622-06
5	admin	0003_logentry_add_action_flag_choices	2018-10-22 21:07:58.490603-06
6	contenttypes	0002_remove_content_type_name	2018-10-22 21:07:58.522264-06
7	auth	0002_alter_permission_name_max_length	2018-10-22 21:07:58.533174-06
8	auth	0003_alter_user_email_max_length	2018-10-22 21:07:58.555709-06
9	auth	0004_alter_user_username_opts	2018-10-22 21:07:58.574682-06
10	auth	0005_alter_user_last_login_null	2018-10-22 21:07:58.59283-06
11	auth	0006_require_contenttypes_0002	2018-10-22 21:07:58.596493-06
12	auth	0007_alter_validators_add_error_messages	2018-10-22 21:07:58.610709-06
13	auth	0008_alter_user_username_max_length	2018-10-22 21:07:58.637594-06
14	auth	0009_alter_user_last_name_max_length	2018-10-22 21:07:58.661481-06
15	manager	0001_initial	2018-10-22 21:07:58.750205-06
16	entries	0001_initial	2018-10-22 21:07:58.840796-06
17	sessions	0001_initial	2018-10-22 21:07:58.861617-06
18	sites	0001_initial	2018-10-24 13:58:45.20367-06
19	sites	0002_alter_domain_unique	2018-10-24 13:58:45.273365-06
21	entries	0002_entry_end	2018-10-26 14:35:10.698688-06
22	entries	0003_todo	2018-11-06 16:36:08.943788-07
23	entries	0004_todo_completed	2018-11-06 16:36:08.998114-07
24	entries	0005_auto_20181106_1424	2018-11-06 16:36:09.076698-07
25	entries	0006_auto_20181120_1305	2018-11-27 19:18:56.601251-07
26	redirect	0001_initial	2018-11-27 19:23:20.363104-07
27	mrp_system	0001_initial	2018-12-26 15:54:11.42549-07
28	mrp_system	0002_auto_20181114_1116	2018-12-26 15:54:11.459056-07
29	mrp_system	0003_auto_20181114_1133	2018-12-26 15:54:11.466505-07
30	mrp_system	0004_auto_20181114_1144	2018-12-26 15:54:11.477926-07
31	mrp_system	0005_auto_20181114_1154	2018-12-26 15:54:11.539773-07
32	mrp_system	0006_auto_20181114_1231	2018-12-26 15:54:11.560259-07
33	mrp_system	0007_auto_20181114_1234	2018-12-26 15:54:11.585389-07
34	mrp_system	0008_auto_20181128_1057	2018-12-26 15:54:11.66577-07
35	mrp_system	0009_auto_20181128_1210	2018-12-26 15:54:11.74519-07
36	mrp_system	0010_part_document	2018-12-26 15:54:11.787941-07
37	mrp_system	0011_auto_20181206_1145	2018-12-26 15:54:11.824989-07
38	mrp_system	0012_auto_20181206_1227	2018-12-26 15:54:11.92708-07
39	mrp_system	0013_type_suffix	2018-12-26 15:54:11.953291-07
40	mrp_system	0014_auto_20181206_1254	2018-12-26 15:54:12.043584-07
41	mrp_system	0015_auto_20181206_1257	2018-12-26 15:54:12.08775-07
42	mrp_system	0016_auto_20181206_1258	2018-12-26 15:54:12.099155-07
43	mrp_system	0017_auto_20181206_1348	2018-12-26 15:54:12.294592-07
44	mrp_system	0018_auto_20181206_1500	2018-12-26 15:54:12.335399-07
45	mrp_system	0019_auto_20181206_1811	2018-12-26 15:54:12.430969-07
46	mrp_system	0020_part_char9	2018-12-26 15:54:12.46242-07
47	mrp_system	0021_auto_20181211_0950	2018-12-26 15:54:12.498559-07
48	mrp_system	0022_auto_20181211_0951	2018-12-26 15:54:12.514359-07
49	mrp_system	0023_auto_20181214_1129	2018-12-26 15:54:12.679962-07
50	mrp_system	0024_auto_20181226_1348	2018-12-26 15:54:12.82161-07
51	mrp_system	0025_auto_20181226_1736	2018-12-26 21:46:33.430109-07
52	mrp_system	0026_auto_20181227_1616	2018-12-27 16:19:23.965504-07
53	mrp_system	0027_digikeyapi	2018-12-31 14:55:18.804318-07
54	mrp_system	0028_delete_digikeyapi	2018-12-31 14:55:18.829309-07
55	mrp_system	0029_digikeyapi	2018-12-31 14:55:18.865948-07
56	mrp_system	0030_auto_20181228_1544	2018-12-31 14:55:18.925902-07
57	mrp_system	0031_digikeyapi_date	2018-12-31 14:55:18.948399-07
58	mrp_system	0032_remove_digikeyapi_date	2018-12-31 14:55:18.963421-07
59	mrp_system	0033_digikeyapi_access_token	2018-12-31 14:55:18.986417-07
60	mrp_system	0034_field_mouser_name	2019-01-09 14:19:02.286262-07
61	mrp_system	0035_auto_20190109_1312	2019-01-09 14:19:02.316652-07
62	mrp_system	0036_auto_20190111_1357	2019-01-15 16:00:55.060613-07
63	mrp_system	0037_billofmaterials_amount	2019-01-15 16:00:55.099219-07
64	mrp_system	0038_auto_20190114_1348	2019-01-15 16:00:55.234171-07
65	mrp_system	0039_product_part_products	2019-01-15 16:00:55.287233-07
66	mrp_system	0040_auto_20190114_1549	2019-01-15 16:00:55.487495-07
67	mrp_system	0041_auto_20190114_1647	2019-01-15 16:00:55.564394-07
68	mrp_system	0042_auto_20190114_1853	2019-01-15 16:00:55.593805-07
69	mrp_system	0043_auto_20190115_1025	2019-01-15 16:00:55.706442-07
70	mrp_system	0044_auto_20190115_1105	2019-01-15 16:00:55.725538-07
71	mrp_system	0045_auto_20190115_1125	2019-01-15 16:00:55.755036-07
72	mrp_system	0046_auto_20190115_1245	2019-01-16 11:25:52.90234-07
73	mrp_system	0047_billofmaterials_name	2019-01-16 11:25:52.966992-07
74	mrp_system	0048_auto_20190115_1828	2019-01-16 11:25:53.1589-07
75	mrp_system	0049_auto_20190115_1848	2019-01-16 11:25:53.258651-07
76	mrp_system	0050_auto_20190115_1849	2019-01-16 11:25:53.331189-07
77	manager	0002_profile_payroll	2019-01-18 11:12:33.254468-07
78	mrp_system	0051_auto_20190118_1051	2019-01-18 17:14:11.441137-07
79	mrp_system	0052_auto_20190121_0916	2019-01-21 09:47:57.13613-07
80	entries	0007_auto_20190121_1451	2019-01-21 15:23:41.39406-07
81	mrp_system	0053_auto_20190121_1931	2019-01-21 20:10:46.091968-07
82	mrp_system	0054_auto_20190121_1943	2019-01-21 20:10:46.136803-07
83	mrp_system	0055_auto_20190121_2007	2019-01-21 20:10:46.166122-07
84	mrp_system	0056_auto_20190122_1952	2019-01-22 19:55:39.384265-07
85	mrp_system	0057_auto_20190123_1029	2019-01-23 12:51:12.91571-07
86	mrp_system	0058_product_engimusingproductnumber	2019-01-24 15:50:39.147638-07
87	mrp_system	0059_auto_20190124_1230	2019-01-24 15:50:39.178581-07
88	mrp_system	0060_auto_20190124_1638	2019-01-24 16:48:15.29567-07
89	mrp_system	0061_auto_20190124_2231	2019-01-24 22:42:51.441203-07
90	mrp_system	0062_auto_20190129_1509	2019-01-30 14:50:20.630075-07
91	mrp_system	0063_auto_20190129_1513	2019-01-30 14:50:20.698975-07
92	mrp_system	0064_remove_part_partnumber	2019-01-30 14:50:20.742992-07
93	mrp_system	0065_purchaseorder	2019-01-30 14:50:20.793907-07
94	mrp_system	0066_auto_20190130_1148	2019-01-30 14:50:20.955299-07
95	mrp_system	0067_auto_20190130_1217	2019-01-30 14:50:21.13668-07
96	mrp_system	0068_auto_20190130_1248	2019-01-30 14:50:21.208269-07
97	mrp_system	0069_auto_20190130_1305	2019-01-30 14:50:21.300061-07
98	mrp_system	0070_auto_20190130_1416	2019-01-30 14:50:21.452694-07
99	mrp_system	0071_auto_20190130_1503	2019-01-31 16:01:08.341318-07
100	mrp_system	0072_auto_20190130_1515	2019-01-31 16:01:08.363722-07
101	mrp_system	0073_auto_20190130_1623	2019-01-31 16:01:08.566848-07
102	mrp_system	0074_auto_20190130_1704	2019-01-31 16:01:08.661637-07
103	mrp_system	0075_auto_20190130_1707	2019-01-31 16:01:08.73604-07
104	mrp_system	0076_remove_purchaseorderparts_item_number	2019-01-31 16:01:08.813206-07
105	mrp_system	0077_purchaseorderparts_item_number	2019-01-31 16:01:08.859143-07
106	mrp_system	0078_remove_purchaseorder_vendor	2019-01-31 16:01:08.93129-07
107	mrp_system	0079_vendor_purchase_order	2019-01-31 16:01:08.96298-07
108	mrp_system	0080_remove_vendor_purchase_order	2019-01-31 16:01:09.000173-07
109	mrp_system	0081_purchaseorder_vendor	2019-01-31 16:01:09.045675-07
110	mrp_system	0082_purchaseorderparts_total	2019-01-31 16:01:09.091988-07
111	mrp_system	0083_auto_20190131_1155	2019-01-31 16:01:09.140215-07
112	entries	0008_auto_20190404_1308	2019-04-04 17:52:52.93891-06
113	entries	0009_auto_20190405_1156	2019-04-05 12:18:18.056656-06
114	entries	0010_auto_20190513_1419	2019-05-16 14:12:06.780233-06
115	entries	0011_auto_20190516_1410	2019-05-16 14:12:06.844248-06
116	manager	0003_auto_20190513_1419	2019-05-16 14:12:06.879195-06
117	mrp_system	0084_auto_20190513_1419	2019-05-16 14:12:07.117738-06
118	mrp_system	0085_location1_location1relationship_manufacturer1relationship	2019-05-16 14:12:07.283642-06
119	redirect	0002_auto_20190513_1419	2019-05-16 14:12:07.295231-06
120	entries	0012_auto_20190601_1440	2019-06-03 15:53:55.453977-06
121	entries	0013_auto_20190601_1516	2019-06-03 15:53:55.510815-06
122	manager	0004_auto_20190531_1539	2019-06-03 15:53:55.547548-06
123	manager	0005_auto_20190601_1440	2019-06-03 15:53:55.600924-06
124	manager	0006_auto_20190601_1516	2019-06-03 15:53:55.652243-06
125	mrp_system	0086_auto_20190531_1539	2019-06-03 15:53:55.661686-06
126	mrp_system	0087_auto_20190601_1434	2019-06-03 15:53:56.010004-06
127	mrp_system	0088_auto_20190601_1440	2019-06-03 15:53:56.227143-06
128	mrp_system	0089_auto_20190601_1451	2019-06-03 15:53:56.240541-06
129	mrp_system	0090_auto_20190601_1516	2019-06-03 15:53:56.4358-06
130	redirect	0003_auto_20190601_1542	2019-06-03 15:53:56.451919-06
131	mrp_system	0091_auto_20190701_1533	2019-07-01 15:36:54.892231-06
132	mrp_system	0092_auto_20190720_2154	2020-04-28 13:30:39.200065-06
133	manager	0007_auto_20201026_1248	2020-10-26 12:49:14.427108-06
134	manager	0002_profile_health_insurance	2020-10-27 14:11:21.442988-06
135	manager	0003_profile_payroll_name	2020-10-27 14:11:21.448425-06
136	manager	0004_auto_20201027_1428	2020-10-27 14:28:31.881566-06
137	manager	0005_auto_20201027_1435	2020-10-27 14:35:08.914939-06
138	manager	0006_auto_20201027_1436	2020-10-27 14:37:55.267223-06
139	manager	0007_auto_20201027_1437	2020-10-27 14:37:55.271631-06
140	manager	0008_auto_20201027_1437	2020-10-27 14:37:55.273568-06
141	manager	0009_remove_profile_health_insurance	2020-10-27 14:39:24.705382-06
142	manager	0010_profile_health_insurance	2020-10-27 14:40:09.76212-06
143	manager	0011_auto_20201027_1441	2020-10-27 14:41:53.900236-06
144	manager	0012_auto_20201028_1006	2020-10-28 10:07:02.436501-06
145	mrp_system	0002_auto_20210226_1414	2021-02-26 14:14:31.007425-07
146	mrp_system	0003_auto_20210317_1139	2021-03-17 11:40:00.824928-06
147	auth	0010_alter_group_name_max_length	2021-05-26 11:29:15.364649-06
148	auth	0011_update_proxy_permissions	2021-05-26 11:29:15.390767-06
149	auth	0012_alter_user_first_name_max_length	2021-05-26 11:29:15.418297-06
150	mrp_system	0004_auto_20210621_2111	2021-06-21 21:12:09.134679-06
151	mrp_system	0005_auto_20210621_2115	2021-06-21 21:15:56.760666-06
\.


--
-- Data for Name: django_redirect; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.django_redirect (id, old_path, new_path, site_id) FROM stdin;
67	/01_sw_srcs	http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_01.png	1
1	/2	http://www.wgu.edu	1
4	/openhab-installation-instructions	http://store.engimusing.com/pages/openhab-installation-instructions	1
3	/openhab-system-layout-examples	http://store.engimusing.com/pages/openhab-system-layout-examples	1
7	/wiring-kit-a	http://engimusing.myshopify.com/products/wiring-kit-a	1
9	/iot-video	https://www.youtube.com/watch?v=kDNXSqgYdwg	1
10	/blink-video	https://www.youtube.com/watch?v=Vkf9ICDySFU	1
11	/efm-usb-video	https://www.youtube.com/watch?v=RJAgtqJLRjw	1
12	/easy-to-use-video	https://www.youtube.com/watch?v=Zec-dIEkxdY	1
13	/openhab-tutorial-video	https://www.youtube.com/watch?v=lkkaNu28N98	1
14	/garage-door-video	https://www.youtube.com/watch?v=MxVHatPNJJI	1
15	/co-sensor-video	https://www.youtube.com/watch?v=pITPqvL1A9c	1
16	/module-formats-video	https://www.youtube.com/watch?v=N6TOCYJMjbE	1
17	/thermostat-video	https://www.youtube.com/watch?v=aT0tMNKyoVM	1
18	/module-sizes-video	https://www.youtube.com/watch?v=zQRmLV2aHMM	1
19	/accelerometers-video	https://www.youtube.com/watch?v=gKkRoAKT4HA	1
20	/rfs-video	https://www.youtube.com/watch?v=zQ9v7qFFiu8	1
21	/tilt-sensors	http://store.engimusing.com/collections/tilt-sensors	1
22	/reed-switches	http://store.engimusing.com/collections/reed-switches	1
23	/proximity-sensors	http://store.engimusing.com/collections/proximity-sensors	1
24	/humidity-sensors	http://store.engimusing.com/collections/humidity-sensors	1
25	/hall-effect-switches	http://store.engimusing.com/collections/hall-effect-switches	1
26	/current-sensors	http://store.engimusing.com/collections/current-sensors	1
27	/temperature-sensors	http://store.engimusing.com/collections/temperature-sensors	1
28	/color-and-light-sensors	http://store.engimusing.com/collections/color-and-light-sensors	1
29	/carbon-monoxide-sensors	http://store.engimusing.com/collections/carbon-monoxide-sensors	1
30	/pressure-sensors	http://store.engimusing.com/collections/pressure-sensors	1
31	/accelerometer-sensors	http://store.engimusing.com/collections/accelerometer-sensors	1
32	/power-converters	http://store.engimusing.com/collections/power-converters	1
33	/relays	http://store.engimusing.com/collections/relays	1
34	/breadboard-aids-connectors-wiring	http://store.engimusing.com/collections/breadboard-aids-connectors-wiring	1
35	/learning-aids	http://store.engimusing.com/collections/learning-aids	1
36	/communication_modules	http://store.engimusing.com/collections/communication-modules	1
37	/processor_modules	http://store.engimusing.com/collections/processor-modules	1
38	/m9-1	http://store.engimusing.com/products/m9-1	1
39	/rsw-3	http://store.engimusing.com/products/rsw-3	1
40	/rstsw-1	http://store.engimusing.com/products/rstsw-1	1
54	/14_synaptic	https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_14.png	1
55	/13_synaptic	https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_13.png	1
56	/12_synaptic	https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_12.png	1
57	/11_synaptic	https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_11.png	1
58	/10_synaptic	https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_10.png	1
59	/09_synaptic	https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_09.png	1
60	/08_synaptic	https://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_08.png	1
8	/8	https://www.accel.com	1
5	/a	http://www.openhab.org	1
71	/products	http://engimusing.myshopify.com/collections/all	1
70	/store	http://engimusing.myshopify.com/	1
72	/kickstarter	http://kck.st/1vwQ2ci	1
76	/adxl362-1	http://engimusing.myshopify.com/products/adxl362-1	1
77	/adxl-4	http://engimusing.myshopify.com/products/adxl-4	1
78	/mpl3115a2-1	http://engimusing.myshopify.com/products/mpl3115a2-1	1
79	/mql3-3	http://engimusing.myshopify.com/products/mql3-3	1
80	/m115a1-1	http://engimusing.myshopify.com/products/m115a1-1	1
81	/mpl115-3	http://engimusing.myshopify.com/products/mpl115-3	1
82	/bbadap-2	http://engimusing.myshopify.com/products/bbadap-2	1
66	/02_sw_srcs	http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_02.png	1
65	/03_sw_srcs	http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_03.png	1
64	/04_sw_srcs	http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_04.png	1
63	/05_sw_srcs	http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_05.png	1
62	/06_synaptic	http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_06.png	1
61	/07_synaptic	http://engimusing.github.io/Tutorials/openHAB_Installation/Linux_GUI/Linux_GUI_07.png	1
73	/acssr-4	https://www.engimusing.com/collections/relays/products/ssr_ac-4	1
46	/android_openhab1	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_06.png	1
45	/android_openhab2	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_07.png	1
44	/android_openhab3	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_08.png	1
43	/android_openhab4	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_09.png	1
42	/android_openhab5	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_10.png	1
41	/android_openhab6	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_11.png	1
51	/linux_config_cmds	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_01.png	1
49	/linux_config_editor1	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_03.png	1
48	linux_config_editor2	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_04.png	1
50	/linux_config_openhab1	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_02.png	1
47	/linux_config_openHAB2	https://engimusing.github.io/Tutorials/openHAB_Installation/Initial_Configuration/Initial_Configuration_05.png	1
86	/gas-4	http://engimusing.myshopify.com/products/gas-4	1
87	/tcs3472-1	http://engimusing.myshopify.com/products/tcs3472-1	1
88	/tcs3472-3	http://engimusing.myshopify.com/products/tcs3472-3	1
89	/mlx9-1	http://engimusing.myshopify.com/products/mlx9-1	1
90	/irtemp-1	http://engimusing.myshopify.com/products/irtemp-1	1
91	/ssr_ac-1	http://engimusing.myshopify.com/products/ssr_ac-1	1
92	/ssr_ac-4	http://engimusing.myshopify.com/products/ssr_ac-4	1
93	/ssr_dc-2	http://engimusing.myshopify.com/products/ssr_dc-2	1
94	/ssr_dc-5	http://engimusing.myshopify.com/products/ssr_dc-5	1
96	/efm48_1	http://engimusing.myshopify.com/products/efm48_1	1
98	/tcs3200-1	http://engimusing.myshopify.com/products/tcs3200-1	1
99	/tcs3200-3	http://engimusing.myshopify.com/products/tcs3200-3	1
100	/ftdi-4	http://engimusing.myshopify.com/products/ftdi-4	1
101	/garage-1	http://engimusing.myshopify.com/products/garage-1	1
103	/acs716-2	http://engimusing.myshopify.com/products/acs716-2	1
104	/acs716-1	http://engimusing.myshopify.com/products/acs716-1	1
105	/m92212-1	http://engimusing.myshopify.com/products/m92212-1	1
106	/mlx-3	http://engimusing.myshopify.com/products/mlx-3	1
107	/htu21d-1	http://engimusing.myshopify.com/products/htu21d-1	1
108	/htu-3	http://engimusing.myshopify.com/products/htu-3	1
109	/tmd2771-1	http://engimusing.myshopify.com/products/tmd2771-1	1
110	/tmd2771-3	http://engimusing.myshopify.com/products/tmd2771-3	1
111	/reedsw-2	http://engimusing.myshopify.com/products/reedsw-2	1
112	/reedsw-1	http://engimusing.myshopify.com/products/reedsw-1	1
113	/hab-1	http://engimusing.myshopify.com/products/hab-1	1
115	/qre13-3	http://store.engimusing.com/products/qre13-3	1
116	/qre1113-1	http://engimusing.myshopify.com/products/qre1113-1	1
117	/qre2-1	http://engimusing.myshopify.com/products/qre2-1	1
119	/tmp102-1	http://engimusing.myshopify.com/products/tmp102-1	1
120	/tmp-3	http://engimusing.myshopify.com/products/tmp-3	1
126	/thermo-2	http://engimusing.myshopify.com/products/thermo-2	1
129	/	http://engimusing.com	1
130	/time/	/timepiece/	1
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
a1j4wpo2n58w3re7s14la7ed9ozs0uii	MDNlNzM5ZDBkNWZkMjliN2ZjOTdlNmNjOTkwOWI2NDQzYWJkM2IwMzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiN2JjYWY4Y2IyY2FkMDFmYzA4YTg5NjhkZWYwNWExYzQ3NDIzYmY1In0=	2018-11-29 16:56:25.924983-07
q7ah3v4r0o130mveqso8xqr28ylin98m	YTRmODJlZjM1YWJlOWRjMjVmYmU0OTBiOGIwNWQ3MWU1NjM5ZmQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmY0NTAwYzQ3N2Y3NzZjOGU4MjM5OGMxOThmZTJlZjVjYzk4YTE1In0=	2018-11-06 10:26:37.67483-07
5g9zkzz9lmm3ujac31kuucwlrvjte3zm	YTRmODJlZjM1YWJlOWRjMjVmYmU0OTBiOGIwNWQ3MWU1NjM5ZmQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmY0NTAwYzQ3N2Y3NzZjOGU4MjM5OGMxOThmZTJlZjVjYzk4YTE1In0=	2018-12-04 14:44:14.639352-07
d2nvw7plg92bu632pdsljj8cf9sxhxmm	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2018-11-06 11:31:14.157252-07
s1pewdtm40722obkvux8ono0mpy1xg9z	YTRmODJlZjM1YWJlOWRjMjVmYmU0OTBiOGIwNWQ3MWU1NjM5ZmQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmY0NTAwYzQ3N2Y3NzZjOGU4MjM5OGMxOThmZTJlZjVjYzk4YTE1In0=	2018-11-10 10:02:48.462283-07
byq6wb37sfnyz464gf2kdvurqsws3dc5	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2018-12-07 07:21:41.738491-07
3dvrqhzs1uuqhdnuoayybi6poxwqi7ro	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2018-11-10 12:59:15.658685-07
xna9aeeywp6z5667k18jr6b52x34aqmk	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2018-12-10 08:25:10.37872-07
qjqgm6kjsuqwfopvbwcc9u1lxd7or1jz	YTRmODJlZjM1YWJlOWRjMjVmYmU0OTBiOGIwNWQ3MWU1NjM5ZmQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmY0NTAwYzQ3N2Y3NzZjOGU4MjM5OGMxOThmZTJlZjVjYzk4YTE1In0=	2018-12-18 14:52:26.918607-07
k3w4rqdu48jn6kykiqmvkxrlbk34q1r2	MDNlNzM5ZDBkNWZkMjliN2ZjOTdlNmNjOTkwOWI2NDQzYWJkM2IwMzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiN2JjYWY4Y2IyY2FkMDFmYzA4YTg5NjhkZWYwNWExYzQ3NDIzYmY1In0=	2018-12-20 16:31:36.584658-07
4vly1yncgqxqeetca34pk8jyucmw44q7	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2018-12-24 14:16:52.200362-07
whvlmzdhgr5lohfk1u76qubcedz0lsw2	MDNlNzM5ZDBkNWZkMjliN2ZjOTdlNmNjOTkwOWI2NDQzYWJkM2IwMzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiN2JjYWY4Y2IyY2FkMDFmYzA4YTg5NjhkZWYwNWExYzQ3NDIzYmY1In0=	2018-11-10 22:02:18.29078-07
js91xzoy814pgdcunn0opnahh14kd7bw	NzNiODY2N2QyNTY5YWVhZTJiMGE5ODIzZWNjMDZhYmRiNzMxNDk3Yjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzI2MTZlZGQ1ZTU0YTJjOTY2YzE0NTMxOWFmYTVmNWRhMTkzYjAzIn0=	2018-11-12 07:01:19.444199-07
c7bwxs11j5798kisaybqmvnyfa4294wo	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2018-12-26 17:17:22.322808-07
1m8219fe8ngsb49g4eveme3hayrkseg5	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2018-11-12 07:37:46.049068-07
h3ib7hr8umkqk26szyvtd618y5b623gh	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2018-12-28 09:22:35.841895-07
aen76mj4o8jcj760jwsahzj51agyam22	YTRmODJlZjM1YWJlOWRjMjVmYmU0OTBiOGIwNWQ3MWU1NjM5ZmQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmY0NTAwYzQ3N2Y3NzZjOGU4MjM5OGMxOThmZTJlZjVjYzk4YTE1In0=	2019-01-09 12:28:01.699859-07
hc63m0rfcu64r28zw536gc8l35uwtdod	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2019-01-21 07:08:47.578022-07
tu045wipslwahxso6kvbq6mtxt6f1bgq	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2019-01-23 22:10:31.18937-07
d8zi13k3nqbgivr8c96tb3uwwi04a9tq	YTRmODJlZjM1YWJlOWRjMjVmYmU0OTBiOGIwNWQ3MWU1NjM5ZmQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmY0NTAwYzQ3N2Y3NzZjOGU4MjM5OGMxOThmZTJlZjVjYzk4YTE1In0=	2019-01-25 12:13:08.666017-07
ne4hmvk3ete2vkh6ozxlnjeocpaathz0	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2019-01-31 16:04:41.868484-07
jav1m9h4cas3owk7gyofj6du9lor984h	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2019-02-02 14:47:24.762254-07
tu7t7nadppenuy4brnx48dlxjndquhxe	MDNlNzM5ZDBkNWZkMjliN2ZjOTdlNmNjOTkwOWI2NDQzYWJkM2IwMzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiN2JjYWY4Y2IyY2FkMDFmYzA4YTg5NjhkZWYwNWExYzQ3NDIzYmY1In0=	2019-02-07 16:24:42.307635-07
u4lmffgv8l2wiaebi5e5dzzm3m4092ca	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-02-18 07:26:14.798144-07
93fe4ki9qju86eojlhh5n37h6hjeyfft	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2018-12-08 23:29:58.584698-07
j832cczthy56f9n4mm7mafk20czs875h	NDUyYTZlMGMyODk4ZDZiOTI5MWEwMzNiZDZiNjZhYmZkOTRjNDVlNjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYzE1ZTIzMWQwMTJkZjQ3OGI4YjZiZjJjNjcxOTc2OTlmMGUzY2RiIn0=	2019-05-31 07:45:31.665169-06
490ze3cv13kbaowtgu4bkeswks12ooto	NzNiODY2N2QyNTY5YWVhZTJiMGE5ODIzZWNjMDZhYmRiNzMxNDk3Yjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzI2MTZlZGQ1ZTU0YTJjOTY2YzE0NTMxOWFmYTVmNWRhMTkzYjAzIn0=	2018-12-10 15:01:13.550652-07
u30dmligltnmhe5vx3k4pw9j51v51ogc	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-02-27 07:10:47.851472-07
g4levhk91j07szc4gvdv513ma4nu9kyj	YTRmODJlZjM1YWJlOWRjMjVmYmU0OTBiOGIwNWQ3MWU1NjM5ZmQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmY0NTAwYzQ3N2Y3NzZjOGU4MjM5OGMxOThmZTJlZjVjYzk4YTE1In0=	2018-12-21 14:09:09.758647-07
wadw22yqp865tka8wcharuzhdp2prkbo	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-03-05 07:00:25.872291-07
6tsz0rb6yc0260iq8kb3084b730p0bug	MDNlNzM5ZDBkNWZkMjliN2ZjOTdlNmNjOTkwOWI2NDQzYWJkM2IwMzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiN2JjYWY4Y2IyY2FkMDFmYzA4YTg5NjhkZWYwNWExYzQ3NDIzYmY1In0=	2018-12-27 09:21:10.813402-07
to8aqongpkr5tbua08rpzxrns1ejdsuh	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2019-01-09 17:37:11.193104-07
lc25nw0d4moq9uex5vat4xxibawk01ur	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-04-02 13:53:12.030927-06
zrbb2f90m274viqn2zvndnx5fi3za4yd	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2019-01-24 21:50:41.994204-07
s1ubh4a8ob8o8n8d1kz77gvacfr5vc74	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-04-25 19:17:56.447176-06
382gx89hg59siuu7it7n8m06d6d568d1	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-04-12 12:06:48.607942-06
ncdq5myb6z3b7cp1nkm0i2kguqjyy2mb	NTM1NGUyM2IyZWNiYTM4MDIyODBiZDVmODcxMDdiNWU4OTliODkwZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNWVhYjY4YzE4NmMwYjNhMGUyMThiZjk3MWY4NDZmOWFjYmYyM2YxIn0=	2019-03-16 13:03:22.477927-06
42bbgkq2jqcmy3enii2rwpp0xb1l3ugt	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-04-15 14:08:26.986601-06
ppjs0j4wpd2zk40z0z6x5lnxuld2f3eo	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-03-19 12:18:28.086749-06
jgfzwcp4sm2qalbdl6tgl3c49ubztqnq	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-03-26 15:01:33.382634-06
cav1fjv8jcqxisciocg1rlv6cj4pwss0	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-04-23 15:11:44.711611-06
dkr5scybcd9w6ce5iyb5u7nwkl6e427e	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-05-07 15:12:44.863764-06
1kbbmoj4kwxk6szbrywxwm44hpwtjrgz	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-05-13 15:06:34.260437-06
sflmpc4ephb1iof6xdxl77b59nrkw6yr	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2019-05-13 15:20:55.868793-06
nvb61nrvju1yxzrsv55g09fgi581o2wo	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-05-14 17:16:16.207107-06
dft65zqlcdgacnhwtbv3odhwcrif8ri1	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-05-14 19:56:19.935748-06
lvdsl2ukefco0mhnvk2bf1sv054wq9zv	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-05-17 12:32:08.245709-06
idsnv3jom1pwfw1a6alercviyy6nu56k	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-08-24 09:34:58.404477-06
6xx1o3xh46dazfrs4jricrhxce8kdsjq	YTRmODJlZjM1YWJlOWRjMjVmYmU0OTBiOGIwNWQ3MWU1NjM5ZmQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmY0NTAwYzQ3N2Y3NzZjOGU4MjM5OGMxOThmZTJlZjVjYzk4YTE1In0=	2018-12-11 08:37:45.255878-07
j2rdgvjx72d98d47925cp0xtsyvumlva	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-03-31 15:17:32.35837-06
bpjf975d2oo2mna56hk64qox6w5wn32f	NzNiODY2N2QyNTY5YWVhZTJiMGE5ODIzZWNjMDZhYmRiNzMxNDk3Yjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzI2MTZlZGQ1ZTU0YTJjOTY2YzE0NTMxOWFmYTVmNWRhMTkzYjAzIn0=	2018-12-27 17:48:00.541456-07
c45sjn46cdzgc2dw9eaej4ll6guwcq65	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2018-11-21 07:32:03.786271-07
zhxuw8wpgz0r9m0we9ms5c7tklv8k7p2	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-02-18 17:36:02.396176-07
qbq2ifefe2666vhlhghlccscbb9leo6x	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2019-01-10 11:24:21.425952-07
m1gw1p990f6lq7l0n8msostatat9p9o0	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-04-01 20:57:52.519152-06
nebufw2j7x1v0f637r55jh7bigjdd65a	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-02-26 08:07:43.467825-07
vzcajgzx468ufvhbvufulup6m8rgb0hj	NDU1NWU2Njg3ODc3OWU0Mzg0ODhlMjQ1YzljNjMxMzQ1Nzg0NmFmMzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YmI1MjcyNjU2MDc5YWIxYWUyM2Y1NzQ3NjBmMDU5N2EwNTEzY2Q4In0=	2019-02-26 09:00:34.213928-07
gpg9siktwruz9to5jzcdndz2uf96gfn7	NDIzOGViZjRjZjNmODk4NTRhOGY1NTc1MGVlYzVhNDkyZDdmOGZmMDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM1OWMwMjhlZGNhNjkyMTZiYWMzZDI2Y2QxZjc4MjgzNDI5YzQ1In0=	2019-02-14 21:53:09.695573-07
sm1klk660svuptwt22tkw2neg6zd7luz	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-02-27 16:41:24.422325-07
ga3esmim95c6b6jbg0ap4intnk50vn7b	NDUyYTZlMGMyODk4ZDZiOTI5MWEwMzNiZDZiNjZhYmZkOTRjNDVlNjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYzE1ZTIzMWQwMTJkZjQ3OGI4YjZiZjJjNjcxOTc2OTlmMGUzY2RiIn0=	2019-02-16 08:42:42.88791-07
pewpnj0iwn2nne1aaswu4il0w0y328gz	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-02-17 15:58:43.915109-07
tbwa8nge62ussv8a02mmuje3rnf2zlv0	NDIzOGViZjRjZjNmODk4NTRhOGY1NTc1MGVlYzVhNDkyZDdmOGZmMDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM1OWMwMjhlZGNhNjkyMTZiYWMzZDI2Y2QxZjc4MjgzNDI5YzQ1In0=	2019-03-01 08:59:45.594736-07
mnm3hmpidvnixzl4bg9eajs6wv8lhhm1	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-04-30 16:04:16.037915-06
bbxcwf1dkoi86i3wccirksb7gyfjnaa3	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-05-06 17:57:27.991521-06
7qwsjct9jrydpwr9o1bwrsnufcpysvjp	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-03-04 08:15:55.413417-07
x21p2zokl91s3r4l5nwtxtry4vajg2m7	NDU1NWU2Njg3ODc3OWU0Mzg0ODhlMjQ1YzljNjMxMzQ1Nzg0NmFmMzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YmI1MjcyNjU2MDc5YWIxYWUyM2Y1NzQ3NjBmMDU5N2EwNTEzY2Q4In0=	2019-05-13 09:41:37.134479-06
7uln21tm9ir23atihe8tqhzg4bbe6s9m	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-03-16 12:59:32.366576-06
vd54vyp76umq05nz4ypzqqhc5vw5brwj	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-04-15 21:00:15.971385-06
ozdd9b31tky5hxrxn23mwzir7x9pox8g	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-03-18 20:55:21.616682-06
ftsu4k9co44k1ql78pvccxbulqe939m4	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-05-15 10:54:54.204353-06
l4gzt5zc0o9jkvu49a7xhjri19pow89s	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-03-27 11:04:07.006024-06
oefcvynrq0kd6qkebwd3y8ej3lvy0ag3	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2018-11-24 17:02:09.359215-07
ow1pu6h7li9eoenl5a1fbo5akof2uu7s	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-06-01 21:39:08.876607-06
l9r302c63qiwrffxyyb04z7smzwg9jm7	MDNlNzM5ZDBkNWZkMjliN2ZjOTdlNmNjOTkwOWI2NDQzYWJkM2IwMzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiN2JjYWY4Y2IyY2FkMDFmYzA4YTg5NjhkZWYwNWExYzQ3NDIzYmY1In0=	2018-11-25 09:34:45.739855-07
6f9ir5bq2259gbazzkjltvr8u1wcrokm	NDU1NWU2Njg3ODc3OWU0Mzg0ODhlMjQ1YzljNjMxMzQ1Nzg0NmFmMzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YmI1MjcyNjU2MDc5YWIxYWUyM2Y1NzQ3NjBmMDU5N2EwNTEzY2Q4In0=	2019-02-21 16:11:12.816431-07
48ho6wd0n871hrup8hj1vbd0i2cdcqi0	YTRmODJlZjM1YWJlOWRjMjVmYmU0OTBiOGIwNWQ3MWU1NjM5ZmQ3Mzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZmY0NTAwYzQ3N2Y3NzZjOGU4MjM5OGMxOThmZTJlZjVjYzk4YTE1In0=	2018-11-25 21:23:49.442374-07
9zv3t55dyq0o6whfaq7243icpieln04u	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-04-01 09:22:11.334208-06
czlgr6ohr5udsmz4lyr3fidoo9rygwck	NzNiODY2N2QyNTY5YWVhZTJiMGE5ODIzZWNjMDZhYmRiNzMxNDk3Yjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzI2MTZlZGQ1ZTU0YTJjOTY2YzE0NTMxOWFmYTVmNWRhMTkzYjAzIn0=	2018-11-26 07:14:26.795589-07
2y7zev56qus1im5trry8td1r9urv8qjh	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-02-26 11:24:26.26505-07
qfdwgovo0ptjp4fv3y8exabw0z4ownn4	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2018-11-26 08:00:56.855184-07
ycbimfocqhmnjx44ay7n79v89o7xaqf1	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-03-04 17:39:38.088705-07
0lkdbkn2cg8adh2a1fi9xqsylm3hd450	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-03-18 08:44:14.681372-06
hbczt0798m2oa9hkmxwz6f10r6vpkh1n	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-03-19 11:49:54.799083-06
kqj5vfpshl18dr8klciibyaz37w49z65	NDIzOGViZjRjZjNmODk4NTRhOGY1NTc1MGVlYzVhNDkyZDdmOGZmMDp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYzM1OWMwMjhlZGNhNjkyMTZiYWMzZDI2Y2QxZjc4MjgzNDI5YzQ1In0=	2019-04-08 19:12:43.631082-06
625r3yphm4bjxunqwkte7jc5xbrzepl5	NTM1NGUyM2IyZWNiYTM4MDIyODBiZDVmODcxMDdiNWU4OTliODkwZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNWVhYjY4YzE4NmMwYjNhMGUyMThiZjk3MWY4NDZmOWFjYmYyM2YxIn0=	2019-03-21 19:11:41.027283-06
dl6da0cn85djldtikxmpfkhkfz2pnwnq	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-04-30 16:34:43.005848-06
9l4xlk64no3ocexqd7wwnj2gmn3xjeem	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-04-09 15:08:14.630468-06
nw8hwgkpug5wttosf4lp0orp8nj28lrf	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-03-26 09:35:57.357999-06
awxp45n9vrfxi6vf3x483tue43nnwhrv	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2019-05-06 18:36:49.263918-06
rxsqvu80q8q38bidz3rpm1ahzzlaki4v	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-05-10 06:53:58.205929-06
t2c6ye4j8wwa8phvimfj9lka8guwig4c	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-04-11 12:51:33.993297-06
6w5pfutmlx61scg89y8ah2c7y9rt177t	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-04-15 11:58:37.800618-06
0q9jwnd3z2lr7wnurchqwxbiim7e9b1z	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-04-16 14:16:10.820048-06
lrdq83wkfe72h5cby65zi7jghhkc4ar9	NzNiODY2N2QyNTY5YWVhZTJiMGE5ODIzZWNjMDZhYmRiNzMxNDk3Yjp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzI2MTZlZGQ1ZTU0YTJjOTY2YzE0NTMxOWFmYTVmNWRhMTkzYjAzIn0=	2019-01-17 21:03:28.088096-07
t829pvad4ftb2ox14d49u5segwhvh3vq	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-02-18 07:04:07.20056-07
tkh47lyrxa4bxsyx8gt9895lize4r26c	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-08-27 11:57:15.554573-06
bza100ycley8nvza0zw9dkoeug8e3dlz	OGJjNDVmMDViMGViZjNmYTE4NmNmYzY5NzkxYWUyYTY5ZTVlY2M3Mzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MzQxZWExNTU0NjM4NjRkYzJmZWYyZWVlODc4NGIwM2QyNWQ0MmRlIn0=	2019-06-08 08:48:50.84369-06
qt8pdw2k7dsrzh6888urxxt3s5y0gxpv	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-09-10 12:49:14.252905-06
yw9wevraejbc6wmeom2t7kurip8phpdr	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-09-17 07:15:18.571137-06
tyn1you9nq65pqqzyqno5tzqqo81gj98	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-09-24 12:50:20.512824-06
6gtg1snaqd1vf7a4d0bk8517ou5wefox	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-09-30 17:41:19.460825-06
3282fecj10xrvfk3mbdqu392vbvcis5x	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-10-08 15:13:31.279957-06
4g3b8rvjiwju7alvhhx1sm4580xq59p9	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-10-14 21:02:43.691168-06
io2rsp57wwc7iacrmtdzjq93u3uejeqa	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-10-21 18:03:27.72954-06
6qwh4qj8oegva0l8bma1cyq6ep9pmch1	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-10-28 17:58:31.232564-06
a9na69qfjd1wal0nfeoc6191stbvi9yv	OGJjNDVmMDViMGViZjNmYTE4NmNmYzY5NzkxYWUyYTY5ZTVlY2M3Mzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MzQxZWExNTU0NjM4NjRkYzJmZWYyZWVlODc4NGIwM2QyNWQ0MmRlIn0=	2019-11-01 11:29:59.65777-06
j9avytbiv06wmxp1jevsgoyfkk56bqg7	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-11-05 15:11:22.382333-07
r73m6eyridnkunqatn7ibfx99ueoprfp	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-11-07 16:46:43.935832-07
ib58za36ngjbya3f61qmglrqyujkj1tt	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-11-13 17:45:41.170181-07
wpt3hhxw1eir60gnmuwxoa4ymkqvk9td	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-11-20 12:57:15.196537-07
qbqv8o8609yt1qzm55ynr6if23lddf9b	MmFmYTRiNTFlMGYyZGViOWUzZjE2ZTczOWE5NmU4OWMyMDg0MGJkODp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGM0Y2U4MWQ5ZDYwNzgwZDdiZWQyYTMzNjUzMjBkMDMzOTdjNWZjMCJ9	2019-11-20 17:54:34.699771-07
px0318rz148jn1w8vo088de1yyhxqbdf	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-11-23 21:35:27.805927-07
yc736r6sva1fpb5akqu8q12m8dkeg70f	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-11-25 16:42:31.778468-07
a92jrjo0dttt7amcvgbzlp0bsz547trq	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-12-04 07:13:48.534058-07
upfykk5ujimqidyd2uchfouyihurn2v1	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-12-06 07:37:26.919113-07
1onjg5e46050ly4by2din3mtq134jb4d	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-12-09 20:00:10.189651-07
jvptydvzazgq9ejul9xpuli33idflf71	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-12-16 17:38:40.812252-07
c7autm41212ltka1iy54a408ztvigcmg	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-03-05 16:14:23.854206-07
ejf6ua913nmixsojb67yhzcyka8gn17d	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-04-16 15:22:36.872624-06
6zc9l5v1wrootlqrit7w9lz28qwk21ub	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-05-23 10:24:13.567659-06
03asklkz2xfhgu8no7bbt26xksrk0ed7	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-06-06 15:00:17.332689-06
5xxgxkt2im5gujqdrqt3w5tpo4te2kl2	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-06-11 08:16:55.737876-06
xkoy52derl56rpdwhjxcbg7ug5a875vv	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-06-17 15:12:00.745331-06
6cd3fgt24ukpfmm7hga6yk5865bdqi0t	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2019-09-11 20:03:47.916425-06
pkr7n7idg8k6i9z62j2o5qkxr2fsgdxg	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-09-19 17:58:41.74808-06
tpmy53lk6vakpau4kbdbg0dp4dj44pgc	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-10-01 16:41:43.637591-06
80mkzqrpmzyu3ukt2bvh1p7wqzdgqh5q	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-06-24 15:33:42.713532-06
2a1wk552ql9eidimq9sxq0qzxi2pxmfy	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-10-22 07:02:09.593929-06
6bbow9zu401yudcppb9q7nebcisp36qt	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-06-30 17:24:58.307366-06
llcavdfyrq6rhq76b75rl69kbu9ogsal	OGJjNDVmMDViMGViZjNmYTE4NmNmYzY5NzkxYWUyYTY5ZTVlY2M3Mzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MzQxZWExNTU0NjM4NjRkYzJmZWYyZWVlODc4NGIwM2QyNWQ0MmRlIn0=	2019-07-10 13:03:20.823652-06
5fse1arapunpuwqf072y1ibqj6y64dbz	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-10-28 21:31:09.472657-06
l105066w3q3terrlkn0hkgt7huc5fyzl	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-07-16 08:56:09.863934-06
yhdzdfs03gjzsd26nzxb0cz7z778ryym	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-07-22 16:53:08.992667-06
k0v8wh4ou1ss6bc8bc9nkj05msgev2xe	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-11-01 16:31:27.613554-06
d71c9xhq3ctnyoz6l1m6ag38ixb97vqe	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2019-07-29 09:38:24.56909-06
n3dsnofgrkyrp9a6eclf0m4o6t4t3azd	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-08-05 17:52:45.540373-06
cfh92vlzp15rfjykpci1zys5own3kbsc	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-11-06 07:45:34.739385-07
qtxcce38eipagg1ddt9qkstncfjtw70r	MmFmYTRiNTFlMGYyZGViOWUzZjE2ZTczOWE5NmU4OWMyMDg0MGJkODp7Il9hdXRoX3VzZXJfaWQiOiIxNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGM0Y2U4MWQ5ZDYwNzgwZDdiZWQyYTMzNjUzMjBkMDMzOTdjNWZjMCJ9	2019-11-19 10:49:57.907111-07
epozo1sdpxv46l6d0uayu0gcum0zsx38	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-08-13 10:38:04.833041-06
g3hfuno92kc9k9fciy426spavxgyebgn	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-08-18 12:19:32.682748-06
1d0krqjh9ljk7ss61zpudq4gjfkumu09	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-11-26 08:28:17.207037-07
flain0yv8z99w2iocgcqbq553fxx3xr7	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-12-05 07:54:39.352743-07
7sn1wupkg3dfyj1pgf4mh29rbd94g9mx	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-12-06 17:16:23.043856-07
h8fbexuse955f5o8lb040k3eyt4lhkyy	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-09-02 12:08:34.768233-06
0g17gnu1ic7bf3jqrrh4i1uq8irwbnag	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-05-30 21:04:56.522567-06
b5jzm6du5z8v2aiv3rc48fm80xucbvpp	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-10-08 06:58:15.309741-06
s2oiqx5f058zpkcx6we5136l2z5rcyp2	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-10-22 15:54:03.008264-06
9opjdfvyl9owasagdhx6ringutll67xa	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-11-19 15:39:07.538808-07
hf1ad41pzq294hiuslglz8jhb054fkqn	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-11-28 17:56:50.015372-07
2idtv9uwvig0mw818ic4758zuuq050z3	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-12-10 09:29:44.12566-07
e01skkikrtrf9pesyvzzgkdwrx7q6r26	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-12-18 12:01:41.817265-07
m7yrdd4hyy5dei72fzv36c9e4qt0n7so	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-06-19 07:19:42.984867-06
5p7g4reuj81fco8zm973v0zzpzok09dp	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-03-16 20:23:49.279642-06
zxu1m961bf83bxu45pz3m4j4hahjq1t8	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2019-06-25 15:11:42.618898-06
9ae9g0b6erfhp57vrkq1437ali97jep7	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-07-02 08:46:15.357113-06
99oenongvekjsfg1icb6wuahz73evrya	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-03-22 22:22:14.596341-06
hf2ntwp167p9wmiuyz451pcnyitd2q70	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2019-07-10 14:44:49.760232-06
2imswhfu4vdx5sxm3x2xulmactodx5qr	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-07-17 17:25:24.100953-06
2aebvf14gcts61agvzq3qzjzb8cu2aef	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-03-30 10:48:19.653367-06
mhkfsnsvcree6vxjzsgc9hqc4stg6wo5	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-07-22 17:47:29.115114-06
2pknw2oat9g43pr2r1kuvwnuamkmqd19	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-07-30 10:05:10.061337-06
cztkdvx0tbk9kxj262rmnc2fkevh0qaq	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-04-10 21:22:56.839805-06
2ngfi6ciqohrgt5rlczkjg4l4bmh4ljz	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-04-17 07:48:59.607799-06
2s4fgru7ftga58ohbxvsjs1z51a0can2	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-08-14 19:18:38.38719-06
c9jbice5h6xjpdxdgo5djp94fi03qpaf	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-04-24 13:46:02.640923-06
t9eqbitf2ko6ju1nzkutyp5sg6id1vum	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-08-19 08:10:13.311001-06
k0hldbqmsgkcehy2pk92iki22pxatcej	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-05-27 08:05:53.098959-06
4bo8jzjriq3lglpdalkaqyti6ad0m0s1	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-06-13 08:09:47.817393-06
elgg1jcmsrdfi1x9bcl0zjni0y3sfi4n	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2019-09-04 21:38:36.824295-06
opds5gcn7sabvvoxwd300kc4tnbt1r6n	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-06-17 17:59:42.735656-06
s56p765pet52g4ah55h2gi394v52trp5	OGJjNDVmMDViMGViZjNmYTE4NmNmYzY5NzkxYWUyYTY5ZTVlY2M3Mzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MzQxZWExNTU0NjM4NjRkYzJmZWYyZWVlODc4NGIwM2QyNWQ0MmRlIn0=	2019-06-25 20:56:44.63831-06
smq2oz9nbybd6sga0elbb6s3a21kr9hr	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-12-20 15:21:00.281361-07
palzruly08abmqzmfcdy279i0rkdn7bw	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-07-02 20:57:57.028726-06
ivqlqayodk3uyod5k52s8hecb4ziaigw	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-07-11 16:25:39.976239-06
gaeyp5prxebrllvm88kus5bzzn84phcb	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-12-23 20:49:43.041018-07
lr5fcdgleky0i48cviqqppaagzk3rpda	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-07-25 17:10:53.663395-06
iis15y34f14p8yfxjzm5l3z8cabohrp7	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2019-07-31 12:19:02.343091-06
sms895476lxzxn77h1zpf1eyg7neovfg	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-12-30 18:05:38.540402-07
sxq1dj6qkhu7a3rllcw7fpzpn7r8twab	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-08-19 17:58:19.741053-06
94dytcg30xjx6mum09oher8u8897te5w	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-01-04 10:05:25.629594-07
03dob2j2o35utv9sx31i9ax8tmdj0wi1	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-01-15 15:50:03.067378-07
g58c4ejfymmjjg95uprznw22y1assweb	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-01-17 09:04:28.661725-07
pu45k3w1bp30k1vns81xmovp2xluig4s	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2020-01-18 14:56:01.483687-07
0cgxj1fnbtsyvb7cqjow6379u8z4k9wp	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-01-30 16:04:47.79011-07
krwbio2mn53rd63n7gachga6oo5fdas2	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-01-31 09:47:25.879829-07
knl9o9i6u410ittr8gixcgxs8thtfkpz	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-02-03 06:51:54.395959-07
64mohchaweypneizq456vu5h9hk1lbur	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-02-18 06:59:13.501719-07
i2srx9vnz5qa7bwjqa2q40vcegojh1t4	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-03-01 20:03:13.06471-07
24p9lt0p6212jufs6e0i7jqhqp6w3cdd	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-03-17 07:04:28.486528-06
umipz63fzqjqkpb10io3vb9dsgc0mu8u	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-03-31 16:14:26.447342-06
e0j8yd2o6dvci93qka6la8sduugwvljo	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2019-06-06 12:05:02.572633-06
5abggmwtnveefijgfw9gf5snd3s34jya	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-09-05 17:04:16.477779-06
s84knru4d354wlcgyds9f2l2rxvkukcf	OGJjNDVmMDViMGViZjNmYTE4NmNmYzY5NzkxYWUyYTY5ZTVlY2M3Mzp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MzQxZWExNTU0NjM4NjRkYzJmZWYyZWVlODc4NGIwM2QyNWQ0MmRlIn0=	2019-09-27 07:52:22.670668-06
3z6uv5ikf2agno1cak6llatye34wd3eb	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-06-27 19:20:43.952495-06
1yk7equnjiu8ndnph0da6fsl9fagn6x6	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-07-03 15:40:07.71336-06
gmmqur370745216d67niwo7gxg5eglx8	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-12-24 15:53:22.131148-07
5yret96dvvhwthojtk7wp6cwevlcfw9p	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-07-11 20:44:36.902511-06
pagwzj1zdzr5q7os5h71h0g7gqjc63ct	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-01-16 09:03:48.767519-07
mxu33k5uc3vqmmgow3sfn72sprljfqex	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-07-11 20:46:46.605323-06
fsncpz8j2442e0nr40h86jxf2oq3k92q	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-01-18 16:13:59.975855-07
iof3jee8ocz4ex70glk8m8exi8fe695c	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-02-14 17:52:49.17015-07
03lbtgdqyqh0dmfkzdbtwocfha0wzf09	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-07-31 18:11:57.938902-06
zxofj0ahxb6xz2znump54iwmytmenb3x	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-02-18 09:02:32.604888-07
8yjcigss6uo7gyhdwq9muizv50vy6jlq	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-03-02 14:54:54.285488-07
tkvl3yacl1diees2umik792rpv3pvfp2	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-03-17 09:40:03.16428-06
c54tbor9pq6u9v11kv9qec8s007qu8d8	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-04-01 07:02:57.615833-06
35rnoudysrojufxv02c8kvljvsdcjwkm	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-04-13 11:17:23.655622-06
f90cpgwo2tzg9dax96iu43ksfy3bzovq	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-04-17 16:18:09.693074-06
84l5hcym0104ufjjanp9sujky1mzr46c	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-04-27 11:29:44.497873-06
u8ij1iyp1rez2d2sjs0ycndurqi6qgj1	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-05-01 10:58:02.321574-06
0nstnc3tfetiyq9rtz4ok60f5kgp5x2y	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-05-09 10:46:48.022722-06
dgxxv2jo82m6f7gpok09tudl117765g4	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-05-14 08:17:20.267302-06
j7tk6ypaa36nrcx8a37wwqowjtkz0c9h	OGMyOWJmYjNhNzM0MDY2ZGM5ZDIwODMyYjY2NzdiYjUxNzk4OTFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGYyYWIxYzI0MGViN2JmNGVkMDVmYThkODJkMjAyZWI5Mzg1MDdlMiJ9	2020-05-15 09:12:43.086887-06
ry1rwiog6fclgduq99dukjglrwgcpohd	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-05-25 12:35:47.369282-06
2tzqdhxtelnxru0hbk565kd13csumjvg	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-05-29 11:18:06.972958-06
itgz7mrinnop3rt7wozoyr6axxq5u31p	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2019-06-03 08:48:04.80471-06
9mzglobdzk05p0t1vptjdgyzbp51tbp4	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-06-15 22:11:37.037828-06
kuwjrol3n4edke6ecjwm3la9h351z9lo	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-09-05 17:43:37.850407-06
vqpgijgv0gtjcsjgff31imzws5w2k7pi	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-06-18 08:01:45.480919-06
o7sbpzawm463g7zrzxnzu9u5klkk6cqn	MDcwOWQ3NDFhZjdmZTZlOTAxY2E3ZDk2ZmZkY2YwYTZhN2VjMThhODp7Il9hdXRoX3VzZXJfaWQiOiI4IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODdmNzM5MTRiYThmODQ4ZDgzNWUwNThhZTJiYmM2ZWExM2NkMjFjIn0=	2019-07-04 17:55:49.301208-06
6w3t5cpdf0drkqnzs3gv2jjox95o9048	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2019-12-25 20:04:29.124702-07
tgqqpo2po303crm7vhmiqf1cdueoasgz	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-02-05 17:16:27.730894-07
4rvggab8g1en3cei0ya6mra73hrfrg6a	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-03-03 07:00:03.891278-07
2w4nil8bu2hcz10bbdn3ycoprnrj0igz	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-03-17 16:41:50.035628-06
lzzvrsqkhixrg99gkj5vwhq0c3lz9onw	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-04-02 14:21:50.43176-06
xkb2r0lh8328uc2d7rqrzidkc86u1oft	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-04-13 11:49:31.673515-06
ooissv1wubdrvveyfpaiqxlz9p2h6kvi	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-04-24 13:42:48.845529-06
b1a5hc0q3f1tlu0to1nzwvruhgalbrli	OGMyOWJmYjNhNzM0MDY2ZGM5ZDIwODMyYjY2NzdiYjUxNzk4OTFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGYyYWIxYzI0MGViN2JmNGVkMDVmYThkODJkMjAyZWI5Mzg1MDdlMiJ9	2020-05-08 14:37:35.515545-06
evh9dg1yy9dkz9ydzapxxzv7w20rvr67	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-05-09 11:04:53.989697-06
p42hwo6uosojpnvw7efj6nnho4s0wmp2	OGMyOWJmYjNhNzM0MDY2ZGM5ZDIwODMyYjY2NzdiYjUxNzk4OTFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGYyYWIxYzI0MGViN2JmNGVkMDVmYThkODJkMjAyZWI5Mzg1MDdlMiJ9	2020-05-13 11:48:41.586217-06
7hxlo9a9719ron504t9vz9k24vdawfj7	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-05-14 08:37:08.319187-06
fsvclhh5psbarwuokirojfaxktktn5nd	OGMyOWJmYjNhNzM0MDY2ZGM5ZDIwODMyYjY2NzdiYjUxNzk4OTFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGYyYWIxYzI0MGViN2JmNGVkMDVmYThkODJkMjAyZWI5Mzg1MDdlMiJ9	2020-05-15 10:05:36.014967-06
voazhcf5fz135ussw2pbodxmqz30j09g	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-05-24 08:38:41.205773-06
i6fw47fdxg8y0ruv8slkbl8vxabpnbox	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-05-28 14:52:14.778053-06
saw9c0800p1u5r7j62m4vsoc9q28mth6	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-06-08 20:03:55.571141-06
8uh5t9pdwq71qcd4172lcdri14o5h57p	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-06-11 15:30:25.021772-06
asni1vejszsh5h9pog081gfh9cov4d09	OGMyOWJmYjNhNzM0MDY2ZGM5ZDIwODMyYjY2NzdiYjUxNzk4OTFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGYyYWIxYzI0MGViN2JmNGVkMDVmYThkODJkMjAyZWI5Mzg1MDdlMiJ9	2020-06-15 10:36:00.380521-06
ovw5wyikjm1vk6q5lkfbh3lvqt9oo1rz	MDE3ZWMyMDJlMGZiZWZhZDdjZjlmZjdmNTQzNmVkZmIzMDQxYTM2NTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTEzM2E0MTUwZThhMjA1ODcyYTJmNzdmMGQ4NjgxNTNlMGQ5OWMyOCJ9	2019-06-18 17:01:16.904635-06
yx4o7py3g8gpe4su0u69w4tgyshbj70c	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-01-01 14:47:41.85912-07
i9eocgcrmfigrzpnljys65l1x5n1bqs8	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-03-03 09:09:33.353287-07
bcdqeg9yfhwghc166hqg33u65s8kmvvw	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-04-13 12:26:46.305676-06
u1dqppr3d4bziev6a4pz75naumez1ci0	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-04-24 13:45:21.286196-06
iq5wl8snct9x7y1whdc0ji1mfyjxzdwb	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-05-01 07:25:35.246471-06
lvudc27tgin7xrd9vnc86jdr9js8pyio	OGMyOWJmYjNhNzM0MDY2ZGM5ZDIwODMyYjY2NzdiYjUxNzk4OTFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGYyYWIxYzI0MGViN2JmNGVkMDVmYThkODJkMjAyZWI5Mzg1MDdlMiJ9	2020-05-08 14:40:58.825218-06
gw56k7jezxt2gtffzwk0np435548ekwt	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-05-11 12:11:00.789339-06
p43tj109h2qxcdwayyeikoim6tza4ba2	NzhkYjRkODI1ZjNiNzVkOTk3OWExYzRmMGU4YzI1ZTRjZDE2ODg0Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NmY1N2I5ZTg0NDc4NjY0MzkxNjVhMGE3MjlhOTUxY2E4YmI4OTE3In0=	2020-05-14 10:05:03.509557-06
o3bh3y6gbl75kbd2kk5serd8jox9rhmt	OGMyOWJmYjNhNzM0MDY2ZGM5ZDIwODMyYjY2NzdiYjUxNzk4OTFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGYyYWIxYzI0MGViN2JmNGVkMDVmYThkODJkMjAyZWI5Mzg1MDdlMiJ9	2020-05-15 09:12:12.443127-06
f4vs2cxkvoaqr8hk8jftdmk4b4uy3tyd	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-05-15 16:08:20.206521-06
rfiwa6s2uxfrwd2hjv2z9o0iqlj1xejg	OGMyOWJmYjNhNzM0MDY2ZGM5ZDIwODMyYjY2NzdiYjUxNzk4OTFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGYyYWIxYzI0MGViN2JmNGVkMDVmYThkODJkMjAyZWI5Mzg1MDdlMiJ9	2020-05-29 16:51:58.437969-06
v9im944m2ydc0bww0qat3nf7tjqrhytr	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2020-06-01 09:13:45.607465-06
nk07juyy7a01hto12xi9mkdd9217ebix	NTVkMTcwMDg1NDZjMDNiYzAwZjIxN2Q5ZTkyNjBlNTViODljNTE1Zjp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMmU3ZTdiM2I5NmRlZWI4NTljMjE0MWEzMThhMDczYzFiNDJkYzcxIn0=	2020-06-08 08:28:52.782261-06
omqon388xz5rcxfkgyw6cnbw7gzd7oro	OGMyOWJmYjNhNzM0MDY2ZGM5ZDIwODMyYjY2NzdiYjUxNzk4OTFkMTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOGYyYWIxYzI0MGViN2JmNGVkMDVmYThkODJkMjAyZWI5Mzg1MDdlMiJ9	2020-06-10 08:40:46.914287-06
ljmlxo5zyznyg23e8n4u8o241xepwvy4	MGM1ZTliMTc4ODc4MzJjY2E3NDRjNzRmODkwZjhlNTk1ODY1N2IwNTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2ZiZmYyMzZjMWJkZWNlZGExMzc2ZjE0ZjY2MDNkNjIwM2E0ZTRjMSJ9	2020-06-15 09:24:42.693501-06
6vtch8e48woa85cmfpa41ay655t0dxua	NTc4NmJlYzM1NTg2YWQwMDY0OWVmNGI1MGY5MmJiZmIxZTMwNThmMzp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzFhYjFkZTc0YjZlMGQyYTE0YzA4YTQyZTA3YTZiOGIwNmQxNGVhZSJ9	2020-06-15 15:58:49.677252-06
9yzjctortrsoibdso4vnoibdhongl5lm	ODk4M2EwYzc5YWMwZDU3M2QzMWY1ZTAzNTkzY2ZlMDI3N2E2ZTc4NTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWVkNGVmNDM5ZWM3MzBjMzI3MGUyNzcwZGE5ODI3ZGE3NDcwNmI5MyJ9	2020-08-10 15:08:09.660355-06
ele5vdzn86vdjz8jo8xql8x36oaklhok	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-06-20 20:56:13.160878-06
mea9o3bi8tutm8cak27x0ls3hzvscd2p	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2020-06-21 09:26:16.320891-06
xa4sjf7idsoj93e0blwt0sj2oy8mtqo4	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-06-22 09:09:30.326403-06
u5qgdgjxgeidxip0y0py6l3l2sxvcld7	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-06-23 11:39:48.928413-06
a0be5dzs640ahvmylfg1a538wg4xhmor	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-06-23 12:48:51.313738-06
u0xnfyeg1fdpavcqv1uszdt9gn6g00bw	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-06-23 16:47:56.303216-06
6wxj8pc1eugv1hk4rzell7otfas6zb6n	M2RkODcxNTFhMTE3M2MzNDg3ODQ3NTZlMDgzMjNiMWZlMGZlYmYwYjp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODYxZGQ0NGMxYzk5NDkwYzMyMTY1OTA2NmVkZTk4YzRlZTQ3ZjMxIn0=	2020-06-24 07:18:13.719628-06
n66vw91vw7bzox3ow5wwnuwl9ddiog1i	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-06-24 08:53:45.934395-06
oxwi7l9x3wxraxt2n0h1woq2d7svah3f	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-06-24 12:39:18.475411-06
7gt9zuqdi63w22y8vaf2raxlznqmlq4f	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-06-24 15:23:09.656843-06
1ks433bm1twwbco24mh9po11xfotcbi2	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-06-24 16:15:53.000867-06
8k1qypx9ixvbmlpjhg87pvapwbz6zwiw	ZjdmZjcyZDlmZDQxMGViMjFjODJiZGRmOWQzMmQ1ZTE0ZGNjNWNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjg2ZTQ4MjcwYmVmYTY1ZWJkZGQ4NTM3NjBiMmI3MzRkZjJhNDFjYyJ9	2020-06-26 08:15:15.175081-06
6pro17t94ift0dfbdyo4o6jeffuquej6	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2020-06-26 09:52:22.75592-06
ka31s11r7556duafj8vz7eiynag5htng	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2020-06-27 08:15:18.690617-06
o3p2bk9tnzncj460m42nf4hkvcgkuqb0	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-06-27 08:15:42.480103-06
0426pl4y9dbxvohzlgw0dxn5njx1wuid	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-06-30 07:43:18.403814-06
p0p9d2mkv3wcq7fo8xhqeunnsryzrxl8	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-06-30 15:47:24.853069-06
1izseu71qgp2tefdnm80tpzjgr3t35g5	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-01 07:42:56.759963-06
ohobp63dpwtu1owvjd9qc3rh7gytn0ew	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-03 22:29:07.064092-06
txm3mib6nno1oyzspwfe298c3r9nm6zi	ZjdmZjcyZDlmZDQxMGViMjFjODJiZGRmOWQzMmQ1ZTE0ZGNjNWNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjg2ZTQ4MjcwYmVmYTY1ZWJkZGQ4NTM3NjBiMmI3MzRkZjJhNDFjYyJ9	2020-07-05 21:49:43.021156-06
t5iyoh8ddnw46yw4yobnh3jjyh5pf4js	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-07-05 22:08:52.434295-06
r35x2fktz8k068g26xjrf42iiywtcpw4	MTQ5YzA2MjM4NGVjYzMyN2VlMDhjMTA1YzMxMTYwMDJkMDE1NjY5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjI3Y2Y2OTQ0NDA0OWI2MTM2ODdhZDU4NjFmMTAzMWI3Nzc3ZWM5OCJ9	2020-07-05 22:17:12.995533-06
tbq1sihrlghy33rfqi3r04wuwxj8ihjo	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2020-07-06 07:25:05.053755-06
4u0e1b8rrjyzgky9wvt07msptvdppdzk	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-06 14:11:30.920328-06
mxkh6mehn2w6wuf2mddwt3ui20yjyia7	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-06 18:02:18.533097-06
si7vjhounj8r03eqlf83t09via9vwgn9	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-07-07 09:51:49.236928-06
d8ket3jp5fcact38qvckp7biyxemwnx6	MTQ5YzA2MjM4NGVjYzMyN2VlMDhjMTA1YzMxMTYwMDJkMDE1NjY5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjI3Y2Y2OTQ0NDA0OWI2MTM2ODdhZDU4NjFmMTAzMWI3Nzc3ZWM5OCJ9	2020-07-07 10:00:38.715599-06
ce7z75h3ri6ok5imf9ci1a1iuz0e8x6r	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-07-07 10:35:54.68989-06
yak7iwv3hdfg1gn0fxrq50yrg0u3zsy8	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-07-07 14:00:04.745919-06
iogxjrlggd8gnjefnecjkr9g5rgswjgf	ZjdmZjcyZDlmZDQxMGViMjFjODJiZGRmOWQzMmQ1ZTE0ZGNjNWNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjg2ZTQ4MjcwYmVmYTY1ZWJkZGQ4NTM3NjBiMmI3MzRkZjJhNDFjYyJ9	2020-07-08 09:10:30.614638-06
6bvgc8xmi5kb7kt82z2et11345pi30gd	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-07-08 12:33:14.336316-06
cmelm4iizex9gfpdbc0ckqzhqvmdmxh5	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-14 08:13:43.675626-06
42dou000kmhq68fyspct7b0xshutph7e	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-07-08 15:00:17.095434-06
zl8xmrha1nwgjxdvqicy0uan5zegpkgw	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-07-09 14:12:56.182988-06
o4ov9c3ok2gekzawqm6vaoh312qn5hiw	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-11 06:59:56.583088-06
k69hrw2iafnjnax4g7fy0zkey31fofew	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-07-10 09:29:02.10324-06
g0j6ybynvgbkfptnozp4q4wsiz5n0c05	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2020-07-11 13:07:43.547823-06
q7ex04vgg81k3yfj16moauu6tkv9de5t	MTM4ZDkwODMzNTYxY2Y4NmJjOGUyM2ViNjJkNDgyMzUwYmMxNWVmYTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGZkMDgwMzlmMzkxZjYwNDRmNzI4ODc4NTZhNWJhZWYwYjE1ZTc2YyJ9	2020-07-12 21:23:52.796843-06
o7ay412222r0m2vd2hgi0191ea3dqseb	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-13 06:17:52.874048-06
gm2uahjpwsfkosims3l5w3n3s4ezu60s	MTQ5YzA2MjM4NGVjYzMyN2VlMDhjMTA1YzMxMTYwMDJkMDE1NjY5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjI3Y2Y2OTQ0NDA0OWI2MTM2ODdhZDU4NjFmMTAzMWI3Nzc3ZWM5OCJ9	2020-07-13 10:18:42.184504-06
8d1wsz7gzqgkis6kgrcaxetowrixd3kj	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-14 10:49:35.857814-06
xds4d4u6u8e4qq4ppm3wc260n3cqjae4	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-14 12:32:22.531338-06
vq849jy24dfeyrl6odgy2ronqpaytjdz	MTQ5YzA2MjM4NGVjYzMyN2VlMDhjMTA1YzMxMTYwMDJkMDE1NjY5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjI3Y2Y2OTQ0NDA0OWI2MTM2ODdhZDU4NjFmMTAzMWI3Nzc3ZWM5OCJ9	2020-07-16 15:35:37.151948-06
rollc8xsof4tid40su86ulcqu0p7b439	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-18 09:22:01.312491-06
rlg7bczczs6tgu4nisxaugnj9gmxy3ux	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-18 09:28:31.17911-06
t4gs41024rah6ol0saoa7or0qo5sm4lh	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2020-07-20 08:00:02.262718-06
m30egrsn24aylkqssczl6liajxvstniy	MTQ5YzA2MjM4NGVjYzMyN2VlMDhjMTA1YzMxMTYwMDJkMDE1NjY5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjI3Y2Y2OTQ0NDA0OWI2MTM2ODdhZDU4NjFmMTAzMWI3Nzc3ZWM5OCJ9	2020-07-21 15:21:21.173845-06
g0icr0wruveh8it2a9nfhujr4crb3bhc	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-22 12:24:44.21736-06
oqvvmvngn2azbul7d74z721j28bjwcew	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-22 13:10:37.041818-06
63wd8r0a0rxcbz6evckbhlyw38qagcxn	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-22 13:35:15.680675-06
gs5qzotj6jvueyxinscexbxxbk17gkg0	ZjdmZjcyZDlmZDQxMGViMjFjODJiZGRmOWQzMmQ1ZTE0ZGNjNWNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjg2ZTQ4MjcwYmVmYTY1ZWJkZGQ4NTM3NjBiMmI3MzRkZjJhNDFjYyJ9	2020-07-22 16:45:10.532411-06
fpfnt7h5i2uhyoiritfdwzkhwuoooodh	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-26 17:51:29.787448-06
gdai1cfrbve4xvi5sqzkja93ifycz0am	NjNiNjYyNDNkNGFlZDRhMTVjY2NiNjc0OWUyMWQ3MDIzNGU3NTczZTp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5Nzk4OGNlZjZiNzlkNzNhZTViMjZhY2U3NTViZWYwZDMwMzNiZTVjIn0=	2020-07-27 12:15:39.63676-06
jvvrri4k0hifupn3aykr463b9jqc0rvr	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-28 12:58:30.58343-06
qfa27ao8uot2r5kmr311y0p21dnd8ssg	MTQ5YzA2MjM4NGVjYzMyN2VlMDhjMTA1YzMxMTYwMDJkMDE1NjY5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjI3Y2Y2OTQ0NDA0OWI2MTM2ODdhZDU4NjFmMTAzMWI3Nzc3ZWM5OCJ9	2020-07-28 16:57:59.362088-06
o9v34viicvft2rqqfp6iy4can7fntjm3	MTQ5YzA2MjM4NGVjYzMyN2VlMDhjMTA1YzMxMTYwMDJkMDE1NjY5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjI3Y2Y2OTQ0NDA0OWI2MTM2ODdhZDU4NjFmMTAzMWI3Nzc3ZWM5OCJ9	2020-07-29 11:21:06.342952-06
u9dbvbb5juol2fssuppyqin6nbd3etgo	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-07-29 22:39:39.74739-06
kv5uop7gweu48ym924ylmlx4wazk3446	ODYzY2U4Y2ZjNWIxZWJhM2I3YjYwNTliNzEzNzdiNWY5MjA4ZWQyNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Y1MmIxYjgwMTlmYTVlYjU0YTk4ZWFiZWY5NDM2OTNiYmFkOTYwMiJ9	2020-07-31 15:55:56.003206-06
z2bqfjzxx390mw2u6ha2b5eq68d74ry7	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-11 11:49:02.799671-06
joxijgdhlf2mdxgefzb5paotakzfdvp6	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-01 12:45:33.793431-06
5rvm3b2sw9p9a2zyjvtaqfjiq3vmvbyf	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-08-11 15:29:24.799856-06
lru4b09dnnayfwze1x67za89h9be5i5j	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-03 09:09:54.409452-06
hswarirxmog9luy0rc8bf3ohdl6rvcxs	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-03 12:14:40.084452-06
unnq11d9pf6ycf8st9tjgareec92cynw	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-03 13:58:24.133479-06
qsj2dxdkfed3ygjq7rra6ix7iakyal0q	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-04 09:52:20.059858-06
1irt1qbu62sbh2o4j1fiefcosapwlhup	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-04 10:46:36.407598-06
i1g8674oeqfvjcth22q3wvfrdb17keg0	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-05 10:14:51.936959-06
py51z3z2dhw3bg0k8uau47rym7kh4lhf	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-05 21:45:00.911512-06
6il4celeuztr069arcas7cgmbw7mxi1a	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-06 10:21:19.711605-06
rly3k9ditec29237wk10bz6ihcs1njsq	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-06 21:53:18.74176-06
f394zrg6w1liy7osv8p91am3e7oas11j	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-07 11:00:26.48141-06
wpdr7k71qf756ceoij278l5q9s3uaztb	ZjdmZjcyZDlmZDQxMGViMjFjODJiZGRmOWQzMmQ1ZTE0ZGNjNWNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjg2ZTQ4MjcwYmVmYTY1ZWJkZGQ4NTM3NjBiMmI3MzRkZjJhNDFjYyJ9	2020-08-07 12:49:43.042858-06
t9u4buq07gwot67pcuv0obbvrt3jmymq	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-07 13:34:05.477472-06
undq1zvfuqssi50ug69mj70hedipzhaz	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-07 13:38:39.909067-06
arh1g6kr3vllxw7zuxy37s3590lyqkhi	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-08 14:09:08.768931-06
34uql7vwk4rrjp2zzvxyeo5ns1dn6oq6	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-08-08 16:37:30.600577-06
ob3w4bu2b23ze7q6x8xf6p0vm0wce4iv	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-09 16:36:02.358531-06
n0sufwiztlf77raaoma75mz9njlq675m	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-10 12:02:17.990502-06
pdhtr2kwcu0cgw25ojjj9yvrujy3oume	ODk4M2EwYzc5YWMwZDU3M2QzMWY1ZTAzNTkzY2ZlMDI3N2E2ZTc4NTp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYWVkNGVmNDM5ZWM3MzBjMzI3MGUyNzcwZGE5ODI3ZGE3NDcwNmI5MyJ9	2020-08-10 15:06:02.535808-06
icxhfius10r7q3domgnbljqlc0tpxy8s	MDExNDRkYTFhMGY0Mjg0YTNlMzkzODk0NzYwNjllNTMxYzY5OWFjZjp7Il9hdXRoX3VzZXJfaWQiOiIxOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTljNjgzYTY0N2M3YzBkODVmYjUxZjRlYjU1OWU0NmY2ZmRiNmNmNiJ9	2020-08-10 15:06:19.664988-06
6vpdjv4z7shdm0jggq83uamxmg7wdai6	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-11 15:45:42.123825-06
xgnzp50vezk2rhlqgrvwvzjdr0w73w3z	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-11 22:30:02.008506-06
4fn1mpnhtq8wx0mqvsqm9fjks4zda80k	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-11 22:33:22.581357-06
ow2gim6f9r01kdect906hqtzto04lm5e	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-14 07:05:56.094256-06
mfp20tckgpnrklio3amobqy9oln6e7fs	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-12 08:06:25.321484-06
eyxxje1nxxzngdsjk2ruuidkdvo908xr	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-13 07:09:37.074348-06
1ago2si6bfrh1vfgw9qvzmnlby0zuyq8	MTQ5YzA2MjM4NGVjYzMyN2VlMDhjMTA1YzMxMTYwMDJkMDE1NjY5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjI3Y2Y2OTQ0NDA0OWI2MTM2ODdhZDU4NjFmMTAzMWI3Nzc3ZWM5OCJ9	2020-08-13 16:33:14.386971-06
no5yoehhcugcwmdjoqu0rcc0ogajyjna	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-17 10:08:33.42666-06
e3qa3sqxm9b8z22rqz651d9mbk6i5cj1	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-17 13:03:49.04294-06
6lmoie50ftroeb9noxi1tgtyudypi181	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-18 08:53:17.708314-06
l5gs7sr4y2zbj2dd8rj6yd5p0frel3d4	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-19 09:19:42.648138-06
gt0iuh3rrp475kaigndomkpcc7qahnzg	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-20 08:53:14.952185-06
7gs9u53s5pv0itfyal9lr5e5ru54b3vc	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-20 15:26:26.788748-06
equy1o877chb1uk84vgjiw92k6mpi0zi	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-20 15:28:52.055726-06
79nvicos70mk8se71su41ogt622lx3un	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-21 08:48:26.453801-06
qd3taacz1wscwnkes4fi4z9wfrf51z13	ZjdmZjcyZDlmZDQxMGViMjFjODJiZGRmOWQzMmQ1ZTE0ZGNjNWNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjg2ZTQ4MjcwYmVmYTY1ZWJkZGQ4NTM3NjBiMmI3MzRkZjJhNDFjYyJ9	2020-08-21 17:07:17.480482-06
tix9g8yw4vxuj7fjvd36cykur6rd131l	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-22 23:20:28.396564-06
5y1j006fjdy1cilh8ve1jnkoc5wm0322	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-08-24 09:14:01.967282-06
7csbpt4qazio94jyhhzl53x1ww33yvut	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-24 11:10:37.54271-06
037hvgc65q6hrsea5wwqew05shka6rp2	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-25 10:13:27.157917-06
cl543mbb9m646kzzsqlesrshwpgi7o1g	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-25 12:10:59.364794-06
1paympj2is6g9yirio13ntqm5991dfn0	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-25 13:05:34.631691-06
20gfw4rqyszv3fpxf6fi4k3aqr0r5ivx	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-25 13:20:33.768774-06
3zfy3ybt1ppw05vi9w4jeqagvjjz8t08	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-08-25 19:29:13.113747-06
tz9bi0accykl5x054u1siop46p0e7qst	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-26 09:02:26.440849-06
9tzfom69kdep8n2f87x1p6h165tsafov	M2RkODcxNTFhMTE3M2MzNDg3ODQ3NTZlMDgzMjNiMWZlMGZlYmYwYjp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkODYxZGQ0NGMxYzk5NDkwYzMyMTY1OTA2NmVkZTk4YzRlZTQ3ZjMxIn0=	2020-08-26 10:21:05.282381-06
ivjpm6226bpxrp2lwp92chcoyi7epu4p	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-26 10:39:53.275177-06
vsbx9ygk7pooz9c5r88voiir5bpylsjo	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-26 10:46:21.59544-06
h5he43yutyrhue1vubawr3yk869ma479	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-27 12:54:31.950117-06
azaoukdaovhyrsucyanvenrjmmu777po	ZjdmZjcyZDlmZDQxMGViMjFjODJiZGRmOWQzMmQ1ZTE0ZGNjNWNiMjp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjg2ZTQ4MjcwYmVmYTY1ZWJkZGQ4NTM3NjBiMmI3MzRkZjJhNDFjYyJ9	2020-08-27 16:55:11.249227-06
kzkvxyfu64a6w9h0ra3i4tfn57x96pwf	MTQ5YzA2MjM4NGVjYzMyN2VlMDhjMTA1YzMxMTYwMDJkMDE1NjY5MTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYjI3Y2Y2OTQ0NDA0OWI2MTM2ODdhZDU4NjFmMTAzMWI3Nzc3ZWM5OCJ9	2020-08-27 16:56:17.721694-06
jagok33erdcssl1jvraoks3t2uuyp3eq	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-09-10 07:25:07.020637-06
8tfb4xg2uq0tto37zuvfd42a6gqb59lh	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-28 07:16:49.288658-06
tp99b7ekmofgp3gzg11aob77713751lw	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-28 13:52:22.577039-06
e0tk2lzvhmjjj3fi96d14oml6gmc16y5	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-28 15:56:10.639811-06
vdw0t8l9q8bvlqtioszfmwqc4y3hn6j8	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-29 11:11:53.9713-06
3ubl614pgwevaum1wg36hrjorwu4792y	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-30 19:26:54.013439-06
w4b240dzm9pvnmzqjyoplzkjbuuap9wa	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-08-31 12:13:29.336623-06
qkk11l40jq8ec24fphhybzy5ka3bsj1g	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-08-31 13:10:11.226513-06
lji9bcg5jpjy1jy3r049fl4ji3xt0mji	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-09-01 08:56:52.196244-06
qf5y776k14uy06ai2t5rpw4ucehaiec0	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-09-02 09:38:47.88832-06
ejrso5fdk8c520mxbrvz6maw7h6jxlj4	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-09-04 08:32:08.944588-06
tkq61horzq14zvonantubleb9fr6aofh	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-09-07 12:50:04.397129-06
x3fqhyqzcipjbgornn8rzffs2ouze4n6	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-09-08 08:18:57.829054-06
us3vnc5tzuo9sbkc6m80udyudqtg5ijh	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-09-09 12:08:16.988771-06
tvdeler1eozs9llbpz659p1mtovlhi82	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-09-10 07:37:41.303224-06
nh089eyc6dyca55blbwh97xruqn88ojq	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-09-11 13:37:06.471556-06
3janzu3ubkk46td8bt4wciwcf8chstqt	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-09-16 10:10:44.987177-06
2l6kdbx1111czwbldqiusbn0xthnl8mk	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-09-18 09:53:22.304576-06
juvl61awspxwn510fnrljrtpj8uqr98l	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-09-18 09:57:47.014388-06
f8cwe4r2f293xvndo9rutuhpr6b0176w	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-09-19 11:02:47.900147-06
3jh47ngxmxeda6ohdev9kdlpw7oy4ewz	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-09-21 15:57:08.242966-06
7frlntutlmd8j6q48965oo8kju0bfjye	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-09-22 07:11:06.255382-06
c15dlqfy0lkx44b3bezjqm57grxqfe45	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-09-22 08:19:16.189325-06
xl63hp771anodd7d3zxbb221ha80kadj	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-09-30 07:22:00.014723-06
ru3naxcfk1782oapb8opoi7nr3uvjjbz	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-09-26 08:31:10.429841-06
a7h8nunh3sf88g172vp8mz95w154buol	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-09-28 09:10:23.440378-06
275qgjb6ipwlpi4dbi18iyn39p7ehzk6	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-09-28 14:49:23.070487-06
ost9xvxknct0ot49dpe9rf5jmleebfps	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-09-30 10:18:52.292233-06
kaunxvgqd43hrsv58rmvftkur15gc5b2	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-10-02 10:50:36.146955-06
qxs7ow523p9c4dcsxrtcx0og1ds4gzwk	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-10-05 07:43:53.021904-06
5lfpn2rnd08iwviqjd5npkp6rm9yh0wk	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-10-06 10:35:02.857052-06
xapq54mfelrx0ut88i2z4r5924niis4i	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-10-08 08:28:42.957123-06
0jiv3yguj94u6vfu95anq74qzdwqtsjm	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-10-13 19:44:35.472362-06
lq0wjssoy6enyixt4j5tp9kc75ouz1wx	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-10-14 06:30:51.837916-06
mx63253zt0cnqenvuuq28fwml9h6olqx	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-10-14 07:25:47.592384-06
09bt28p2yiv0ucw0pjhi6fq6rpgn6g82	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-10-15 08:52:50.63047-06
9g1b64uu2a03r0ollo9fgr7cirkyzu9j	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-10-16 18:26:00.257388-06
sdig0avjd8pdth9xdbjv7ie4po6zzn9i	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-10-16 22:11:05.839836-06
jbc8nz0i0qvmlgejqpvfamrhhcaqilnb	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-10-16 22:11:54.851933-06
ycxpg2a3xgtopqwp9ry2kzm436lhk373	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-10-18 21:53:11.464734-06
pvqcl9dviok408veix819zqi1vdnmhi6	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-10-19 08:22:21.155892-06
m3a1shvb832m2zdcaaqy1kxxe4jvyc9p	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-10-19 08:32:44.135556-06
l1avynppbz2ribhajrl9s44lv77yvq8m	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-10-20 11:00:26.480254-06
4v4tltx6y5z9kh8aows3hg6hy23ac47l	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-10-20 11:06:49.305131-06
ieh0q2xrf0uym3u3fsmcoifukajhvb7r	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-10-22 09:26:36.470348-06
zrwmu8d8ujwtvdg38jjmhr70wtqwwhxz	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-10-23 07:49:53.513762-06
tlkcc0sbh1zdx0raih0exmz1mmvmerc4	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-10-24 19:27:31.493823-06
vxio26z7hxh9x7xhcjwy52coqyw3rtgf	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-10-27 12:52:21.555834-06
kyie80ju6kyc7mwlh7cyyg9bk42aosst	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-10-29 07:28:06.500593-06
2rz9q16y80zia5zm0xuvll5s6eldttbm	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-11-01 21:22:14.328219-07
5407dut6rwy7mwckz47doeokvmzozd8f	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-11-02 07:59:17.3681-07
ya21g2em31qis9b7irnzi1bahgclwhj2	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-11-02 19:06:22.904016-07
7d24sbjm4euca5kkcq0ohru4wnogxxhv	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-11-05 10:38:25.245174-07
32fdopxoej8ad7wa497kdhr7vzmk0l1z	NDM1NGMyMDZkMjgwMGMxYTkxZGJjNzNkNDhjYjBiMTdiNTA1ZDY3Njp7Il9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNTMwYjFlZWNiNDNkYzE3Mzc1NjE5NjQ1MWVjNTlkNjYzYmMwNDA2In0=	2020-11-06 12:53:06.789783-07
xtdjpjb1mo6x12e6u9qrk1jzxebyz12t	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-11-09 08:21:05.837457-07
2ekjelrxqox9xj5s470w15tvvwj4cadp	YjA1OTU1YjA4ZjQ1MWZiYTlmOTFjZDY1MGYyOTkxOTA2NGI1ODNiNjp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTIzM2QwYTkwN2ZmZjFhMmRhODBiOGQ4MDMzN2MwMDZkYmEyY2RhMSJ9	2020-11-09 09:29:21.188897-07
ii9c24lbrob75sejryhm99w1j7qtlmvg	MjA0MWJlNTZlZTVhMDU5NzdkNjBmMWE3ZWMyOTY4YjRmZmQ4MDE3ZDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2YzJhODUwOTlhMDZkNDc0YzAzY2I4NWM3M2MyYjMwZmIxZjU1MDlkIn0=	2020-11-10 12:26:06.53814-07
cxw0wf83hibkt2lxe4sm68z6sqg7ehcj	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-11-10 14:12:24.915418-07
jaazrxx2rlt8ec73vx3nhl0ptu63l76j	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-11-19 14:02:54.04638-07
tfxzobejjs5l0769g50o5ng0wkyh2897	MzZjNjAxNTA1YWM1NDUyN2FlYjBkODAzMzY0NDg2MjdmNzJjNTk3MDp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTVlMzhhOGNmYmNhMTJmZTYzODE4ZWYyNGY4ZGRjOGZiMzYyZjQ1OSJ9	2020-11-20 12:38:13.247107-07
w86fdd1p1s78l8s73qfwy1d6seqy97wr	.eJxVjDsOwjAQBe_iGlnrT7yGkj5niHbtFQ4gW4qTCnF3iJQC2jcz76Um2tYybV2Wac7qoiyo0-_IlB5Sd5LvVG9Np1bXZWa9K_qgXY8ty_N6uH8HhXr51pSti14QAyJ7FkvJMA1AYJyg89khOAwJDIOPkU3ymSNDEEPmjIN6fwD6-DeE:1loXVS:RndnoE9QCAjkd5c-F1qJ9D3Jplp6QHM2tcOnQffW3N0	2021-06-16 14:30:26.244452-06
jbpzjyb6he4j83iixgw5ao94atynh450	.eJxVjDsOwjAQBe_iGlnrT7yGkj5niHbtFQ4gW4qTCnF3iJQC2jcz76Um2tYybV2Wac7qoiyo0-_IlB5Sd5LvVG9Np1bXZWa9K_qgXY8ty_N6uH8HhXr51pSti14QAyJ7FkvJMA1AYJyg89khOAwJDIOPkU3ymSNDEEPmjIN6fwD6-DeE:1lphst:TI8QjYVlBnlFtvN0jbDq2HRQ7Lps1s3bWJd9RqXqaW0	2021-06-19 19:47:27.047133-06
emn5pghln2eilis42prr5pw3sivgwy8k	.eJxVjDsOwjAQBe_iGlnrT7yGkj5niHbtFQ4gW4qTCnF3iJQC2jcz76Um2tYybV2Wac7qoiyo0-_IlB5Sd5LvVG9Np1bXZWa9K_qgXY8ty_N6uH8HhXr51pSti14QAyJ7FkvJMA1AYJyg89khOAwJDIOPkU3ymSNDEEPmjIN6fwD6-DeE:1lvPvQ:CLZcW33LYpTseXAedLRiu1XRHpw2RRsA8tCXzPWgD7E	2021-07-05 13:49:40.355562-06
a48oin1k1rp7mcr3lebbc7lesi2im9bf	.eJxVjDsOwjAQBe_iGlnrT7yGkj5niHbtFQ4gW4qTCnF3iJQC2jcz76Um2tYybV2Wac7qoiyo0-_IlB5Sd5LvVG9Np1bXZWa9K_qgXY8ty_N6uH8HhXr51pSti14QAyJ7FkvJMA1AYJyg89khOAwJDIOPkU3ymSNDEEPmjIN6fwD6-DeE:1m0tIt:ArF5sxNe1r9IolzQNLxNXxvBi7ykfpVkiQvdfiA3VGo	2021-07-20 16:12:31.108392-06
vqei0nngm6k8thxfciymhulwqdhekpg7	.eJxVjDsOwjAQBe_iGlnrT7yGkj5niHbtFQ4gW4qTCnF3iJQC2jcz76Um2tYybV2Wac7qoiyo0-_IlB5Sd5LvVG9Np1bXZWa9K_qgXY8ty_N6uH8HhXr51pSti14QAyJ7FkvJMA1AYJyg89khOAwJDIOPkU3ymSNDEEPmjIN6fwD6-DeE:1m0uXw:8Xf53gB6_3Bmf1os7s0bl39WZ6THZKiHTe784RKvkl0	2021-07-20 17:32:08.675611-06
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: entries_todo; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.entries_todo (id, description, user_id, completed, priority) FROM stdin;
1	test	4	t	3
5	Plot function	5	t	1
6	Update for BP1069, BP1070	5	t	2
2	Test display board	6	t	1
78	Motor set up	3	t	2
159	In the MRP system go to this link https://emus-mrp.herokuapp.com/mrp/parts/45/ .  This is an example only.\r\n\r\nThe 'Engimusing Part Number' needs to be a link whenever you are in a view like this. The link should cause a view to open with all the part information displayed.  I would like it to work the same as Digi-Key. Go to https://www.digikey.com/products/en/audio-products/alarms-buzzers-and-sirens/157?stock=1&rohs=1 and click a Digi-Key part number and it renders a view of the part information. I don't want it to look like Digi-Key's but just show a view of all the part information.	10	t	3
38	Find missing element BP1057	5	t	1
44	MOD0 Trusted Download Icons	5	t	2
39	Fix trusted download for MOD0	5	t	2
40	Check all MOD0 arrays for coded data fix	5	t	3
7	Sparing analysis	5	t	4
47	Sync firmware files	5	t	1
160	Fix the project summary	10	t	1
48	Task list for TI-08	5	t	2
50	Sparing analysis	5	t	3
41	TI-08 DFT code	5	t	3
52	DFT LabView Code	5	t	2
49	CNC programming	5	t	4
43	Phase and Magnitude plots	5	t	5
51	MAP Auditing Function	5	t	1
45	TI-08-04 attenuator	5	t	8
42	Consolidated plot file	5	t	5
161	Add a search box to the "Part Lookup" page that finds parts based on the Engimusing part number. Have it work like the search box on this page: https://emus-mrp.herokuapp.com/mrp/parts/73/	10	t	1
53	Bar code Add Part has stopped working	4	t	1
54	Disallow duplicate parts to be created	4	t	1
55	Add check box to keep users out of the payroll csv	4	t	1
56	Increase size of to do list description	4	t	1
58	Parts look up without barcodes by various methods	4	t	1
64	Fix create/edit product so more than 1 part	4	t	1
60	Products in products should be listed as a part	4	t	1
59	When a product is listed URL should be a link	4	t	1
62	MOs should have date created and MO number	4	t	1
61	Adding parts to products needs more methods	4	t	1
57	Add unique activities list to project summary	4	t	1
68	list filters	4	t	1
66	change part search on list view	4	t	1
85	Verify Shop controller pinout in the sketch	3	t	1
65	consolidate user hours view	4	t	1
69	make quick add type	4	t	1
71	product number	4	t	1
70	parts to order column in MO	4	t	1
67	test adding parts with integer removed	4	t	1
75	split up bigger parts	4	t	1
74	add api form validation for mouser and partnumber	4	t	1
197	\r\nThe next thing I need done is to change the part lookup page to increase usability. The drop down menu that contains: Digi-Key, Mouser, and Emus needs to be eliminated. Please add a look up button for each of the input boxes.	10	t	1
79	Milling machine stand	3	t	3
77	Arduino tutorials - 1 hour per day	3	t	1
95	For the https://emus-mrp.herokuapp.com/project/ page:     a) Add a button to make a project inactive     b) Have a column that shows all the users that are assigned to the project	10	t	3
88	The time entry "Start Time" date box needs to have the current days date in it when it is refreshed or when it is first opened in a browser.	10	t	1
108	Write a procedure for setting up a local development repository including a test database.	10	t	1
96	Editing a ToDo list entry gets an exception - please fix	10	t	1
107	Fix user permissions	10	t	2
81	Leak detector testing	3	t	4
80	List of PVC trim boards needed	3	t	3
94	For the https://emus-mrp.herokuapp.com/project/inactive page add a button to activate the project.	10	t	3
89	For https://emus-mrp.herokuapp.com/todo/create/ the "Description" box needs to be 5 times as wide and multiple lines long.	10	t	2
97	When a to do entry is added, edited, or deleted the view should change to the to-do list.	10	t	4
91	On the https://emus-mrp.herokuapp.com/todo/list/ add a button on each line to show the task completed. Have it so clicking the button will do it and not require a save click later	10	t	4
204	Threaded inserts for casters and mounts on mobile bases	3	t	6
202	Take out cabinet screws - replace with square drive wood screws in planer mobile base	3	t	5
198	Buy cheap blinds for the front windows in the shop	7	t	1
210	Drum sander dust collection - pipe and 90 degree above handle?	3	f	3
207	Cut 3 shelves 3/4"	3	t	4
104	Fix the crash that happens when you enter a todo item for someone else. 	10	t	2
121	fix broken completed todo button	10	t	1
109	Improve security so that users will be redirected to login if they try to bypass it by typing in "time" or "mrp"	10	t	4
127	Fix sweep dock boards.	3	t	2
128	Design a mount for the display boards to install them on the shelves. We need to print one and then I'll check it at Harris and then we can build 6 of them.	11	t	2
147	Move two empty file cabinets to attic - with Tate	11	t	5
137	Fix refresh token so it doesn't expire immediately.	10	t	1
143	Make a list of permissions in each category that you think can be consolidated. I will then go over the list and when we agree I will have you consolidate the permissions.	10	t	1
126	Increase the size of the TODO box, it is still too small.	10	t	2
152	Move stuff from basement - with Tate	11	t	4
146	Empty dust collector - show Tate	11	t	11
199	Paint the green outlets and outlet covers	7	t	2
98	For https://emus-mrp.herokuapp.com/mrp/digikey/enter/ put EFM32WG840F256-QFN64 in the "Digi-Key Part Number" box and click "Lookup".    and it will say "Manufacturer Part Number already exists". Now go to "Parts" -> "List" in the menu and then go down on the page and    click on "Embedded - Microcontrollers". The top entry should be for EFM32WG840F256-QFN64. Scroll all the way to the right and click on    "Edit" you will see https://emus-mrp.herokuapp.com/mrp/part/edit/30/110 for the URL. Modify the software so that it goes to the same place that "Edit" still with the yellow bar with "Manufacturer Part Number already exists" above it.	10	t	5
140	Make activities box bigger and able to hold more text.	10	t	2
145	Move boxes from the attic, blow off the dirt, stack on back porch - with Tate	11	t	6
162	Add a lookup box that will list all the parts at a location. For example, if you type in RC002 it should list every part at that location.	10	t	1
153	Put sander on stand - with Tate	11	t	9
144	Put casters on the table behind the table saw - with Tate	11	t	8
164	Create a report I can run like the weekly payroll report. Call it 'Invoice Report'. Have it read everyones time sheet and pull off any time entries that start with 'CCE'. Right now this will generally only be me and Jason but have it check everyone.\r\n\r\nIt needs to be in this format:\r\nName:\r\nHours<TAB>Project and Activities\r\nName:\r\nHours<TAB>Project and Activities\r\n...\r\n\r\nThe hours need to be in decimal format rounded to 0.1 hours.\r\n\r\nSave it to a file called invoice_report.txt	10	t	1
135	Watch this video with Jacob  https://www.youtube.com/watch?v=0F3iDMoGpGw	3	t	3
158	Put the size of the time entry description back to where it was.	10	t	2
151	Weed trimming	13	t	5
208	Put up blinds	3	t	1
206	Cut green pipe for wires and mount	3	t	2
203	Drill mounting holes on jointer, planer, and bandsaw	3	t	6
205	Sand mounts and fill holes	3	t	7
213	Watch Stock videos	20	t	3
214	Get familiar with tda-api code and documentation.	20	t	3
\.


--
-- Data for Name: manager_profile; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.manager_profile (id, ssn, title, user_id, payroll, payroll_name, health_insurance, hourly, salaried) FROM stdin;
2	2187	Intern	4	t	blahblahblah	0.00	f	t
6	0517		8	t	blahblahblah	0.00	f	t
1	6025	Technician	3	t	blahblahblah	0.00	f	t
3	1713	super	5	f	blahblahblah	0.00	f	t
5	8953	Admin	7	f	blahblahblah	0.00	f	t
4	2829	Engineer	6	f	blahblahblah	0.00	f	t
7	2758		9	t	blahblahblah	0.00	f	t
8	9003		10	t	blahblahblah	0.00	f	t
9	7829		11	t	blahblahblah	0.00	f	t
11	8813		13	t	blahblahblah	0.00	f	t
12	5752	Engineer	14	t	blahblahblah	0.00	f	t
13	4739		15	t	blahblahblah	0.00	f	t
14	6045	Software Developer	17	t	blahblahblah	0.00	f	t
15	1683	Intern	18	t	blahblahblah	0.00	f	t
16	8036	Intern	19	t	blahblahblah	0.00	f	t
18	7646	Software Developer	20	t	Megan	115.39	f	t
\.


--
-- Data for Name: timepiece_entry; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.timepiece_entry (id, start_time, end_time, activities, date_updated, hours, project_id, user_id, "end") FROM stdin;
621	2018-12-05 14:30:00-07	2018-12-05 15:30:00-07	Reprogramming Torque controller boards.	2018-12-06 09:35:42.908103-07	1.00000	38	3	\N
342	2018-11-08 07:15:00-07	2018-11-08 08:30:00-07	Prepare for first manual mapping	2018-11-08 11:04:15.841689-07	1.25000	3	5	08:30:00
346	2018-11-08 11:45:28-07	2018-11-08 12:34:00-07	edit project create view	2018-11-08 12:34:51.659408-07	0.80889	31	4	12:34:00
347	2018-11-08 12:30:00-07	2018-11-08 13:00:00-07	Bad standoffs	2018-11-08 13:22:55.003716-07	0.50000	81	5	13:00:00
629	2018-12-06 12:00:00-07	2018-12-06 13:30:00-07	banking	2018-12-06 16:13:03.242498-07	1.50000	40	7	13:30:00
1428	2019-03-20 12:45:00-06	2019-03-20 13:30:00-06	BP1073 evaluation	2019-03-20 13:33:32.672471-06	0.75000	87	5	13:30:00
355	2018-11-09 08:30:00-07	2018-11-09 13:45:00-07	Element Inventory	2018-11-09 13:46:55.983558-07	5.25000	81	5	13:45:00
350	2018-11-08 14:10:00-07	2018-11-08 16:15:00-07	assembly	2018-11-08 16:13:45.65323-07	2.08333	29	7	16:15:00
349	2018-11-08 13:30:00-07	2018-11-08 17:15:00-07	Automate interim process	2018-11-08 17:09:47.702197-07	3.75000	3	5	17:15:00
351	2018-11-08 14:38:39-07	2018-11-08 17:50:14-07	work on project edit view	2018-11-08 17:52:19.801315-07	3.19306	31	4	\N
2	2018-10-01 08:45:00-06	2018-10-01 14:20:30-06	delete extra stuff	2018-10-03 12:39:04.309539-06	5.59167	31	4	\N
3	2018-10-02 12:00:12-06	2018-10-02 13:30:40-06	researching code	2018-10-03 12:40:00.103569-06	1.50778	32	4	\N
4	2018-09-29 12:40:07-06	2018-09-29 15:14:21-06	test	2018-10-03 12:40:34.258261-06	2.57056	32	4	\N
352	2018-11-07 18:45:00-07	2018-11-07 21:30:00-07	copy sweep files	2018-11-09 06:02:28.017856-07	2.75000	3	5	21:30:00
353	2018-11-08 17:45:00-07	2018-11-08 21:30:00-07	Copy sweep files to nose	2018-11-09 06:03:31.259641-07	3.75000	3	5	21:30:00
356	2018-11-09 09:27:26-07	2018-11-09 13:50:00-07	assembly	2018-11-09 13:51:09.724249-07	4.37611	29	7	13:50:00
358	2018-11-09 13:45:00-07	2018-11-09 15:45:00-07	Legacy spreadsheet for verification	2018-11-09 15:40:07.817631-07	2.00000	3	5	15:45:00
359	2018-11-10 08:00:00-07	2018-11-10 09:00:00-07	Shelf carrier holders	2018-11-10 10:27:15.598819-07	1.00000	1	5	09:00:00
360	2018-11-10 10:30:00-07	2018-11-10 14:00:00-07	organizing	2018-11-10 15:35:44.800355-07	3.50000	28	7	14:00:00
361	2018-11-10 14:00:00-07	2018-11-10 16:00:00-07	Shelf carrier holders	2018-11-10 17:02:35.701443-07	2.00000	1	5	16:00:00
362	2018-11-11 07:00:00-07	2018-11-11 08:30:00-07	Looking into compiler error. Build script	2018-11-11 09:36:06.186228-07	1.50000	36	6	08:30:00
357	2018-11-09 10:38:31-07	2018-11-09 15:00:00-07	changing todo list and improving time app	2018-11-11 21:29:48.74667-07	4.35806	31	4	\N
635	2018-12-07 06:55:00-07	2018-12-07 09:30:00-07	Installing cable boards on aluminum plates.	2018-12-07 10:15:59.397472-07	2.58333	1	3	\N
364	2018-11-12 07:30:00-07	2018-11-12 08:00:00-07	Status meeting	2018-11-12 08:01:45.632418-07	0.50000	21	5	08:00:00
366	2018-11-12 10:00:00-07	2018-11-12 10:15:00-07	BP1059	2018-11-12 10:14:24.340175-07	0.25000	41	5	10:15:00
367	2018-11-12 10:15:00-07	2018-11-12 10:30:00-07	Legacy spreadsheet for verification	2018-11-12 10:33:32.963174-07	0.25000	3	5	10:30:00
368	2018-11-12 10:30:00-07	2018-11-12 10:45:00-07	Status meeting	2018-11-12 10:34:44.582213-07	0.25000	34	5	10:45:00
369	2018-11-12 08:00:00-07	2018-11-12 11:40:00-07	assembly	2018-11-12 11:41:55.594771-07	3.66667	29	7	11:40:00
637	2018-12-07 10:16:20-07	2018-12-07 15:34:19-07	Installing cable boards on aluminum plates.	2018-12-07 15:34:23.807899-07	5.29972	1	3	\N
371	2018-11-12 12:30:00-07	2018-11-12 12:45:00-07	banking	2018-11-12 12:37:18.466951-07	0.25000	40	7	12:45:00
363	2018-11-12 07:00:00-07	2018-11-12 14:20:00-07	Inspection/board building	2018-11-12 14:19:58.347956-07	7.33333	1	8	14:20:00
641	2018-12-08 12:00:00-07	2018-12-08 13:00:00-07	errands	2018-12-08 14:18:54.033802-07	1.00000	40	7	13:00:00
372	2018-11-12 12:00:00-07	2018-11-12 15:00:00-07	Verification of maps	2018-11-12 14:47:13.653392-07	3.00000	81	5	14:45:00
375	2018-11-12 15:00:00-07	2018-11-12 16:15:00-07	Thames upgrade	2018-11-12 16:21:03.904381-07	1.25000	77	5	16:15:00
374	2018-11-12 15:25:28-07	2018-11-12 17:55:00-07	making improvements to clockin	2018-11-12 20:58:16.627504-07	2.49222	31	4	\N
644	2018-12-10 06:50:00-07	2018-12-10 15:00:00-07	Drilling Aluminum plates.	2018-12-11 06:59:51.242131-07	8.16667	1	3	\N
377	2018-11-12 20:15:00-07	2018-11-12 22:00:00-07	changing end time	2018-11-12 21:59:20.392485-07	1.75000	31	4	\N
651	2018-12-11 08:30:00-07	2018-12-11 11:00:00-07	BP1060 & BP1061	2018-12-11 10:58:16.784957-07	2.50000	41	5	11:00:00
392	2018-11-14 06:55:15-07	2018-11-14 17:03:50-07	Testing, Repairing boards.	2018-11-19 12:07:25.114555-07	10.14306	2	3	\N
376	2018-11-12 16:15:00-07	2018-11-12 22:45:00-07	Data capture with Chris	2018-11-13 07:54:47.200749-07	6.50000	34	5	\N
379	2018-11-13 07:30:00-07	2018-11-13 07:45:00-07	Status	2018-11-13 07:56:14.340262-07	0.25000	34	5	\N
381	2018-11-13 07:45:00-07	2018-11-13 08:15:00-07	Cable issues	2018-11-13 10:23:05.475306-07	0.50000	80	5	\N
382	2018-11-13 08:15:00-07	2018-11-13 10:15:00-07	Remap BP1069	2018-11-13 10:26:06.253421-07	2.00000	81	5	\N
378	2018-11-13 06:00:00-07	2018-11-13 11:15:00-07	Inspection/board building	2018-11-13 12:16:23.171052-07	5.25000	1	8	\N
655	2018-12-11 14:30:00-07	2018-12-11 16:15:00-07	Capacitance bug fix	2018-12-11 16:13:53.456918-07	1.75000	2	5	16:15:00
660	2018-12-12 09:15:00-07	2018-12-12 10:00:00-07	CDs BP1062 ,BP1064	2018-12-12 10:06:55.706103-07	0.75000	41	5	10:00:00
387	2018-11-13 12:30:00-07	2018-11-13 13:30:00-07	Remap BP1070	2018-11-13 13:29:28.170651-07	1.00000	81	5	\N
664	2018-12-12 12:45:00-07	2018-12-12 16:15:00-07	Sorting swap data	2018-12-12 16:25:27.11831-07	3.50000	2	5	16:15:00
383	2018-11-13 12:15:00-07	2018-11-13 14:30:00-07	Inspection/board building	2018-11-13 14:28:15.159643-07	2.25000	1	8	\N
386	2018-11-13 12:30:00-07	2018-11-13 14:30:00-07	assembly, banking	2018-11-13 14:33:48.115135-07	2.00000	29	7	\N
389	2018-11-13 13:30:00-07	2018-11-13 15:00:00-07	System design	2018-11-13 14:59:48.230822-07	1.50000	34	5	\N
390	2018-11-13 15:00:00-07	2018-11-13 16:00:00-07	Trusted Download	2018-11-13 15:52:31.314751-07	1.00000	22	5	\N
388	2018-11-13 13:54:31-07	2018-11-13 19:00:00-07	creating time check for redirects	2018-11-13 20:17:30.389645-07	5.09139	33	4	\N
391	2018-11-13 19:00:00-07	2018-11-13 20:00:00-07	Cut wood	2018-11-13 20:55:38.983205-07	1.00000	1	5	\N
669	2018-12-13 08:15:00-07	2018-12-13 09:30:00-07	Comment resolution	2018-12-13 09:32:36.133383-07	1.25000	88	5	09:30:00
394	2018-11-14 07:30:00-07	2018-11-14 07:45:00-07	Status meeting	2018-11-14 08:50:08.285453-07	0.25000	21	5	\N
395	2018-11-14 07:45:00-07	2018-11-14 09:00:00-07	BP1055	2018-11-14 08:54:20.718204-07	1.25000	41	5	\N
393	2018-11-14 08:16:34-07	2018-11-14 10:03:00-07	assembly	2018-11-14 10:03:59.043425-07	1.77389	29	7	\N
398	2018-11-14 09:45:00-07	2018-11-14 11:00:00-07	Excel Map File	2018-11-14 10:55:39.918547-07	1.25000	3	5	\N
676	2018-12-13 08:45:00-07	2018-12-13 09:45:00-07	assembly	2018-12-13 13:39:06.188889-07	1.00000	29	7	09:45:00
396	2018-11-14 09:32:00-07	2018-11-14 10:50:44-07	researching printers	2018-11-14 11:02:19.419324-07	1.31222	22	4	\N
399	2018-11-14 10:50:45-07	2018-11-14 12:39:31-07	working on model for parts	2018-11-14 12:39:33.497513-07	1.81278	32	4	\N
674	2018-12-13 13:30:00-07	2018-12-13 14:15:00-07	Duplicate test files	2018-12-13 14:21:11.498904-07	0.75000	3	5	14:15:00
400	2018-11-14 13:00:00-07	2018-11-14 14:35:00-07	banking, paper work	2018-11-14 14:35:58.913303-07	1.58333	40	7	\N
680	2018-12-14 06:15:00-07	2018-12-14 08:00:00-07	GUI map array	2018-12-14 08:25:45.894631-07	1.75000	3	5	08:00:00
679	2018-12-13 17:30:00-07	2018-12-13 20:30:00-07	Assemble boards	2018-12-13 20:27:01.231811-07	3.00000	1	8	20:30:00
685	2018-12-14 09:10:00-07	2018-12-14 11:00:00-07	assembly	2018-12-14 11:01:08.887789-07	1.83333	29	7	11:00:00
693	2018-12-15 11:14:55-07	2018-12-15 11:44:00-07	assembly	2018-12-15 11:44:23.700566-07	0.48472	40	7	11:44:00
690	2018-12-14 13:30:00-07	2018-12-14 14:30:00-07	Map review	2018-12-14 14:46:30.789066-07	1.00000	81	5	13:30:00
697	2018-12-17 07:30:00-07	2018-12-17 07:45:00-07	Status	2018-12-17 08:58:29.029159-07	0.25000	21	5	07:45:00
701	2018-12-17 09:00:00-07	2018-12-17 10:00:00-07	Review of ADAS questions	2018-12-17 09:56:48.01217-07	1.00000	89	5	10:00:00
704	2018-12-17 11:00:00-07	2018-12-17 12:00:00-07	Progeny IPT	2018-12-17 11:56:04.832617-07	1.00000	21	5	12:00:00
710	2018-12-17 14:35:00-07	2018-12-17 16:00:00-07	getting access token set up	2018-12-17 16:14:55.364241-07	1.41667	32	4	\N
354	2018-11-09 06:00:00-07	2018-11-09 08:30:00-07	Secure room testing	2018-11-09 08:36:36.800443-07	2.50000	3	5	08:30:00
238	2018-10-27 09:46:15-06	2018-10-27 11:25:02-06	change dynos and copy database	2018-10-27 11:25:05.055003-06	1.64639	31	4	\N
345	2018-11-08 08:30:00-07	2018-11-08 12:30:00-07	FAT review	2018-11-08 12:20:56.552644-07	4.00000	41	5	12:30:00
348	2018-11-08 13:00:00-07	2018-11-08 13:30:00-07	Unit 74	2018-11-08 13:24:04.430981-07	0.50000	22	5	13:30:00
630	2018-12-06 14:30:00-07	2018-12-06 16:30:00-07	Looked into Auto Driver schematics and DF11	2018-12-06 16:33:22.621045-07	2.00000	30	6	16:30:00
365	2018-11-12 08:00:00-07	2018-11-12 10:00:00-07	Legacy spreadsheet for verification	2018-11-12 10:13:38.969963-07	2.00000	3	5	10:00:00
370	2018-11-12 10:45:00-07	2018-11-12 12:00:00-07	Progeny IPT	2018-11-12 11:58:16.407152-07	1.25000	21	5	12:00:00
373	2018-11-12 13:00:00-07	2018-11-12 14:50:00-07	assembly	2018-11-12 14:50:51.229594-07	1.83333	29	7	14:50:00
620	2018-12-06 09:30:00-07	2018-12-06 15:30:00-07	Building holders.	2018-12-06 18:34:25.146091-07	6.00000	1	3	\N
380	2018-11-13 07:59:24-07	2018-11-13 11:30:00-07	assembly	2018-11-13 11:57:51.916025-07	3.51000	29	7	\N
384	2018-11-13 10:15:00-07	2018-11-13 11:00:00-07	Comment resolution	2018-11-13 12:24:11.529306-07	0.75000	82	5	\N
397	2018-11-14 09:00:00-07	2018-11-14 09:45:00-07	Verified corner elements and map	2018-11-14 09:41:54.898892-07	0.75000	81	5	\N
402	2018-11-14 11:00:00-07	2018-11-14 12:00:00-07	Phase Magnitude Plot	2018-11-14 17:34:32.843648-07	1.00000	3	5	\N
445	2018-11-15 14:00:00-07	2018-11-15 15:45:00-07	assembly	2018-11-15 15:47:29.144766-07	1.75000	29	7	\N
452	2018-11-16 07:15:00-07	2018-11-16 07:30:00-07	Status with Jason	2018-11-16 07:53:02.140462-07	0.25000	1	5	\N
460	2018-11-16 13:30:00-07	2018-11-16 14:00:00-07	Comment resolution	2018-11-16 14:02:52.995246-07	0.50000	82	5	\N
472	2018-11-19 11:30:00-07	2018-11-19 11:45:00-07	Review tuning memo	2018-11-19 12:15:10.433267-07	0.25000	84	5	\N
473	2018-11-19 11:45:00-07	2018-11-19 12:00:00-07	Talked to Scott about capacitance	2018-11-19 12:20:54.96501-07	0.25000	81	5	\N
480	2018-11-19 13:30:00-07	2018-11-19 14:00:00-07	Designing wiring pattern	2018-11-19 14:12:55.153981-07	0.50000	83	5	\N
1013	2019-01-24 18:45:00-07	2019-01-24 19:45:00-07	Backwards testing	2019-01-25 07:18:49.158703-07	1.00000	81	5	19:45:00
481	2018-11-19 14:00:00-07	2018-11-19 15:00:00-07	Capacitance issues with Scott	2018-11-19 14:54:10.353188-07	1.00000	81	5	\N
686	2018-12-14 09:29:27-07	2018-12-14 12:20:00-07	look into API, add functionality for parts	2018-12-14 12:21:00.704238-07	2.84250	32	4	12:20:00
487	2018-11-20 09:00:00-07	2018-11-20 10:00:00-07	assembly	2018-11-20 09:54:39.802524-07	1.00000	29	7	\N
495	2018-11-20 11:00:00-07	2018-11-20 12:45:00-07	DFT coding	2018-11-20 12:50:32.349316-07	1.75000	34	5	12:45:00
507	2018-11-21 10:00:00-07	2018-11-21 11:15:00-07	TI-08 Planning	2018-11-21 11:20:32.922256-07	1.25000	34	5	11:15:00
501	2018-11-21 06:57:49-07	2018-11-21 14:30:00-07	making part list for holders. Building shelves.	2018-11-23 07:24:22.598023-07	7.53639	1	3	\N
636	2018-12-07 09:30:00-07	2018-12-07 10:16:14-07	Repairing broken wires on light control switches.	2018-12-07 10:17:19.730176-07	0.77056	26	3	\N
622	2018-12-06 09:00:00-07	2018-12-06 10:00:00-07	Proposal	2018-12-07 16:28:32.545652-07	1.00000	88	5	10:00:00
519	2018-11-26 08:45:00-07	2018-11-26 09:00:00-07	BP1065 Capacitance issue	2018-11-26 09:30:29.758885-07	0.25000	81	5	09:00:00
642	2018-12-07 14:00:00-07	2018-12-07 14:45:00-07	assembly	2018-12-08 14:19:17.341719-07	0.75000	29	7	14:45:00
525	2018-11-26 12:00:00-07	2018-11-26 14:30:00-07	BP1065 Capacitance issue	2018-11-26 14:34:18.454034-07	2.50000	81	5	14:30:00
513	2018-11-26 07:00:00-07	2018-11-26 15:00:00-07	cables	2018-11-26 15:01:21.522446-07	8.00000	1	8	15:00:00
531	2018-11-27 09:30:00-07	2018-11-27 10:00:00-07	High current box swap	2018-11-27 09:50:48.916463-07	0.50000	80	5	10:00:00
537	2018-11-27 19:00:00-07	2018-11-27 19:30:00-07	EE Intern Ad	2018-11-27 21:37:30.384809-07	0.50000	39	5	19:30:00
545	2018-11-28 08:00:00-07	2018-11-28 09:22:00-07	banking, paper work	2018-11-28 09:22:20.180699-07	1.36667	40	7	09:22:00
551	2018-11-28 13:00:00-07	2018-11-28 13:15:00-07	Trouble shooting LEDs	2018-11-28 13:18:08.367141-07	0.25000	80	5	13:15:00
645	2018-12-10 09:35:29-07	2018-12-10 14:45:00-07	work on javascript forms	2018-12-10 15:45:31.047144-07	5.15861	32	4	14:45:00
560	2018-11-29 07:00:00-07	2018-11-29 08:00:00-07	Map audit function	2018-11-29 09:38:34.850894-07	1.00000	3	5	08:00:00
652	2018-12-11 11:00:00-07	2018-12-11 11:30:00-07	Schedule Meeting	2018-12-11 13:39:00.402608-07	0.50000	34	5	11:30:00
567	2018-11-29 13:45:00-07	2018-11-29 16:15:00-07	cleaning shop	2018-11-29 16:14:43.713522-07	2.50000	28	7	16:15:00
653	2018-12-11 11:30:00-07	2018-12-11 12:00:00-07	Making CDs	2018-12-11 13:39:30.613861-07	0.50000	41	5	12:00:00
573	2018-11-30 08:30:00-07	2018-11-30 10:14:00-07	run errands	2018-11-30 10:14:46.277091-07	1.73333	28	7	10:14:00
580	2018-11-30 12:45:00-07	2018-11-30 15:45:00-07	Capacitance bug fix	2018-11-30 15:45:03.282124-07	3.00000	3	5	15:45:00
587	2018-12-03 09:00:00-07	2018-12-03 11:30:00-07	sorting	2018-12-03 12:00:28.617921-07	2.50000	28	7	11:30:00
593	2018-12-04 08:15:00-07	2018-12-04 09:00:00-07	Trusted Download	2018-12-04 08:55:38.324478-07	0.75000	3	5	09:00:00
656	2018-12-12 05:45:00-07	2018-12-12 09:15:00-07	PDR	2018-12-12 10:05:37.283084-07	3.50000	89	5	09:15:00
598	2018-12-04 10:30:00-07	2018-12-04 11:00:00-07	DFT coding	2018-12-04 11:03:02.95768-07	0.50000	34	5	11:00:00
661	2018-12-12 10:45:00-07	2018-12-12 12:15:00-07	Swapped channel bug fix	2018-12-12 12:26:51.920353-07	1.50000	2	5	12:15:00
665	2018-12-12 10:00:00-07	2018-12-12 14:00:00-07	assembly	2018-12-12 16:50:14.423625-07	4.00000	29	7	14:00:00
666	2018-12-12 15:00:00-07	2018-12-12 15:30:00-07	assembly	2018-12-12 16:51:02.990929-07	0.50000	29	7	15:30:00
609	2018-12-05 06:50:00-07	2018-12-05 10:10:10-07	Replacing Relay.	2018-12-05 10:10:14.771149-07	3.33611	87	3	\N
614	2018-12-05 15:30:00-07	2018-12-05 16:15:00-07	Ordered boards	2018-12-05 16:11:12.044947-07	0.75000	8	5	16:15:00
691	2018-12-14 14:30:00-07	2018-12-14 15:15:00-07	Mapping plot viewer	2018-12-14 15:17:25.349151-07	0.75000	3	5	15:15:00
671	2018-12-13 09:30:00-07	2018-12-13 10:00:00-07	Element Verification	2018-12-13 10:08:14.226401-07	0.50000	81	5	10:00:00
675	2018-12-13 12:00:00-07	2018-12-13 13:38:00-07	order mill machine	2018-12-13 13:38:34.290055-07	1.63333	40	7	13:38:00
670	2018-12-13 09:32:54-07	2018-12-13 13:28:00-07	finish entering part from website form	2018-12-13 13:45:18.618256-07	3.91833	32	4	\N
711	2018-12-17 14:15:00-07	2018-12-17 14:30:00-07	Status meeting	2018-12-17 15:26:12.017605-07	0.25000	34	5	14:30:00
681	2018-12-14 07:30:00-07	2018-12-14 16:30:00-07	Installing guides.	2018-12-15 13:59:38.249271-07	9.00000	1	3	\N
694	2018-12-15 09:00:00-07	2018-12-15 11:30:00-07	Installing PCB's on to Carriers.	2018-12-15 14:02:07.300635-07	2.50000	1	3	\N
705	2018-12-17 12:00:00-07	2018-12-17 12:15:00-07	Status with Chris	2018-12-17 12:15:54.16041-07	0.25000	34	5	12:15:00
706	2018-12-17 12:15:00-07	2018-12-17 13:00:00-07	Moving shelves	2018-12-17 14:09:19.948839-07	0.75000	1	5	13:00:00
709	2018-12-16 18:00:00-07	2018-12-16 18:30:00-07	gifts	2018-12-17 14:10:09.560305-07	0.50000	40	7	18:30:00
702	2018-12-17 09:54:50-07	2018-12-17 13:00:00-07	figure out API	2018-12-17 15:16:41.478102-07	3.08611	32	4	13:00:00
715	2018-12-18 07:30:00-07	2018-12-18 07:45:00-07	Status	2018-12-18 08:12:05.738221-07	0.25000	21	5	07:45:00
713	2018-12-17 17:30:00-07	2018-12-17 21:00:00-07	Assemble boards	2018-12-17 21:01:15.723165-07	3.50000	1	8	21:00:00
698	2018-12-17 07:05:00-07	2018-12-17 16:10:00-07	Making ready for shipment.	2018-12-18 07:09:06.852578-07	9.08333	1	3	\N
717	2018-12-18 08:15:00-07	2018-12-18 09:00:00-07	Layout of wire boards	2018-12-18 08:49:47.523917-07	0.75000	8	5	09:00:00
720	2018-12-18 10:52:37-07	2018-12-18 11:53:00-07	banking, paper work	2018-12-18 11:53:26.0698-07	1.00639	40	7	11:53:00
722	2018-12-18 13:00:00-07	2018-12-18 13:15:00-07	Call with Henry	2018-12-18 15:12:09.130918-07	0.25000	89	5	13:15:00
723	2018-12-18 13:15:00-07	2018-12-18 13:30:00-07	Prestress voltage meeting	2018-12-18 15:13:11.283267-07	0.25000	84	5	15:30:00
724	2018-12-18 13:30:00-07	2018-12-18 15:15:00-07	Tested the shelves	2018-12-18 15:15:55.729591-07	1.75000	1	5	15:15:00
725	2018-12-18 15:15:00-07	2018-12-18 15:30:00-07	Support for Chris	2018-12-18 15:36:27.058001-07	0.25000	34	5	15:30:00
726	2018-12-18 14:00:00-07	2018-12-18 14:45:00-07	paper work	2018-12-18 20:56:46.734725-07	0.75000	40	7	14:45:00
728	2018-12-19 07:30:00-07	2018-12-19 08:00:00-07	Status meeting	2018-12-19 09:05:17.190478-07	0.50000	21	5	08:00:00
385	2018-11-13 11:00:00-07	2018-11-13 12:30:00-07	Planning	2018-11-13 12:24:44.344527-07	1.50000	34	5	\N
239	2018-10-27 10:30:00-06	2018-10-27 13:00:00-06	cleaning shop	2018-10-27 16:09:49.166683-06	2.50000	28	7	13:00:00
241	2018-10-27 08:00:00-06	2018-10-27 18:30:00-06	De-junking	2018-10-27 18:56:26.150019-06	10.50000	28	5	18:30:00
242	2018-10-27 09:00:00-06	2018-10-27 10:00:00-06	Cleaned up LCD library code.	2018-10-27 22:03:54.310638-06	1.00000	12	6	10:00:00
403	2018-11-14 12:00:00-07	2018-11-14 13:30:00-07	Transmit voltage	2018-11-14 17:35:15.223259-07	1.50000	34	5	\N
245	2018-10-29 07:30:00-06	2018-10-29 08:15:00-06	MRP system setup	2018-10-29 08:33:00.808536-06	0.75000	31	5	08:15:00
404	2018-11-14 13:30:00-07	2018-11-14 17:30:00-07	Fixed maps	2018-11-14 17:35:42.031365-07	4.00000	81	5	\N
446	2018-11-15 15:30:00-07	2018-11-15 15:45:00-07	Meeting with Rick Daley	2018-11-15 15:58:20.674572-07	0.25000	83	5	\N
248	2018-10-29 10:30:00-06	2018-10-29 10:45:00-06	Status meeting	2018-10-29 11:35:49.945505-06	0.25000	34	5	10:45:00
247	2018-10-29 08:45:00-06	2018-10-29 10:30:00-06	Board Layout	2018-10-29 11:36:26.480858-06	1.75000	76	5	10:15:00
453	2018-11-16 07:45:00-07	2018-11-16 08:15:00-07	BP1067 missing element	2018-11-16 08:11:12.974838-07	0.50000	81	5	\N
461	2018-11-16 14:00:00-07	2018-11-16 14:15:00-07	Ordered power supplies	2018-11-16 14:11:20.828652-07	0.25000	1	5	\N
1429	2019-03-20 09:00:00-06	2019-03-20 12:30:00-06	Welder research and contacting sellers	2019-03-20 13:46:06.917674-06	3.50000	169	11	12:30:00
243	2018-10-29 07:00:00-06	2018-10-29 15:00:00-06	Organization	2018-10-29 15:00:22.438939-06	8.00000	28	8	15:00:00
251	2018-10-29 12:30:00-06	2018-10-29 19:00:00-06	Board Layout	2018-10-29 19:18:22.217424-06	6.50000	76	5	19:00:00
253	2018-10-29 12:30:00-06	2018-10-29 14:45:00-06	cleaning, board stuff	2018-10-29 20:50:38.590675-06	2.25000	28	7	14:45:00
250	2018-10-29 12:30:39-06	2018-10-29 15:30:00-06	Building holders.	2018-10-30 07:20:12.701558-06	2.98917	1	3	15:30:00
255	2018-10-30 07:45:00-06	2018-10-30 08:30:00-06	Layout and send out	2018-10-30 08:43:50.9008-06	0.75000	76	5	08:30:00
482	2018-11-19 15:00:00-07	2018-11-19 16:00:00-07	Attenuator design	2018-11-19 16:07:28.711421-07	1.00000	34	5	\N
258	2018-10-30 09:30:00-06	2018-10-30 10:30:00-06	Fix layout and send out	2018-10-30 10:33:34.970415-06	1.00000	76	5	10:30:00
257	2018-10-30 09:15:00-06	2018-10-30 09:30:00-06	Response to TT	2018-10-30 10:33:48.481153-06	0.25000	4	5	09:28:00
623	2018-12-06 10:55:41-07	2018-12-06 15:13:36-07	designing parts for resistors	2018-12-06 18:24:55.954042-07	4.29861	32	4	\N
488	2018-11-20 09:00:00-07	2018-11-20 10:00:00-07	NUWC IPT	2018-11-20 10:08:18.603087-07	1.00000	21	5	\N
631	2018-12-06 17:30:00-07	2018-12-06 21:00:00-07	Assemble power boards	2018-12-06 20:58:09.110032-07	3.50000	1	8	21:00:00
260	2018-10-30 10:30:00-06	2018-10-30 15:00:00-06	sorting junk	2018-10-30 14:55:50.235544-06	4.50000	28	7	15:00:00
496	2018-11-20 12:50:33-07	2018-11-20 15:00:00-07	Capacitance issues	2018-11-20 16:03:02.612038-07	2.15750	81	5	15:00:00
259	2018-10-30 10:30:00-06	2018-10-30 16:45:00-06	Element Verification	2018-10-30 16:48:05.889292-06	6.25000	3	5	16:45:00
262	2018-10-30 16:00:00-06	2018-10-30 17:00:00-06	cleaning shop	2018-10-30 17:00:02.902787-06	1.00000	28	7	17:00:00
502	2018-11-21 07:30:00-07	2018-11-21 09:00:00-07	Status/Planning	2018-11-21 08:55:16.265979-07	1.50000	21	5	08:00:00
252	2018-10-29 15:15:57-06	2018-10-29 18:45:56-06	caching redirects and developing models	2018-10-30 19:31:28.017931-06	3.49972	32	4	\N
263	2018-10-30 19:10:23-06	2018-10-30 21:08:14-06	developing views	2018-10-30 21:28:33.106247-06	1.96417	32	4	\N
508	2018-11-21 15:00:00-07	2018-11-21 15:30:00-07	mail	2018-11-21 15:34:07.898042-07	0.50000	39	7	15:30:00
638	2018-12-07 14:09:17-07	2018-12-07 16:30:00-07	changing model and forms	2018-12-07 19:22:52.713781-07	2.34528	32	4	\N
552	2018-11-28 13:15:00-07	2018-11-28 14:00:00-07	Map audit function	2018-11-28 14:34:34.617021-07	0.75000	3	5	14:00:00
514	2018-11-24 10:00:00-07	2018-11-24 12:00:00-07	Building cables for racks.	2018-11-26 07:16:07.151997-07	2.00000	1	3	\N
520	2018-11-26 09:00:00-07	2018-11-26 09:30:00-07	Pressure Vessel meeting	2018-11-26 09:30:53.612336-07	0.50000	4	5	09:30:00
526	2018-11-26 12:50:00-07	2018-11-26 14:23:00-07	assembly, foam	2018-11-26 14:23:49.655321-07	1.55000	29	7	14:23:00
254	2018-10-30 07:00:00-06	2018-10-30 15:00:00-06	Build & Test Relay Boards. Build Shelves.	2018-10-31 07:35:26.843443-06	8.00000	1	3	16:00:00
266	2018-10-30 15:00:00-06	2018-10-30 17:00:00-06	Hulling load to dump.	2018-10-31 07:38:17.63681-06	2.00000	28	3	\N
261	2018-10-30 09:30:00-06	2018-10-30 12:30:00-06	Organization/Build boards	2018-10-31 07:39:07.444183-06	3.00000	28	8	15:00:00
267	2018-10-30 12:30:00-06	2018-10-30 15:00:00-06	Assemble boards	2018-10-31 07:40:05.663487-06	2.50000	1	8	\N
269	2018-10-31 08:00:00-06	2018-10-31 08:15:00-06	Monthly PM Training	2018-10-31 08:21:44.889845-06	0.25000	15	5	08:15:00
271	2018-10-31 08:30:00-06	2018-10-31 09:30:00-06	Element Verification	2018-10-31 10:10:53.453447-06	1.00000	3	5	09:30:00
272	2018-10-31 09:30:00-06	2018-10-31 10:15:00-06	Test process description	2018-10-31 10:11:42.230831-06	0.75000	21	5	10:15:00
643	2018-12-08 09:00:00-07	2018-12-08 16:42:09-07	Building Doors.	2018-12-08 16:42:12.686477-07	7.70250	28	3	\N
532	2018-11-27 10:00:00-07	2018-11-27 16:00:00-07	DFT coding	2018-11-27 21:36:49.583745-07	6.00000	34	5	16:00:00
538	2018-11-27 19:30:00-07	2018-11-27 20:00:00-07	Ordered boards & parts	2018-11-27 21:37:54.582815-07	0.50000	30	5	20:00:00
275	2018-10-31 11:30:00-06	2018-10-31 15:30:00-06	Assemble boards	2018-10-31 15:32:49.526608-06	4.00000	1	8	15:30:00
276	2018-10-31 13:00:00-06	2018-10-31 15:00:00-06	cleaning shop	2018-10-31 17:14:51.540017-06	2.00000	28	7	15:00:00
273	2018-10-31 10:15:00-06	2018-10-31 16:45:00-06	Element Verification	2018-10-31 17:57:17.713115-06	6.50000	3	5	16:45:00
274	2018-10-31 13:51:59-06	2018-10-31 19:17:00-06	creating views	2018-10-31 20:35:48.012705-06	5.41694	32	4	\N
539	2018-11-27 20:00:00-07	2018-11-27 21:30:00-07	MRP design	2018-11-27 21:38:48.932115-07	1.50000	32	5	21:30:00
277	2018-11-01 05:00:00-06	2018-11-01 06:30:00-06	Element Verification	2018-11-01 06:32:49.701597-06	1.50000	3	5	06:30:00
540	2018-11-26 19:00:00-07	2018-11-26 21:00:00-07	Equipment evaluation and purchase	2018-11-27 21:39:35.689531-07	2.00000	39	5	21:00:00
575	2018-11-30 11:15:00-07	2018-11-30 12:15:00-07	Map audit function	2018-11-30 12:18:51.905216-07	1.00000	3	5	12:15:00
264	2018-10-31 07:00:00-06	2018-10-31 11:00:00-06	Assemble boards	2018-11-01 07:06:08.037564-06	4.00000	1	8	11:00:00
279	2018-11-01 07:45:00-06	2018-11-01 09:00:00-06	Meeting on FAT failures 57 & 58	2018-11-01 09:05:40.614103-06	1.25000	21	5	09:00:00
280	2018-11-01 09:00:00-06	2018-11-01 11:30:00-06	Generate Test files	2018-11-01 11:33:57.920706-06	2.50000	3	5	11:30:00
281	2018-11-01 11:30:00-06	2018-11-01 12:15:00-06	Reviewed reciprocity with Chris	2018-11-01 12:10:43.077125-06	0.75000	21	5	12:15:00
283	2018-11-01 09:30:00-06	2018-11-01 13:00:00-06	cleaning shop	2018-11-01 13:20:25.034502-06	3.50000	28	7	13:00:00
278	2018-11-01 07:00:00-06	2018-11-01 15:00:00-06	Assemble boards	2018-11-01 14:58:44.168372-06	8.00000	1	8	15:00:00
284	2018-11-01 12:27:48-06	2018-11-01 15:05:00-06	creating forms	2018-11-01 15:06:01.577662-06	2.62000	32	4	15:05:00
581	2018-12-01 14:30:00-07	2018-12-01 16:30:00-07	run errands	2018-12-01 16:44:15.457176-07	2.00000	40	7	16:30:00
285	2018-11-01 07:00:00-06	2018-11-01 16:00:00-06	Building relay boards hold down.	2018-11-01 15:43:36.537434-06	9.00000	1	3	15:30:00
561	2018-11-29 07:00:00-07	2018-11-29 15:00:00-07	Tapping	2018-11-29 14:57:30.08653-07	8.00000	1	8	15:00:00
287	2018-11-01 15:00:00-06	2018-11-01 16:00:00-06	cleaning shop	2018-11-01 16:22:37.286146-06	1.00000	28	7	16:00:00
546	2018-11-28 08:00:00-07	2018-11-28 17:30:00-07	Drilling Aluminum plates.	2018-11-29 16:23:37.49592-07	9.50000	1	3	\N
568	2018-11-29 07:00:00-07	2018-11-29 17:30:00-07	Building holders.	2018-11-30 06:54:05.36309-07	10.50000	1	3	\N
574	2018-11-30 10:00:00-07	2018-11-30 11:15:00-07	Reciprocity issue	2018-11-30 11:13:08.787149-07	1.25000	81	5	11:15:00
588	2018-12-03 13:15:00-07	2018-12-03 13:45:00-07	Chris status	2018-12-03 13:27:56.274208-07	0.50000	34	5	13:45:00
599	2018-12-04 11:00:00-07	2018-12-04 11:15:00-07	Helped with Trusted Download	2018-12-04 11:09:36.877903-07	0.25000	80	5	11:15:00
605	2018-12-04 14:45:00-07	2018-12-04 15:00:00-07	Relay Repair set up	2018-12-04 15:03:04.675723-07	0.25000	87	5	15:00:00
594	2018-12-04 07:05:00-07	2018-12-04 16:40:29-07	Drilling Aluminum plates.	2018-12-04 16:40:34.949463-07	9.59139	1	3	\N
610	2018-12-05 08:49:23-07	2018-12-05 10:25:00-07	get AWS set up	2018-12-05 10:52:47.111949-07	1.59361	32	4	10:25:00
615	2018-12-05 19:14:00-07	2018-12-05 19:54:00-07	finished AWS setup	2018-12-05 19:54:52.854081-07	0.66667	32	4	19:54:00
401	2018-11-14 17:12:54-07	2018-11-14 19:00:00-07	developing view and forms	2018-11-14 22:20:19.26553-07	1.78500	32	4	\N
624	2018-12-06 10:00:00-07	2018-12-06 11:15:00-07	Remap problem	2018-12-06 11:20:08.258892-07	1.25000	80	5	11:15:00
240	2018-10-27 09:30:00-06	2018-10-27 15:31:30-06	Dejunking.	2018-10-27 15:31:33.520943-06	6.02500	28	3	\N
406	2018-11-15 07:00:00-07	2018-11-15 07:30:00-07	Status with Jason	2018-11-15 07:49:43.94449-07	0.50000	2	5	\N
1009	2019-01-22 10:00:00-07	2019-01-22 11:00:00-07	cleaning shop	2019-01-24 15:30:59.920946-07	1.00000	28	7	11:00:00
246	2018-10-29 08:15:00-06	2018-10-29 08:45:00-06	battery holder evaluation	2018-10-29 08:44:24.533512-06	0.50000	76	5	08:45:00
249	2018-10-29 10:45:00-06	2018-10-29 11:45:00-06	IPT meeting	2018-10-29 11:44:04.312814-06	1.00000	21	5	11:45:00
244	2018-10-29 07:15:12-06	2018-10-29 12:30:00-06	Building holders.	2018-10-29 12:30:24.784107-06	5.24667	76	3	12:30:00
407	2018-11-15 08:57:24-07	2018-11-15 11:30:00-07	assembly	2018-11-15 11:41:48.38143-07	2.54333	29	7	\N
256	2018-10-30 08:30:00-06	2018-10-30 09:15:00-06	BP1065 Capacitance issue	2018-10-30 09:28:29.138764-06	0.75000	21	5	09:15:00
440	2018-11-15 09:08:00-07	2018-11-15 11:05:00-07	researching printers	2018-11-15 11:52:05.493694-07	1.95000	22	4	\N
447	2018-11-15 15:45:00-07	2018-11-15 16:30:00-07	Sparing Analysis	2018-11-15 16:33:47.598875-07	0.75000	82	5	\N
268	2018-10-31 07:15:00-06	2018-10-31 08:00:00-06	Status meetings	2018-10-31 07:52:33.064112-06	0.75000	21	5	08:00:00
270	2018-10-31 08:15:00-06	2018-10-31 08:30:00-06	Checked on NUWC Thames	2018-10-31 08:36:11.414205-06	0.25000	21	5	08:30:00
625	2018-12-06 11:15:00-07	2018-12-06 12:00:00-07	Prestress timeout command	2018-12-06 12:04:50.383678-07	0.75000	38	5	12:00:00
265	2018-10-31 07:00:00-06	2018-10-31 15:30:00-06	Building holders.	2018-11-01 15:33:15.037496-06	8.50000	1	3	15:30:00
282	2018-11-01 12:15:00-06	2018-11-01 14:15:00-06	Element Verification debug	2018-11-01 15:50:11.130802-06	2.00000	3	5	14:15:00
286	2018-11-01 14:15:00-06	2018-11-01 16:30:00-06	Meeting on FAT failures 57 & 58	2018-11-01 16:27:36.153294-06	2.25000	21	5	16:00:00
454	2018-11-16 09:27:51-07	2018-11-16 13:55:00-07	working on forms and site navigation	2018-11-16 14:05:53.105358-07	4.45250	32	4	\N
462	2018-11-16 14:15:00-07	2018-11-16 15:00:00-07	machining	2018-11-16 15:03:44.471304-07	0.75000	1	5	\N
1010	2019-01-24 13:31:00-07	2019-01-24 15:30:00-07	cleaning shop	2019-01-24 15:31:40.369242-07	1.98333	28	7	15:30:00
595	2018-12-04 09:00:00-07	2018-12-04 09:45:00-07	NUWC IPT	2018-12-04 09:48:56.157599-07	0.75000	21	5	09:45:00
467	2018-11-19 06:45:00-07	2018-11-19 10:54:19-07	Cleaning wood shop.	2018-11-19 10:54:21.430437-07	4.15528	28	3	\N
405	2018-11-15 06:52:27-07	2018-11-15 17:01:22-07	Testing, Repairing, Programming S/N. Pop Riveting	2018-11-19 12:10:17.268897-07	10.14861	2	3	\N
632	2018-12-06 17:00:00-07	2018-12-06 18:35:36-07	Drilling Aluminum plates.	2018-12-06 18:35:41.81788-07	1.59333	1	3	\N
639	2018-12-07 14:30:00-07	2018-12-07 16:00:00-07	Proposal review	2018-12-07 16:28:04.722508-07	1.50000	88	5	16:00:00
647	2018-12-10 15:00:00-07	2018-12-10 17:00:00-07	Attaching wires to Sparkfun board.	2018-12-11 07:01:55.611505-07	2.00000	30	3	\N
648	2018-12-10 17:00:00-07	2018-12-10 17:40:00-07	Dismantle overhead door.	2018-12-11 07:03:52.622294-07	0.66667	28	3	\N
476	2018-11-19 12:00:00-07	2018-11-19 13:00:00-07	Reviewed pressure vessel drawings	2018-11-19 13:28:33.059193-07	1.00000	4	5	\N
483	2018-11-19 20:00:00-07	2018-11-19 23:00:00-07	Prepared to machine backing plates	2018-11-20 00:07:40.555305-07	3.00000	1	5	\N
489	2018-11-20 10:00:00-07	2018-11-20 10:45:00-07	Review drawings with Rick	2018-11-20 10:49:31.382537-07	0.75000	4	5	\N
654	2018-12-11 12:00:00-07	2018-12-11 14:30:00-07	Schedule Meeting	2018-12-11 15:29:11.779973-07	2.50000	34	5	13:45:00
497	2018-11-20 13:01:24-07	2018-11-20 15:18:40-07	fixture for CNC.	2018-11-20 15:18:44.94768-07	2.28778	1	3	\N
600	2018-12-04 11:15:00-07	2018-12-04 12:30:00-07	Element distance	2018-12-04 12:30:41.17999-07	1.25000	3	5	12:30:00
503	2018-11-21 08:45:44-07	2018-11-21 09:45:00-07	shipping	2018-11-21 09:48:15.959284-07	0.98778	39	7	09:45:00
509	2018-11-21 13:00:00-07	2018-11-21 15:00:00-07	CNC programming back plates	2018-11-22 08:16:27.326816-07	2.00000	1	5	15:00:00
692	2018-12-14 12:00:00-07	2018-12-14 15:45:00-07	assembly, errands	2018-12-14 15:50:10.8443-07	3.75000	40	7	15:45:00
521	2018-11-26 09:30:00-07	2018-11-26 11:00:00-07	banking, paper work	2018-11-26 11:51:07.817179-07	1.50000	40	7	11:00:00
662	2018-12-12 12:15:00-07	2018-12-12 12:45:00-07	.map read script	2018-12-12 16:24:42.855001-07	0.50000	90	5	12:45:00
527	2018-11-26 14:30:00-07	2018-11-26 15:45:00-07	Comment resolution	2018-11-26 15:37:40.859719-07	1.25000	82	5	15:45:00
515	2018-11-26 07:01:00-07	2018-11-26 17:29:49-07	Building fixtures.	2018-11-26 17:29:56.963557-07	10.48028	1	3	\N
533	2018-11-27 09:00:00-07	2018-11-27 15:00:00-07	Cables	2018-11-27 15:00:35.138956-07	6.00000	1	8	15:00:00
657	2018-12-12 07:05:00-07	2018-12-12 13:00:00-07	Installing PCB's on to Carriers.	2018-12-13 09:48:11.210019-07	5.91667	2	3	\N
553	2018-11-28 14:00:00-07	2018-11-28 14:30:00-07	Status meeting	2018-11-28 14:35:16.170181-07	0.50000	77	5	14:30:00
672	2018-12-12 13:50:00-07	2018-12-12 17:15:00-07	Installing PCB's on to Carriers.	2018-12-13 09:50:11.16525-07	3.41667	2	3	\N
541	2018-11-28 07:00:00-07	2018-11-28 15:00:00-07	Tapping	2018-11-28 14:56:02.380706-07	8.00000	1	8	15:00:00
554	2018-11-28 14:30:00-07	2018-11-28 16:00:00-07	Map audit function	2018-11-28 16:01:59.081264-07	1.50000	3	5	16:00:00
547	2018-11-28 10:08:00-07	2018-11-28 12:45:00-07	change manufacturer and location form	2018-11-28 18:29:20.794989-07	2.61667	32	4	\N
562	2018-11-29 08:00:00-07	2018-11-29 09:45:00-07	Reciprocity issue	2018-11-29 09:39:41.902229-07	1.75000	81	5	09:45:00
677	2018-12-13 13:55:00-07	2018-12-13 15:45:00-07	run errands	2018-12-13 16:07:39.780172-07	1.83333	40	7	15:45:00
563	2018-11-29 09:45:00-07	2018-11-29 10:00:00-07	Map audit function	2018-11-29 13:25:47.242067-07	0.25000	3	5	10:00:00
699	2018-12-17 07:45:00-07	2018-12-17 08:00:00-07	Helped Crystal with TD and email to Mike T	2018-12-17 09:10:43.935094-07	0.25000	80	5	08:00:00
569	2018-11-29 17:48:00-07	2018-11-29 21:05:40-07	set up filters for parts	2018-11-29 21:13:46.961108-07	3.29444	32	4	\N
682	2018-12-14 08:00:00-07	2018-12-14 08:30:00-07	Map BP1074	2018-12-14 08:26:51.413194-07	0.50000	81	5	08:30:00
576	2018-11-30 12:15:00-07	2018-11-30 12:45:00-07	Replace element in BP1070	2018-11-30 12:43:03.687702-07	0.50000	81	5	12:45:00
667	2018-12-13 07:00:00-07	2018-12-13 17:45:00-07	Installing PCB's on to Carriers.	2018-12-14 16:13:40.685178-07	10.75000	2	3	\N
582	2018-12-03 06:15:00-07	2018-12-03 10:30:00-07	Map verification	2018-12-03 11:01:27.95194-07	4.25000	3	5	10:30:00
589	2018-12-03 15:00:00-07	2018-12-03 15:30:00-07	banking	2018-12-03 15:36:34.493009-07	0.50000	40	7	15:30:00
700	2018-12-17 08:00:00-07	2018-12-17 09:00:00-07	Status Update	2018-12-17 09:11:28.041128-07	1.00000	34	5	09:00:00
606	2018-12-05 07:30:00-07	2018-12-05 07:45:00-07	Status meeting	2018-12-05 08:00:54.989728-07	0.25000	21	5	07:45:00
687	2018-12-14 09:45:00-07	2018-12-14 10:30:00-07	Status meeting with Chris and Amy	2018-12-14 10:24:53.870947-07	0.75000	34	5	10:30:00
616	2018-12-05 20:05:00-07	2018-12-05 21:02:00-07	fix access key for AWS	2018-12-05 21:02:39.922181-07	0.95000	32	4	21:02:00
611	2018-12-05 10:10:17-07	2018-12-05 14:30:00-07	Reprogramming shop & house sensors.	2018-12-06 09:33:54.022679-07	4.32861	26	3	\N
695	2018-12-15 12:30:00-07	2018-12-15 14:40:00-07	Installing PCB's on to Carriers.	2018-12-17 08:51:59.675207-07	2.16667	1	3	\N
703	2018-12-17 10:00:00-07	2018-12-17 11:00:00-07	Plot function	2018-12-17 10:47:01.916494-07	1.00000	3	5	10:30:00
707	2018-12-17 07:55:00-07	2018-12-17 14:08:00-07	banking, errands, racks	2018-12-17 14:09:26.70042-07	6.21667	40	7	\N
708	2018-12-17 13:00:00-07	2018-12-17 14:15:00-07	Meeting on transition to new test system	2018-12-17 14:10:09.487076-07	1.25000	21	5	14:15:00
712	2018-12-17 14:30:00-07	2018-12-17 15:45:00-07	Plot function	2018-12-17 15:47:26.322726-07	1.25000	3	5	15:45:00
716	2018-12-18 07:45:00-07	2018-12-18 08:15:00-07	Logistics/ordering shelves	2018-12-18 08:16:31.469677-07	0.50000	1	5	08:15:00
719	2018-12-18 09:00:00-07	2018-12-18 10:15:00-07	NUWC IPT	2018-12-18 10:19:31.499397-07	1.25000	21	5	10:15:00
718	2018-12-18 09:11:16-07	2018-12-18 11:52:00-07	enter in parts	2018-12-18 12:19:59.69717-07	2.67889	32	4	11:52:00
721	2018-12-18 10:15:00-07	2018-12-18 13:00:00-07	Setup for sweep testing	2018-12-18 12:55:38.252388-07	2.75000	8	5	13:00:00
441	2018-11-15 07:45:00-07	2018-11-15 12:30:00-07	Plot function	2018-11-15 12:33:39.986997-07	4.75000	3	5	\N
288	2018-11-01 18:58:12-06	2018-11-01 21:30:31-06	looking at model definitions	2018-11-01 21:30:35.780957-06	2.53861	32	4	\N
448	2018-11-15 15:00:00-07	2018-11-15 17:00:00-07	Tested Display Board	2018-11-15 16:57:05.017917-07	2.00000	36	6	\N
455	2018-11-16 08:15:00-07	2018-11-16 11:00:00-07	Update software to create form	2018-11-16 11:01:00.476442-07	2.75000	22	5	\N
617	2018-12-06 08:15:00-07	2018-12-06 09:00:00-07	Consolidate data from prestress experiment	2018-12-06 10:05:43.99838-07	0.75000	84	5	09:00:00
292	2018-11-02 08:45:00-06	2018-11-02 09:00:00-06	Shelf design with Jason	2018-11-02 09:11:07.724942-06	0.25000	1	5	09:00:00
626	2018-12-06 12:00:00-07	2018-12-06 14:15:00-07	Tuning element selection	2018-12-06 14:20:55.144731-07	2.25000	75	5	14:15:00
293	2018-11-02 09:00:00-06	2018-11-02 11:15:00-06	Trusted Download and Tuning Review for Anthony	2018-11-02 11:46:04.595801-06	2.25000	22	5	11:15:00
294	2018-11-02 11:15:00-06	2018-11-02 11:45:00-06	Meeting on FAT failures 57 & 58	2018-11-02 11:47:17.805474-06	0.50000	21	5	11:45:00
463	2018-11-17 09:07:46-07	2018-11-17 15:15:28-07	Building fixtures for shelves.	2018-11-19 11:58:10.698625-07	6.12833	1	3	\N
296	2018-11-02 09:00:00-06	2018-11-02 13:00:00-06	editing projects, views, and forms	2018-11-02 13:30:53.457804-06	4.00000	31	4	12:35:00
291	2018-11-02 07:00:00-06	2018-11-02 08:30:00-06	Looked at MRP database models	2018-11-02 13:35:23.75272-06	1.50000	32	5	08:30:00
633	2018-12-07 08:45:00-07	2018-12-07 09:30:00-07	Pol Dates	2018-12-07 09:24:11.849983-07	0.75000	3	5	09:30:00
289	2018-11-02 06:40:40-06	2018-11-02 15:00:12-06	Designing Fixture.	2018-11-02 15:00:19.019637-06	8.32556	1	3	\N
290	2018-11-02 07:45:00-06	2018-11-02 15:00:00-06	Assemble boards	2018-11-02 15:00:55.070573-06	7.25000	1	8	15:00:00
298	2018-11-02 13:30:00-06	2018-11-02 15:00:00-06	Map 1067	2018-11-02 15:04:05.374088-06	1.50000	3	5	15:00:00
299	2018-11-03 13:00:00-06	2018-11-03 17:00:00-06	Shop controller	2018-11-03 20:16:33.265804-06	4.00000	26	5	17:00:00
477	2018-11-19 11:53:06-07	2018-11-19 13:11:00-07	assembly	2018-11-19 13:11:55.001541-07	1.29833	29	7	\N
300	2018-11-03 20:16:33-06	2018-11-03 21:30:00-06	Data base models and views	2018-11-03 22:00:27.157529-06	1.22417	32	5	21:30:00
301	2018-11-05 07:30:00-07	2018-11-05 08:45:00-07	Status meeting	2018-11-05 08:36:27.524917-07	1.25000	21	5	08:45:00
304	2018-11-05 08:45:00-07	2018-11-05 09:00:00-07	TD 2 noses	2018-11-05 09:01:17.387279-07	0.25000	22	5	09:00:00
468	2018-11-19 10:54:21-07	2018-11-19 14:30:00-07	working on the battery holder used for stack test.	2018-11-20 07:34:13.125966-07	3.59417	76	3	\N
649	2018-12-11 08:00:00-07	2018-12-11 08:30:00-07	Status meeting	2018-12-11 08:37:51.297599-07	0.50000	21	5	08:30:00
305	2018-11-05 09:00:00-07	2018-11-05 10:30:00-07	Find elements for BP1065	2018-11-05 10:25:22.768318-07	1.50000	3	5	10:30:00
307	2018-11-05 10:30:00-07	2018-11-05 10:45:00-07	Status meeting	2018-11-05 10:26:20.385129-07	0.25000	34	5	10:45:00
308	2018-11-05 10:45:00-07	2018-11-05 12:00:00-07	Progeny IPT	2018-11-05 10:26:51.198609-07	1.25000	21	5	12:00:00
484	2018-11-20 06:55:00-07	2018-11-20 11:07:06-07	Setting up CNC.	2018-11-20 11:07:10.129934-07	4.20167	1	3	\N
490	2018-11-20 10:45:00-07	2018-11-20 11:00:00-07	Review tuning memo	2018-11-20 12:05:11.463561-07	0.25000	84	5	11:00:00
306	2018-11-05 09:01:00-07	2018-11-05 10:54:53-07	edit project view and research todo list	2018-11-05 13:59:58.928633-07	1.89806	31	4	\N
310	2018-11-05 11:30:00-07	2018-11-05 14:30:00-07	assembly	2018-11-05 14:49:18.152733-07	3.00000	29	7	14:30:00
658	2018-12-11 08:00:00-07	2018-12-11 09:30:00-07	banking, running parts	2018-12-12 07:25:23.831086-07	1.50000	40	7	09:30:00
309	2018-11-05 07:20:00-07	2018-11-05 14:55:40-07	Designing Fixture.	2018-11-05 14:55:43.652735-07	7.59444	1	3	\N
498	2018-11-20 13:30:36-07	2018-11-20 14:33:18-07	creating validation for forms	2018-11-20 14:43:27.709183-07	1.04500	32	4	\N
312	2018-11-05 15:26:17-07	2018-11-05 16:43:19-07	to do list	2018-11-05 16:43:22.434376-07	1.28389	31	4	\N
311	2018-11-05 12:00:00-07	2018-11-05 16:45:00-07	Find elements for BP1065	2018-11-05 16:50:16.112701-07	4.75000	3	5	16:45:00
313	2018-11-06 07:30:00-07	2018-11-06 08:00:00-07	Design issues with Jason	2018-11-06 08:09:31.352305-07	0.50000	1	5	08:00:00
316	2018-11-06 08:45:00-07	2018-11-06 09:00:00-07	Review of reciprocity results	2018-11-06 09:15:54.190961-07	0.25000	81	5	09:00:00
317	2018-11-06 09:00:00-07	2018-11-06 10:15:00-07	NUWC IPT	2018-11-06 10:42:39.108121-07	1.25000	21	5	10:15:00
318	2018-11-06 10:15:00-07	2018-11-06 10:45:00-07	Schedule Meeting	2018-11-06 10:48:55.578573-07	0.50000	81	5	10:45:00
320	2018-11-06 08:30:00-07	2018-11-06 10:50:00-07	assembly	2018-11-06 12:27:52.674119-07	2.33333	29	7	10:50:00
504	2018-11-21 09:00:00-07	2018-11-21 10:00:00-07	File compare	2018-11-21 11:19:51.714722-07	1.00000	3	5	10:00:00
510	2018-11-23 07:22:37-07	2018-11-23 15:30:00-07	Building shelves.	2018-11-26 07:11:20.275097-07	8.12306	1	3	\N
323	2018-11-06 07:00:00-07	2018-11-06 15:53:29-07	Designing Fixture.	2018-11-06 15:53:33.825233-07	8.89139	1	3	\N
321	2018-11-06 11:15:00-07	2018-11-06 14:00:00-07	Remove duplicate test files	2018-11-06 16:06:13.324221-07	2.75000	3	5	14:00:00
324	2018-11-06 14:00:00-07	2018-11-06 15:30:00-07	Discussed BP1057 failure	2018-11-06 16:06:49.676002-07	1.50000	81	5	15:30:00
516	2018-11-26 07:30:00-07	2018-11-26 08:00:00-07	Status	2018-11-26 07:59:18.435354-07	0.50000	21	5	08:00:00
326	2018-11-07 04:00:00-07	2018-11-07 06:00:00-07	Array mapping 1st cut	2018-11-07 05:58:14.165307-07	2.00000	3	5	06:00:00
522	2018-11-26 09:30:00-07	2018-11-26 10:30:00-07	BP1065 Capacitance issue	2018-11-26 10:22:14.656332-07	1.00000	81	5	10:30:00
528	2018-11-26 14:23:49-07	2018-11-26 14:45:00-07	banking, paper work	2018-11-26 14:39:02.274594-07	0.35306	40	7	14:45:00
534	2018-11-27 09:00:00-07	2018-11-27 11:30:00-07	assembly	2018-11-27 13:13:22.02523-07	2.50000	29	7	11:30:00
329	2018-11-07 07:00:00-07	2018-11-07 07:15:00-07	Reviewed design with Jason	2018-11-07 07:57:06.040093-07	0.25000	1	5	07:15:00
542	2018-11-28 07:15:00-07	2018-11-28 07:30:00-07	DFT coding	2018-11-28 07:25:13.278189-07	0.25000	34	5	07:30:00
332	2018-11-07 08:30:00-07	2018-11-07 09:30:00-07	Selection Algorithm	2018-11-07 09:37:59.780555-07	1.00000	3	5	09:30:00
333	2018-11-07 09:30:00-07	2018-11-07 09:45:00-07	Reviewed requirements with Chris	2018-11-07 09:39:08.963851-07	0.25000	34	5	09:45:00
548	2018-11-28 11:30:00-07	2018-11-28 11:45:00-07	Review Pressure drawing	2018-11-28 12:00:28.972748-07	0.25000	4	5	12:00:00
334	2018-11-07 09:45:00-07	2018-11-07 10:30:00-07	Capacitance check	2018-11-07 10:29:01.59605-07	0.75000	3	5	10:30:00
555	2018-11-28 15:15:00-07	2018-11-28 17:15:00-07	paper work	2018-11-28 17:30:16.349158-07	2.00000	40	7	17:15:00
336	2018-11-07 09:15:00-07	2018-11-07 12:15:00-07	pick up wood	2018-11-07 12:17:14.03887-07	3.00000	28	7	12:15:00
337	2018-11-07 12:17:14-07	2018-11-07 13:00:00-07	ordering stuff	2018-11-07 13:22:51.341653-07	0.71278	40	7	13:00:00
335	2018-11-07 10:30:00-07	2018-11-07 13:45:00-07	Calculate distances from median	2018-11-07 13:40:02.556486-07	3.25000	3	5	13:45:00
322	2018-11-06 12:39:06-07	2018-11-06 16:45:02-07	research dynos and todo list development	2018-11-07 13:59:24.750102-07	4.09889	31	4	\N
564	2018-11-29 10:32:20-07	2018-11-29 11:28:52-07	change redirects and fix cache	2018-11-29 11:29:29.390579-07	0.94222	33	4	\N
339	2018-11-07 13:45:00-07	2018-11-07 14:00:00-07	Helped Crystal with inventory check	2018-11-07 14:10:16.99301-07	0.25000	80	5	14:00:00
577	2018-11-30 14:29:27-07	2018-11-30 17:30:00-07	work on part view	2018-11-30 18:38:55.750819-07	3.00917	32	4	17:30:00
570	2018-11-30 06:45:00-07	2018-11-30 15:30:00-07	Drilling Aluminum plates.	2018-12-03 08:32:18.352084-07	8.75000	1	3	\N
583	2018-12-01 09:00:00-07	2018-12-01 18:30:00-07	Building wall.	2018-12-03 08:34:07.317755-07	9.50000	28	3	\N
584	2018-12-03 07:00:00-07	2018-12-03 15:31:25-07	Drilling Aluminum plates.	2018-12-03 15:31:28.66272-07	8.52361	1	3	\N
590	2018-12-03 18:06:18-07	2018-12-03 20:26:06-07	finishing part view	2018-12-04 09:37:51.821602-07	2.33000	32	4	\N
601	2018-12-04 12:30:00-07	2018-12-04 13:00:00-07	Map audit function	2018-12-04 13:38:59.097144-07	0.50000	3	5	13:00:00
596	2018-12-04 09:37:00-07	2018-12-04 13:26:46-07	adding search functionality	2018-12-04 14:52:54.623623-07	3.82944	32	4	\N
607	2018-12-05 07:45:00-07	2018-12-05 08:00:00-07	Discussion of prestress with Brooks	2018-12-05 08:01:34.273082-07	0.25000	75	5	08:00:00
612	2018-12-05 13:00:00-07	2018-12-05 16:40:00-07	finish AWS setup	2018-12-05 17:01:22.483713-07	3.66667	32	4	16:40:00
295	2018-11-02 11:45:00-06	2018-11-02 13:15:00-06	Tuning evaluation	2018-11-02 13:20:40.833097-06	1.50000	22	5	13:15:00
442	2018-11-15 12:30:00-07	2018-11-15 13:15:00-07	Trusted download training	2018-11-15 14:56:34.92121-07	0.75000	80	5	\N
297	2018-11-02 13:15:00-06	2018-11-02 13:30:00-06	Map 1065 - selecting new elements	2018-11-02 13:35:48.969475-06	0.25000	3	5	13:30:00
302	2018-11-05 06:45:00-07	2018-11-05 07:15:00-07	planning	2018-11-05 08:31:11.445968-07	0.50000	39	7	07:15:00
314	2018-11-06 08:00:00-07	2018-11-06 08:15:00-07	Mapping discussion with Scott	2018-11-06 08:18:14.189746-07	0.25000	3	5	08:15:00
449	2018-11-15 19:30:00-07	2018-11-15 20:30:00-07	Shelf carrier holders	2018-11-15 23:17:31.952753-07	1.00000	1	5	\N
315	2018-11-06 08:15:00-07	2018-11-06 08:45:00-07	Test support for Crystal	2018-11-06 08:47:41.598241-07	0.50000	80	5	08:45:00
456	2018-11-16 11:00:00-07	2018-11-16 11:30:00-07	Shelf design	2018-11-16 12:30:55.246942-07	0.50000	3	5	\N
319	2018-11-06 10:45:00-07	2018-11-06 11:15:00-07	Fixes from testing in the secure room	2018-11-06 13:12:29.329905-07	0.50000	3	5	11:15:00
457	2018-11-16 11:30:00-07	2018-11-16 12:30:00-07	Element frequency problem meeting	2018-11-16 12:31:43.944857-07	1.00000	80	5	\N
325	2018-11-06 15:30:00-07	2018-11-06 16:30:00-07	Array mapping 1st cut	2018-11-06 16:29:10.643608-07	1.00000	3	5	16:30:00
330	2018-11-07 07:30:00-07	2018-11-07 08:00:00-07	Standup	2018-11-07 07:57:34.923796-07	0.50000	21	5	08:00:00
464	2018-11-17 08:00:00-07	2018-11-17 12:00:00-07	Element carrier shelves	2018-11-17 20:14:37.060579-07	4.00000	1	5	\N
331	2018-11-07 08:00:00-07	2018-11-07 08:30:00-07	Add info back on 290, 294, 295, 301	2018-11-07 08:28:16.661849-07	0.50000	22	5	08:30:00
327	2018-11-07 07:00:00-07	2018-11-07 15:15:00-07	Pick and place machine	2018-11-07 15:11:23.126268-07	8.25000	1	8	15:15:00
469	2018-11-19 08:10:00-07	2018-11-19 10:15:00-07	cleaning shop	2018-11-19 11:53:05.953502-07	2.08333	28	7	\N
478	2018-11-19 14:30:00-07	2018-11-19 16:00:00-07	working at Harris to setup test.	2018-11-20 07:33:42.42591-07	1.50000	83	3	\N
485	2018-11-20 07:30:00-07	2018-11-20 08:00:00-07	Discussed design with Jason	2018-11-20 07:52:10.85764-07	0.50000	1	5	\N
493	2018-11-20 09:00:00-07	2018-11-20 11:03:00-07	fix end time and todo delete	2018-11-20 11:14:06.545938-07	2.05000	31	4	11:03:00
491	2018-11-20 11:07:12-07	2018-11-20 13:01:15-07	installing connectors for testing.	2018-11-20 13:01:21.268491-07	1.90083	83	3	\N
494	2018-11-20 11:14:14-07	2018-11-20 13:30:35-07	adding edit form	2018-11-20 14:43:14.924496-07	2.27250	32	4	\N
499	2018-11-20 15:00:00-07	2018-11-20 16:00:00-07	Trusted Download	2018-11-20 16:03:41.846615-07	1.00000	3	5	16:00:00
517	2018-11-26 08:00:00-07	2018-11-26 08:15:00-07	New CD for BP1057	2018-11-26 08:25:26.769368-07	0.25000	81	5	08:15:00
505	2018-11-21 10:00:00-07	2018-11-21 15:30:00-07	Cables	2018-11-21 15:29:14.009281-07	5.50000	1	8	15:30:00
511	2018-11-24 10:00:00-07	2018-11-24 14:00:00-07	Shelf backer plates	2018-11-24 23:30:29.364853-07	4.00000	1	5	14:00:00
523	2018-11-26 10:30:00-07	2018-11-26 12:00:00-07	Status meeting	2018-11-26 12:00:53.531799-07	1.50000	34	5	12:00:00
535	2018-11-27 12:45:00-07	2018-11-27 14:30:00-07	banking, paper work	2018-11-27 14:36:46.97023-07	1.75000	40	7	14:30:00
529	2018-11-27 07:00:00-07	2018-11-27 17:28:09-07	Building holders.	2018-11-27 17:28:16.886804-07	10.46917	1	3	\N
5	2018-10-03 11:50:03-06	2018-10-03 13:15:48-06	Get system running and finish delete	2018-10-03 13:15:51.45486-06	1.42917	31	4	\N
6	2018-10-03 14:00:24-06	2018-10-03 16:52:00-06	delete extra stuff	2018-10-03 16:54:00.039896-06	2.86000	31	4	\N
7	2018-10-04 10:24:03-06	2018-10-04 14:20:12-06	emailing employees to start time system	2018-10-04 14:36:19.33244-06	3.93583	31	4	\N
8	2018-10-02 18:00:00-06	2018-10-02 20:00:00-06	Looked into issue with MQTT router	2018-10-04 18:47:38.720367-06	2.00000	30	6	\N
9	2018-10-03 18:00:00-06	2018-10-03 20:00:00-06	Changed and tested examples without printer	2018-10-04 18:48:58.352214-06	2.00000	30	6	\N
10	2018-10-04 18:30:00-06	2018-10-04 19:15:00-06	More testing of examples	2018-10-04 19:14:03.663261-06	0.75000	30	6	\N
11	2018-10-05 09:31:40-06	2018-10-05 11:43:57-06	add in URLs to admin	2018-10-05 11:44:00.138445-06	2.20472	33	4	\N
12	2018-10-05 12:22:41-06	2018-10-05 13:52:35-06	adding statistics	2018-10-05 13:52:37.74228-06	1.49833	33	4	\N
13	2018-10-01 09:15:00-06	2018-10-01 10:30:00-06	Trusted Download	2018-10-07 13:43:43.319692-06	1.25000	22	5	\N
14	2018-10-01 11:45:00-06	2018-10-01 12:15:00-06	Trusted Download	2018-10-07 13:44:39.095534-06	0.50000	22	5	\N
15	2018-10-01 08:00:00-06	2018-10-01 09:15:00-06	Calculation of parameters	2018-10-07 13:45:58.695651-06	1.25000	24	5	\N
16	2018-10-01 12:15:00-06	2018-10-01 14:45:00-06	Calculation of parameters	2018-10-07 13:46:57.585393-06	2.50000	24	5	\N
17	2018-10-01 15:15:00-06	2018-10-01 15:45:00-06	Calculation of parameters	2018-10-07 13:47:42.931734-06	0.50000	24	5	\N
18	2018-10-01 16:45:00-06	2018-10-01 17:00:00-06	Calculation of parameters	2018-10-07 13:48:23.54367-06	0.25000	24	5	\N
19	2018-10-01 10:30:00-06	2018-10-01 10:45:00-06	Status	2018-10-07 13:51:15.256453-06	0.25000	34	5	\N
20	2018-10-01 07:30:00-06	2018-10-01 08:00:00-06	Status	2018-10-07 13:52:32.615821-06	0.50000	21	5	\N
21	2018-10-01 10:45:00-06	2018-10-01 11:45:00-06	Progeny IPT	2018-10-07 13:54:19.431856-06	1.00000	21	5	\N
22	2018-10-01 14:45:00-06	2018-10-01 15:15:00-06	F5 Issue	2018-10-07 13:55:25.302878-06	0.50000	21	5	\N
23	2018-10-01 15:45:00-06	2018-10-01 16:45:00-06	F5 Issue	2018-10-07 13:56:12.103126-06	1.00000	21	5	\N
24	2018-10-02 07:45:00-06	2018-10-02 10:45:00-06	Clean up and installation Issues	2018-10-07 14:00:31.231737-06	3.00000	24	5	\N
25	2018-10-02 10:45:00-06	2018-10-02 17:00:00-06	F5 Issue	2018-10-07 14:01:50.448627-06	6.25000	21	5	\N
26	2018-10-03 07:30:00-06	2018-10-03 08:00:00-06	Status meeting	2018-10-07 14:02:53.776469-06	0.50000	21	5	\N
27	2018-10-03 08:00:00-06	2018-10-03 17:45:00-06	Selection Algorithm	2018-10-07 14:04:27.687887-06	9.75000	3	5	\N
28	2018-10-04 15:00:00-06	2018-10-04 15:30:00-06	Connection to new DB	2018-10-07 14:08:48.279875-06	0.50000	35	5	\N
29	2018-10-04 14:30:00-06	2018-10-04 15:00:00-06	Trusted Download	2018-10-07 14:09:56.825653-06	0.50000	22	5	\N
30	2018-10-04 08:30:00-06	2018-10-04 11:30:00-06	Selection Algorithm	2018-10-07 14:11:23.236595-06	3.00000	3	5	\N
31	2018-10-04 12:30:00-06	2018-10-04 14:30:00-06	Mapping Algorithm	2018-10-07 14:12:36.107663-06	2.00000	3	5	\N
32	2018-10-04 20:00:00-06	2018-10-04 22:15:00-06	Selection Algorithm	2018-10-07 14:13:46.62845-06	2.25000	3	5	\N
33	2018-10-05 07:30:00-06	2018-10-05 07:45:00-06	PM training James	2018-10-07 14:15:38.413257-06	0.25000	14	5	\N
34	2018-10-05 08:00:00-06	2018-10-05 08:15:00-06	Mapping Algorithm	2018-10-07 14:16:31.664435-06	0.25000	3	5	\N
35	2018-10-05 11:00:00-06	2018-10-05 11:30:00-06	Process Files	2018-10-07 14:17:29.979898-06	0.50000	24	5	\N
36	2018-10-05 08:15:00-06	2018-10-05 11:00:00-06	Connection to new DB	2018-10-07 14:18:41.715786-06	2.75000	35	5	\N
37	2018-10-05 11:30:00-06	2018-10-05 15:45:00-06	Select Prestress Date	2018-10-07 14:20:00.17195-06	4.25000	35	5	\N
38	2018-10-01 18:00:00-06	2018-10-01 20:00:00-06	Layout and send out	2018-10-07 14:22:40.583707-06	2.00000	36	5	\N
543	2018-11-28 07:30:00-07	2018-11-28 07:45:00-07	Status meeting	2018-11-28 07:44:05.104072-07	0.25000	21	5	07:45:00
549	2018-11-28 11:45:00-07	2018-11-28 12:00:00-07	Answered Henry's questions	2018-11-28 12:01:09.997873-07	0.25000	34	5	12:00:00
556	2018-11-28 14:24:00-07	2018-11-28 15:00:00-07	finish checking redirects	2018-11-28 18:32:29.376505-07	0.60000	33	4	\N
557	2018-11-28 15:00:00-07	2018-11-28 17:07:00-07	figure out manufacturer merging	2018-11-28 18:33:15.459045-07	2.11667	32	4	\N
565	2018-11-29 11:28:53-07	2018-11-29 13:35:00-07	add edit and delete for manufacturer and location	2018-11-29 14:04:06.037777-07	2.10194	32	4	\N
578	2018-11-30 11:15:00-07	2018-11-30 14:32:00-07	run errands	2018-11-30 14:35:46.088151-07	3.28333	40	7	14:32:00
571	2018-11-30 07:00:00-07	2018-11-30 11:00:00-07	Building wire harnesses	2018-11-30 15:04:03.356751-07	4.00000	1	8	11:00:00
585	2018-12-03 10:30:00-07	2018-12-03 10:45:00-07	Status meeting	2018-12-03 11:02:19.313734-07	0.25000	34	5	10:45:00
591	2018-12-03 13:45:00-07	2018-12-03 22:30:00-07	Map verification	2018-12-03 22:28:22.232512-07	8.75000	3	5	20:30:00
602	2018-12-04 13:00:00-07	2018-12-04 13:45:00-07	Status meeting	2018-12-04 13:40:52.70335-07	0.75000	75	5	13:45:00
39	2018-10-02 19:00:00-06	2018-10-02 20:00:00-06	Stencil	2018-10-07 14:24:09.039844-06	1.00000	36	5	\N
40	2018-10-08 07:30:00-06	2018-10-08 07:45:00-06	Status meeting	2018-10-08 07:42:31.163106-06	0.25000	21	5	\N
41	2018-10-08 07:45:00-06	2018-10-08 08:15:00-06	Connection to new DB	2018-10-08 08:08:04.091373-06	0.50000	35	5	\N
46	2018-10-08 10:45:00-06	2018-10-08 11:30:00-06	Design & Planning	2018-10-08 11:31:11.850041-06	0.75000	34	5	\N
42	2018-10-08 08:15:00-06	2018-10-08 09:15:00-06	Software Install	2018-10-08 09:07:51.050698-06	1.00000	24	5	\N
43	2018-10-06 12:10:00-06	2018-10-06 13:25:00-06	trying code	2018-10-08 09:58:13.757767-06	1.25000	32	4	\N
44	2018-10-08 09:15:00-06	2018-10-08 10:00:00-06	Selection Algorithm	2018-10-08 11:20:03.225322-06	0.75000	3	5	\N
45	2018-10-08 10:00:00-06	2018-10-08 10:45:00-06	BOE update meeting	2018-10-08 11:29:47.628078-06	0.75000	37	5	\N
47	2018-10-01 09:30:00-06	2018-10-01 17:30:00-06	rewiring electrical boxes.	2018-10-08 12:00:38.126198-06	8.00000	26	3	\N
48	2018-10-02 08:30:00-06	2018-10-02 17:30:00-06	rewiring electrical boxes.	2018-10-08 12:03:17.871126-06	9.00000	26	3	\N
49	2018-10-03 06:30:00-06	2018-10-03 08:30:00-06	cleaning up wood shop.	2018-10-08 12:08:26.877628-06	2.00000	28	3	\N
50	2018-10-03 08:30:00-06	2018-10-03 17:00:00-06	Reprogramming octal relay boards.	2018-10-08 12:10:18.426498-06	8.50000	26	3	\N
51	2018-10-04 06:30:00-06	2018-10-04 17:00:00-06	Reprogramming octal relay boards.	2018-10-08 12:13:43.914081-06	10.50000	26	3	\N
52	2018-10-08 11:30:00-06	2018-10-08 12:15:00-06	BOE updates	2018-10-08 12:17:00.962204-06	0.75000	37	5	\N
54	2018-10-05 11:00:00-06	2018-10-05 14:30:00-06	Fixed 2 miss wire. Tested comm problem from desk. 	2018-10-08 12:20:43.003168-06	3.50000	26	3	\N
58	2018-10-08 10:30:00-06	2018-10-08 15:43:36-06	Draging cable from mud room.	2018-10-08 15:43:44.692841-06	5.22667	26	3	\N
56	2018-10-08 12:15:00-06	2018-10-08 13:15:00-06	Selection Algorithm	2018-10-08 13:10:28.553499-06	1.00000	3	5	\N
55	2018-10-08 12:45:00-06	2018-10-08 14:31:52-06	run errands	2018-10-08 14:31:56.498865-06	1.78111	28	7	\N
53	2018-10-05 10:00:00-06	2018-10-05 11:00:00-06	Picking up bad Torque motor PCB from Harris.	2018-10-08 14:55:54.937561-06	1.00000	38	3	\N
59	2018-10-08 15:00:00-06	2018-10-08 17:15:00-06	Selection Algorithm	2018-10-08 17:13:38.71859-06	2.25000	3	5	\N
60	2018-10-08 19:00:00-06	2018-10-08 19:15:00-06	Status	2018-10-08 19:17:06.491681-06	0.25000	21	5	\N
61	2018-10-08 20:15:00-06	2018-10-08 20:30:00-06	Payroll	2018-10-08 20:51:53.355959-06	0.25000	39	5	\N
62	2018-10-08 19:45:00-06	2018-10-08 20:15:00-06	Relay Board PF2 bug	2018-10-08 20:53:18.3244-06	0.50000	26	5	\N
63	2018-10-08 20:30:00-06	2018-10-08 21:15:00-06	Feature request	2018-10-08 21:13:41.597472-06	0.75000	31	5	\N
64	2018-10-09 07:30:00-06	2018-10-09 09:00:00-06	Selection Algorithm	2018-10-09 09:39:03.13494-06	1.50000	3	5	\N
65	2018-10-09 09:00:00-06	2018-10-09 10:00:00-06	NUWC IPT	2018-10-09 09:41:38.855465-06	1.00000	21	5	\N
57	2018-10-08 13:15:00-06	2018-10-08 15:00:00-06	Review FAT test hours	2018-10-09 10:13:29.368158-06	1.75000	37	5	\N
68	2018-10-08 10:00:00-06	2018-10-08 14:00:00-06	developing models	2018-10-09 12:11:58.503175-06	4.00000	32	4	\N
67	2018-10-09 10:00:00-06	2018-10-09 15:45:00-06	Selection Algorithm	2018-10-09 15:39:02.229993-06	5.75000	3	5	\N
66	2018-10-09 10:04:45-06	2018-10-09 14:46:15-06	upgrade Django version	2018-10-09 14:53:25.185993-06	4.69167	31	4	\N
69	2018-10-09 03:45:00-06	2018-10-09 05:15:00-06	Element Verification	2018-10-10 06:01:38.589988-06	1.50000	3	5	\N
70	2018-10-10 05:45:00-06	2018-10-10 06:00:00-06	Planning	2018-10-10 06:02:20.87696-06	0.25000	21	5	\N
72	2018-10-10 06:15:00-06	2018-10-10 06:30:00-06	Trusted Download	2018-10-10 07:15:31.93393-06	0.25000	22	5	\N
138	2018-10-17 13:30:00-06	2018-10-17 15:45:00-06	Bump detector	2018-10-17 15:45:53.136685-06	2.25000	3	5	\N
73	2018-10-10 06:30:00-06	2018-10-10 07:15:00-06	Element Verification	2018-10-10 07:16:35.049655-06	0.75000	3	5	\N
71	2018-10-09 07:00:00-06	2018-10-09 07:17:26-06	Adding switch to test box.	2018-10-10 07:18:53.32875-06	0.29056	25	3	\N
139	2018-10-17 15:45:00-06	2018-10-17 16:15:00-06	Element Verification	2018-10-17 16:08:14.68111-06	0.50000	3	5	\N
74	2018-10-09 07:20:00-06	2018-10-09 15:20:00-06	Adding a switch.	2018-10-10 07:22:03.788059-06	8.00000	25	3	\N
140	2018-10-17 19:00:00-06	2018-10-17 20:30:00-06	Element Verification	2018-10-17 20:59:40.482484-06	1.50000	3	5	\N
76	2018-10-10 07:15:00-06	2018-10-10 07:30:00-06	Selection Algorithm	2018-10-10 08:03:17.961576-06	0.25000	3	5	\N
77	2018-10-10 07:30:00-06	2018-10-10 08:00:00-06	Status meeting	2018-10-10 08:03:58.865012-06	0.50000	21	5	\N
142	2018-10-18 07:30:00-06	2018-10-18 08:15:00-06	Room set up	2018-10-18 08:09:43.109971-06	0.75000	3	5	\N
79	2018-10-10 08:00:00-06	2018-10-10 09:15:00-06	Data review	2018-10-10 09:32:01.555527-06	1.25000	42	5	\N
80	2018-10-10 09:15:00-06	2018-10-10 09:30:00-06	Oil leak	2018-10-10 09:32:55.157572-06	0.25000	15	5	\N
75	2018-10-10 07:00:00-06	2018-10-10 10:00:00-06	Repairing	2018-10-18 08:10:16.538722-06	3.00000	38	3	\N
81	2018-10-10 09:30:00-06	2018-10-10 10:00:00-06	Analysis	2018-10-10 10:40:26.449788-06	0.50000	41	5	\N
82	2018-10-10 10:00:00-06	2018-10-10 10:45:00-06	Discussions with Craig, Pictures 	2018-10-10 10:41:27.369498-06	0.75000	4	5	\N
83	2018-10-10 10:45:00-06	2018-10-10 11:00:00-06	Training Scott	2018-10-10 11:28:53.761184-06	0.25000	24	5	\N
84	2018-10-10 11:00:00-06	2018-10-10 11:30:00-06	Remapped 1065	2018-10-10 11:29:33.132044-06	0.50000	3	5	\N
85	2018-10-10 11:30:00-06	2018-10-10 12:45:00-06	Gathered test files	2018-10-10 12:38:38.286239-06	1.25000	5	5	\N
86	2018-10-10 12:45:00-06	2018-10-10 13:00:00-06	Training Scott	2018-10-10 12:51:51.725788-06	0.25000	24	5	\N
87	2018-10-10 13:15:00-06	2018-10-10 14:30:00-06	Impedance Consolidation	2018-10-10 14:25:33.322178-06	1.25000	41	5	\N
88	2018-10-10 10:00:01-06	2018-10-10 15:00:32-06	code	2018-10-18 08:10:49.057731-06	5.00861	26	3	\N
89	2018-10-10 15:01:00-06	2018-10-10 15:46:37-06	repairing octal bd.	2018-10-10 15:46:40.998585-06	0.76028	26	3	\N
90	2018-10-10 17:30:00-06	2018-10-10 19:45:00-06	Test file parse	2018-10-11 08:47:06.562579-06	2.25000	5	5	\N
92	2018-10-11 10:45:00-06	2018-10-11 12:00:00-06	Plot function	2018-10-11 11:08:00.174931-06	1.25000	5	5	\N
91	2018-10-11 09:52:41-06	2018-10-11 13:28:24-06	working on clockin and projects	2018-10-11 13:33:02.959287-06	3.59528	31	4	\N
143	2018-10-18 08:15:00-06	2018-10-18 08:30:00-06	Trim RVS update	2018-10-18 08:29:22.670349-06	0.25000	24	5	\N
93	2018-10-12 18:07:04-06	2018-10-12 20:05:30-06	removing compress and selector apps	2018-10-13 08:56:59.696248-06	1.97389	31	4	\N
94	2018-10-15 08:45:00-06	2018-10-15 09:45:00-06	Payroll and Invoices	2018-10-15 07:42:53.732971-06	1.00000	39	5	\N
95	2018-10-15 10:00:00-06	2018-10-15 10:45:00-06	Bump detector	2018-10-15 08:41:07.519894-06	0.75000	5	5	\N
129	2018-10-15 19:30:33-06	2018-10-15 21:16:28-06	getting rid of 1.8 requirements	2018-10-15 21:16:31.748018-06	1.76528	31	4	\N
130	2018-10-16 09:15:00-06	2018-10-16 12:15:00-06	PMR Slide review, PMR	2018-10-16 10:18:55.210538-06	3.00000	21	5	\N
131	2018-10-16 12:30:00-06	2018-10-16 15:15:00-06	PMR meeting	2018-10-16 13:13:35.118471-06	2.75000	21	5	\N
132	2018-10-16 11:00:00-06	2018-10-16 15:00:00-06	moving to new app	2018-10-16 21:12:03.878882-06	4.00000	31	4	\N
133	2018-10-16 21:15:03-06	2018-10-16 22:00:00-06	moving to new app	2018-10-17 09:58:56.11059-06	0.74917	31	4	\N
135	2018-10-17 08:00:00-06	2018-10-17 10:00:00-06	Bump	2018-10-17 12:18:00.671517-06	2.00000	3	5	\N
134	2018-10-17 09:53:00-06	2018-10-17 13:20:45-06	new app	2018-10-17 13:20:48.001682-06	3.46250	31	4	\N
136	2018-10-17 12:00:00-06	2018-10-17 13:30:00-06	Tuning evaluation	2018-10-17 13:38:18.864364-06	1.50000	75	5	\N
137	2018-10-17 13:59:06-06	2018-10-17 15:10:51-06	moving to new app	2018-10-17 15:10:55.345144-06	1.19583	31	4	\N
144	2018-10-18 08:30:00-06	2018-10-18 11:00:00-06	Fixed serial number bug	2018-10-18 10:57:42.432365-06	2.50000	2	5	\N
145	2018-10-18 11:00:00-06	2018-10-18 11:30:00-06	System design	2018-10-18 11:48:08.948497-06	0.50000	76	5	\N
146	2018-10-18 11:30:00-06	2018-10-18 12:30:00-06	Set up carrier testing	2018-10-18 12:28:12.776819-06	1.00000	2	5	\N
148	2018-10-18 12:30:00-06	2018-10-18 13:15:00-06	Meeting	2018-10-18 13:14:42.356621-06	0.75000	77	5	\N
149	2018-10-18 13:15:00-06	2018-10-18 15:00:00-06	Set up carrier testing	2018-10-18 15:04:13.119392-06	1.75000	2	5	\N
150	2018-10-18 15:00:00-06	2018-10-18 15:15:00-06	Still calculate rvs and cap when fails	2018-10-18 15:13:34.441722-06	0.25000	24	5	\N
154	2018-10-18 19:52:09-06	2018-10-18 21:22:00-06	moving to new app	2018-10-18 21:49:26.29845-06	1.49750	31	4	\N
141	2018-10-18 06:50:00-06	2018-10-18 11:00:00-06	modifing switch	2018-10-18 16:07:43.024264-06	4.16667	26	3	\N
152	2018-10-18 15:15:00-06	2018-10-18 16:30:00-06	Element Verification	2018-10-18 16:31:03.931876-06	1.25000	3	5	\N
147	2018-10-18 12:43:34-06	2018-10-18 16:19:27-06	moving to new app	2018-10-18 18:44:52.416952-06	3.59806	31	4	\N
153	2018-10-18 18:46:29-06	2018-10-18 19:14:58-06	moving to new app	2018-10-18 19:52:07.262022-06	0.47472	31	4	\N
156	2018-10-19 07:30:00-06	2018-10-19 08:45:00-06	Test setup	2018-10-19 08:49:25.048546-06	1.25000	2	5	\N
157	2018-10-19 09:00:00-06	2018-10-19 09:45:00-06	Security Clearance	2018-10-19 09:54:56.898095-06	0.75000	21	5	\N
158	2018-10-19 09:45:00-06	2018-10-19 10:00:00-06	Email Dan - Shaker fix	2018-10-19 09:56:34.050926-06	0.25000	15	5	\N
159	2018-10-19 10:00:00-06	2018-10-19 10:30:00-06	Specification for display	2018-10-19 10:31:43.905106-06	0.50000	12	5	\N
160	2018-10-19 10:30:00-06	2018-10-19 11:00:00-06	Electrical intermittent problem	2018-10-19 10:56:49.801404-06	0.50000	15	5	\N
155	2018-10-19 08:24:00-06	2018-10-19 11:46:24-06	moving to new app	2018-10-19 11:46:27.237097-06	3.37333	31	4	\N
161	2018-10-19 11:00:00-06	2018-10-19 12:15:00-06	Relay Board Meeting	2018-10-19 12:23:46.251502-06	1.25000	15	5	\N
162	2018-10-19 12:15:00-06	2018-10-19 13:45:00-06	Security Clearance	2018-10-19 13:52:38.554721-06	1.50000	21	5	\N
151	2018-10-18 11:00:01-06	2018-10-18 17:30:00-06	Designing Fixture.	2018-10-19 13:58:00.204802-06	6.49972	76	3	\N
163	2018-10-19 08:30:00-06	2018-10-19 14:41:37-06	Modifying MQQT switches, changing out house switc 	2018-10-19 14:41:41.804162-06	6.19361	26	3	\N
164	2018-10-19 13:45:00-06	2018-10-19 15:30:00-06	Element Verification	2018-10-19 15:28:22.020139-06	1.75000	3	5	\N
165	2018-10-19 15:00:00-06	2018-10-19 16:00:00-06	Verified display I have works and work on new code	2018-10-19 16:03:25.809938-06	1.00000	12	6	\N
167	2018-10-20 09:00:00-06	2018-10-20 14:30:00-06	cleaning shop	2018-10-20 15:07:12.688189-06	5.50000	28	7	\N
168	2018-10-19 13:00:00-06	2018-10-19 17:00:00-06	banking, paper work	2018-10-20 15:08:17.55911-06	4.00000	40	7	\N
166	2018-10-20 09:00:00-06	2018-10-20 15:21:19-06	Cleaning shop	2018-10-20 15:21:26.256093-06	6.35528	28	3	\N
169	2018-10-20 08:00:00-06	2018-10-20 15:00:00-06	Organized parts	2018-10-20 18:32:24.897476-06	7.00000	28	5	\N
170	2018-10-20 19:00:00-06	2018-10-20 20:15:00-06	Payroll and Invoices	2018-10-20 20:25:05.748592-06	1.25000	39	5	\N
171	2018-10-20 21:00:00-06	2018-10-20 23:00:00-06	Worked on displaying digits on the lcd screen.	2018-10-20 22:52:12.034188-06	2.00000	12	6	\N
173	2018-10-22 07:30:00-06	2018-10-22 07:45:00-06	Status meeting	2018-10-22 07:46:32.301586-06	0.25000	21	5	\N
212	2018-10-25 07:30:00-06	2018-10-25 07:45:00-06	Discussed carrier shelves with Jason	2018-10-25 08:09:17.909598-06	0.25000	2	5	\N
174	2018-10-22 07:45:00-06	2018-10-22 09:00:00-06	Visio and Meeting	2018-10-22 10:26:28.448209-06	1.25000	9	5	\N
175	2018-10-22 09:00:00-06	2018-10-22 09:30:00-06	Meeting	2018-10-22 10:27:41.476621-06	0.50000	10	5	\N
176	2018-10-22 09:30:00-06	2018-10-22 10:30:00-06	Parts order	2018-10-22 10:28:45.385343-06	1.00000	12	5	\N
177	2018-10-22 10:30:00-06	2018-10-22 10:45:00-06	Status meeting	2018-10-22 10:29:36.635115-06	0.25000	34	5	\N
178	2018-10-22 10:45:00-06	2018-10-22 12:00:00-06	IPT meeting	2018-10-22 12:17:31.935708-06	1.25000	21	5	\N
180	2018-10-22 12:00:00-06	2018-10-22 15:00:00-06	Board Layout	2018-10-22 14:53:11.663656-06	3.00000	2	5	\N
172	2018-10-22 06:53:48-06	2018-10-22 16:09:30-06	Cleaning, Training.	2018-10-22 16:09:34.794702-06	9.26167	28	3	\N
181	2018-10-22 07:30:00-06	2018-10-22 12:00:00-06	Assembled prototype boards	2018-10-22 16:12:04.010211-06	4.50000	36	8	\N
182	2018-10-22 12:30:00-06	2018-10-22 16:30:00-06	Assembled prototype boards	2018-10-22 16:12:34.406303-06	4.00000	36	8	\N
183	2018-10-22 08:00:00-06	2018-10-22 12:00:00-06	banking, paper work	2018-10-22 18:09:43.340503-06	4.00000	40	7	\N
179	2018-10-22 13:43:11-06	2018-10-22 16:24:00-06	deploying app to heroku	2018-10-22 19:57:58.099961-06	2.68028	31	4	\N
184	2018-10-22 19:58:02-06	2018-10-22 21:35:21-06	deploying app to heroku	2018-10-22 21:35:24.624774-06	1.62194	31	4	\N
213	2018-10-25 08:00:00-06	2018-10-25 08:30:00-06	Meeting with Amy	2018-10-25 08:45:18.877793-06	0.50000	34	5	\N
187	2018-10-23 06:45:00-06	2018-10-23 08:00:00-06	Carrier send out, Cable design	2018-10-23 08:02:34.967963-06	1.25000	2	5	\N
214	2018-10-25 08:30:00-06	2018-10-25 08:45:00-06	Status meeting with Amy	2018-10-25 08:47:11.133127-06	0.25000	21	5	\N
189	2018-10-23 08:15:00-06	2018-10-23 09:00:00-06	Cable board	2018-10-23 10:59:05.873199-06	0.75000	2	5	\N
190	2018-10-23 09:00:00-06	2018-10-23 10:00:00-06	NUWC IPT	2018-10-23 10:59:40.173699-06	1.00000	21	5	\N
191	2018-10-23 10:00:00-06	2018-10-23 12:30:00-06	Cable board design	2018-10-23 12:49:33.277548-06	2.50000	2	5	\N
188	2018-10-23 08:17:00-06	2018-10-23 12:45:00-06	updating database	2018-10-23 12:59:26.309166-06	4.46667	31	4	\N
185	2018-10-23 07:00:00-06	2018-10-23 11:15:00-06	Assembled prototype boards	2018-10-23 13:18:03.764719-06	4.25000	36	8	\N
192	2018-10-23 11:45:00-06	2018-10-23 13:20:00-06	Assembled prototype boards	2018-10-23 13:18:52.831647-06	1.58333	36	8	\N
193	2018-10-23 12:30:00-06	2018-10-23 14:30:00-06	Design Review - Cable Board	2018-10-23 15:23:41.143449-06	2.00000	2	5	\N
194	2018-10-23 15:30:00-06	2018-10-23 15:45:00-06	Ordered boards & parts	2018-10-23 15:36:58.256881-06	0.25000	2	5	\N
195	2018-10-23 15:45:00-06	2018-10-23 16:00:00-06	Ordered Stencils	2018-10-23 15:59:17.495728-06	0.25000	2	5	\N
196	2018-10-24 07:25:00-06	2018-10-24 07:40:00-06	Status meeting	2018-10-24 07:45:29.810054-06	0.25000	21	5	\N
186	2018-10-23 07:02:56-06	2018-10-23 15:30:00-06	Training Britney.	2018-10-24 14:13:16.670429-06	8.45111	36	3	\N
199	2018-10-24 07:40:00-06	2018-10-24 13:30:00-06	Element Verification	2018-10-24 14:21:50.800178-06	5.83333	3	5	\N
200	2018-10-24 13:30:00-06	2018-10-24 14:00:00-06	Meeting on NUWC code	2018-10-24 14:22:52.154539-06	0.50000	34	5	\N
201	2018-10-24 14:00:00-06	2018-10-24 14:15:00-06	PM follow up	2018-10-24 14:23:43.9147-06	0.25000	15	5	\N
202	2018-10-24 14:15:00-06	2018-10-24 14:30:00-06	Misc	2018-10-24 14:28:21.346469-06	0.25000	21	5	\N
198	2018-10-24 06:50:00-06	2018-10-24 15:18:23-06	Building holders.	2018-10-24 15:18:31.623623-06	8.47306	1	3	\N
203	2018-10-24 14:30:00-06	2018-10-24 15:00:00-06	Call to Henry and discussions	2018-10-24 15:54:27.688321-06	0.50000	34	5	\N
204	2018-10-24 15:00:00-06	2018-10-24 16:00:00-06	Status meeting with Amy	2018-10-24 15:55:44.897744-06	1.00000	21	5	\N
205	2018-10-24 16:00:00-06	2018-10-24 16:45:00-06	Aging calculations	2018-10-24 16:45:14.637173-06	0.75000	3	5	\N
197	2018-10-24 13:06:16-06	2018-10-24 16:48:00-06	put on new app and cache	2018-10-24 18:07:28.742625-06	3.69556	33	4	\N
206	2018-10-24 18:03:30-06	2018-10-24 18:34:50-06	changing timesheet view	2018-10-24 18:34:53.754696-06	0.52222	31	4	\N
207	2018-10-24 18:45:00-06	2018-10-24 19:15:00-06	Shop framing design	2018-10-24 19:36:36.995795-06	0.50000	28	5	\N
208	2018-10-24 19:15:00-06	2018-10-24 19:45:00-06	Oscilloscope order	2018-10-24 19:37:17.830543-06	0.50000	39	5	\N
209	2018-10-24 21:00:00-06	2018-10-24 22:21:00-06	changing timesheet view	2018-10-24 22:18:09.979131-06	1.35000	31	4	\N
443	2018-11-15 13:15:00-07	2018-11-15 15:00:00-07	Plots for BP1069 and BP1070	2018-11-15 14:57:45.168519-07	1.75000	3	5	\N
303	2018-11-05 07:40:00-07	2018-11-05 10:00:00-07	assembly	2018-11-05 11:32:27.364155-07	2.33333	29	7	10:00:00
328	2018-11-07 07:00:00-07	2018-11-07 15:31:21-07	Designing Fixture.	2018-11-07 15:31:26.9568-07	8.52250	1	3	\N
341	2018-11-07 13:22:51-07	2018-11-07 15:30:00-07	assembly	2018-11-07 17:15:46.398028-07	2.11917	29	7	15:30:00
627	2018-12-06 14:15:00-07	2018-12-06 14:45:00-07	Ordered parts	2018-12-06 14:46:56.391322-07	0.50000	8	5	14:45:00
338	2018-11-07 13:59:00-07	2018-11-07 17:51:18-07	finishing todo list, improving project form	2018-11-07 22:30:04.099391-07	3.87167	31	4	\N
458	2018-11-16 12:30:00-07	2018-11-16 12:45:00-07	Review	2018-11-16 12:50:10.944019-07	0.25000	82	5	\N
465	2018-11-17 10:00:00-07	2018-11-17 10:30:00-07	banking	2018-11-18 02:30:42.654116-07	0.50000	40	7	\N
343	2018-11-08 08:40:00-07	2018-11-08 09:15:00-07	banking, paper work	2018-11-08 09:47:01.709352-07	0.58333	40	7	09:15:00
466	2018-11-17 14:00:00-07	2018-11-17 15:45:00-07	cleaning shop	2018-11-18 02:31:38.548581-07	1.75000	28	7	\N
444	2018-11-15 15:00:00-07	2018-11-15 15:30:00-07	DFT research	2018-11-15 15:30:25.177684-07	0.50000	34	5	\N
628	2018-12-06 14:45:00-07	2018-12-06 15:15:00-07	GUI map array	2018-12-06 15:17:58.62557-07	0.50000	3	5	15:15:00
579	2018-11-30 11:00:00-07	2018-11-30 15:00:00-07	Organization/Inventory	2018-11-30 15:04:37.249939-07	4.00000	28	8	15:00:00
221	2018-10-26 06:57:00-06	2018-10-26 15:13:35-06	Designing Fixture.	2018-10-29 07:35:01.854342-06	8.27639	1	3	\N
459	2018-11-16 12:45:00-07	2018-11-16 13:30:00-07	Picked elements for study	2018-11-16 13:36:12.737772-07	0.75000	80	5	\N
340	2018-11-07 14:00:00-07	2018-11-07 16:00:00-07	Position elements	2018-11-07 16:05:02.785942-07	2.00000	3	5	15:45:00
451	2018-11-16 07:00:00-07	2018-11-16 14:30:00-07	Pick and place machine/Interconnecting wires	2018-11-16 14:29:37.531923-07	7.50000	2	8	\N
344	2018-11-08 10:25:00-07	2018-11-08 12:20:00-07	assembly	2018-11-08 12:20:40.007077-07	1.91667	29	7	12:20:00
450	2018-11-16 06:59:03-07	2018-11-16 14:32:04-07	Modifying 7 PCB to run MK48 Experiment.	2018-11-19 12:02:04.302823-07	7.55028	83	3	\N
470	2018-11-19 10:30:00-07	2018-11-19 11:30:00-07	Progeny IPT	2018-11-19 12:04:18.55749-07	1.00000	21	5	\N
634	2018-12-07 09:30:00-07	2018-12-07 14:30:00-07	GUI map array	2018-12-07 16:26:24.269524-07	5.00000	3	5	14:30:00
479	2018-11-19 13:00:00-07	2018-11-19 13:30:00-07	Invoices, Payroll	2018-11-19 13:29:05.559355-07	0.50000	40	5	\N
471	2018-11-19 08:30:00-07	2018-11-19 14:05:00-07	finishing form development and pushing to heroku	2018-11-19 14:19:59.15443-07	5.58333	32	4	\N
215	2018-10-25 08:45:00-06	2018-10-25 09:45:00-06	Aging calculations	2018-10-25 09:45:18.498811-06	1.00000	3	5	\N
216	2018-10-25 09:45:00-06	2018-10-25 11:00:00-06	Classified drive storage foam	2018-10-25 11:06:23.702662-06	1.25000	78	5	\N
217	2018-10-25 11:00:00-06	2018-10-25 14:00:00-06	Verify Sweep Files	2018-10-25 14:37:54.56367-06	3.00000	3	5	\N
211	2018-10-25 07:00:00-06	2018-10-25 15:00:00-06	Organization	2018-10-25 15:00:55.032557-06	8.00000	36	8	\N
218	2018-10-25 14:00:00-06	2018-10-25 14:45:00-06	Meeting with Anthony on MOD1 testing	2018-10-25 15:15:09.538496-06	0.75000	21	5	\N
210	2018-10-25 07:03:11-06	2018-10-25 15:15:29-06	building rack for shelves.	2018-10-25 15:15:32.359024-06	8.20500	1	3	\N
219	2018-10-25 15:15:00-06	2018-10-25 16:30:00-06	Verify Sweep Files	2018-10-25 16:34:14.848126-06	1.25000	3	5	\N
220	2018-10-25 16:30:00-06	2018-10-25 17:15:00-06	DFT research	2018-10-25 17:14:23.823335-06	0.75000	34	5	\N
224	2018-10-23 10:00:00-06	2018-10-23 12:00:00-06	banking, paper work	2018-10-26 07:39:49.638404-06	2.00000	39	7	\N
225	2018-10-24 14:00:00-06	2018-10-24 15:00:00-06	painting prep	2018-10-26 07:41:47.74783-06	1.00000	28	7	\N
226	2018-10-25 14:00:00-06	2018-10-25 17:00:00-06	run errands	2018-10-26 07:42:41.192644-06	3.00000	39	7	\N
227	2018-10-26 07:30:00-06	2018-10-26 07:45:00-06	Mapping shelf fixtures	2018-10-26 07:57:31.853223-06	0.25000	1	5	\N
229	2018-10-26 08:00:00-06	2018-10-26 09:15:32-06	finishing timesheet view	2018-10-26 09:15:35.331122-06	1.25889	31	4	\N
230	2018-10-26 08:00:00-06	2018-10-26 10:45:00-06	Spur integration	2018-10-26 10:44:28.239758-06	2.75000	3	5	\N
231	2018-10-26 10:45:00-06	2018-10-26 11:15:00-06	Map 1066	2018-10-26 11:14:50.664063-06	0.50000	79	5	\N
233	2018-10-26 11:15:00-06	2018-10-26 12:00:00-06	Spur integration	2018-10-26 12:11:10.933329-06	0.75000	3	5	\N
640	2018-12-07 18:00:00-07	2018-12-07 19:17:00-07	finish part view and change models	2018-12-07 19:23:54.286267-07	1.28333	32	4	19:13:00
232	2018-10-26 11:42:52-06	2018-10-26 16:05:50-06	changing end time	2018-10-26 16:05:53.811656-06	4.38278	31	4	\N
234	2018-10-26 12:00:00-06	2018-10-26 12:30:00-06	Hydrophone research	2018-10-26 12:34:02.705636-06	0.50000	3	5	\N
222	2018-10-26 07:00:00-06	2018-10-26 15:15:00-06	Organization	2018-10-26 15:13:33.230883-06	8.25000	28	8	\N
228	2018-10-26 07:42:41-06	2018-10-26 14:15:00-06	banking, paper work, painting	2018-10-26 15:20:26.544493-06	6.53861	39	7	\N
235	2018-10-26 12:30:00-06	2018-10-26 15:30:00-06	Element Verification Integration	2018-10-26 15:22:56.360708-06	3.00000	3	5	\N
236	2018-10-25 20:00:00-06	2018-10-25 23:00:00-06	Wrote class for lcd screen to draw a 4x4 grid of d	2018-10-26 17:38:29.853643-06	3.00000	12	6	\N
237	2018-10-26 14:00:00-06	2018-10-26 17:00:00-06	Finished testing lcd class and implemented command	2018-10-26 17:40:44.101202-06	3.00000	12	6	\N
78	2018-10-10 08:49:37-06	2018-10-10 14:35:06-06	finish upgrade and change projects and clockin	2018-10-10 15:44:52.425563-06	5.75806	31	4	\N
486	2018-11-20 08:00:00-07	2018-11-20 09:00:00-07	Signal plotting	2018-11-20 09:07:02.816111-07	1.00000	34	5	\N
650	2018-12-11 09:12:23-07	2018-12-11 13:35:00-07	work on javascript forms	2018-12-11 15:51:32.45122-07	4.37694	32	4	13:35:00
500	2018-11-20 16:00:00-07	2018-11-20 16:45:00-07	File compare	2018-11-20 16:46:49.417725-07	0.75000	3	5	16:45:00
646	2018-12-11 06:45:00-07	2018-12-11 17:35:00-07	Installing PCB's on to Carriers.	2018-12-12 07:18:24.769976-07	10.83333	2	3	\N
506	2018-11-21 08:46:00-07	2018-11-21 12:40:45-07	form validation and configuring excel import	2018-11-21 12:58:11.171093-07	3.91250	32	4	\N
512	2018-11-24 19:00:00-07	2018-11-24 20:00:00-07	Attenuator design	2018-11-24 23:31:15.496422-07	1.00000	34	5	20:00:00
659	2018-12-11 12:00:00-07	2018-12-11 14:30:00-07	assembly	2018-12-12 07:26:15.456015-07	2.50000	29	7	14:30:00
518	2018-11-26 08:15:00-07	2018-11-26 08:45:00-07	DFT coding	2018-11-26 09:30:00.254394-07	0.50000	34	5	08:45:00
524	2018-11-26 11:00:00-07	2018-11-26 11:30:00-07	foam, gluing	2018-11-26 11:51:36.191289-07	0.50000	29	7	11:30:00
663	2018-12-12 14:10:14-07	2018-12-12 17:59:45-07	figure out faster data input	2018-12-12 17:59:48.150994-07	3.82528	32	4	\N
530	2018-11-27 07:30:00-07	2018-11-27 09:30:00-07	DFT coding	2018-11-27 09:50:13.792942-07	2.00000	34	5	09:30:00
536	2018-11-27 13:00:00-07	2018-11-27 18:35:28-07	finding old redirects and changing cache	2018-11-27 20:35:36.475918-07	5.59111	33	4	\N
668	2018-12-13 07:45:00-07	2018-12-13 08:15:00-07	BP1063	2018-12-13 08:17:47.935948-07	0.50000	41	5	08:15:00
544	2018-11-28 07:45:00-07	2018-11-28 11:30:00-07	DFT coding	2018-11-28 11:37:39.036829-07	3.75000	34	5	11:30:00
550	2018-11-28 12:00:00-07	2018-11-28 13:00:00-07	Find replacement element	2018-11-28 13:17:37.316682-07	1.00000	81	5	13:00:00
558	2018-11-28 20:00:00-07	2018-11-28 21:00:00-07	Updated libraries	2018-11-28 22:53:17.46678-07	1.00000	86	5	21:00:00
559	2018-11-28 21:00:00-07	2018-11-28 22:00:00-07	Shop front material list	2018-11-28 22:53:44.54336-07	1.00000	39	5	22:00:00
673	2018-12-13 10:00:00-07	2018-12-13 13:30:00-07	Map BP1073 & BP1074	2018-12-13 13:37:59.362661-07	3.50000	81	5	13:30:00
566	2018-11-29 10:00:00-07	2018-11-29 17:00:00-07	Reciprocity issue	2018-11-29 17:05:25.871559-07	7.00000	81	5	17:00:00
572	2018-11-30 08:15:00-07	2018-11-30 10:00:00-07	Map audit function	2018-11-30 11:12:34.508111-07	1.75000	3	5	10:00:00
586	2018-12-03 10:45:00-07	2018-12-03 12:15:00-07	Progeny IPT	2018-12-03 12:10:23.711268-07	1.50000	21	5	12:15:00
678	2018-12-13 14:15:00-07	2018-12-13 15:30:00-07	IR tester	2018-12-13 15:32:02.429164-07	1.25000	8	5	15:30:00
592	2018-12-04 07:00:00-07	2018-12-04 08:15:00-07	Map verification - test setup	2018-12-04 08:07:45.727312-07	1.25000	3	5	08:15:00
597	2018-12-04 09:45:00-07	2018-12-04 10:30:00-07	Trusted Download	2018-12-04 10:27:44.205598-07	0.75000	3	5	10:30:00
603	2018-12-04 13:45:00-07	2018-12-04 14:45:00-07	BP1070 map	2018-12-04 15:01:39.104744-07	1.00000	81	5	14:45:00
684	2018-12-14 07:45:00-07	2018-12-14 09:10:00-07	banking, shopping	2018-12-14 09:09:53.293217-07	1.41667	40	7	09:10:00
608	2018-12-05 08:00:00-07	2018-12-05 15:00:00-07	Position elements fix	2018-12-05 15:27:14.39766-07	7.00000	3	5	15:00:00
613	2018-12-05 15:00:00-07	2018-12-05 15:30:00-07	Status with Amy	2018-12-05 15:27:50.650659-07	0.50000	21	5	15:30:00
618	2018-12-06 07:00:00-07	2018-12-06 08:00:00-07	Reprogramming octal relay boards.	2018-12-06 09:24:42.954155-07	1.00000	26	3	08:00:00
683	2018-12-14 08:30:00-07	2018-12-14 09:45:00-07	Image viewer	2018-12-14 10:24:18.878229-07	1.25000	3	5	09:45:00
619	2018-12-06 08:00:00-07	2018-12-06 09:30:00-07	Reprogramming Torque controller board .	2018-12-06 09:31:53.47388-07	1.50000	38	3	09:30:00
688	2018-12-14 10:30:00-07	2018-12-14 12:30:00-07	Mapping plot viewer	2018-12-14 12:40:06.371806-07	2.00000	3	5	12:30:00
689	2018-12-14 12:30:00-07	2018-12-14 13:30:00-07	Trusted Download	2018-12-14 14:46:02.178305-07	1.00000	80	5	13:00:00
696	2018-12-15 19:00:00-07	2018-12-15 19:40:00-07	office	2018-12-15 19:39:44.506066-07	0.66667	40	7	19:40:00
729	2018-12-19 08:00:00-07	2018-12-19 08:30:00-07	Helped Chris debug	2018-12-19 09:06:08.891138-07	0.50000	34	5	08:30:00
730	2018-12-19 08:30:00-07	2018-12-19 09:00:00-07	700Hz elements	2018-12-19 09:06:37.364195-07	0.50000	84	5	09:00:00
1022	2019-01-26 17:45:00-07	2019-01-26 19:45:00-07	Remap elements	2019-01-26 19:46:40.431277-07	2.00000	81	5	19:45:00
731	2018-12-19 09:00:00-07	2018-12-19 09:15:00-07	Printed Map, Trained James	2018-12-19 09:15:03.487862-07	0.25000	8	5	09:15:00
732	2018-12-19 09:15:00-07	2018-12-19 09:30:00-07	Helped Chris debug	2018-12-19 09:32:47.513738-07	0.25000	34	5	09:30:00
734	2018-12-19 09:30:00-07	2018-12-19 10:15:00-07	Plot function	2018-12-19 10:11:58.816638-07	0.75000	3	5	10:15:00
733	2018-12-19 08:00:00-07	2018-12-19 10:20:00-07	Labels	2018-12-19 10:41:32.212886-07	2.33333	40	7	10:20:00
735	2018-12-19 10:15:00-07	2018-12-19 10:30:00-07	Helped Chris debug	2018-12-19 10:56:09.633682-07	0.25000	34	5	10:30:00
1008	2019-01-24 08:50:00-07	2019-01-24 17:03:00-07	change MO and enter parts	2019-01-24 17:04:00.589564-07	8.21667	32	4	\N
736	2018-12-19 10:30:00-07	2018-12-19 11:15:00-07	Mapping function finish	2018-12-19 11:38:03.444007-07	0.75000	3	5	11:15:00
737	2018-12-19 11:15:00-07	2018-12-19 11:30:00-07	Debugging with Chris	2018-12-19 11:38:55.681685-07	0.25000	34	5	11:30:00
1006	2019-01-24 06:45:00-07	2019-01-24 17:30:00-07	installing air lines.	2019-01-25 08:06:06.470156-07	10.75000	28	3	\N
739	2018-12-19 13:00:00-07	2018-12-19 14:00:00-07	banking, SHOPPING	2018-12-19 14:41:52.843995-07	1.00000	40	7	14:00:00
727	2018-12-19 07:10:00-07	2018-12-19 13:00:00-07	Making test cables.	2018-12-19 15:11:24.951691-07	5.83333	1	3	\N
1015	2019-01-24 17:30:00-07	2019-01-24 18:50:00-07	Trainning Brittany on pick and place machine.	2019-01-25 08:07:33.077997-07	1.33333	29	3	18:50:00
772	2018-12-19 13:00:00-07	2018-12-19 15:40:00-07	Reprogramming Torque controller board .	2018-12-19 15:13:49.261331-07	2.66667	38	3	15:00:00
738	2018-12-19 11:30:00-07	2018-12-19 14:30:00-07	Carrier loading setup	2018-12-19 15:17:26.685201-07	3.00000	3	5	14:00:00
773	2018-12-19 14:30:00-07	2018-12-19 15:15:00-07	Status and Task List	2018-12-19 15:18:05.554793-07	0.75000	34	5	15:15:00
774	2018-12-19 15:15:00-07	2018-12-19 17:15:00-07	Plot viewer integration	2018-12-19 17:08:41.880482-07	2.00000	3	5	17:15:00
775	2018-12-19 16:00:00-07	2018-12-19 16:30:00-07	trash	2018-12-19 17:09:57.681398-07	0.50000	40	7	16:30:00
776	2018-12-20 05:45:00-07	2018-12-20 06:45:00-07	TI-08 email	2018-12-20 06:45:49.282621-07	1.00000	34	5	06:45:00
777	2018-12-20 06:45:00-07	2018-12-20 08:00:00-07	Wait for event	2018-12-20 08:34:01.336802-07	1.25000	3	5	08:00:00
779	2018-12-20 08:00:00-07	2018-12-20 08:30:00-07	Chris status	2018-12-20 08:34:39.72972-07	0.50000	34	5	08:30:00
780	2018-12-20 08:30:00-07	2018-12-20 11:15:00-07	Wait for event	2018-12-20 14:31:38.037668-07	2.75000	3	5	11:15:00
782	2018-12-20 11:15:00-07	2018-12-20 11:30:00-07	Remap issue	2018-12-20 14:32:29.88482-07	0.25000	80	5	11:30:00
778	2018-12-20 07:01:41-07	2018-12-20 15:32:33-07	Removing garage door.	2018-12-20 15:32:39.307846-07	8.51444	28	3	\N
781	2018-12-20 14:15:00-07	2018-12-20 16:00:00-07	banking, paper work	2018-12-20 16:08:35.610152-07	1.75000	40	7	16:00:00
783	2018-12-20 11:30:00-07	2018-12-20 14:30:00-07	Issue resolution	2018-12-20 16:26:30.002693-07	3.00000	34	5	14:30:00
784	2018-12-20 14:30:00-07	2018-12-20 16:00:00-07	Postion list	2018-12-20 16:27:36.238949-07	1.50000	3	5	16:00:00
785	2018-12-20 16:00:00-07	2018-12-20 16:30:00-07	Meeting with Ryan	2018-12-20 16:28:49.825291-07	0.50000	34	5	16:30:00
786	2018-12-20 16:30:00-07	2018-12-20 18:30:00-07	Map pulling	2018-12-20 19:58:44.924882-07	2.00000	3	5	18:30:00
787	2018-12-20 17:30:00-07	2018-12-20 21:00:00-07	Organization	2018-12-20 20:24:02.888945-07	3.50000	28	8	21:00:00
788	2018-12-21 05:30:00-07	2018-12-21 06:15:00-07	Map pulling	2018-12-21 06:19:00.864491-07	0.75000	3	5	06:15:00
789	2018-12-21 06:15:00-07	2018-12-21 07:00:00-07	Quarterly PM training	2018-12-21 07:00:27.944565-07	0.75000	15	5	07:00:00
791	2018-12-21 07:00:00-07	2018-12-21 09:15:00-07	Testing process	2018-12-21 09:16:58.348586-07	2.25000	8	5	09:15:00
792	2018-12-21 09:15:00-07	2018-12-21 10:45:00-07	Reading .mat files from scipy	2018-12-21 10:49:57.050088-07	1.50000	90	5	10:45:00
793	2018-12-21 10:45:00-07	2018-12-21 12:00:00-07	File analysis	2018-12-21 13:27:28.784544-07	1.25000	90	5	12:00:00
794	2018-12-21 12:00:00-07	2018-12-21 13:15:00-07	Status meeting	2018-12-21 13:28:18.611476-07	1.25000	34	5	13:15:00
795	2018-12-21 13:15:00-07	2018-12-21 13:30:00-07	Channels 8 & 9	2018-12-21 13:29:06.806941-07	0.25000	8	5	13:30:00
796	2018-12-21 13:30:00-07	2018-12-21 14:00:00-07	Unmap noses	2018-12-21 13:56:16.601186-07	0.50000	80	5	14:00:00
790	2018-12-21 06:52:10-07	2018-12-21 15:01:31-07	Installing Air and Electrical in south wall.	2018-12-21 15:01:36.808085-07	8.15583	28	3	\N
797	2018-12-21 08:30:00-07	2018-12-21 09:00:00-07	run errands	2018-12-21 21:13:06.528991-07	0.50000	40	7	09:00:00
798	2018-12-22 11:46:24-07	2018-12-22 14:00:00-07	paper work	2018-12-22 14:16:47.416928-07	2.22667	40	7	14:00:00
799	2018-12-22 11:00:00-07	2018-12-22 15:29:39-07	cleaning shop	2018-12-22 15:29:44.925077-07	4.49417	28	3	\N
802	2018-12-24 09:00:00-07	2018-12-24 10:00:00-07	tax filings	2018-12-24 10:13:23.225389-07	1.00000	40	7	10:00:00
800	2018-12-24 06:56:31-07	2018-12-24 11:57:57-07	cleaning shop.	2018-12-24 11:57:59.84269-07	5.02389	28	3	\N
801	2018-12-24 07:30:00-07	2018-12-24 16:30:00-07	Window seek	2018-12-24 16:28:17.29579-07	9.00000	34	5	16:30:00
804	2018-12-26 09:20:00-07	2018-12-26 09:45:00-07	banking	2018-12-26 09:48:03.510807-07	0.41667	40	7	09:45:00
803	2018-12-26 07:30:00-07	2018-12-26 12:15:00-07	DFT evaluation	2018-12-26 12:47:59.453623-07	4.75000	34	5	09:45:00
806	2018-12-26 12:45:00-07	2018-12-26 13:45:00-07	DFT magnitude research	2018-12-26 13:49:12.208991-07	1.00000	34	5	13:45:00
807	2018-12-26 15:45:00-07	2018-12-26 17:45:00-07	DFT magnitude research	2018-12-26 17:37:29.742458-07	2.00000	34	5	17:45:00
817	2018-12-28 20:15:00-07	2018-12-28 22:45:00-07	Parsing test results	2018-12-28 22:47:11.389386-07	2.50000	34	5	22:45:00
805	2018-12-26 12:28:01-07	2018-12-26 17:44:00-07	creating models for parts and migrate mrp system	2018-12-26 22:24:55.118345-07	5.26639	32	4	17:00:00
808	2018-12-27 07:15:00-07	2018-12-27 09:45:00-07	Making	2018-12-27 11:28:17.203876-07	2.50000	34	5	09:45:00
811	2018-12-27 15:47:27-07	2018-12-27 16:59:50-07	finish models	2018-12-27 17:00:10.535888-07	1.20639	32	4	\N
812	2018-12-27 16:59:51-07	2018-12-27 18:27:00-07	fix filters and enter in parts	2018-12-27 19:14:02.467759-07	1.45250	32	4	\N
809	2018-12-27 11:15:00-07	2018-12-27 16:00:00-07	Making CDs	2018-12-27 20:43:37.285977-07	4.75000	34	5	16:00:00
813	2018-12-27 17:30:00-07	2018-12-27 21:00:00-07	Assemble boards	2018-12-27 20:53:59.946062-07	3.50000	1	8	21:00:00
815	2018-12-28 14:00:18-07	2018-12-28 16:58:14-07	setting up api	2018-12-28 16:58:16.884263-07	2.96556	32	4	\N
814	2018-12-28 10:00:00-07	2018-12-28 15:00:00-07	CD	2018-12-28 20:04:17.063521-07	5.00000	34	5	15:00:00
816	2018-12-28 15:00:00-07	2018-12-28 16:30:00-07	BP1063 CD fix	2018-12-28 20:05:04.857989-07	1.50000	41	5	16:30:00
818	2018-12-29 08:15:00-07	2018-12-29 09:45:00-07	CD completion	2018-12-29 09:44:34.063723-07	1.50000	34	5	09:45:00
820	2018-12-27 09:00:00-07	2018-12-27 10:30:00-07	mill machine	2018-12-29 14:33:47.48253-07	1.50000	40	7	10:30:00
821	2018-12-28 12:00:00-07	2018-12-28 13:00:00-07	banking, paper work	2018-12-29 14:34:13.09292-07	1.00000	40	7	13:00:00
819	2018-12-29 09:45:00-07	2018-12-29 15:30:00-07	ADAS 004 Calibration	2018-12-29 15:34:01.78126-07	5.75000	11	5	15:30:00
714	2018-12-18 07:09:07-07	2018-12-18 15:30:00-07	inspecting the Array Sweep PCB's.	2018-12-30 16:49:26.703136-07	8.34806	8	3	\N
822	2018-12-31 11:26:55-07	2018-12-31 16:30:03-07	set up API	2018-12-31 16:44:12.04239-07	5.05222	32	4	\N
823	2019-01-01 10:15:00-07	2019-01-01 12:00:00-07	Test report	2019-01-01 12:00:53.475767-07	1.75000	34	5	12:00:00
824	2019-01-02 07:30:00-07	2019-01-02 09:00:00-07	Status & planning	2019-01-02 09:03:52.578179-07	1.50000	21	5	09:00:00
825	2019-01-02 09:00:00-07	2019-01-02 10:45:00-07	BP1067 replacement elements	2019-01-02 10:49:24.076094-07	1.75000	81	5	10:45:00
826	2019-01-02 10:45:00-07	2019-01-02 11:15:00-07	BP1064 Checked Analysis	2019-01-02 11:21:55.215454-07	0.50000	41	5	11:15:00
827	2019-01-02 11:15:00-07	2019-01-02 13:00:00-07	RVS failure analysis	2019-01-02 16:41:21.293641-07	1.75000	41	5	11:45:00
828	2019-01-02 13:00:00-07	2019-01-02 14:00:00-07	Progeny Meeting	2019-01-02 16:41:54.512378-07	1.00000	34	5	14:00:00
830	2019-01-02 14:00:00-07	2019-01-02 16:45:00-07	Failure analysis	2019-01-02 16:43:26.182935-07	2.75000	91	5	16:45:00
829	2019-01-02 16:42:58-07	2019-01-02 18:46:00-07	mouser api	2019-01-02 19:21:17.316978-07	2.05056	32	4	18:46:00
831	2019-01-02 18:45:00-07	2019-01-02 22:45:00-07	Simulation frequency shift detect	2019-01-02 22:49:24.489951-07	4.00000	34	5	22:45:00
832	2019-01-03 07:45:00-07	2019-01-03 08:30:00-07	Status	2019-01-03 09:51:51.321593-07	0.75000	21	5	08:30:00
833	2019-01-03 08:30:00-07	2019-01-03 09:45:00-07	Failure analysis meeting	2019-01-03 09:52:27.407422-07	1.25000	91	5	09:45:00
834	2019-01-03 09:45:00-07	2019-01-03 11:30:00-07	Henry call and Barker code	2019-01-03 11:26:27.046105-07	1.75000	34	5	11:30:00
1011	2019-01-24 15:00:00-07	2019-01-24 16:00:00-07	Tested quad DF11 board and compiled autodriver	2019-01-24 16:25:15.75125-07	1.00000	30	6	16:00:00
835	2019-01-03 11:30:00-07	2019-01-03 13:15:00-07	Progeny IPT	2019-01-03 13:19:18.136771-07	1.75000	21	5	13:15:00
836	2019-01-03 13:15:00-07	2019-01-03 13:30:00-07	Ryan - sync method	2019-01-03 14:01:11.043701-07	0.25000	34	5	13:30:00
837	2019-01-03 13:30:00-07	2019-01-03 14:00:00-07	Kick off meeting	2019-01-03 14:02:19.263845-07	0.50000	92	5	14:00:00
838	2019-01-03 14:00:00-07	2019-01-03 14:45:00-07	Meeting with Shawn	2019-01-03 14:37:56.139625-07	0.75000	21	5	14:45:00
839	2019-01-03 14:45:00-07	2019-01-03 15:15:00-07	Tried to get the analysis software working	2019-01-03 15:17:38.352404-07	0.50000	90	5	15:15:00
841	2019-01-03 15:15:00-07	2019-01-03 15:30:00-07	Status & planning	2019-01-03 18:50:57.9151-07	0.25000	21	5	15:30:00
840	2019-01-03 17:30:00-07	2019-01-03 21:00:00-07	Assemble boards	2019-01-03 21:03:51.200229-07	3.50000	1	8	21:00:00
874	2019-01-04 07:30:00-07	2019-01-04 07:45:00-07	Status & planning	2019-01-04 07:48:12.60662-07	0.25000	21	5	07:45:00
875	2019-01-04 07:45:00-07	2019-01-04 09:45:00-07	TI-08 test plan	2019-01-04 10:30:00.75387-07	2.00000	34	5	09:45:00
876	2019-01-04 09:45:00-07	2019-01-04 10:30:00-07	Meeting with Shawn	2019-01-04 10:30:38.370302-07	0.75000	21	5	10:30:00
877	2019-01-04 10:30:00-07	2019-01-04 11:00:00-07	TI-08 test plan	2019-01-04 11:05:26.409396-07	0.50000	34	5	11:00:00
879	2019-01-04 09:15:00-07	2019-01-04 11:00:00-07	banking, paper work	2019-01-04 11:35:28.215605-07	1.75000	40	7	11:00:00
880	2019-01-02 10:00:00-07	2019-01-02 11:00:00-07	run errands	2019-01-04 11:36:00.343644-07	1.00000	40	7	11:00:00
881	2019-01-03 12:00:00-07	2019-01-03 13:00:00-07	banking, paper work	2019-01-04 11:36:24.416398-07	1.00000	40	7	13:00:00
882	2018-12-31 11:00:00-07	2018-12-31 13:00:00-07	banking, paper work	2019-01-04 11:37:16.395662-07	2.00000	40	7	13:00:00
878	2019-01-04 11:00:00-07	2019-01-04 11:30:00-07	Mapping display board	2019-01-04 11:59:05.634288-07	0.50000	3	5	11:30:00
883	2019-01-04 11:30:00-07	2019-01-04 12:00:00-07	IR failure discussion with Rick and Jon	2019-01-04 11:59:40.553866-07	0.50000	91	5	12:00:00
884	2019-01-04 12:00:00-07	2019-01-04 12:15:00-07	Mapping display board	2019-01-04 12:17:07.039526-07	0.25000	3	5	12:15:00
885	2019-01-04 12:15:00-07	2019-01-04 13:15:00-07	Tuning element selection	2019-01-04 13:13:30.732151-07	1.00000	84	5	13:15:00
886	2019-01-04 13:15:00-07	2019-01-04 17:00:00-07	Analysis and software	2019-01-04 16:59:20.075431-07	3.75000	34	5	17:00:00
887	2019-01-05 07:45:00-07	2019-01-05 09:15:00-07	Analysis software	2019-01-05 09:19:49.659089-07	1.50000	34	5	09:15:00
888	2019-01-05 10:00:00-07	2019-01-05 12:15:00-07	Analysis software	2019-01-05 12:30:38.628651-07	2.25000	34	5	12:15:00
889	2019-01-05 12:45:00-07	2019-01-05 16:45:00-07	Analysis software	2019-01-05 16:47:07.598006-07	4.00000	34	5	16:45:00
890	2019-01-07 07:00:00-07	2019-01-07 08:00:00-07	Status	2019-01-07 09:34:38.289166-07	1.00000	21	5	08:00:00
892	2019-01-07 08:00:00-07	2019-01-07 08:30:00-07	IR failure meeting	2019-01-07 09:35:22.412099-07	0.50000	91	5	08:30:00
893	2019-01-07 08:30:00-07	2019-01-07 09:30:00-07	TI-08 status	2019-01-07 09:36:06.953004-07	1.00000	21	5	09:30:00
894	2019-01-07 09:30:00-07	2019-01-07 10:45:00-07	Print map for 2 elements	2019-01-07 10:48:26.149436-07	1.25000	81	5	10:45:00
895	2019-01-07 10:45:00-07	2019-01-07 12:15:00-07	Progeny IPT	2019-01-07 12:26:33.568296-07	1.50000	21	5	12:15:00
896	2019-01-07 09:15:00-07	2019-01-07 10:00:00-07	cleaning shop	2019-01-07 15:20:05.755409-07	0.75000	40	7	10:00:00
897	2019-01-07 06:30:00-07	2019-01-07 07:00:00-07	banking	2019-01-07 15:20:37.910716-07	0.50000	40	7	07:00:00
898	2019-01-07 13:00:00-07	2019-01-07 15:00:00-07	run errands	2019-01-07 15:21:27.224204-07	2.00000	40	7	15:00:00
899	2019-01-07 12:15:00-07	2019-01-07 13:45:00-07	TI-08	2019-01-07 15:24:36.344457-07	1.50000	81	5	13:45:00
900	2019-01-07 13:45:00-07	2019-01-07 15:30:00-07	Tuning element verification	2019-01-07 15:26:57.169976-07	1.75000	84	5	15:30:00
901	2019-01-07 15:30:00-07	2019-01-07 17:45:00-07	TI-08	2019-01-07 17:41:05.774684-07	2.25000	81	5	17:45:00
902	2019-01-07 17:30:00-07	2019-01-07 21:00:00-07	Assemble boards	2019-01-07 20:49:36.124714-07	3.50000	1	8	21:00:00
903	2019-01-07 18:15:00-07	2019-01-07 22:15:00-07	TI-08	2019-01-07 22:13:31.862936-07	4.00000	81	5	22:15:00
904	2019-01-07 20:30:00-07	2019-01-07 22:23:00-07	getting data from mouser	2019-01-07 22:23:33.435359-07	1.88333	32	4	\N
891	2019-01-07 07:00:00-07	2019-01-07 17:10:00-07	Wiring shop.	2019-01-08 07:22:07.865138-07	10.16667	28	3	\N
907	2019-01-08 09:45:00-07	2019-01-08 11:00:00-07	banking, paper work	2019-01-08 12:36:05.162945-07	1.25000	40	7	11:00:00
908	2019-01-08 11:00:00-07	2019-01-08 12:30:00-07	assembly	2019-01-08 12:36:29.998974-07	1.50000	39	7	12:30:00
906	2019-01-08 07:22:07-07	2019-01-08 17:34:11-07	Installing air and electrical in shop.	2019-01-08 17:34:17.640425-07	10.20111	28	3	\N
910	2019-01-08 14:00:00-07	2019-01-08 14:30:00-07	run errands	2019-01-08 18:52:10.632556-07	0.50000	40	7	14:30:00
911	2019-01-08 19:00:04-07	2019-01-08 20:41:00-07	getting mouser data set up	2019-01-08 20:44:25.564896-07	1.68222	32	4	20:41:00
912	2019-01-09 07:30:00-07	2019-01-09 08:00:00-07	Status meeting	2019-01-09 08:15:16.294364-07	0.50000	21	5	08:00:00
913	2019-01-09 08:00:00-07	2019-01-09 08:15:00-07	Partial test file problem	2019-01-09 08:15:41.083777-07	0.25000	80	5	08:15:00
915	2019-01-09 09:00:08-07	2019-01-09 11:10:00-07	assembly	2019-01-09 11:12:18.280461-07	2.16444	29	7	11:10:00
917	2019-01-10 13:45:00-07	2019-01-10 15:38:35-07	assembly, errands	2019-01-10 15:39:40.854448-07	1.89306	29	7	\N
919	2019-01-09 16:15:00-07	2019-01-09 20:30:00-07	Mapping BP1077 and test failure analysis	2019-01-09 20:34:34.105568-07	4.25000	81	5	20:30:00
920	2019-01-10 07:15:00-07	2019-01-10 08:00:00-07	Status	2019-01-10 08:03:50.963797-07	0.75000	21	5	08:00:00
922	2019-01-10 06:55:00-07	2019-01-10 17:05:19-07	Wiring shop.	2019-01-10 17:05:23.630061-07	10.17194	28	3	\N
923	2019-01-10 17:30:00-07	2019-01-10 20:30:00-07	Assemble boards	2019-01-10 20:23:22.641671-07	3.00000	1	8	20:30:00
921	2019-01-10 08:00:00-07	2019-01-10 09:30:00-07	Mapping	2019-01-10 21:52:09.180258-07	1.50000	80	5	09:30:00
924	2019-01-10 09:30:00-07	2019-01-10 12:00:00-07	Working with Henry	2019-01-10 21:52:52.530964-07	2.50000	34	5	12:00:00
925	2019-01-10 12:00:00-07	2019-01-10 12:30:00-07	Status	2019-01-10 21:54:07.498178-07	0.50000	21	5	12:30:00
926	2019-01-10 12:30:00-07	2019-01-10 22:00:00-07	Working with Henry	2019-01-10 21:54:33.821157-07	9.50000	34	5	22:00:00
928	2019-01-11 09:37:41-07	2019-01-11 11:43:00-07	paper work	2019-01-11 11:43:37.989526-07	2.08861	40	7	11:43:00
916	2019-01-09 09:02:40-07	2019-01-09 14:05:17-07	mouser data scraping	2019-01-11 12:13:31.361434-07	5.04361	32	4	\N
927	2019-01-11 06:45:00-07	2019-01-11 14:00:00-07	Working with Henry	2019-01-11 14:24:16.9898-07	7.25000	34	5	14:00:00
914	2019-01-09 08:15:00-07	2019-01-09 16:15:00-07	TI-08	2019-01-11 14:25:39.359796-07	8.00000	34	5	16:15:00
930	2019-01-11 14:00:00-07	2019-01-11 14:30:00-07	Status meeting	2019-01-11 21:49:07.353125-07	0.50000	21	5	14:30:00
931	2019-01-12 09:33:33-07	2019-01-12 18:22:54-07	Installing windows.	2019-01-12 18:23:02.192214-07	8.82250	28	3	\N
932	2019-01-14 07:00:00-07	2019-01-14 15:17:43-07	Wiring shop.	2019-01-14 15:17:50.329721-07	8.29528	28	3	\N
918	2019-01-09 06:50:00-07	2019-01-09 12:00:00-07	Wiring shop.	2019-01-14 07:16:21.089459-07	5.16667	28	3	\N
934	2019-01-09 14:30:00-07	2019-01-09 17:15:00-07	Replacing 2ea. 32 pin DF-11 connectors on docking.	2019-01-14 07:56:01.211387-07	2.75000	125	3	\N
933	2019-01-09 12:00:00-07	2019-01-09 14:30:00-07	Replacing 2 pin connector at Harris.	2019-01-14 07:56:22.092935-07	2.50000	126	3	\N
909	2019-01-08 16:30:00-07	2019-01-08 18:45:00-07	Working with Henry	2019-01-14 08:56:38.158306-07	2.25000	34	5	18:45:00
905	2019-01-08 06:30:00-07	2019-01-08 16:30:00-07	Working with Henry	2019-01-14 08:57:01.384821-07	10.00000	34	5	06:45:00
937	2019-01-14 09:12:28-07	2019-01-14 09:26:00-07	banking, paper work	2019-01-14 09:26:45.869518-07	0.22556	40	7	09:26:00
936	2019-01-14 08:30:00-07	2019-01-14 09:12:00-07	misc shop stuff	2019-01-14 09:12:28.437914-07	0.70000	28	7	09:12:00
1003	2019-01-23 15:40:00-07	2019-01-23 16:38:00-07	debugging, adding to API	2019-01-24 10:32:15.917664-07	0.96667	32	4	\N
938	2019-01-12 11:00:00-07	2019-01-12 16:00:00-07	errands for garage	2019-01-14 09:27:38.058455-07	5.00000	40	7	16:00:00
1012	2019-01-24 17:30:00-07	2019-01-24 21:00:00-07	Assemble boards	2019-01-24 20:51:48.008893-07	3.50000	29	8	21:00:00
935	2019-01-14 09:15:00-07	2019-01-14 10:30:00-07	Software	2019-01-14 11:40:48.834943-07	1.25000	3	5	10:30:00
940	2019-01-14 10:30:00-07	2019-01-14 11:45:00-07	Progeny IPT	2019-01-14 11:41:17.377979-07	1.25000	21	5	11:45:00
941	2019-01-14 11:45:00-07	2019-01-14 12:15:00-07	ADAS 004 Calibration OQE	2019-01-14 12:25:38.379127-07	0.50000	11	5	12:15:00
942	2019-01-14 12:15:00-07	2019-01-14 12:30:00-07	AITS test review	2019-01-14 12:26:16.814564-07	0.25000	92	5	12:30:00
943	2019-01-14 12:30:00-07	2019-01-14 13:45:00-07	Element Verification	2019-01-14 13:46:09.260487-07	1.25000	3	5	13:45:00
1020	2019-01-26 09:45:00-07	2019-01-26 16:45:00-07	Remap function	2019-01-26 16:43:34.919616-07	7.00000	3	5	16:45:00
945	2019-01-14 06:00:00-07	2019-01-14 09:25:00-07	adding products	2019-01-14 13:51:45.206166-07	3.41667	32	4	\N
944	2019-01-14 13:45:00-07	2019-01-14 14:00:00-07	Tuning verification	2019-01-14 14:42:25.263979-07	0.25000	75	5	14:00:00
946	2019-01-14 14:00:00-07	2019-01-14 14:15:00-07	Status meeting	2019-01-14 14:43:04.180295-07	0.25000	91	5	14:15:00
947	2019-01-14 14:15:00-07	2019-01-14 14:45:00-07	Tuning verification	2019-01-14 14:43:43.824378-07	0.50000	75	5	14:45:00
939	2019-01-14 10:49:54-07	2019-01-14 17:25:00-07	developing products	2019-01-14 18:59:15.890764-07	6.58500	32	4	17:25:00
948	2019-01-14 17:30:00-07	2019-01-14 21:00:00-07	Assemble boards	2019-01-14 20:51:53.97328-07	3.50000	29	8	21:00:00
1025	2019-01-28 07:30:00-07	2019-01-28 08:30:00-07	Status meeting	2019-01-28 08:50:37.580323-07	1.00000	21	5	08:30:00
971	2019-01-17 12:30:12-07	2019-01-17 19:10:13-07	csv file	2019-01-17 20:20:21.647375-07	6.66694	31	4	\N
974	2019-01-17 17:30:00-07	2019-01-17 21:00:00-07	Assemble boards	2019-01-17 20:59:27.205485-07	3.50000	1	8	21:00:00
950	2019-01-15 09:00:00-07	2019-01-15 10:00:00-07	NUWC IPT	2019-01-15 10:12:47.274292-07	1.00000	21	5	10:00:00
952	2019-01-15 10:00:00-07	2019-01-15 12:00:00-07	Element Verification - memory leak on plots	2019-01-15 11:59:38.798966-07	2.00000	3	5	12:00:00
949	2019-01-15 07:00:00-07	2019-01-15 13:06:00-07		2019-01-15 13:06:44.591384-07	6.10000	28	3	\N
953	2019-01-15 12:00:00-07	2019-01-15 13:30:00-07	Element Verification	2019-01-15 13:29:09.676189-07	1.50000	3	5	13:30:00
955	2019-01-15 13:30:00-07	2019-01-15 14:00:00-07	Meeting	2019-01-15 14:37:06.130042-07	0.50000	4	5	14:00:00
956	2019-01-15 14:00:00-07	2019-01-15 14:30:00-07	Status meeting	2019-01-15 14:37:32.837851-07	0.50000	91	5	14:30:00
954	2019-01-15 13:06:01-07	2019-01-15 15:11:04-07	Building display board.	2019-01-15 15:11:15.96962-07	2.08417	29	3	\N
951	2019-01-15 09:45:00-07	2019-01-15 12:50:00-07	develop products and change barcode	2019-01-15 15:52:55.594846-07	3.08333	32	4	\N
957	2019-01-15 18:23:00-07	2019-01-15 22:00:00-07	develop manufacturing orders	2019-01-15 22:03:05.883261-07	3.61667	32	4	\N
968	2019-01-17 06:52:09-07	2019-01-17 11:30:00-07	Building display board.	2019-01-18 07:12:20.120129-07	4.63083	29	3	\N
976	2019-01-17 11:30:00-07	2019-01-17 15:07:00-07	Cleaning Shop.	2019-01-18 07:13:16.954807-07	3.61667	28	3	\N
959	2019-01-16 07:30:00-07	2019-01-16 08:15:00-07	Status meeting	2019-01-16 08:08:41.229267-07	0.75000	21	5	08:15:00
960	2019-01-16 08:15:00-07	2019-01-16 09:00:00-07	Set up computer, Element test plan	2019-01-16 08:56:52.220955-07	0.75000	81	5	09:00:00
962	2019-01-15 09:30:00-07	2019-01-15 10:30:00-07	assembly	2019-01-16 09:18:01.160794-07	1.00000	29	7	10:30:00
961	2019-01-16 09:00:00-07	2019-01-16 11:00:00-07	Tuning verification	2019-01-16 11:01:57.130302-07	2.00000	75	5	11:00:00
958	2019-01-16 07:00:00-07	2019-01-16 11:59:08-07	Replacing 2ea. 32 pin DF-11 connectors on docking.	2019-01-16 11:59:32.070441-07	4.98556	29	3	\N
966	2019-01-16 10:45:00-07	2019-01-16 13:20:00-07	BOM and MO	2019-01-16 13:48:06.596425-07	2.58333	32	4	\N
963	2019-01-16 08:30:00-07	2019-01-16 11:30:00-07	assembly	2019-01-16 13:48:11.512769-07	3.00000	29	7	11:30:00
964	2019-01-16 11:00:00-07	2019-01-16 15:15:00-07	Map Array	2019-01-16 15:08:16.924026-07	4.25000	81	5	15:15:00
965	2019-01-16 11:59:09-07	2019-01-16 15:21:56-07	Replacing 2ea. 32 pin DF-11 connectors on docking.	2019-01-16 15:22:19.937965-07	3.37972	125	3	\N
967	2019-01-16 13:48:11-07	2019-01-16 15:26:17-07	assembly	2019-01-16 15:26:24.297383-07	1.63500	29	7	\N
969	2019-01-17 08:00:00-07	2019-01-17 10:45:00-07	Train Crystal on testing	2019-01-17 10:40:12.183034-07	2.75000	80	5	10:45:00
972	2019-01-17 10:30:00-07	2019-01-17 14:00:00-07	assembly	2019-01-17 14:21:35.49653-07	3.50000	29	7	14:00:00
970	2019-01-17 10:45:00-07	2019-01-17 14:30:00-07	Mapping software	2019-01-17 14:34:49.639411-07	3.75000	3	5	14:30:00
973	2019-01-17 15:00:00-07	2019-01-17 15:30:00-07	banking, paper work	2019-01-17 18:31:30.979661-07	0.50000	40	7	\N
990	2019-01-21 18:22:00-07	2019-01-21 21:00:00-07	change API, MO	2019-01-21 21:00:45.278815-07	2.63333	32	4	\N
977	2019-01-18 07:30:00-07	2019-01-18 09:00:00-07	Status	2019-01-18 11:25:00.724231-07	1.50000	21	5	09:00:00
979	2019-01-18 09:00:00-07	2019-01-18 09:30:00-07	Stack & Element AIOS revision	2019-01-18 11:57:25.899804-07	0.50000	91	5	09:30:00
981	2019-01-18 08:45:00-07	2019-01-18 11:45:00-07	assembly	2019-01-18 12:02:52.759927-07	3.00000	29	7	11:45:00
975	2019-01-18 07:00:00-07	2019-01-18 12:35:03-07	Cleaning shop.	2019-01-18 13:35:53.476266-07	5.58417	28	3	\N
982	2019-01-18 12:35:04-07	2019-01-18 15:19:38-07	Building Stack tester board.	2019-01-18 15:19:43.464917-07	2.74278	76	3	\N
980	2019-01-18 09:30:00-07	2019-01-18 14:00:00-07	Mapping Software	2019-01-18 16:12:12.414589-07	4.50000	3	5	14:00:00
984	2019-01-18 14:00:00-07	2019-01-18 16:15:00-07	Tank noise debug	2019-01-18 16:12:45.612766-07	2.25000	81	5	16:15:00
983	2019-01-18 13:57:52-07	2019-01-18 14:30:00-07	assembly	2019-01-18 16:48:23.607979-07	0.53556	29	7	14:30:00
978	2019-01-18 10:40:35-07	2019-01-18 11:20:00-07	barcode add part change to check for duplicate	2019-01-18 23:06:37.258379-07	0.65694	32	4	\N
985	2019-01-18 19:16:00-07	2019-01-18 20:50:00-07	change MO	2019-01-18 23:07:07.734394-07	1.56667	32	4	\N
987	2019-01-21 09:11:20-07	2019-01-21 10:25:00-07	fix API	2019-01-21 14:48:42.397581-07	1.22778	32	4	\N
986	2019-01-21 07:00:00-07	2019-01-21 07:30:00-07	Status	2019-01-21 17:27:01.752397-07	0.50000	21	5	07:30:00
988	2019-01-21 14:20:00-07	2019-01-21 16:00:00-07	work on part validation	2019-01-21 20:59:51.795917-07	1.66667	32	4	\N
991	2019-01-22 07:00:00-07	2019-01-22 16:02:46-07	Building stack tester board.	2019-01-22 16:03:20.01364-07	9.04611	76	3	\N
995	2019-01-22 14:00:00-07	2019-01-22 15:30:00-07	Started work on the motor controller firmware	2019-01-22 16:15:41.673393-07	1.50000	30	6	15:30:00
994	2019-01-22 16:02:47-07	2019-01-22 17:10:40-07	Setting up air lines.	2019-01-22 17:10:47.726299-07	1.13139	28	3	\N
992	2019-01-22 07:30:00-07	2019-01-22 11:30:00-07	Find replacement element	2019-01-22 19:41:32.424773-07	4.00000	81	5	11:30:00
996	2019-01-22 11:30:00-07	2019-01-22 18:00:00-07	Cutting down size of problem	2019-01-22 19:43:34.317479-07	6.50000	127	5	18:00:00
989	2019-01-21 07:30:00-07	2019-01-21 17:30:00-07	Tank noise debug	2019-01-22 19:43:54.876066-07	10.00000	127	5	17:30:00
993	2019-01-22 09:18:50-07	2019-01-22 14:28:00-07	change products form	2019-01-22 21:55:06.860221-07	5.15278	32	4	\N
997	2019-01-22 18:45:00-07	2019-01-22 20:13:00-07	product form	2019-01-22 21:56:05.070302-07	1.46667	32	4	\N
998	2019-01-22 21:00:00-07	2019-01-22 21:56:57-07	fix API	2019-01-22 21:56:51.7151-07	0.94917	32	4	\N
1001	2019-01-23 07:30:00-07	2019-01-23 08:30:00-07	Installing weather striping on side shop door.	2019-01-23 09:45:45.458124-07	1.00000	28	3	08:30:00
1000	2019-01-23 09:25:08-07	2019-01-23 14:30:00-07	change products form, debug	2019-01-23 15:02:57.5232-07	5.08111	32	4	\N
1002	2019-01-23 08:55:00-07	2019-01-23 17:01:22-07	Installing air lines.	2019-01-23 17:01:27.786522-07	8.10611	28	3	\N
1004	2019-01-23 17:10:00-07	2019-01-23 17:52:00-07	fix API	2019-01-23 19:35:58.23859-07	0.70000	32	4	\N
1005	2019-01-23 18:41:00-07	2019-01-23 20:23:00-07	add datasheet to API	2019-01-23 20:38:42.874338-07	1.70000	32	4	\N
999	2019-01-23 06:45:00-07	2019-01-23 18:30:00-07	Tank noise debug	2019-01-23 21:02:19.966186-07	11.75000	127	5	18:30:00
1007	2019-01-24 07:30:00-07	2019-01-24 18:45:00-07	Tank noise debug	2019-01-25 07:18:11.398989-07	11.25000	127	5	18:45:00
1430	2019-03-20 13:30:00-06	2019-03-20 14:00:00-06	FAT updates	2019-03-20 14:20:49.408093-06	0.50000	34	5	14:00:00
1017	2019-01-25 08:17:00-07	2019-01-25 11:02:16-07	enter parts	2019-01-25 11:02:20.2501-07	2.75444	32	4	\N
1019	2019-01-25 12:45:00-07	2019-01-25 13:45:00-07	run errands	2019-01-25 15:46:53.132154-07	1.00000	28	7	13:45:00
1014	2019-01-25 07:15:00-07	2019-01-25 16:30:00-07	Environmental test runs	2019-01-25 16:32:06.515136-07	9.25000	127	5	16:30:00
1018	2019-01-25 11:45:59-07	2019-01-25 16:52:52-07	enter parts	2019-01-25 17:18:05.69777-07	5.11472	32	4	\N
1016	2019-01-25 08:00:00-07	2019-01-25 15:00:00-07	installing air lines.	2019-01-26 12:33:33.680697-07	7.00000	28	3	\N
1021	2019-01-26 12:33:38-07	2019-01-26 14:58:53-07	Installing air lines.	2019-01-26 14:58:58.402126-07	2.42083	28	3	\N
1908	2019-05-17 07:45:00-06	2019-05-17 08:00:00-06	Training	2019-05-17 08:02:25.772244-06	0.25000	81	5	08:00:00
1026	2019-01-28 08:30:00-07	2019-01-28 10:00:00-07	Replacing elements	2019-01-28 10:26:32.125893-07	1.50000	81	5	10:00:00
1027	2019-01-28 10:00:00-07	2019-01-28 10:15:00-07	Tuning element verification	2019-01-28 10:27:04.359913-07	0.25000	75	5	10:15:00
1028	2019-01-28 10:15:00-07	2019-01-28 10:30:00-07	Anomolies	2019-01-28 10:27:29.760283-07	0.25000	81	5	10:30:00
1024	2019-01-28 08:29:26-07	2019-01-28 09:15:00-07	improve part list filters	2019-01-28 11:10:29.393294-07	0.75944	32	4	\N
1031	2019-01-28 09:15:00-07	2019-01-28 10:47:35-07	add comments to code	2019-01-28 11:11:05.811936-07	1.54306	31	4	\N
1023	2019-01-28 06:53:49-07	2019-01-28 07:30:00-07	Wiring shop.	2019-01-28 14:58:01.174634-07	0.60306	28	3	\N
1032	2019-01-28 08:30:00-07	2019-01-28 15:06:04-07	Working on installing air conditioner controller.	2019-01-28 15:06:09.095372-07	6.60111	29	3	\N
1030	2019-01-28 11:08:51-07	2019-01-28 16:55:39-07	change clock in, add comments to code	2019-01-28 17:18:53.003884-07	5.78000	31	4	\N
1029	2019-01-28 10:30:00-07	2019-01-28 11:30:00-07	Set up	2019-01-28 19:21:21.944528-07	1.00000	34	5	11:30:00
1034	2019-01-28 11:30:00-07	2019-01-28 15:30:00-07	Impedance consolidation	2019-01-28 19:22:01.554721-07	4.00000	3	5	15:30:00
1035	2019-01-28 15:30:00-07	2019-01-28 19:30:00-07	Analysis software	2019-01-28 19:22:35.574093-07	4.00000	34	5	19:30:00
1033	2019-01-28 17:30:00-07	2019-01-28 21:00:00-07	Assemble boards	2019-01-28 20:54:00.117144-07	3.50000	29	8	21:00:00
1038	2019-01-29 08:37:38-07	2019-01-29 09:26:00-07	change clockin forms	2019-01-29 09:26:24.376585-07	0.80611	31	4	\N
1037	2019-01-29 07:30:00-07	2019-01-29 08:30:00-07	Locate elements for production	2019-01-29 09:47:11.166328-07	1.00000	81	5	08:30:00
1042	2019-01-29 08:30:00-07	2019-01-29 22:00:00-07	Analysis and software	2019-01-29 21:54:29.126616-07	13.50000	34	5	22:00:00
1036	2019-01-29 06:59:02-07	2019-01-29 08:46:00-07	Fixing display boards.	2019-01-30 07:17:09.386723-07	1.78278	29	3	\N
1049	2019-01-29 09:25:16-07	2019-01-29 15:18:25-07	Installing & Replacing Ceiling Tiles.	2019-01-30 07:23:22.662697-07	5.88583	28	3	\N
1050	2019-01-30 07:30:00-07	2019-01-30 07:45:00-07	Status meeting	2019-01-30 08:08:29.682578-07	0.25000	21	5	07:45:00
1047	2019-01-29 10:30:00-07	2019-01-29 16:50:00-07	add comments to code and make improvements	2019-01-30 08:46:59.440454-07	6.33333	31	4	16:50:00
1051	2019-01-30 08:38:00-07	2019-01-30 09:42:07-07	make purchase orders	2019-01-30 09:42:09.708297-07	1.06861	32	4	\N
1048	2019-01-30 07:12:50-07	2019-01-30 15:43:32-07	Repairing Air Conditioner Controller.	2019-01-30 15:43:36.818109-07	8.51167	29	3	\N
1053	2019-01-30 07:45:00-07	2019-01-30 11:00:00-07	Remapping	2019-01-30 15:44:33.62491-07	3.25000	81	5	11:00:00
1054	2019-01-30 11:00:00-07	2019-01-30 15:45:00-07	HPT Calibration	2019-01-30 15:45:46.883078-07	4.75000	11	5	15:45:00
1052	2019-01-30 10:42:44-07	2019-01-30 12:00:42-07	make purchase orders	2019-01-30 19:31:46.237416-07	1.29944	32	4	\N
1056	2019-01-30 12:20:00-07	2019-01-30 17:44:00-07	make purchase orders	2019-01-30 19:32:11.154165-07	5.40000	32	4	\N
1055	2019-01-30 15:45:00-07	2019-01-30 20:30:00-07	Remapping	2019-01-30 20:34:27.404971-07	4.75000	80	5	20:30:00
1060	2019-01-30 12:47:23-07	2019-01-30 16:00:00-07	banking, shopping	2019-01-31 08:48:21.298056-07	3.21028	40	7	16:00:00
1061	2019-01-31 08:48:21-07	2019-01-31 09:45:00-07	banking, paper work	2019-01-31 09:44:45.764791-07	0.94417	40	7	09:45:00
1059	2019-01-31 08:00:00-07	2019-01-31 10:15:00-07	PMR	2019-01-31 10:13:38.333781-07	2.25000	21	5	10:15:00
1062	2019-01-31 10:45:00-07	2019-01-31 13:00:00-07	PMR	2019-01-31 12:56:45.492072-07	2.25000	21	5	13:00:00
1058	2019-01-31 08:16:39-07	2019-01-31 12:10:00-07	make purchase orders	2019-01-31 13:52:22.417808-07	3.88917	32	4	\N
1073	2019-02-01 07:40:00-07	2019-02-01 10:30:00-07	assembling air conditioner PWB.	2019-02-04 07:06:59.875513-07	2.83333	29	3	\N
1063	2019-01-31 13:00:00-07	2019-01-31 13:30:00-07	Tuning 700 meeting	2019-01-31 15:17:11.924801-07	0.50000	84	5	13:30:00
1065	2019-01-31 13:30:00-07	2019-01-31 14:45:00-07	BP1068	2019-01-31 15:18:26.245787-07	1.25000	41	5	14:45:00
1066	2019-01-31 14:45:00-07	2019-01-31 15:15:00-07	Remapping	2019-01-31 15:18:59.385981-07	0.50000	81	5	15:15:00
1074	2019-02-01 10:30:00-07	2019-02-01 14:30:00-07	Inspecting phase tester PWB's.	2019-02-04 07:08:45.992258-07	4.00000	7	3	\N
1067	2019-01-31 17:30:00-07	2019-01-31 21:00:00-07	Assemble boards	2019-01-31 20:58:45.295509-07	3.50000	1	8	21:00:00
1064	2019-01-31 13:58:00-07	2019-01-31 17:28:00-07	make purchase orders from MO's	2019-01-31 21:53:37.998072-07	3.50000	32	4	\N
1068	2019-02-01 09:10:00-07	2019-02-01 09:52:51-07	banking, paper work	2019-02-01 09:52:57.972267-07	0.71417	40	7	\N
1069	2019-02-01 11:50:00-07	2019-02-01 12:41:53-07	assembly	2019-02-01 12:42:22.633894-07	0.86472	29	7	\N
1070	2019-02-01 13:45:00-07	2019-02-01 16:17:27-07	garage shopping	2019-02-01 16:17:48.20641-07	2.54083	40	7	\N
1071	2019-01-29 15:00:00-07	2019-01-29 16:30:00-07	Started debugging the firmware.	2019-02-02 08:45:12.425292-07	1.50000	30	6	16:30:00
1075	2019-02-01 14:30:00-07	2019-02-01 16:00:00-07	Went to LOW's to get supplies with Barbara.	2019-02-04 07:11:03.084556-07	1.50000	28	3	\N
1057	2019-01-31 07:08:04-07	2019-01-31 17:48:36-07	Inspecting Array Sweep PCB's. Helping Brittney.	2019-02-04 07:14:37.924584-07	10.67556	7	3	\N
1076	2019-02-04 07:30:00-07	2019-02-04 07:45:00-07	Status meeting	2019-02-04 08:19:31.307763-07	0.25000	21	5	07:45:00
1077	2019-02-04 08:15:00-07	2019-02-04 08:45:00-07	Review of AITS/ADAS PM documents	2019-02-04 08:37:54.579319-07	0.50000	11	5	08:45:00
1079	2019-02-04 09:03:25-07	2019-02-04 09:27:46-07	banking, paper work	2019-02-04 09:27:49.309367-07	0.40583	40	7	\N
1078	2019-02-04 08:45:00-07	2019-02-04 10:15:00-07	File sync	2019-02-04 10:11:26.083983-07	1.50000	3	5	10:15:00
1080	2019-02-04 10:15:00-07	2019-02-04 10:45:00-07	Meeting with Peterson	2019-02-04 12:14:31.405275-07	0.50000	4	5	10:45:00
1081	2019-02-04 10:45:00-07	2019-02-04 12:15:00-07	Progeny IPT	2019-02-04 12:14:58.874133-07	1.50000	21	5	12:15:00
1082	2019-02-04 12:15:00-07	2019-02-04 12:30:00-07	File sync	2019-02-04 12:24:18.14819-07	0.25000	3	5	12:30:00
1083	2019-02-04 12:30:00-07	2019-02-04 14:45:00-07	Inventory syncing	2019-02-04 14:49:57.47099-07	2.25000	81	5	14:45:00
1084	2019-02-04 14:45:00-07	2019-02-04 15:00:00-07	BP1068 data review	2019-02-04 15:03:03.056724-07	0.25000	42	5	15:00:00
1085	2019-02-04 15:00:00-07	2019-02-04 15:45:00-07	Tuning test mapping	2019-02-04 15:40:58.688742-07	0.75000	84	5	15:45:00
1086	2019-02-04 12:30:00-07	2019-02-04 15:30:00-07	assembly	2019-02-04 16:53:00.85063-07	3.00000	29	7	15:30:00
1072	2019-02-04 07:04:07-07	2019-02-04 09:30:00-07	cleaning and inspecting PWB.	2019-02-04 17:08:13.111115-07	2.43139	7	3	\N
1087	2019-02-04 09:30:00-07	2019-02-04 17:12:09-07	Changing ceiling tiles.	2019-02-04 17:12:12.413083-07	7.70250	28	3	\N
1088	2019-02-04 17:30:00-07	2019-02-04 21:00:00-07	Organization	2019-02-04 20:50:25.092498-07	3.50000	28	8	21:00:00
1090	2019-02-05 07:45:00-07	2019-02-05 08:00:00-07	Element status	2019-02-05 08:08:06.823459-07	0.25000	80	5	08:00:00
1092	2019-02-05 08:15:00-07	2019-02-05 09:00:00-07	Status meeting	2019-02-05 08:57:45.675356-07	0.75000	21	5	09:00:00
1091	2019-02-05 08:00:00-07	2019-02-05 08:15:00-07	Tuning test mapping	2019-02-06 06:36:18.597539-07	0.25000	81	5	08:15:00
1093	2019-02-05 08:45:00-07	2019-02-05 09:51:15-07	banking, paper work	2019-02-05 09:51:18.137133-07	1.10417	40	7	\N
1094	2019-02-05 09:00:00-07	2019-02-05 09:30:00-07	Discussion with Henry	2019-02-05 10:08:42.007959-07	0.50000	11	5	09:30:00
1095	2019-02-05 09:30:00-07	2019-02-05 09:45:00-07	Discussion with Henry	2019-02-05 10:09:10.118566-07	0.25000	34	5	09:45:00
1096	2019-02-05 09:45:00-07	2019-02-05 10:30:00-07	Unidentified elements	2019-02-05 10:10:36.659887-07	0.75000	81	5	10:30:00
1097	2019-02-05 10:30:00-07	2019-02-05 11:00:00-07	Capacitance test meeting	2019-02-05 12:41:36.435538-07	0.50000	10	5	11:00:00
1099	2019-02-05 14:00:00-07	2019-02-05 14:45:00-07	banking	2019-02-05 15:49:20.23832-07	0.75000	40	7	\N
1098	2019-02-05 12:30:00-07	2019-02-05 14:30:00-07	Relay board debug	2019-02-05 16:02:23.690613-07	2.00000	11	5	14:30:00
1089	2019-02-05 06:50:00-07	2019-02-05 16:27:38-07	Installing label printer.	2019-02-05 16:27:44.547318-07	9.62722	28	3	\N
1102	2019-02-05 16:45:00-07	2019-02-05 17:15:00-07	Relay board parts	2019-02-05 19:32:24.725983-07	0.50000	87	5	17:15:00
1101	2019-02-05 18:10:00-07	2019-02-05 20:16:38-07	R & R relay #25 .	2019-02-05 20:16:43.341286-07	2.11056	87	3	\N
1100	2019-02-05 14:30:00-07	2019-02-05 16:00:00-07	Remapping	2019-02-06 06:36:45.706648-07	1.50000	81	5	16:00:00
1103	2019-02-06 07:15:00-07	2019-02-06 08:15:00-07	Redesign	2019-02-06 08:09:44.2336-07	1.00000	2	5	08:15:00
1133	2019-02-11 14:00:00-07	2019-02-11 15:45:00-07	Firmware	2019-02-11 15:38:25.290221-07	1.75000	76	5	15:45:00
1104	2019-02-06 09:30:00-07	2019-02-06 09:45:00-07	Redesign	2019-02-06 09:45:36.239791-07	0.25000	2	5	09:45:00
1105	2019-02-06 10:45:00-07	2019-02-06 15:30:00-07	ADAS pin issue	2019-02-06 16:21:55.602377-07	4.75000	81	5	15:30:00
1106	2019-02-06 15:30:00-07	2019-02-06 16:15:00-07	Redesign	2019-02-06 16:23:07.552894-07	0.75000	2	5	16:15:00
1107	2019-02-07 06:00:00-07	2019-02-07 07:30:00-07	ADAS pin issue - Rework Procedure	2019-02-07 08:41:40.912283-07	1.50000	81	5	07:30:00
1109	2019-02-07 07:30:00-07	2019-02-07 08:00:00-07	Status meeting	2019-02-07 08:42:07.351802-07	0.50000	21	5	08:00:00
1110	2019-02-07 08:00:00-07	2019-02-07 08:45:00-07	ADAS pin issue - Rework Procedure	2019-02-07 08:42:51.942559-07	0.75000	81	5	08:45:00
1111	2019-02-07 09:22:34-07	2019-02-07 10:53:02-07	banking, paper work	2019-02-07 10:53:06.112114-07	1.50778	40	7	\N
1112	2019-02-07 08:45:00-07	2019-02-07 09:15:00-07	E007 CD	2019-02-07 11:45:36.455849-07	0.50000	81	5	09:15:00
1113	2019-02-07 09:15:00-07	2019-02-07 10:00:00-07	Training	2019-02-07 11:47:03.422758-07	0.75000	81	5	10:00:00
1114	2019-02-07 10:00:00-07	2019-02-07 12:00:00-07	Inspection checklists	2019-02-07 13:19:23.255336-07	2.00000	15	5	12:00:00
1115	2019-02-07 12:00:00-07	2019-02-07 13:30:00-07	Inventory Verification debug	2019-02-07 13:20:19.21772-07	1.50000	81	5	13:30:00
1116	2019-02-07 13:30:00-07	2019-02-07 14:15:00-07	Inspection checklists	2019-02-07 14:58:05.288539-07	0.75000	15	5	14:15:00
1117	2019-02-07 14:15:00-07	2019-02-07 15:00:00-07	Element Verification	2019-02-07 14:58:43.810455-07	0.75000	80	5	15:00:00
1108	2019-02-07 07:10:00-07	2019-02-07 17:17:08-07	inspecting the Array Sweep PCB's.	2019-02-07 17:17:11.678492-07	10.11889	7	3	\N
1119	2019-02-07 16:00:00-07	2019-02-07 17:48:52-07	parts Input	2019-02-07 17:49:11.253448-07	1.81444	128	7	\N
1118	2019-02-07 17:30:00-07	2019-02-07 21:15:00-07	Inventory	2019-02-07 21:08:24.620417-07	3.75000	28	8	21:15:00
1121	2019-02-08 07:00:00-07	2019-02-08 09:00:00-07	HV and sweep test	2019-02-08 11:48:30.22805-07	2.00000	8	5	09:00:00
1122	2019-02-08 09:00:00-07	2019-02-08 11:45:00-07	Tuning meeting and element selection	2019-02-08 11:48:59.844322-07	2.75000	75	5	11:45:00
1120	2019-02-08 11:20:08-07	2019-02-08 13:00:00-07	parts Input	2019-02-08 13:45:42.439515-07	1.66444	128	7	\N
1123	2019-02-08 11:45:00-07	2019-02-08 15:00:00-07	Tested, New layout	2019-02-08 14:58:22.419762-07	3.25000	8	5	15:00:00
1125	2019-02-08 14:57:55-07	2019-02-08 16:36:36-07	parts Input	2019-02-08 16:36:39.041245-07	1.64472	128	7	\N
1134	2019-02-11 17:45:00-07	2019-02-11 21:00:00-07	Inventory	2019-02-11 21:06:24.137921-07	3.25000	28	8	21:00:00
1126	2019-02-09 09:00:00-07	2019-02-09 13:30:13-07	Drywall.	2019-02-09 13:30:16.621368-07	4.50361	28	3	\N
1127	2019-02-11 07:30:00-07	2019-02-11 07:45:00-07	Status meeting	2019-02-11 08:10:50.556961-07	0.25000	21	5	07:45:00
1128	2019-02-11 08:15:00-07	2019-02-11 10:15:00-07	New board layout/check	2019-02-11 10:11:53.995685-07	2.00000	2	5	10:15:00
1129	2019-02-11 10:15:00-07	2019-02-11 10:45:00-07	Debug	2019-02-11 10:43:13.214921-07	0.50000	12	5	10:45:00
1130	2019-02-11 10:45:00-07	2019-02-11 11:45:00-07	Progeny IPT	2019-02-11 12:09:13.070824-07	1.00000	21	5	11:45:00
1131	2019-02-11 11:45:00-07	2019-02-11 12:00:00-07	Corrupt File	2019-02-11 12:09:48.142706-07	0.25000	80	5	12:00:00
1132	2019-02-11 12:00:00-07	2019-02-11 14:00:00-07	Debug	2019-02-11 15:09:18.952501-07	2.00000	12	5	14:00:00
1124	2019-02-08 08:50:00-07	2019-02-08 10:20:00-07	repairing cable.	2019-02-12 07:28:00.254816-07	1.50000	125	3	\N
1135	2019-02-12 07:30:00-07	2019-02-12 08:00:00-07	Test cable	2019-02-12 08:10:05.32766-07	0.50000	129	5	08:00:00
1137	2019-02-08 10:20:00-07	2019-02-08 14:33:00-07	Installing stepper motor to board.	2019-02-12 08:20:02.602171-07	4.21667	29	3	\N
1138	2019-02-12 07:05:00-07	2019-02-12 08:21:40-07	Removong and replacing bad connectors.	2019-02-12 08:22:29.186003-07	1.27778	87	3	\N
1144	2019-02-12 12:19:27-07	2019-02-12 15:21:44-07	Making list of PVC board and trim needed for shop.	2019-02-12 15:21:46.636067-07	3.03806	28	3	\N
1141	2019-02-12 08:30:00-07	2019-02-12 09:00:00-07	banking, paper work	2019-02-12 09:01:13.407843-07	0.50000	40	7	09:00:00
1142	2019-02-12 09:01:13-07	2019-02-12 10:16:21-07	parts Input	2019-02-12 10:16:24.616992-07	1.25222	128	7	\N
1143	2019-02-12 10:16:24-07	2019-02-12 11:34:32-07	parts Input	2019-02-12 11:34:36.17868-07	1.30222	128	7	\N
1147	2019-02-12 13:45:00-07	2019-02-12 15:30:00-07	BP1070, BP1071	2019-02-12 15:34:26.167371-07	1.75000	41	5	15:30:00
1139	2019-02-12 08:21:41-07	2019-02-12 09:20:00-07	makeing test cable.	2019-02-12 12:17:57.658858-07	0.97194	129	3	\N
1140	2019-02-12 09:20:00-07	2019-02-12 12:19:26-07	Trouble shooting.display board.	2019-02-12 12:21:13.354617-07	2.99056	29	3	\N
1136	2019-02-12 08:00:00-07	2019-02-12 09:15:00-07	Debug	2019-02-12 12:25:51.792201-07	1.25000	12	5	09:15:00
1145	2019-02-12 12:15:00-07	2019-02-12 13:00:00-07	Ordered cables	2019-02-12 13:38:25.731758-07	0.75000	129	5	13:00:00
1146	2019-02-12 13:00:00-07	2019-02-12 13:45:00-07	NGC IPT call	2019-02-12 13:38:54.53713-07	0.75000	84	5	13:45:00
1148	2019-02-12 15:30:00-07	2019-02-12 15:45:00-07	Vitrek V76 programming research	2019-02-12 15:51:08.322686-07	0.25000	129	5	15:45:00
1150	2019-02-13 07:30:00-07	2019-02-13 08:00:00-07	Status meeting	2019-02-13 07:55:22.067856-07	0.50000	21	5	08:00:00
1151	2019-02-13 08:00:00-07	2019-02-13 09:45:00-07	Reviewed failed element data	2019-02-13 09:43:47.010778-07	1.75000	81	5	09:45:00
1152	2019-02-13 09:45:00-07	2019-02-13 11:15:00-07	Tuning evaluation	2019-02-13 12:24:07.759393-07	1.50000	75	5	11:15:00
1153	2019-02-13 11:15:00-07	2019-02-13 12:30:00-07	Scott's capacitance questions	2019-02-13 12:24:41.217631-07	1.25000	81	5	12:30:00
1154	2019-02-13 12:30:00-07	2019-02-13 12:45:00-07	Status meeting	2019-02-13 12:46:12.113524-07	0.25000	21	5	12:45:00
1156	2019-02-13 13:15:00-07	2019-02-13 15:45:00-07	Tuning comparison, MRB, plan for testing	2019-02-13 15:41:32.431915-07	2.50000	80	5	15:30:00
1155	2019-02-13 12:45:00-07	2019-02-13 13:15:00-07	Thermotron issues	2019-02-13 13:21:55.615094-07	0.50000	15	5	13:00:00
1149	2019-02-13 07:00:00-07	2019-02-13 15:16:04-07	Setting up motor controller.	2019-02-13 15:16:08.061679-07	8.26778	29	3	\N
1157	2019-02-13 16:03:56-07	2019-02-13 17:03:42-07	parts input	2019-02-13 17:03:46.46225-07	0.99611	128	7	\N
1158	2019-02-13 17:30:00-07	2019-02-13 21:15:00-07	Inventory	2019-02-13 21:19:03.603743-07	3.75000	28	8	21:15:00
1161	2019-02-14 09:45:00-07	2019-02-14 11:15:00-07	Element MRB	2019-02-14 11:16:25.723384-07	1.50000	81	5	11:15:00
1160	2019-02-14 08:00:00-07	2019-02-14 09:45:00-07	Training, software	2019-02-14 11:15:30.922214-07	1.75000	131	5	09:45:00
1162	2019-02-14 11:15:00-07	2019-02-14 11:45:00-07	Software	2019-02-14 12:07:32.526374-07	0.50000	131	5	11:45:00
1159	2019-02-14 06:55:37-07	2019-02-14 13:53:24-07	Leak detector setup.	2019-02-14 13:54:15.286657-07	6.96306	29	3	\N
1163	2019-02-14 11:45:00-07	2019-02-14 12:00:00-07	Answered emails from Mike Timpson	2019-02-17 21:37:27.730082-07	0.25000	81	5	12:00:00
1337	2019-03-11 17:30:00-06	2019-03-11 21:00:00-06	Inventory	2019-03-11 21:00:48.448161-06	3.50000	28	8	21:00:00
1164	2019-02-14 12:00:00-07	2019-02-14 13:45:00-07	Software	2019-02-14 13:43:21.368264-07	1.75000	131	5	13:45:00
1431	2019-03-20 14:00:00-06	2019-03-20 14:15:00-06	Status call	2019-03-20 14:21:13.983366-06	0.25000	34	5	14:15:00
1166	2019-02-14 13:53:25-07	2019-02-14 15:07:10-07	Learning programming.	2019-02-14 15:07:19.656705-07	1.22917	130	3	\N
1199	2019-02-13 17:03:46-07	2019-02-13 23:59:59.999999-07	parts input	2019-02-14 16:26:04.143116-07	6.93694	128	7	\N
1200	2019-02-14 00:00:00-07	2019-02-14 16:26:00-07	parts input	2019-02-14 16:26:04.15197-07	16.43333	128	7	\N
1165	2019-02-14 13:45:00-07	2019-02-14 14:00:00-07	Check lists	2019-02-15 07:53:06.454182-07	0.25000	15	5	14:00:00
1202	2019-02-14 14:00:00-07	2019-02-14 15:15:00-07	Planning	2019-02-15 07:54:04.927924-07	1.25000	131	5	15:15:00
1203	2019-02-15 07:30:00-07	2019-02-15 08:45:00-07	Planning	2019-02-15 08:44:08.693398-07	1.25000	21	5	08:45:00
1204	2019-02-15 08:22:05-07	2019-02-15 08:46:00-07	banking	2019-02-15 09:21:38.779338-07	0.39861	40	7	\N
1205	2019-02-15 08:45:00-07	2019-02-15 10:15:00-07	Check lists	2019-02-15 10:15:16.37597-07	1.50000	15	5	10:15:00
1207	2019-02-15 10:15:00-07	2019-02-15 14:00:00-07	Changing test limits	2019-02-15 14:05:50.684596-07	3.75000	81	5	14:00:00
1201	2019-02-15 06:40:00-07	2019-02-15 14:43:42-07	Testing.	2019-02-15 14:43:46.532983-07	8.06167	29	3	\N
1206	2019-02-15 10:10:52-07	2019-02-15 11:46:40-07	Part input	2019-02-15 14:46:54.127323-07	1.59667	128	7	\N
1208	2019-02-15 14:00:00-07	2019-02-15 15:30:00-07	RS232 communications	2019-02-15 15:29:08.843022-07	1.50000	129	5	15:30:00
1209	2019-02-15 16:00:21-07	2019-02-15 16:19:49-07	part input	2019-02-15 16:19:52.948233-07	0.32444	128	7	\N
1210	2019-02-18 07:30:00-07	2019-02-18 08:15:00-07	Status & planning	2019-02-18 09:16:56.233473-07	0.75000	21	5	08:15:00
1211	2019-02-18 08:15:00-07	2019-02-18 09:30:00-07	TI-08 test plan	2019-02-18 09:30:12.822732-07	1.25000	34	5	09:30:00
1212	2019-02-18 09:30:00-07	2019-02-18 11:30:00-07	Impedance consolidation thru BP1082	2019-02-18 11:26:53.951103-07	2.00000	41	5	11:30:00
1213	2019-02-18 11:30:00-07	2019-02-18 11:45:00-07	Status	2019-02-18 11:58:09.190782-07	0.25000	80	5	11:45:00
1214	2019-02-18 11:45:00-07	2019-02-18 13:45:00-07	Stencil & Parts	2019-02-18 13:37:18.716411-07	2.00000	12	5	13:45:00
1215	2019-02-18 15:00:39-07	2019-02-18 16:48:12-07	parts input	2019-02-18 16:48:14.277241-07	1.79250	128	7	\N
1217	2019-02-18 18:00:00-07	2019-02-18 18:33:23-07	parts input	2019-02-18 18:33:25.341103-07	0.55639	128	7	\N
1216	2019-02-18 17:30:00-07	2019-02-18 21:00:00-07	Inventory	2019-02-18 21:02:27.401417-07	3.50000	28	8	21:00:00
1219	2019-02-19 07:30:00-07	2019-02-19 07:45:00-07	Status & planning	2019-02-19 07:54:55.097302-07	0.25000	21	5	07:45:00
1220	2019-02-19 07:45:00-07	2019-02-19 10:15:00-07	Element Verification	2019-02-19 10:13:57.70418-07	2.50000	131	5	10:15:00
1221	2019-02-19 10:15:00-07	2019-02-19 11:45:00-07	Status & planning	2019-02-19 11:48:33.29334-07	1.50000	21	5	11:45:00
1223	2019-02-19 13:45:00-07	2019-02-19 14:00:00-07	Excel map missing markings	2019-02-19 14:53:52.573098-07	0.25000	3	5	14:00:00
1224	2019-02-19 14:00:00-07	2019-02-19 15:00:00-07	Mapped BP1084, BP1085, BP1086	2019-02-19 14:54:41.974395-07	1.00000	81	5	15:00:00
1218	2019-02-19 07:00:25-07	2019-02-19 17:08:51-07	Smoke detector.	2019-02-19 17:08:54.818681-07	10.14056	29	3	\N
1226	2019-02-20 07:15:00-07	2019-02-20 07:45:00-07	Status meeting	2019-02-20 08:09:44.591402-07	0.50000	21	5	07:45:00
1227	2019-02-20 07:45:00-07	2019-02-20 08:15:00-07	BP1070, BP1074	2019-02-20 08:22:27.977255-07	0.50000	41	5	08:15:00
1228	2019-02-20 08:15:00-07	2019-02-20 09:00:00-07	Preparation	2019-02-20 12:19:13.792753-07	0.75000	164	5	09:00:00
1229	2019-02-20 09:00:00-07	2019-02-20 09:30:00-07	Planning	2019-02-20 12:22:16.718392-07	0.50000	34	5	09:30:00
1230	2019-02-20 09:30:00-07	2019-02-20 10:30:00-07	Crystal - issues	2019-02-20 12:23:03.714008-07	1.00000	80	5	10:30:00
1231	2019-02-20 10:30:00-07	2019-02-20 13:00:00-07	Preparation & Meeting	2019-02-20 15:00:59.63117-07	2.50000	164	5	13:00:00
1232	2019-02-20 13:00:00-07	2019-02-20 13:30:00-07	CDs	2019-02-20 15:01:36.873641-07	0.50000	41	5	13:30:00
1233	2019-02-20 13:30:00-07	2019-02-20 14:00:00-07	Crystal - edited files	2019-02-20 15:02:41.904695-07	0.50000	80	5	14:00:00
1235	2019-02-20 15:00:00-07	2019-02-20 15:30:00-07	Status & planning	2019-02-20 15:27:32.878583-07	0.50000	21	5	15:30:00
1225	2019-02-20 07:00:00-07	2019-02-20 17:13:04-07	Building MOD1 Element Test Carriers PWB.	2019-02-20 17:13:09.305725-07	10.21778	2	3	\N
1236	2019-02-20 11:00:00-07	2019-02-20 13:00:00-07	banking	2019-02-20 17:36:14.783161-07	2.00000	40	7	13:00:00
1237	2019-02-21 08:30:00-07	2019-02-21 09:00:00-07	Review and write doc for Henry	2019-02-21 09:12:50.885236-07	0.50000	34	5	09:00:00
1238	2019-02-21 07:05:00-07	2019-02-21 17:45:55-07	Building MOD1 Element Test Carriers PWB.	2019-02-21 17:45:58.567439-07	10.68194	2	3	\N
1239	2019-02-21 17:30:00-07	2019-02-21 21:00:00-07	Assemble boards	2019-02-21 20:53:47.354077-07	3.50000	2	8	21:00:00
1240	2019-02-22 08:00:00-07	2019-02-22 17:09:07-07	Building MOD1 Element Test Carriers PWB.	2019-02-22 17:09:53.90493-07	9.15194	2	3	\N
1222	2019-02-19 11:45:00-07	2019-02-19 13:45:00-07	Cleaning up from MRB testing, Mapping BP1083	2019-02-25 07:15:39.156291-07	2.00000	81	5	13:45:00
1241	2019-02-22 17:09:08-07	2019-02-22 18:00:00-07	Running lesson 4.	2019-02-25 07:15:58.103264-07	0.84778	130	3	\N
1234	2019-02-20 14:00:00-07	2019-02-20 15:00:00-07	MRB units	2019-02-25 07:17:21.923604-07	1.00000	81	5	15:00:00
1242	2019-02-25 07:10:00-07	2019-02-25 15:22:23-07	Building MOD1 element Test Carriers PWB's.	2019-02-25 15:22:28.753461-07	8.20639	2	3	\N
1243	2019-02-25 17:30:00-07	2019-02-25 21:00:00-07	Inventory	2019-02-25 20:59:26.829457-07	3.50000	28	8	21:00:00
1244	2019-02-26 07:10:00-07	2019-02-26 15:22:02-07	Building MOD1 Element Test Carriers PWB.	2019-02-26 15:22:08.486966-07	8.20056	2	3	\N
1245	2019-02-27 07:00:00-07	2019-02-27 15:19:12-07	Building MOD1 Element Test Carriers PWB.	2019-02-27 15:19:15.504489-07	8.32000	2	3	\N
1246	2019-02-28 07:00:00-07	2019-02-28 15:06:16-07	Building MOD1 Element Test Carriers PWB.	2019-02-28 15:06:23.276552-07	8.10444	2	3	\N
1247	2019-02-28 17:30:00-07	2019-02-28 21:00:00-07	Inspection	2019-02-28 20:55:26.868172-07	3.50000	2	8	21:00:00
1257	2019-03-01 12:30:00-07	2019-03-01 15:45:00-07	Pol date input	2019-03-01 15:42:46.624181-07	3.25000	3	5	15:45:00
1254	2019-03-01 12:37:29-07	2019-03-01 13:00:00-07	banking	2019-03-01 15:55:59.931954-07	0.37528	40	7	\N
1250	2019-03-01 09:30:00-07	2019-03-01 10:39:09-07	banking, paper work	2019-03-01 10:39:30.566419-07	1.15250	40	7	\N
1252	2019-03-01 08:00:00-07	2019-03-01 09:30:00-07	Duplicate Removal	2019-03-01 10:47:22.226274-07	1.50000	3	5	09:30:00
1251	2019-03-01 10:39:10-07	2019-03-01 12:37:28-07	labels	2019-03-01 12:37:43.018502-07	1.97167	29	7	\N
1249	2019-03-01 06:30:00-07	2019-03-01 14:48:15-07	Building MOD1 Element Test Carriers PWB.	2019-03-01 14:48:21.785658-07	8.30417	2	3	\N
1253	2019-03-01 09:30:00-07	2019-03-01 10:45:00-07	Inventory syncing	2019-03-01 15:37:41.549448-07	1.25000	81	5	10:45:00
1255	2019-03-01 10:45:00-07	2019-03-01 12:00:00-07	Thermotron issues	2019-03-01 15:38:35.341369-07	1.25000	15	5	12:00:00
1256	2019-03-01 12:00:00-07	2019-03-01 12:30:00-07	Sweep analysis	2019-03-01 15:39:41.448888-07	0.50000	81	5	12:30:00
1258	2019-02-24 09:13:59-07	2019-02-24 09:14:01-07	test entry	2019-03-02 13:14:00.440432-07	0.00056	165	9	\N
1259	2019-03-04 07:30:00-07	2019-03-04 07:45:00-07	Status meeting	2019-03-04 07:43:38.810289-07	0.25000	21	5	07:45:00
1260	2019-03-04 07:45:00-07	2019-03-04 08:45:00-07	Verification of remaining MRR units	2019-03-04 08:44:38.266369-07	1.00000	131	5	08:45:00
1248	2019-03-04 06:45:00-07	2019-03-04 09:20:31-07	Building MOD1 Element Test Carriers PWB.	2019-03-04 09:22:57.797626-07	2.59194	2	3	\N
1261	2019-03-04 08:45:00-07	2019-03-04 10:45:00-07	Thermotron debugging	2019-03-04 11:47:55.805882-07	2.00000	15	5	10:15:00
1263	2019-03-04 10:45:00-07	2019-03-04 11:45:00-07	Progeny IPT	2019-03-04 11:50:15.934804-07	1.00000	21	5	11:45:00
1262	2019-03-04 09:20:32-07	2019-03-04 14:01:02-07	Cutting legs down, installing wheels.	2019-03-04 14:02:09.74761-07	4.67500	7	3	\N
1264	2019-03-04 11:45:00-07	2019-03-04 14:00:00-07	Check lists	2019-03-04 14:39:51.024316-07	2.25000	15	5	14:00:00
1266	2019-03-04 14:00:00-07	2019-03-04 15:30:00-07	Thermotron debugging	2019-03-04 15:35:13.991943-07	1.50000	15	5	15:30:00
1267	2019-03-04 17:30:00-07	2019-03-04 19:13:20-07	Building display board.	2019-03-04 19:13:23.795927-07	1.72222	29	3	\N
1265	2019-03-04 14:01:03-07	2019-03-04 17:29:59-07	lessons 4 & 5.	2019-03-04 18:06:10.539067-07	3.48222	130	3	\N
1432	2019-03-20 13:30:00-06	2019-03-20 16:17:00-06	Side paneling -Garage	2019-03-20 16:19:09.694358-06	2.78333	28	11	16:17:00
1269	2019-03-04 17:30:00-07	2019-03-04 21:00:00-07	Assemble boards	2019-03-04 20:55:36.276922-07	3.50000	2	8	21:00:00
1270	2019-03-05 08:30:00-07	2019-03-05 09:30:00-07	Check lists	2019-03-05 09:29:51.767327-07	1.00000	15	5	09:30:00
1271	2019-03-05 09:30:00-07	2019-03-05 11:00:00-07	Dave Hogue testing time study	2019-03-05 10:54:46.747532-07	1.50000	81	5	11:00:00
1272	2019-03-05 11:00:00-07	2019-03-05 11:15:00-07	6-32 screw research	2019-03-05 11:25:41.291745-07	0.25000	81	5	11:15:00
1273	2019-03-05 11:15:00-07	2019-03-05 12:15:00-07	Find substitute element BP1081	2019-03-05 12:20:05.194116-07	1.00000	81	5	12:15:00
1275	2019-03-05 12:15:00-07	2019-03-05 12:30:00-07	6-32 screw research	2019-03-05 12:49:50.271286-07	0.25000	81	5	12:30:00
1277	2019-03-04 08:00:00-07	2019-03-04 17:00:00-07	Studying	2019-03-05 13:59:03.385067-07	9.00000	31	10	\N
1278	2019-03-05 00:00:00-07	2019-03-05 09:00:00-07	Setting up	2019-03-05 13:59:56.246995-07	9.00000	31	10	09:00:00
1279	2019-03-05 12:30:00-07	2019-03-05 13:45:00-07	Syncing software with secure system	2019-03-05 14:23:42.022649-07	1.25000	3	5	13:45:00
1280	2019-03-05 13:45:00-07	2019-03-05 14:00:00-07	Evaluation of 10V elements	2019-03-05 14:24:52.060371-07	0.25000	84	5	14:00:00
1281	2019-03-05 14:00:00-07	2019-03-05 14:30:00-07	Status call and discussion with Ryan	2019-03-05 14:25:39.7773-07	0.50000	34	5	14:30:00
1274	2019-03-05 06:55:00-07	2019-03-05 15:03:58-07	Building Phase Detector Cabinet.	2019-03-05 15:04:43.608181-07	8.14944	7	3	\N
1276	2019-03-05 11:15:32-07	2019-03-05 14:32:55-07	bank shop	2019-03-05 15:33:03.453182-07	3.28972	40	7	\N
1282	2019-03-05 14:30:00-07	2019-03-05 15:30:00-07	Pol date input	2019-03-05 15:36:15.47982-07	1.00000	3	5	15:30:00
1283	2019-03-05 15:03:59-07	2019-03-05 17:05:26-07	Cleaning up display PWB.	2019-03-05 17:05:28.209996-07	2.02417	29	3	\N
1284	2019-03-05 12:00:00-07	2019-03-05 15:00:00-07	trying to clone the app, set up timepiece	2019-03-05 17:54:42.293002-07	3.00000	31	10	\N
1285	2019-03-06 05:45:00-07	2019-03-06 07:30:00-07	Pol date input	2019-03-06 07:28:46.907519-07	1.75000	3	5	07:30:00
1287	2019-03-06 07:30:00-07	2019-03-06 07:45:00-07	Status meeting	2019-03-06 08:01:41.246087-07	0.25000	21	5	07:45:00
1288	2019-03-06 07:45:00-07	2019-03-06 08:00:00-07	BP1067 connector issue	2019-03-06 08:02:27.029801-07	0.25000	81	5	08:00:00
1289	2019-03-06 08:00:00-07	2019-03-06 09:30:00-07	Carrier Filling, Validation, and Consolidation	2019-03-06 09:34:45.30849-07	1.50000	3	5	09:30:00
1291	2019-03-06 10:38:07-07	2019-03-06 11:38:17-07	cloning the app, more set up	2019-03-06 11:38:21.2074-07	1.00278	32	10	\N
1292	2019-03-06 12:07:35-07	2019-03-06 13:34:34-07	Cloning app	2019-03-06 13:34:36.654075-07	1.44972	32	10	\N
1286	2019-03-06 07:00:00-07	2019-03-06 13:59:59-07	Building Phase Detector Cabinet.	2019-03-06 16:52:48.111813-07	6.99972	7	3	\N
1293	2019-03-06 14:00:00-07	2019-03-06 16:00:59-07	Assemble and test Display PWB.	2019-03-06 16:54:14.228872-07	2.01639	29	3	\N
1290	2019-03-06 09:30:00-07	2019-03-06 14:00:00-07	Impedance consolidation, array mapping	2019-03-06 18:54:42.456865-07	4.50000	3	5	14:00:00
1295	2019-03-06 14:00:00-07	2019-03-06 14:15:00-07	Status call	2019-03-06 18:59:23.579899-07	0.25000	34	5	14:15:00
1296	2019-03-06 16:15:00-07	2019-03-06 18:15:00-07	Worked on getting MEU working	2019-03-06 20:12:03.506994-07	2.00000	165	9	\N
1268	2019-03-04 16:15:00-07	2019-03-04 18:15:00-07	Initilal contact	2019-03-06 20:12:41.839886-07	2.00000	165	9	\N
1294	2019-03-06 16:01:00-07	2019-03-06 17:03:00-07	Building test PWB.	2019-03-07 08:27:07.446322-07	1.03333	2	3	\N
1298	2019-03-07 06:00:00-07	2019-03-07 10:00:00-07	Array Audit	2019-03-07 10:22:46.358026-07	4.00000	3	5	10:00:00
1299	2019-03-07 10:00:00-07	2019-03-07 11:00:00-07	BP1067 connector issue	2019-03-07 10:53:25.275817-07	1.00000	81	5	11:00:00
1301	2019-03-07 12:47:28-07	2019-03-07 13:49:23-07	finishing django tutorials	2019-03-07 13:49:25.467985-07	1.03194	31	10	\N
1300	2019-03-07 11:00:00-07	2019-03-07 15:00:00-07	Analysis of TVR and CAL history	2019-03-07 14:54:54.083793-07	4.00000	34	5	15:00:00
1302	2019-03-07 14:25:53-07	2019-03-07 15:27:03-07	finishing django tutorials	2019-03-07 15:27:05.822119-07	1.01944	31	10	\N
1297	2019-03-07 07:00:00-07	2019-03-07 11:29:59-07	Building top of Phase tester Cabinet.	2019-03-07 16:56:50.702934-07	4.49972	7	3	\N
1303	2019-03-07 15:42:00-07	2019-03-07 16:57:37-07	finishing django tutorials	2019-03-07 16:57:39.89795-07	1.26028	31	10	\N
1304	2019-03-07 11:30:00-07	2019-03-07 15:29:59-07	Repair air filter system.	2019-03-07 16:57:53.615118-07	3.99972	28	3	\N
1306	2019-03-07 16:40:41-07	2019-03-07 17:05:18-07	banking	2019-03-07 17:05:35.961666-07	0.41028	40	7	\N
1307	2019-03-07 17:06:00-07	2019-03-07 18:00:06-07	finishing django tutorials	2019-03-07 18:00:08.312862-07	0.90167	31	10	\N
1309	2019-03-07 16:15:00-07	2019-03-07 18:30:00-07	Review Eprom files	2019-03-07 19:12:49.687697-07	2.25000	165	9	\N
1308	2019-03-07 17:30:00-07	2019-03-07 20:30:00-07	Assemble boards	2019-03-07 20:30:47.113025-07	3.00000	2	8	20:30:00
1310	2019-03-08 06:00:00-07	2019-03-08 07:15:00-07	Analysis of TVR and CAL history	2019-03-08 07:18:05.639622-07	1.25000	34	5	07:15:00
1311	2019-03-08 07:15:00-07	2019-03-08 08:45:00-07	BP1067 connector issue	2019-03-08 08:47:22.367215-07	1.50000	81	5	08:45:00
1314	2019-03-08 10:51:15-07	2019-03-08 11:56:32-07	finishing django tutorials	2019-03-08 11:56:35.386439-07	1.08806	31	10	\N
1312	2019-03-08 08:45:00-07	2019-03-08 14:00:00-07	Thermotron debugging	2019-03-08 14:27:15.678956-07	5.25000	15	5	09:15:00
1315	2019-03-08 14:00:00-07	2019-03-08 14:15:00-07	Status call	2019-03-08 14:28:49.989745-07	0.25000	34	5	14:15:00
1316	2019-03-08 14:15:00-07	2019-03-08 15:30:00-07	Thermotron debugging	2019-03-08 15:33:17.260854-07	1.25000	15	5	15:30:00
1317	2019-03-08 14:47:07-07	2019-03-08 17:35:49-07	finishing django tutorials	2019-03-08 17:35:53.650717-07	2.81167	31	10	\N
1318	2019-03-08 16:15:00-07	2019-03-08 19:00:00-07	Program Eproms	2019-03-08 19:54:08.549168-07	2.75000	165	9	\N
1305	2019-03-07 15:30:00-07	2019-03-07 17:05:00-07	Installing new PWB's on Carriers.	2019-03-09 08:58:57.074816-07	1.58333	2	3	\N
1319	2019-03-09 08:58:57-07	2019-03-09 10:29:59-07	working to solve switches problems.	2019-03-09 12:07:45.553602-07	1.51722	28	3	\N
1320	2019-03-09 10:30:00-07	2019-03-09 12:17:50-07	Installing PWB's.	2019-03-09 12:17:53.767895-07	1.79722	2	3	\N
1321	2019-03-09 15:38:13-07	2019-03-09 16:50:24-07	setting up emus-mrp	2019-03-09 16:50:27.70576-07	1.20306	31	10	\N
1323	2019-03-11 07:00:00-06	2019-03-11 08:30:00-06	Check lists	2019-03-11 08:49:44.661675-06	1.50000	15	5	08:30:00
1324	2019-03-11 08:30:00-06	2019-03-11 08:45:00-06	Status meeting	2019-03-11 08:50:11.3083-06	0.25000	21	5	08:45:00
1325	2019-03-11 08:45:00-06	2019-03-11 09:00:00-06	6-32 screw research	2019-03-11 09:03:49.022293-06	0.25000	81	5	09:00:00
1326	2019-03-11 09:00:00-06	2019-03-11 09:15:00-06	Analysis of TVR and CAL history	2019-03-11 09:38:20.410938-06	0.25000	34	5	09:15:00
1327	2019-03-11 09:15:00-06	2019-03-11 09:30:00-06	ADAS 004 CH 92 debugging	2019-03-11 10:42:31.537126-06	0.25000	11	5	09:30:00
1328	2019-03-11 09:30:00-06	2019-03-11 10:45:00-06	Array Audit	2019-03-11 10:43:43.049296-06	1.25000	3	5	10:45:00
1330	2019-03-11 10:45:00-06	2019-03-11 12:00:00-06	Progeny IPT	2019-03-11 13:54:15.36708-06	1.25000	21	5	12:00:00
1331	2019-03-11 12:00:00-06	2019-03-11 12:15:00-06	Discussion with Ryan	2019-03-11 13:54:59.011263-06	0.25000	34	5	12:15:00
1332	2019-03-11 12:45:00-06	2019-03-11 13:00:00-06	Array Mapping	2019-03-11 13:55:56.317978-06	0.25000	3	5	13:00:00
1333	2019-03-11 13:00:00-06	2019-03-11 13:30:00-06	Connector Repair Proposal	2019-03-11 13:59:01.839845-06	0.50000	21	5	13:30:00
1334	2019-03-11 13:30:00-06	2019-03-11 14:00:00-06	Check lists	2019-03-11 13:59:27.571003-06	0.50000	15	5	14:00:00
1329	2019-03-11 13:45:20-06	2019-03-11 14:55:37-06	Studying	2019-03-11 14:55:39.380309-06	1.17139	31	10	\N
1322	2019-03-11 07:05:00-06	2019-03-11 15:12:18-06	Testing relays for the air filter system.	2019-03-11 15:12:24.531668-06	8.12167	28	3	\N
1335	2019-03-11 14:00:00-06	2019-03-11 15:45:00-06	Array Audit  Test	2019-03-11 15:47:18.198439-06	1.75000	81	5	15:45:00
1336	2019-03-11 16:59:11-06	2019-03-11 17:13:35-06	working on app	2019-03-11 17:13:36.910515-06	0.24000	32	10	\N
1338	2019-03-11 16:15:00-06	2019-03-11 18:55:00-06	Work on go forward plan	2019-03-12 05:47:59.391938-06	2.66667	165	9	\N
1339	2019-03-12 06:15:00-06	2019-03-12 06:45:00-06	Mapped BP	2019-03-12 06:49:33.478945-06	0.50000	81	5	06:45:00
1402	2019-03-18 10:13:55-06	2019-03-18 13:04:54-06	studied, worked on adding columns to activate/proj	2019-03-22 11:13:52.124322-06	2.84972	31	10	\N
1341	2019-03-12 06:45:00-06	2019-03-12 07:00:00-06	Reviewed code with Ryan	2019-03-12 08:18:19.302391-06	0.25000	34	5	07:00:00
1921	2019-05-20 07:30:00-06	2019-05-20 08:00:00-06	Status	2019-05-20 08:04:48.563894-06	0.50000	21	5	08:00:00
1342	2019-03-12 07:00:00-06	2019-03-12 08:45:00-06	Instructions	2019-03-12 08:45:42.601526-06	1.75000	15	5	08:45:00
1343	2019-03-12 08:45:00-06	2019-03-12 09:00:00-06	Installed CD	2019-03-12 09:15:39.165643-06	0.25000	34	5	09:00:00
1344	2019-03-07 09:00:00-07	2019-03-07 12:00:00-07	Fusion 360	2019-03-12 09:29:57.956687-06	3.00000	166	11	\N
1345	2019-03-07 12:01:00-07	2019-03-07 14:00:00-07	Cable management installation	2019-03-12 09:30:29.116768-06	1.98333	28	11	\N
1346	2019-03-08 08:00:00-07	2019-03-08 13:00:00-07	Fusion 360 - Downloaded software	2019-03-12 09:31:29.480806-06	5.00000	166	11	\N
1348	2019-03-12 09:00:00-06	2019-03-12 12:00:00-06	First prototype in Fusion 360	2019-03-12 09:36:20.220444-06	3.00000	166	11	\N
1347	2019-03-11 09:00:00-06	2019-03-11 12:00:00-06	First prototype in Fusion 360	2019-03-12 09:37:41.42378-06	3.00000	166	11	\N
1349	2019-03-11 12:01:00-06	2019-03-11 15:06:00-06	Shop automation, Jet air filter	2019-03-12 09:38:13.692752-06	3.08333	28	11	\N
1350	2019-03-12 09:00:00-06	2019-03-12 11:00:00-06	Phase Tester Design	2019-03-12 11:45:11.920824-06	2.00000	7	5	11:00:00
1351	2019-03-12 11:00:00-06	2019-03-12 11:30:00-06	Setup	2019-03-12 11:55:02.030946-06	0.50000	34	5	11:30:00
1340	2019-03-12 07:00:00-06	2019-03-12 13:00:00-06	Wiring relays to air filter.	2019-03-12 15:05:49.854813-06	6.00000	28	3	\N
1377	2019-03-14 17:00:00-06	2019-03-14 18:10:35-06	Getting Brittany started change PWB's on carries.	2019-03-14 18:10:37.569902-06	1.17639	2	3	\N
1353	2019-03-12 12:01:00-06	2019-03-12 15:21:00-06	Set up on flashforce, print, design	2019-03-12 15:22:26.458246-06	3.33333	167	11	15:21:00
1355	2019-03-12 11:30:00-06	2019-03-12 16:15:00-06	Design to use LCR meter	2019-03-12 16:16:42.63469-06	4.75000	7	5	16:15:00
1354	2019-03-12 15:45:20-06	2019-03-12 17:22:49-06	setting up database	2019-03-12 17:22:51.536538-06	1.62472	31	10	\N
1356	2019-03-12 17:42:14-06	2019-03-12 18:06:38-06	changing the order on the app	2019-03-12 18:06:39.97092-06	0.40667	31	10	\N
1357	2019-03-12 18:14:50-06	2019-03-12 18:45:57-06	Setting up	2019-03-12 18:45:58.781766-06	0.51861	32	10	\N
1358	2019-03-13 06:00:00-06	2019-03-13 07:30:00-06	Design to use LCR meter	2019-03-13 11:11:47.762276-06	1.50000	7	5	07:30:00
1359	2019-03-13 07:30:00-06	2019-03-13 08:00:00-06	Status meeting	2019-03-13 11:12:37.315321-06	0.50000	21	5	08:00:00
1360	2019-03-13 08:00:00-06	2019-03-13 11:15:00-06	Schematic and Layout	2019-03-13 11:13:23.722533-06	3.25000	7	5	11:15:00
1352	2019-03-12 13:00:30-06	2019-03-12 15:10:00-06	Learning code for Arduino.	2019-03-13 14:34:23.266528-06	2.15833	130	3	\N
1363	2019-03-13 07:10:00-06	2019-03-13 10:59:59-06	Removing Snow. Dragging wires for air filter.	2019-03-13 14:41:45.285645-06	3.83306	29	3	\N
1364	2019-03-13 11:00:00-06	2019-03-13 14:41:55-06	Modifying test box at Harris.	2019-03-13 14:43:21.556783-06	3.69861	170	3	\N
1365	2019-03-13 14:41:56-06	2019-03-13 15:22:50-06	Inspecting Phase tester PWB and schematic.	2019-03-13 15:22:53.27281-06	0.68167	7	3	\N
1366	2019-03-13 11:15:00-06	2019-03-13 15:35:00-06	First Box printout	2019-03-13 15:37:40.761783-06	4.33333	167	11	15:35:00
1362	2019-03-13 12:37:39-06	2019-03-13 16:37:26-06	updating app	2019-03-13 16:37:30.801869-06	3.99639	32	10	\N
1361	2019-03-13 11:15:00-06	2019-03-13 15:30:00-06	MRR Report	2019-03-13 19:49:37.883588-06	4.25000	3	5	15:30:00
1367	2019-03-13 15:30:00-06	2019-03-13 16:00:00-06	AIOS meeting	2019-03-13 19:51:49.446261-06	0.50000	21	5	16:00:00
1368	2019-03-13 16:00:00-06	2019-03-13 19:45:00-06	Connector search, debugging	2019-03-13 19:53:29.477-06	3.75000	34	5	19:45:00
1369	2019-03-13 16:15:00-06	2019-03-13 17:15:00-06	review file to send	2019-03-13 21:41:43.921861-06	1.00000	165	9	\N
1370	2019-03-14 06:00:00-06	2019-03-14 07:00:00-06	Element verification log	2019-03-14 07:05:36.816486-06	1.00000	3	5	07:00:00
1372	2019-03-14 10:55:06-06	2019-03-14 11:51:30-06	working on positioning	2019-03-14 11:51:33.651965-06	0.94000	32	10	\N
1374	2019-03-14 08:10:00-06	2019-03-14 15:06:00-06	Box design and manufacture	2019-03-14 15:06:11.810979-06	6.93333	167	11	15:06:00
1375	2019-03-14 07:00:00-06	2019-03-14 15:12:56-06	Building display board.	2019-03-14 15:12:59.550563-06	8.21556	29	3	\N
1376	2019-03-14 13:38:09-06	2019-03-14 15:43:48-06	employment verification	2019-03-14 15:43:51.729667-06	2.09417	40	7	\N
1371	2019-03-14 07:00:00-06	2019-03-14 16:00:00-06	Connector search, Fiber design	2019-03-14 15:56:19.544041-06	9.00000	81	5	16:00:00
1373	2019-03-14 14:39:25-06	2019-03-14 17:37:29-06	Studying	2019-03-14 17:37:31.144696-06	2.96778	32	10	\N
1378	2019-03-14 17:45:00-06	2019-03-14 21:15:00-06	Assemble boards	2019-03-14 21:12:06.768103-06	3.50000	2	8	21:15:00
1379	2019-03-15 06:00:00-06	2019-03-15 06:30:00-06	Cleanup	2019-03-15 06:33:09.472951-06	0.50000	81	5	06:30:00
1380	2019-03-15 06:30:00-06	2019-03-15 09:30:00-06	MRR report, Log sheet	2019-03-15 09:22:54.886528-06	3.00000	3	5	09:30:00
1383	2019-03-15 08:47:14-06	2019-03-15 12:48:00-06	cleaning, shelves, banking	2019-03-15 12:48:23.787319-06	4.01278	40	7	12:48:00
1382	2019-03-15 12:39:26-06	2019-03-15 13:28:40-06	Studying	2019-03-15 13:28:42.117223-06	0.82056	32	10	\N
1384	2019-03-15 10:00:00-06	2019-03-15 13:00:00-06	Miscellaneous	2019-03-15 13:53:39.772176-06	3.00000	39	5	13:00:00
1386	2019-03-15 09:15:00-06	2019-03-15 11:00:00-06	Redesigned case	2019-03-15 14:39:40.686647-06	1.75000	167	11	11:00:00
1387	2019-03-15 11:01:00-06	2019-03-15 14:40:00-06	Plainer maintenance	2019-03-15 14:40:32.132935-06	3.65000	28	11	14:40:00
1385	2019-03-15 13:00:00-06	2019-03-15 15:00:00-06	List of tasks	2019-03-15 14:53:21.068532-06	2.00000	32	5	15:00:00
1392	2019-03-16 14:50:50-06	2019-03-16 16:45:47-06	doing todo projects	2019-03-16 16:45:49.868162-06	1.91583	32	10	\N
1388	2019-03-15 17:52:26-06	2019-03-15 18:18:49-06	editing todo list entry	2019-03-15 18:18:51.216153-06	0.43972	32	10	\N
1389	2019-03-15 18:50:31-06	2019-03-15 19:12:57-06	working on to do list	2019-03-15 19:12:59.547058-06	0.37389	31	10	\N
1390	2019-03-15 16:15:00-06	2019-03-15 19:15:00-06	Burn Eproms for customer	2019-03-15 21:21:06.812271-06	3.00000	165	9	\N
1391	2019-03-16 11:28:20-06	2019-03-16 14:09:37-06	completing items on todo list	2019-03-16 14:09:39.691496-06	2.68806	31	10	\N
1393	2019-03-18 06:00:00-06	2019-03-18 06:15:00-06	Status	2019-03-18 06:15:00.014493-06	0.25000	21	5	06:15:00
1394	2019-03-18 06:15:00-06	2019-03-18 06:30:00-06	Board send out	2019-03-18 06:27:51.923081-06	0.25000	7	5	06:30:00
1381	2019-03-15 06:50:30-06	2019-03-15 14:00:00-06	making template for top of cabinet.	2019-03-18 07:52:07.520824-06	7.15833	7	3	\N
1395	2019-03-15 14:00:01-06	2019-03-15 16:00:00-06	Picking up PVC boards for shop.	2019-03-18 07:53:43.485422-06	1.99972	28	3	\N
1397	2019-03-18 06:30:00-06	2019-03-18 07:30:00-06	OPS 090 log sheet	2019-03-18 07:56:33.341259-06	1.00000	3	5	07:30:00
1398	2019-03-18 07:30:00-06	2019-03-18 07:45:00-06	Status	2019-03-18 07:56:58.490586-06	0.25000	21	5	07:45:00
1399	2019-03-18 07:45:00-06	2019-03-18 08:00:00-06	OPS 090 log sheet	2019-03-18 07:57:36.832392-06	0.25000	3	5	08:00:00
1401	2019-03-18 09:15:40-06	2019-03-18 10:37:58-06	banking, paper work	2019-03-18 10:38:01.554019-06	1.37167	40	7	\N
1400	2019-03-18 08:00:00-06	2019-03-18 11:00:00-06	HPT Cable check	2019-03-18 11:31:43.368964-06	3.00000	81	5	11:00:00
1404	2019-03-18 11:00:00-06	2019-03-18 11:30:00-06	Progeny IPT	2019-03-18 11:32:25.696405-06	0.50000	21	5	11:30:00
1403	2019-03-18 10:56:36-06	2019-03-18 12:06:33-06	paper wk	2019-03-18 12:06:36.474778-06	1.16583	40	7	\N
1405	2019-03-18 11:30:00-06	2019-03-18 14:30:00-06	HPT Cable check, Testing	2019-03-18 14:32:28.951807-06	3.00000	81	5	14:30:00
1406	2019-03-18 09:00:00-06	2019-03-18 12:00:00-06	Designing touch screen enclsoure	2019-03-18 16:00:29.723652-06	3.00000	167	11	12:00:00
1407	2019-03-18 12:01:00-06	2019-03-18 16:00:00-06	Planer blade change	2019-03-18 16:01:42.986372-06	3.98333	28	11	16:00:00
1408	2019-03-18 15:00:00-06	2019-03-18 17:19:23-06	Installing siding.	2019-03-18 17:19:25.547367-06	2.32306	28	3	\N
1396	2019-03-18 06:50:00-06	2019-03-18 14:59:59-06	Programming Torque tester at Harris.	2019-03-18 17:19:06.224321-06	8.16639	2	3	\N
1409	2019-03-18 17:30:00-06	2019-03-18 21:00:00-06	Assemble boards	2019-03-18 20:58:18.685679-06	3.50000	2	8	21:00:00
1426	2019-03-20 09:30:00-06	2019-03-20 12:45:00-06	Carrier Consolidation	2019-03-20 13:32:38.365081-06	3.25000	3	5	12:15:00
1411	2019-03-19 06:00:00-06	2019-03-19 07:30:00-06	Test new carriers	2019-03-19 08:51:07.769695-06	1.50000	2	5	07:30:00
1433	2019-03-20 06:50:00-06	2019-03-20 17:09:35-06	installing window sill and siding.	2019-03-20 17:09:38.932524-06	10.32639	28	3	\N
1434	2019-03-19 16:15:00-06	2019-03-19 17:15:00-06	convert mulitple prom files to one file	2019-03-20 19:45:51.465492-06	1.00000	165	9	\N
1410	2019-03-19 08:35:30-06	2019-03-19 10:49:28-06	banking	2019-03-19 10:49:32.311569-06	2.23278	40	7	\N
1412	2019-03-19 07:30:00-06	2019-03-19 12:45:00-06	Carrier Filling	2019-03-19 12:41:52.078817-06	5.25000	3	5	12:45:00
1435	2019-03-20 17:45:00-06	2019-03-20 18:15:00-06	Test -5 code in MEU	2019-03-20 19:46:50.009293-06	0.50000	165	9	\N
1910	2019-05-17 09:00:00-06	2019-05-17 10:00:00-06	Cleaning and vacuming shop	2019-05-17 09:58:39.617156-06	1.00000	28	11	10:00:00
1414	2019-03-19 06:45:00-06	2019-03-19 08:14:59-06	Repairing 2 carries that Brittany had problems.	2019-03-19 13:55:48.19062-06	1.49972	2	3	\N
1415	2019-03-19 08:15:00-06	2019-03-19 09:14:59-06	Working on lesson 14.	2019-03-19 13:57:00.398808-06	0.99972	130	3	\N
1417	2019-03-19 14:00:00-06	2019-03-19 14:30:00-06	Status call	2019-03-19 14:29:13.11197-06	0.50000	34	5	14:30:00
1418	2019-03-19 09:00:00-06	2019-03-19 15:42:00-06	Planer blade change	2019-03-19 15:43:05.525181-06	6.70000	28	11	15:42:00
1416	2019-03-19 09:15:00-06	2019-03-19 16:47:17-06	Building Phase Detector Cabinet.	2019-03-19 16:47:21.314275-06	7.53806	7	3	\N
1439	2019-03-21 14:30:00-06	2019-03-21 14:45:00-06	Status call	2019-03-21 14:38:42.08185-06	0.25000	34	5	14:15:00
1421	2019-03-20 06:00:00-06	2019-03-20 06:45:00-06	Carrier Validation	2019-03-20 06:57:42.629767-06	0.75000	3	5	06:45:00
1436	2019-03-21 05:15:00-06	2019-03-21 14:30:00-06	Remapping	2019-03-21 14:38:56.926051-06	9.25000	3	5	14:00:00
1422	2019-03-20 06:45:00-06	2019-03-20 08:30:00-06	Carrier Consolidation	2019-03-20 09:32:15.890128-06	1.75000	3	5	08:30:00
1423	2019-03-20 08:30:00-06	2019-03-20 09:30:00-06	CD, Seacon plug	2019-03-20 09:35:47.439158-06	1.00000	34	5	09:30:00
1424	2019-03-20 09:00:00-06	2019-03-20 09:35:00-06	ordering parts	2019-03-20 09:36:22.949834-06	0.58333	39	7	09:35:00
1440	2019-03-21 14:45:00-06	2019-03-21 15:00:00-06	Discussion with Rick D on mapping issue	2019-03-21 15:22:17.877616-06	0.25000	84	5	15:00:00
1441	2019-03-21 15:00:00-06	2019-03-21 15:30:00-06	Capacitance test meeting	2019-03-21 15:23:03.630057-06	0.50000	81	5	15:30:00
1442	2019-03-21 09:10:00-06	2019-03-21 15:45:00-06	Welder research and Blinds install in the house	2019-03-21 15:55:29.999277-06	6.58333	169	11	15:45:00
1425	2019-03-20 09:36:23-06	2019-03-20 10:47:13-06	banking, paper	2019-03-20 10:47:16.583965-06	1.18056	40	7	\N
1437	2019-03-21 07:10:00-06	2019-03-21 08:29:59-06	Watching Arduino Tutorials.	2019-03-21 16:58:57.404026-06	1.33306	130	3	\N
1443	2019-03-21 08:30:00-06	2019-03-21 17:07:42-06	Install siding and drapes.	2019-03-21 17:07:47.590876-06	8.62833	28	3	\N
1445	2019-03-21 17:45:00-06	2019-03-21 21:15:00-06	Assemble boards	2019-03-21 21:12:30.751401-06	3.50000	2	8	21:15:00
1446	2019-03-22 05:45:00-06	2019-03-22 07:00:00-06	Remapping help, delete element	2019-03-22 07:08:17.633787-06	1.25000	3	5	07:00:00
1447	2019-03-22 07:00:00-06	2019-03-22 07:30:00-06	Syncing software with secure system	2019-03-22 08:00:38.682138-06	0.50000	3	5	07:30:00
1448	2019-03-22 07:30:00-06	2019-03-22 08:00:00-06	Short pulse test	2019-03-22 08:01:05.321022-06	0.50000	34	5	08:00:00
1438	2019-03-21 09:21:11-06	2019-03-21 11:27:21-06	trying to make the digi key page go to edit page	2019-03-22 11:06:00.142657-06	2.10278	32	10	\N
1444	2019-03-21 17:38:09-06	2019-03-21 18:15:50-06	studying how the mrp system works	2019-03-22 11:06:23.601015-06	0.62806	32	10	\N
1427	2019-03-20 09:52:13-06	2019-03-20 12:54:45-06	added a button on each line to show task completed	2019-03-22 11:07:20.739417-06	3.04222	31	10	\N
1420	2019-03-19 18:33:38-06	2019-03-19 19:35:35-06	made description box five times as wide	2019-03-22 11:08:35.929845-06	1.03250	32	10	\N
1413	2019-03-19 10:11:44-06	2019-03-19 12:31:14-06	added column and put in users assigned to projects	2019-03-22 11:09:29.575347-06	2.32500	31	10	\N
1419	2019-03-19 17:20:05-06	2019-03-19 17:36:59-06	fixed the views changing	2019-03-22 11:09:54.29966-06	0.28167	31	10	\N
1449	2019-03-22 08:00:00-06	2019-03-22 10:00:00-06	Carrier testing	2019-03-22 12:04:55.951307-06	2.00000	2	5	10:00:00
1452	2019-03-22 10:00:00-06	2019-03-22 12:00:00-06	Mapping/Tuning Issues	2019-03-22 12:05:36.925049-06	2.00000	84	5	12:00:00
1450	2019-03-22 10:53:05-06	2019-03-22 13:07:01-06	working on making the digi-enter go to edit	2019-03-22 13:07:02.45441-06	2.23222	32	10	\N
1453	2019-03-22 12:00:00-06	2019-03-22 13:15:00-06	Carrier Validation	2019-03-22 13:14:20.512388-06	1.25000	2	5	13:15:00
1451	2019-03-22 11:14:13-06	2019-03-22 13:32:54-06	banking, taxes	2019-03-22 13:32:57.119212-06	2.31139	40	7	\N
1454	2019-03-22 09:30:00-06	2019-03-22 10:30:00-06	Cleaned shop and workshop	2019-03-22 13:35:14.44963-06	1.00000	28	11	10:30:00
1455	2019-03-22 11:00:00-06	2019-03-22 13:15:00-06	Shelving Units for shop	2019-03-22 13:36:09.518914-06	2.25000	28	11	13:15:00
1456	2019-03-22 14:04:56-06	2019-03-22 16:10:03-06	working on getting the API renewed	2019-03-22 16:10:05.977897-06	2.08528	32	10	\N
1457	2019-03-23 10:00:00-06	2019-03-23 12:10:55-06	Installing siding.	2019-03-23 12:10:58.938305-06	2.18194	28	3	\N
1458	2019-03-23 14:29:33-06	2019-03-23 15:51:59-06	working on replacing the access token	2019-03-23 15:52:00.848285-06	1.37389	32	10	\N
1459	2019-03-25 06:15:00-06	2019-03-25 07:15:00-06	Syncing software with secure system	2019-03-25 07:13:47.311512-06	1.00000	3	5	07:15:00
1460	2019-03-25 07:15:00-06	2019-03-25 07:45:00-06	Status	2019-03-25 07:48:52.051918-06	0.50000	21	5	07:45:00
1461	2019-03-25 07:45:00-06	2019-03-25 09:30:00-06	Test Carrier filling and validation	2019-03-25 09:23:15.147484-06	1.75000	3	5	09:30:00
1463	2019-03-25 09:30:00-06	2019-03-25 10:30:00-06	Planning Meeting	2019-03-25 10:42:13.850487-06	1.00000	172	5	10:30:00
1464	2019-03-25 10:30:00-06	2019-03-25 10:45:00-06	Remap testing	2019-03-25 10:44:54.774553-06	0.25000	3	5	10:45:00
1462	2019-03-25 10:13:19-06	2019-03-25 11:13:27-06	figuring out the API, getting new access token	2019-03-25 11:13:30.602605-06	1.00222	32	10	\N
1465	2019-03-25 10:45:00-06	2019-03-25 12:15:00-06	Progeny IPT	2019-03-25 12:14:03.776805-06	1.50000	21	5	12:15:00
1466	2019-03-25 12:03:37-06	2019-03-25 13:24:43-06	fixing access token	2019-03-25 13:24:45.163217-06	1.35167	32	10	\N
1467	2019-03-25 12:15:00-06	2019-03-25 14:00:00-06	Remap testing	2019-03-25 14:22:51.319196-06	1.75000	3	5	14:00:00
1468	2019-03-25 14:00:00-06	2019-03-25 14:15:00-06	Status meeting	2019-03-25 14:23:12.995718-06	0.25000	34	5	14:15:00
1469	2019-03-25 14:15:00-06	2019-03-25 15:00:00-06	Remap testing	2019-03-25 15:02:43.900519-06	0.75000	3	5	15:00:00
1470	2019-03-25 07:05:00-06	2019-03-25 10:59:59-06	cleaning up and delivering Carriers.	2019-03-25 15:18:22.638808-06	3.91639	2	3	\N
1471	2019-03-25 11:00:00-06	2019-03-25 13:29:59-06	Picking up material at lows for shop.	2019-03-25 15:20:09.861714-06	2.49972	28	3	\N
1472	2019-03-25 13:30:00-06	2019-03-25 14:20:24-06	watching lesson 17.	2019-03-25 15:27:18.032048-06	0.84000	130	3	\N
1474	2019-03-25 10:30:00-06	2019-03-25 15:55:00-06	Watched assigned videos and began to design stand	2019-03-25 15:56:09.001354-06	5.41667	168	11	15:55:00
1473	2019-03-25 14:20:25-06	2019-03-25 15:40:11-06	checking on parts for phase tester PWB.	2019-03-25 15:40:13.744771-06	1.32944	7	3	\N
1476	2019-03-25 16:15:00-06	2019-03-25 17:40:00-06	go forward plan	2019-03-25 19:48:12.245921-06	1.41667	165	9	\N
1475	2019-03-25 17:30:00-06	2019-03-25 21:00:00-06	Inventory	2019-03-25 20:57:44.592637-06	3.50000	28	8	21:00:00
1477	2019-03-26 05:45:00-06	2019-03-26 09:00:00-06	Remap testing	2019-03-26 10:24:51.314614-06	3.25000	3	5	09:00:00
1479	2019-03-26 09:00:00-06	2019-03-26 10:30:00-06	NUWC IPT	2019-03-26 10:25:22.148109-06	1.50000	21	5	10:30:00
1478	2019-03-26 09:16:26-06	2019-03-26 10:42:17-06	banking	2019-03-26 10:42:20.513506-06	1.43083	40	7	\N
1481	2019-03-25 21:00:00-06	2019-03-25 21:35:00-06	getting authorization token	2019-03-26 13:21:33.366579-06	0.58333	32	10	\N
1911	2019-05-17 09:00:00-06	2019-05-17 10:00:00-06	Cleaning shop, taking out trash, organizing materials	2019-05-17 10:04:43.549846-06	1.00000	28	13	10:00:00
1483	2019-03-26 06:50:00-06	2019-03-26 08:00:00-06	Working on Lesson 18 & 19.	2019-03-26 14:38:56.021789-06	1.16667	130	3	\N
1484	2019-03-26 08:00:00-06	2019-03-26 09:59:59-06	Removing parts off of old PWB's.	2019-03-26 14:40:49.77171-06	1.99972	7	3	\N
1485	2019-03-26 10:00:00-06	2019-03-26 12:30:00-06	Hanging drapes.	2019-03-26 14:43:07.320298-06	2.50000	28	3	\N
1480	2019-03-26 10:30:00-06	2019-03-26 14:00:00-06	Carrier Filling & Carrier Validation testing	2019-03-26 14:57:13.516124-06	3.50000	3	5	14:00:00
1487	2019-03-26 14:00:00-06	2019-03-26 14:30:00-06	Status call	2019-03-26 14:57:33.512446-06	0.50000	34	5	14:30:00
1488	2019-03-26 14:30:00-06	2019-03-26 15:00:00-06	Thermotron with Kevin Giles	2019-03-26 14:58:12.486402-06	0.50000	15	5	15:00:00
1489	2019-03-26 09:00:00-06	2019-03-26 15:03:00-06	Welder purchase, and drape work in house	2019-03-26 15:08:53.877101-06	6.05000	169	11	15:03:00
1486	2019-03-26 12:30:01-06	2019-03-26 15:10:01-06	Removing parts off of old PWB's.	2019-03-26 15:10:05.589704-06	2.66667	7	3	\N
1482	2019-03-26 13:21:36-06	2019-03-26 17:29:54-06	finishing getting access token	2019-03-26 17:29:56.777866-06	4.13833	32	10	\N
1490	2019-03-27 05:30:00-06	2019-03-27 06:30:00-06	Syncing software with secure system	2019-03-27 06:32:16.606189-06	1.00000	3	5	06:30:00
1491	2019-03-27 06:30:00-06	2019-03-27 08:00:00-06	history plots	2019-03-27 08:21:18.664696-06	1.50000	84	5	08:00:00
1492	2019-03-27 08:00:00-06	2019-03-27 08:15:00-06	Status meeting	2019-03-27 08:21:56.424048-06	0.25000	21	5	08:15:00
1495	2019-03-27 09:00:00-06	2019-03-27 12:00:00-06	Material list, build sheet, searching for material	2019-03-27 14:51:49.511385-06	3.00000	168	11	12:00:00
1496	2019-03-27 12:01:00-06	2019-03-27 15:00:00-06	Jointer blade change, Molding install on shop	2019-03-27 14:52:28.411893-06	2.98333	28	11	15:00:00
1521	2019-03-29 13:00:00-06	2019-03-29 13:30:00-06	Kick off meeting	2019-03-29 14:45:39.382954-06	0.50000	175	5	13:30:00
1497	2019-03-27 07:30:00-06	2019-03-27 08:44:59-06	Working on Lesson 19 and 20.	2019-03-27 14:59:46.440414-06	1.24972	130	3	\N
1498	2019-03-27 08:45:00-06	2019-03-27 13:29:59-06	Gathering parts for Phase tester PWB's	2019-03-27 15:01:11.159757-06	4.74972	7	3	\N
1499	2019-03-27 13:30:00-06	2019-03-27 15:01:39-06	working on window frame.	2019-03-27 15:01:43.199858-06	1.52750	28	3	\N
1493	2019-03-27 08:15:00-06	2019-03-27 14:00:00-06	Testing software	2019-03-27 16:07:13.094542-06	5.75000	3	5	14:00:00
1500	2019-03-27 14:00:00-06	2019-03-27 14:15:00-06	Status call	2019-03-27 16:07:43.366524-06	0.25000	34	5	14:15:00
1494	2019-03-27 11:23:38-06	2019-03-27 16:09:13-06	making new access token, making digikeview change	2019-03-27 16:09:16.744813-06	4.75972	32	10	\N
1501	2019-03-27 14:15:00-06	2019-03-27 14:30:00-06	Tuning training	2019-03-27 16:10:03.6516-06	0.25000	80	5	14:30:00
1502	2019-03-27 14:30:00-06	2019-03-27 15:30:00-06	Testing software	2019-03-27 16:10:47.734467-06	1.00000	3	5	15:30:00
1503	2019-03-27 16:15:00-06	2019-03-27 17:45:00-06	work on Doppler test plan	2019-03-27 19:23:11.032425-06	1.50000	165	9	\N
1504	2019-03-28 05:00:00-06	2019-03-28 09:30:00-06	AoA	2019-03-28 10:40:40.056485-06	4.50000	4	5	09:30:00
1505	2019-03-28 09:30:00-06	2019-03-28 10:30:00-06	FAT updates	2019-03-28 10:41:08.272268-06	1.00000	34	5	10:30:00
1506	2019-03-28 10:30:00-06	2019-03-28 10:45:00-06	Remapping	2019-03-28 10:41:44.583439-06	0.25000	80	5	10:45:00
1507	2019-03-28 10:45:00-06	2019-03-28 12:30:00-06	history plots	2019-03-28 12:25:33.3875-06	1.75000	84	5	12:30:00
1508	2019-03-28 11:54:34-06	2019-03-28 13:24:33-06	fixing error with todo/create again, figuringcrash	2019-03-28 13:24:35.469043-06	1.49972	32	10	\N
1509	2019-03-28 10:00:00-06	2019-03-28 15:30:00-06	Jointer blade change, Molding install on shop	2019-03-28 15:25:08.924298-06	5.50000	28	11	15:30:00
1511	2019-03-28 12:30:00-06	2019-03-28 14:00:00-06	Figures with Rick	2019-03-28 15:39:46.751719-06	1.50000	4	5	14:00:00
1512	2019-03-28 14:00:00-06	2019-03-28 15:45:00-06	Jeff Pfost tour	2019-03-28 15:40:36.493652-06	1.75000	21	5	15:45:00
1510	2019-03-28 15:33:36-06	2019-03-28 16:19:06-06	figuring out why it keeps crashing when changes	2019-03-28 16:19:08.042034-06	0.75833	32	10	\N
1513	2019-03-28 17:30:00-06	2019-03-28 21:00:00-06	Assemble boards	2019-03-28 20:57:47.954159-06	3.50000	2	8	21:00:00
1514	2019-03-29 07:30:00-06	2019-03-29 10:45:00-06	Pull order, Pol date save, eliminate IV rerun	2019-03-29 10:39:47.412917-06	3.25000	3	5	10:45:00
1515	2019-03-29 10:45:00-06	2019-03-29 11:00:00-06	Tuning review	2019-03-29 11:04:25.044962-06	0.25000	80	5	11:00:00
1516	2019-03-29 09:00:00-06	2019-03-29 11:41:00-06	Fusion 360 to CAM videos	2019-03-29 11:41:36.257616-06	2.68333	166	11	11:41:00
1517	2019-03-28 11:00:00-06	2019-03-28 15:30:00-06	Sealing siding and window .	2019-03-29 12:10:59.932502-06	4.50000	28	3	\N
1518	2019-03-29 07:00:00-06	2019-03-29 10:30:00-06	Repairing 3 docking PWB's & delivery.	2019-03-29 12:13:20.318075-06	3.50000	125	3	\N
1523	2019-03-29 11:42:00-06	2019-03-29 15:00:00-06	Finished Touchscreen board case.	2019-03-29 14:54:26.152222-06	3.30000	167	11	15:00:00
1520	2019-03-29 13:11:47-06	2019-03-29 16:31:58-06	fixing crash, new access token	2019-03-29 16:31:59.977278-06	3.33639	32	10	\N
1522	2019-03-29 13:30:00-06	2019-03-29 16:45:00-06	Document review	2019-03-29 16:41:53.239596-06	3.25000	4	5	16:45:00
1524	2019-03-30 06:45:00-06	2019-03-30 08:45:00-06	Document review	2019-03-30 08:36:26.91473-06	2.00000	4	5	08:45:00
1525	2019-03-30 10:57:49-06	2019-03-30 13:28:26-06	fixing crash	2019-03-30 13:28:28.102465-06	2.51028	32	10	\N
1526	2019-04-01 06:00:00-06	2019-04-01 07:30:00-06	Setup	2019-04-01 09:12:53.319321-06	1.50000	129	5	07:30:00
1528	2019-04-01 07:30:00-06	2019-04-01 07:45:00-06	Status meeting	2019-04-01 09:13:16.255783-06	0.25000	21	5	07:45:00
1529	2019-04-01 07:45:00-06	2019-04-01 08:15:00-06	Review	2019-04-01 09:13:50.803003-06	0.50000	42	5	08:15:00
1530	2019-04-01 08:15:00-06	2019-04-01 09:15:00-06	Review	2019-04-01 09:14:29.631244-06	1.00000	41	5	09:15:00
1532	2019-04-01 09:15:00-06	2019-04-01 12:00:00-06	Command setup	2019-04-01 11:59:06.366488-06	2.75000	129	5	12:00:00
1531	2019-04-01 11:40:57-06	2019-04-01 13:33:02-06	changing routing for searching for digikey	2019-04-01 13:33:03.533376-06	1.86806	32	10	\N
1519	2019-03-29 12:15:00-06	2019-03-29 15:12:17-06	Picking building material at Lows,	2019-04-01 14:47:22.756215-06	2.95472	28	3	\N
1533	2019-03-29 10:30:00-06	2019-03-29 12:15:00-06	Installing connectors on Thermocouplers.	2019-04-01 14:50:13.065544-06	1.75000	174	3	\N
1527	2019-04-01 07:05:00-06	2019-04-01 08:19:59-06	Working on lesson 21 & 22.	2019-04-01 14:54:39.098587-06	1.24972	130	3	\N
1534	2019-04-01 08:20:00-06	2019-04-01 09:59:59-06	Getting Jacob going on putting sealant on wall.	2019-04-01 14:56:45.482924-06	1.66639	28	3	\N
1536	2019-04-01 09:30:00-06	2019-04-01 15:43:00-06	Siding on shop, prep on torpedo case	2019-04-01 15:54:29.027385-06	6.21667	174	11	15:43:00
1537	2019-04-01 16:00:00-06	2019-04-01 16:35:00-06	working on making the digi-enter gotoeditfixerror	2019-04-01 16:37:24.312874-06	0.58333	32	10	\N
1535	2019-04-01 10:00:00-06	2019-04-01 17:10:02-06	gluing Phase cabinet, prepping for paint.	2019-04-01 17:10:06.680891-06	7.16722	7	3	\N
1538	2019-04-01 17:30:00-06	2019-04-01 18:45:00-06	Assemble boards	2019-04-01 18:43:11.189222-06	1.25000	7	8	18:45:00
1540	2019-04-01 19:17:07-06	2019-04-01 20:32:47-06	fixing invalid error when I try to change routing	2019-04-01 20:32:49.333303-06	1.26111	32	10	\N
1539	2019-04-01 18:45:00-06	2019-04-01 21:00:00-06	Inventory	2019-04-01 21:00:21.070964-06	2.25000	28	8	21:00:00
1541	2019-04-02 06:00:00-06	2019-04-02 08:00:00-06	Corrected operator error	2019-04-02 08:08:40.923035-06	2.00000	80	5	08:00:00
1543	2019-04-02 11:45:03-06	2019-04-02 13:27:34-06	fixing refresh token error, fixing route digikey	2019-04-02 13:27:35.605002-06	1.70861	32	10	\N
1542	2019-04-02 08:00:00-06	2019-04-02 13:30:00-06	PMR	2019-04-02 13:44:31.206918-06	5.50000	21	5	13:30:00
1546	2019-04-02 07:15:00-06	2019-04-02 10:29:59-06	Trouble shooting and repair 2 MOD0 docking PWB's.	2019-04-02 14:25:09.771904-06	3.24972	125	3	\N
1544	2019-04-02 13:30:00-06	2019-04-02 15:30:00-06	Wiring for multiunit testing	2019-04-02 15:28:05.692247-06	2.00000	129	5	15:30:00
1545	2019-04-02 13:45:25-06	2019-04-02 17:37:45-06	Torpedo board holder	2019-04-02 17:37:51.915596-06	3.87222	167	11	\N
1547	2019-04-02 10:30:00-06	2019-04-02 11:59:59-06	Replacing connectors on test PWB for nose.	2019-04-02 14:27:52.236901-06	1.49972	173	3	\N
1548	2019-04-02 12:00:00-06	2019-04-02 17:27:37-06	Machining plate for Phase Test Cabinet.	2019-04-02 17:27:42.206143-06	5.46028	7	3	\N
1912	2019-05-17 10:46:14-06	2019-05-17 11:37:13-06	permissions	2019-05-17 11:37:15.093852-06	0.84972	32	10	\N
1550	2019-04-02 17:34:53-06	2019-04-02 18:27:43-06	making todo description box bigger	2019-04-02 18:27:45.566186-06	0.88056	32	10	\N
1914	2019-05-17 11:15:00-06	2019-05-17 12:15:00-06	Shaker fuse issue	2019-05-17 12:13:51.300847-06	1.00000	15	5	12:15:00
1551	2019-04-02 18:47:31-06	2019-04-02 19:07:58-06	changing route for digikey enter	2019-04-02 19:08:00.503636-06	0.34083	32	10	\N
1549	2019-04-02 15:30:00-06	2019-04-02 16:45:00-06	Production Testing/Kitting Meeting	2019-04-03 07:46:31.609573-06	1.25000	80	5	16:45:00
1552	2019-04-03 07:30:00-06	2019-04-03 07:45:00-06	Status meeting	2019-04-03 07:47:18.771111-06	0.25000	21	5	07:45:00
1553	2019-04-03 07:45:00-06	2019-04-03 08:15:00-06	Wiring for multiunit testing	2019-04-03 08:53:22.599562-06	0.50000	129	5	08:15:00
1554	2019-04-03 08:15:00-06	2019-04-03 09:00:00-06	Tuning discussion with Rick Daley	2019-04-03 10:37:37.645995-06	0.75000	84	5	09:00:00
1555	2019-04-03 09:00:00-06	2019-04-03 09:15:00-06	Test procedure to Joseph	2019-04-03 10:38:13.719808-06	0.25000	80	5	09:15:00
1556	2019-04-03 09:15:00-06	2019-04-03 09:30:00-06	Pressure bulkhead redesign	2019-04-03 10:38:50.478712-06	0.25000	81	5	09:30:00
1918	2019-05-18 12:06:14-06	2019-05-18 14:09:02-06	permissions and part page	2019-05-18 14:09:03.652051-06	2.04667	32	10	\N
1557	2019-04-03 09:30:00-06	2019-04-03 11:30:00-06	FAT editing	2019-04-03 11:26:26.211787-06	2.00000	34	5	11:30:00
1589	2019-04-08 10:45:00-06	2019-04-08 12:30:00-06	Status meeting, BP1080 AITS review	2019-04-08 12:24:44.911936-06	1.75000	21	5	12:30:00
1924	2019-05-20 08:40:00-06	2019-05-20 10:10:00-06	arduino tutorials and molding work on shop	2019-05-20 10:11:57.911879-06	1.50000	166	11	10:10:00
1558	2019-04-03 07:05:00-06	2019-04-03 08:34:59-06	working on computer display for phase tester.	2019-04-03 11:40:49.060732-06	1.49972	7	3	\N
1559	2019-04-03 08:35:00-06	2019-04-03 11:41:20-06	Changing the terminal board mounting.	2019-04-03 11:42:28.317956-06	3.10556	176	3	\N
1562	2019-04-03 09:00:00-06	2019-04-03 12:00:00-06	Adjustments to torpedo board and shelf board cases	2019-04-03 15:51:28.175256-06	3.00000	167	11	\N
1563	2019-04-03 12:01:00-06	2019-04-03 15:55:00-06	Torpedo board printing and prepping mount	2019-04-03 15:53:53.012021-06	3.90000	173	11	15:55:00
1561	2019-04-03 13:42:26-06	2019-04-03 15:57:37-06	changing route for digikey enter	2019-04-03 15:57:38.909065-06	2.25306	32	10	\N
1560	2019-04-03 11:41:21-06	2019-04-03 17:10:43-06	prepping cabinet for paint.	2019-04-03 17:10:49.00444-06	5.48944	7	3	\N
1564	2019-04-04 07:15:00-06	2019-04-04 07:30:00-06	Fit check	2019-04-04 07:34:34.571197-06	0.25000	12	5	07:30:00
1565	2019-04-04 07:30:00-06	2019-04-04 08:30:00-06	Status meeting	2019-04-04 09:12:40.169572-06	1.00000	21	5	08:30:00
1566	2019-04-04 08:30:00-06	2019-04-04 09:15:00-06	FAT editing	2019-04-04 09:21:34.53004-06	0.75000	34	5	09:15:00
1567	2019-04-04 09:15:00-06	2019-04-04 09:45:00-06	Status meeting	2019-04-04 09:42:18.824657-06	0.50000	21	5	09:45:00
1568	2019-04-04 12:37:30-06	2019-04-04 14:10:45-06	fixing size limit on todo description, route fix	2019-04-04 14:10:48.705399-06	1.55417	32	10	\N
1569	2019-04-04 13:00:00-06	2019-04-04 14:15:00-06	FAT review meeting	2019-04-04 14:16:31.260983-06	1.25000	34	5	14:15:00
1570	2019-04-04 09:00:00-06	2019-04-04 15:25:00-06	redesigned shelf and torpedo, preped torpedo stand	2019-04-04 15:24:45.976622-06	6.41667	167	11	15:25:00
1928	2019-05-16 13:25:33-06	2019-05-16 14:25:59-06	pick up door	2019-05-20 14:26:30.349764-06	1.00722	28	7	\N
1926	2019-05-20 14:05:25-06	2019-05-20 16:06:53-06	making fields readable	2019-05-20 16:06:55.046562-06	2.02444	32	10	\N
1571	2019-04-04 06:55:00-06	2019-04-04 16:30:55-06	Building Phase Tester cabinet.	2019-04-04 16:31:29.429313-06	9.59861	7	3	\N
1572	2019-04-04 16:30:56-06	2019-04-04 17:06:34-06	Working on lesson 22 & 23.	2019-04-04 17:06:37.322581-06	0.59389	130	3	\N
1573	2019-04-04 17:22:33-06	2019-04-04 18:33:33-06	figuring out why migration tofixtextboxsize diwork	2019-04-04 18:33:34.635073-06	1.18333	32	10	\N
1574	2019-04-04 19:19:03-06	2019-04-04 20:44:52-06	fixing route to edit digikey	2019-04-04 20:44:55.219624-06	1.43028	32	10	\N
1575	2019-04-04 17:30:00-06	2019-04-04 21:00:00-06	Assemble boards	2019-04-04 21:02:32.967603-06	3.50000	7	8	21:00:00
1576	2019-04-05 08:45:00-06	2019-04-05 09:00:00-06	FAT editing	2019-04-05 09:20:38.052137-06	0.25000	34	5	09:00:00
1577	2019-04-05 09:00:00-06	2019-04-05 09:30:00-06	Status Meeting	2019-04-05 10:03:34.596133-06	0.50000	21	5	09:30:00
1578	2019-04-05 09:30:00-06	2019-04-05 10:00:00-06	Tuning meeting	2019-04-05 10:05:06.676127-06	0.50000	75	5	10:00:00
1922	2019-05-20 08:00:00-06	2019-05-20 11:00:00-06	BP1081 Debug	2019-05-29 20:01:59.86795-06	3.00000	81	5	11:00:00
1579	2019-04-05 10:00:00-06	2019-04-05 10:30:00-06	FAT Review	2019-04-05 10:32:23.736879-06	0.50000	34	5	10:30:00
1580	2019-04-05 10:30:00-06	2019-04-05 11:45:00-06	Tunable -005 and -006 list	2019-04-05 11:51:42.502891-06	1.25000	75	5	11:45:00
1581	2019-04-05 11:30:48-06	2019-04-05 13:30:24-06	making fields wider that can't fit text	2019-04-05 13:30:26.078964-06	1.99333	32	10	\N
1582	2019-04-05 11:45:00-06	2019-04-05 12:30:00-06	Status Meeting	2019-04-05 14:29:03.702313-06	0.75000	21	5	12:30:00
1583	2019-04-05 09:00:00-06	2019-04-05 13:04:00-06	Tixture of 3d printing the shelf board, and sanding the torpedo stand	2019-04-05 15:40:06.05297-06	4.06667	167	11	\N
1584	2019-04-05 14:00:00-06	2019-04-05 15:40:00-06	Printing other half of shlelf board and preparation of torpedo stand.	2019-04-05 15:41:08.150433-06	1.66667	167	11	\N
1585	2019-04-08 07:00:00-06	2019-04-08 07:15:00-06	Status Meeting	2019-04-08 07:46:43.83591-06	0.25000	21	5	07:15:00
1586	2019-04-08 07:15:00-06	2019-04-08 10:45:00-06	Retrieve measurement	2019-04-08 12:23:35.645008-06	3.50000	129	5	10:45:00
1590	2019-04-08 12:30:00-06	2019-04-08 12:45:00-06	Updated pressure checklist	2019-04-08 12:35:35.389731-06	0.25000	15	5	12:45:00
1591	2019-04-08 12:45:00-06	2019-04-08 14:45:00-06	Control channel switching	2019-04-08 14:44:12.941795-06	2.00000	129	5	14:45:00
1592	2019-04-08 13:10:06-06	2019-04-08 15:25:39-06	Making text fields longer that need it, looking how to change user permissions	2019-04-08 15:25:41.498122-06	2.25917	32	10	\N
1593	2019-04-08 09:30:00-06	2019-04-08 15:37:00-06	Painting stand, and mowing lawn	2019-04-08 15:37:45.455878-06	6.11667	174	11	\N
1594	2019-04-08 15:37:00-06	2019-04-08 16:00:00-06	Cleaning shop	2019-04-08 16:02:50.536685-06	0.38333	28	11	16:00:00
1587	2019-04-08 07:40:00-06	2019-04-08 16:16:43-06	Building cables.	2019-04-08 16:16:46.377503-06	8.61194	7	3	\N
1588	2019-04-08 09:30:00-06	2019-04-08 12:00:00-06	banking, accounting	2019-04-08 18:29:04.350759-06	2.50000	40	7	12:00:00
1596	2019-04-08 18:29:00-06	2019-04-08 19:54:20-06	credit card, orders	2019-04-08 19:54:23.107869-06	1.42222	40	7	\N
1595	2019-04-08 17:30:00-06	2019-04-08 21:00:00-06	Inventory	2019-04-08 20:55:55.987079-06	3.50000	28	8	21:00:00
1597	2019-04-08 16:20:00-06	2019-04-08 17:40:00-06	Work on email response to Andy on doppler issues	2019-04-08 21:38:21.629886-06	1.33333	165	9	\N
1598	2019-04-09 07:49:04-06	2019-04-09 08:49:54-06	accounting	2019-04-09 08:49:56.991018-06	1.01389	40	7	\N
1599	2019-04-09 07:00:00-06	2019-04-09 09:00:00-06	Integrate with Carrier Filling	2019-04-09 10:17:40.13549-06	2.00000	129	5	09:00:00
1601	2019-04-09 09:00:00-06	2019-04-09 10:00:00-06	NUWC IPT	2019-04-09 10:21:24.25712-06	1.00000	21	5	10:00:00
1602	2019-04-09 10:00:00-06	2019-04-09 10:15:00-06	ADAS repair discussion	2019-04-09 10:23:41.111991-06	0.25000	87	5	10:15:00
1604	2019-04-09 13:26:41-06	2019-04-09 13:34:23-06	Writing procedure to set up local repository	2019-04-09 13:34:26.083496-06	0.12833	32	10	\N
1603	2019-04-09 10:15:00-06	2019-04-09 14:30:00-06	Integrate with Carrier Filling	2019-04-09 15:03:32.057653-06	4.25000	129	5	14:30:00
1605	2019-04-09 14:30:00-06	2019-04-09 15:00:00-06	FAT comment resolution	2019-04-09 15:03:57.35987-06	0.50000	34	5	15:00:00
1606	2019-04-09 09:00:00-06	2019-04-09 15:15:00-06	Sanding and prepping torpedo stand	2019-04-09 15:12:26.885457-06	6.25000	174	11	\N
1600	2019-04-09 09:09:55-06	2019-04-09 11:00:00-06	accounting	2019-04-09 17:36:55.510759-06	1.83472	40	7	\N
1608	2019-04-09 15:49:29-06	2019-04-09 18:26:34-06	Writing a procedure for setting up local repository and database	2019-04-09 18:26:35.628016-06	2.61806	32	10	\N
1909	2019-05-17 08:00:00-06	2019-05-17 10:00:00-06	Test history database	2019-05-17 11:14:37.023613-06	2.00000	84	5	10:00:00
1610	2019-04-09 16:15:00-06	2019-04-09 18:25:00-06	Work on response to Andy Email and test MEU with advance receiver firmware	2019-04-09 19:29:17.811152-06	2.16667	165	9	\N
1609	2019-04-09 18:45:26-06	2019-04-09 20:11:12-06	Still writing procedure	2019-04-09 20:11:15.340631-06	1.42944	32	10	\N
1611	2019-04-10 06:00:00-06	2019-04-10 06:30:00-06	FAT comment resolution	2019-04-10 06:32:26.670109-06	0.50000	34	5	06:30:00
1607	2019-04-09 07:50:00-06	2019-04-09 16:15:00-06	Building cables and testing the Odroid computer.	2019-04-10 07:04:48.274325-06	8.41667	7	3	\N
1612	2019-04-10 06:30:00-06	2019-04-10 14:30:00-06	Error reporting, Test file generation	2019-04-10 14:31:33.06129-06	8.00000	129	5	14:30:00
1613	2019-04-10 06:50:00-06	2019-04-10 15:10:56-06	Testing cable connections.	2019-04-10 15:11:00.755765-06	8.34889	7	3	\N
1614	2019-04-10 13:56:08-06	2019-04-10 15:13:39-06	Finishing procedure, figuring out how to improve security	2019-04-10 15:13:41.291012-06	1.29194	32	10	\N
1615	2019-04-10 09:00:00-06	2019-04-10 14:00:00-06	Sanding sanding sanding and painting	2019-04-10 15:17:18.812714-06	5.00000	174	11	\N
1616	2019-04-10 14:01:00-06	2019-04-10 15:10:00-06	3d printer maintenence	2019-04-10 15:17:46.260468-06	1.15000	167	11	15:10:00
1617	2019-04-10 19:04:28-06	2019-04-10 19:52:49-06	Finishing procedure	2019-04-10 19:52:50.35546-06	0.80583	32	10	\N
1620	2019-04-11 14:00:00-06	2019-04-11 14:30:00-06	Discussed and evaluated enhanced mapping methods.	2019-04-11 14:24:40.558435-06	0.50000	84	5	13:30:00
1618	2019-04-11 07:15:00-06	2019-04-11 14:00:00-06	Split system to fix carrier status bug, Improve help system	2019-04-11 14:25:33.828408-06	6.75000	129	5	13:00:00
1622	2019-04-11 07:15:00-06	2019-04-11 14:59:59-06	Painting phase tester cabinet.	2019-04-11 15:23:10.31861-06	7.74972	7	3	\N
1641	2019-04-15 08:15:00-06	2019-04-15 09:00:00-06	fix instrument off hang	2019-04-15 09:00:31.574581-06	0.75000	129	5	09:00:00
1621	2019-04-11 14:30:00-06	2019-04-11 15:00:00-06	FAT comment resolution	2019-04-11 15:24:23.535498-06	0.50000	34	5	15:00:00
1625	2019-04-11 07:00:00-06	2019-04-11 10:30:00-06	Painting stand	2019-04-11 15:26:35.995639-06	3.50000	174	11	\N
1626	2019-04-11 12:30:00-06	2019-04-11 15:20:00-06	Wet sanding and painting stand.	2019-04-11 15:27:18.383752-06	2.83333	173	11	15:20:00
1624	2019-04-11 15:00:00-06	2019-04-11 15:45:00-06	HVIR split app	2019-04-11 15:44:38.138696-06	0.75000	129	5	15:45:00
1619	2019-04-11 12:50:34-06	2019-04-11 16:51:00-06	studying python, working on permissions, authentication	2019-04-11 16:51:02.08769-06	4.00722	32	10	\N
1627	2019-04-11 18:30:00-06	2019-04-11 21:00:00-06	Inventory	2019-04-11 20:57:33.782846-06	2.50000	28	8	\N
1628	2019-04-12 07:30:00-06	2019-04-12 08:30:00-06	HVIR split app	2019-04-12 10:25:35.578584-06	1.00000	129	5	08:30:00
1630	2019-04-12 08:30:00-06	2019-04-12 10:30:00-06	Common sounder	2019-04-12 10:28:42.565057-06	2.00000	177	5	10:30:00
1642	2019-04-15 09:00:00-06	2019-04-15 10:00:00-06	Test 44,4,4	2019-04-15 10:11:18.267807-06	1.00000	84	5	10:00:00
1623	2019-04-11 15:00:00-06	2019-04-11 16:20:00-06	Working on lesson 23 & 24.	2019-04-12 10:58:09.574383-06	1.33333	130	3	\N
1629	2019-04-12 09:53:24-06	2019-04-12 12:00:00-06	accounting	2019-04-12 12:00:03.838575-06	2.11000	40	7	\N
1631	2019-04-12 10:30:00-06	2019-04-12 13:00:00-06	HVIR split app	2019-04-12 13:02:21.757833-06	2.50000	129	5	13:00:00
1633	2019-04-12 13:00:00-06	2019-04-12 13:30:00-06	Trusted Download	2019-04-12 13:31:46.856878-06	0.50000	80	5	13:30:00
1635	2019-04-12 13:30:00-06	2019-04-12 14:15:00-06	HVIR split app	2019-04-12 14:13:48.363618-06	0.75000	129	5	14:15:00
1632	2019-04-12 10:10:00-06	2019-04-12 15:30:04-06	painting cabinet.	2019-04-12 15:30:06.749084-06	5.33444	7	3	\N
1636	2019-04-12 09:00:00-06	2019-04-12 16:04:00-06	Sanded and Painted Cabinet, designed board rails for the cabinet	2019-04-12 16:05:18.050869-06	7.06667	174	11	16:04:00
1634	2019-04-12 13:30:27-06	2019-04-12 17:01:25-06	Studying how to fix security without the system breaking.	2019-04-12 17:01:26.508821-06	3.51611	32	10	\N
1637	2019-04-12 19:17:16-06	2019-04-12 21:30:22-06	working on authentication	2019-04-12 21:30:24.109156-06	2.21833	32	10	\N
1638	2019-04-13 09:47:15-06	2019-04-13 12:58:29-06	Accounting	2019-04-13 12:58:32.284384-06	3.18722	40	7	\N
1643	2019-04-15 10:00:00-06	2019-04-15 10:45:00-06	Test of shell removal	2019-04-15 10:43:30.714879-06	0.75000	175	5	10:45:00
1645	2019-04-15 10:00:32-06	2019-04-15 11:25:05-06	accounting	2019-04-15 11:25:08.131356-06	1.40917	40	7	\N
1644	2019-04-15 10:45:00-06	2019-04-15 12:15:00-06	Progeny IPT	2019-04-15 12:10:29.390267-06	1.50000	21	5	12:15:00
1646	2019-04-15 11:06:02-06	2019-04-15 13:38:05-06	Studying python	2019-04-15 13:38:06.433017-06	2.53417	32	10	\N
1647	2019-04-15 12:15:00-06	2019-04-15 13:45:00-06	Status	2019-04-15 14:05:29.525775-06	1.50000	21	5	13:45:00
1648	2019-04-15 14:00:00-06	2019-04-15 15:30:00-06	fix instrument off hang	2019-04-15 15:37:10.671053-06	1.50000	129	5	15:30:00
1649	2019-04-15 09:00:00-06	2019-04-15 13:15:00-06	Printing and designing phase detector cabinet board stand	2019-04-15 16:23:08.904179-06	4.25000	167	11	\N
1650	2019-04-15 13:45:00-06	2019-04-15 16:20:00-06	Figuring out how to print multiple peices at a time, and setting up software. And replaceing overhead lightning lenses	2019-04-15 16:25:36.026889-06	2.58333	167	11	16:20:00
1639	2019-04-15 07:05:00-06	2019-04-15 12:29:59-06	installing connectors.	2019-04-15 17:00:16.682742-06	5.41639	7	3	\N
1651	2019-04-15 12:30:00-06	2019-04-15 14:44:59-06	Modifying terminal board mounts on pressure tank.	2019-04-15 17:07:12.8229-06	2.24972	176	3	\N
1652	2019-04-15 14:45:00-06	2019-04-15 15:59:59-06	Picking up wood from national wood products.	2019-04-15 17:08:51.297133-06	1.24972	28	3	\N
1653	2019-04-15 16:00:00-06	2019-04-15 17:13:47-06	Cabling.	2019-04-15 17:13:49.378608-06	1.22972	7	3	\N
1640	2019-04-15 07:30:00-06	2019-04-15 08:15:00-06	Status, BP1075 pressure test issue	2019-04-15 19:54:06.003863-06	0.75000	21	5	08:15:00
1654	2019-04-15 17:30:00-06	2019-04-15 21:00:00-06	Inventory	2019-04-15 20:52:37.492568-06	3.50000	28	8	21:00:00
1655	2019-04-16 07:45:00-06	2019-04-16 10:30:00-06	Test Procedure	2019-04-16 10:26:37.573937-06	2.75000	129	5	10:30:00
1656	2019-04-16 10:30:00-06	2019-04-16 13:00:00-06	Install in MOD1 unsecure	2019-04-16 13:15:21.537573-06	2.50000	129	5	13:00:00
1658	2019-04-16 09:00:00-06	2019-04-16 15:15:00-06	3d printer diagnosis, and reprint of shelf hanger board top, and phase detector cabinet finishing work	2019-04-16 15:18:03.655123-06	6.25000	167	11	\N
1657	2019-04-16 13:00:00-06	2019-04-16 15:45:00-06	Windows hang bug	2019-04-16 16:04:30.004475-06	2.75000	129	5	15:45:00
1659	2019-04-15 11:25:08-06	2019-04-15 12:30:00-06	accounting, banking	2019-04-16 16:18:04.304098-06	1.08111	40	7	12:30:00
1660	2019-04-16 10:00:00-06	2019-04-16 12:00:00-06	accounting	2019-04-16 16:18:58.197147-06	2.00000	40	7	12:00:00
1661	2019-04-16 16:27:04-06	2019-04-16 18:41:44-06	Studying python	2019-04-16 18:41:45.818356-06	2.24444	32	10	\N
1663	2019-04-17 07:30:00-06	2019-04-17 07:45:00-06	Status meeting	2019-04-17 07:47:07.875533-06	0.25000	21	5	07:45:00
1665	2019-04-17 08:00:08-06	2019-04-17 09:28:11-06	accounting	2019-04-17 11:45:00.571358-06	1.46750	40	7	\N
1667	2019-04-17 11:45:12-06	2019-04-17 12:22:11-06	accounting	2019-04-17 12:22:14.214426-06	0.61639	40	7	\N
1666	2019-04-17 11:02:41-06	2019-04-17 14:08:31-06	figuring out how to consolidate permissions and make separate pages	2019-04-17 14:08:34.069835-06	3.09722	32	10	\N
1668	2019-04-17 12:30:17-06	2019-04-17 13:26:41-06	ordering	2019-04-17 13:26:43.82401-06	0.94000	40	7	\N
1664	2019-04-17 07:45:00-06	2019-04-17 14:45:00-06	Threaded Serial	2019-04-17 14:52:03.801331-06	7.00000	129	5	14:45:00
1670	2019-04-17 09:00:00-06	2019-04-17 15:00:00-06	Finishing designon the snap board holder, Phase detector cabinet preparation, 3d printer filament research and purchase	2019-04-17 14:59:48.588789-06	6.00000	167	11	15:00:00
1662	2019-04-16 07:00:00-06	2019-04-16 17:25:00-06	adding a rubber spacer and 3/8" t-nuts.	2019-04-17 16:57:53.355329-06	10.41667	7	3	\N
1913	2019-05-17 10:00:00-06	2019-05-17 11:15:00-06	BP1081 & BP1086 Call & Measurement	2019-05-17 11:15:33.757158-06	1.25000	21	5	11:15:00
1669	2019-04-17 14:45:00-06	2019-04-17 15:45:00-06	Tunable extraction	2019-04-17 15:48:46.489819-06	1.00000	75	5	15:45:00
1671	2019-04-17 15:30:23-06	2019-04-17 16:34:38-06	Figuring out how to separate permissions on the admin page, consolidating permissions	2019-04-17 16:34:39.801579-06	1.07083	32	10	\N
1672	2019-04-17 08:00:00-06	2019-04-17 17:05:22-06	Installing gasket and t nuts.	2019-04-17 17:05:32.118535-06	9.08944	7	3	\N
1673	2019-04-18 07:45:00-06	2019-04-18 08:15:00-06	Test threaded version on windows	2019-04-18 08:18:26.063114-06	0.50000	129	5	08:15:00
1704	2019-04-22 15:25:00-06	2019-04-22 16:25:00-06	Cleaning shop, uninstalling cabinet in basement with jason and bringing it upstairs	2019-04-22 16:27:05.08703-06	1.00000	28	11	16:25:00
1674	2019-04-18 09:00:00-06	2019-04-18 11:45:00-06	Tunable extraction	2019-04-18 11:50:25.142192-06	2.75000	75	5	11:45:00
1677	2019-04-18 11:45:00-06	2019-04-18 12:15:00-06	EA04 intermittent issue	2019-04-18 12:24:06.442389-06	0.50000	87	5	12:15:00
1676	2019-04-18 11:51:54-06	2019-04-18 13:01:23-06	studying how to make different pages on admin	2019-04-18 13:01:25.63062-06	1.15806	32	10	\N
1679	2019-04-18 09:00:00-06	2019-04-18 12:00:00-06	Investigating and researching materials, specific nylon. Troubleshooting flashprint, and repair. Redesign of the clip on the phase detector cabinet. A	2019-04-18 15:10:50.93548-06	3.00000	167	11	12:00:00
1680	2019-04-18 12:01:00-06	2019-04-18 15:05:00-06	Mowing Lawn, Cleaning shop, Maintenance on tool surfaces  (wax and cleaning), and string trimmer repair and searching for new parts	2019-04-18 15:11:50.376605-06	3.06667	28	11	15:05:00
1678	2019-04-18 12:15:00-06	2019-04-18 15:30:00-06	Project documents	2019-04-18 15:33:58.729158-06	3.25000	129	5	15:30:00
1681	2019-04-18 13:14:09-06	2019-04-18 14:34:52-06	supplies away	2019-04-18 16:05:27.876743-06	1.34528	28	7	\N
1675	2019-04-18 07:10:00-06	2019-04-18 14:29:59-06	Finishing test cabinet.	2019-04-18 16:57:25.692544-06	7.33306	7	3	\N
1682	2019-04-18 14:30:00-06	2019-04-18 15:40:00-06	Lesson 21.	2019-04-18 16:59:55.342837-06	1.16667	130	3	\N
1683	2019-04-18 15:40:00-06	2019-04-18 17:21:26-06	Testing and repair MOD1 docking PWB.	2019-04-18 17:21:30.514849-06	1.69056	173	3	\N
1684	2019-04-19 07:45:00-06	2019-04-19 10:00:00-06	manual tuning software aids	2019-04-19 10:02:25.717084-06	2.25000	75	5	10:00:00
1685	2019-04-19 10:05:18-06	2019-04-19 11:03:07-06	accounting	2019-04-19 11:03:10.856867-06	0.96361	40	7	\N
1686	2019-04-19 10:00:00-06	2019-04-19 10:30:00-06	HPT issues	2019-04-19 11:08:04.522789-06	0.50000	80	5	10:30:00
1689	2019-04-19 09:00:00-06	2019-04-19 11:30:00-06	3d printing shelf boards, cleaning shop, helping barbara	2019-04-19 12:03:50.169214-06	2.50000	167	11	11:30:00
1687	2019-04-19 10:30:00-06	2019-04-19 14:30:00-06	Validation Document	2019-04-19 14:31:37.838537-06	4.00000	129	5	14:30:00
1688	2019-04-19 11:47:56-06	2019-04-19 15:29:02-06	Adding descriptions to permissions	2019-04-19 15:29:04.525837-06	3.68500	32	10	\N
1690	2019-04-19 14:30:00-06	2019-04-19 16:00:00-06	Validation dry run	2019-04-19 15:58:22.054462-06	1.50000	129	5	16:00:00
1692	2019-04-22 07:30:00-06	2019-04-22 07:45:00-06	Status meeting	2019-04-22 07:51:50.01522-06	0.25000	21	5	07:45:00
1693	2019-04-22 07:45:00-06	2019-04-22 09:15:00-06	Debug verification issue	2019-04-22 09:17:09.631324-06	1.50000	129	5	09:15:00
1695	2019-04-22 09:15:00-06	2019-04-22 10:15:00-06	Tuning trial -006	2019-04-22 10:22:46.386416-06	1.00000	75	5	10:15:00
1694	2019-04-22 08:13:04-06	2019-04-22 11:17:53-06	accounting	2019-04-22 11:17:56.011665-06	3.08028	40	7	\N
1696	2019-04-22 10:15:00-06	2019-04-22 10:45:00-06	Cable fix	2019-04-22 11:30:10.624527-06	0.50000	129	5	10:45:00
1697	2019-04-22 10:45:00-06	2019-04-22 11:30:00-06	Progeny IPT	2019-04-22 11:31:34.233359-06	0.75000	21	5	11:30:00
1691	2019-04-22 07:05:00-06	2019-04-22 09:14:59-06	Delivered to Harris on 4/19/2019.	2019-04-22 13:26:26.991886-06	2.16639	7	3	\N
1700	2019-04-22 13:26:48-06	2019-04-22 17:19:18-06	Removing power from cabinet in the basement.	2019-04-22 17:19:53.727005-06	3.87500	28	3	\N
1699	2019-04-22 09:15:00-06	2019-04-22 13:26:47-06	Making and installing second cable.	2019-04-22 13:27:48.011333-06	4.19639	129	3	\N
1698	2019-04-22 11:30:00-06	2019-04-22 16:00:00-06	Cable fix, Validation	2019-04-22 15:54:22.471626-06	4.50000	129	5	16:00:00
1701	2019-04-22 15:23:57-06	2019-04-22 16:22:35-06	Going over permissions, studying	2019-04-22 16:22:37.267316-06	0.97722	32	10	\N
1702	2019-04-22 10:20:00-06	2019-04-22 12:00:00-06	printing shelf hangers, and doing arduino tutorials	2019-04-22 16:25:00.878078-06	1.66667	167	11	\N
1703	2019-04-22 12:01:00-06	2019-04-22 15:25:00-06	Cleaning shop, helping barbara move stuff form attic to patio, installing casters, etc.	2019-04-22 16:25:52.171674-06	3.40000	28	11	15:25:00
1708	2019-04-22 19:16:37-06	2019-04-22 20:18:49-06	Studying python, permissions	2019-04-22 20:18:50.864516-06	1.03667	32	10	\N
1706	2019-04-22 17:50:45-06	2019-04-22 19:19:36-06	shelves	2019-04-22 20:19:51.894079-06	1.48083	28	7	\N
1707	2019-04-22 17:45:00-06	2019-04-22 21:00:00-06	Inventory	2019-04-22 20:57:50.625071-06	3.25000	28	8	21:00:00
1705	2019-04-22 17:19:19-06	2019-04-22 18:30:00-06	lesson 21 - 23.	2019-04-23 07:07:59.164509-06	1.17806	130	3	\N
1710	2019-04-22 18:30:00-06	2019-04-22 20:30:00-06	Completing mods on pressure tank on 4/19/2019.	2019-04-23 07:08:50.086514-06	2.00000	176	3	\N
1711	2019-04-23 07:45:00-06	2019-04-23 08:00:00-06	Status	2019-04-23 08:01:34.048843-06	0.25000	21	5	08:00:00
1712	2019-04-23 08:00:00-06	2019-04-23 09:00:00-06	Help Pita run the software	2019-04-23 10:00:22.638547-06	1.00000	178	5	09:00:00
1713	2019-04-23 09:00:00-06	2019-04-23 10:00:00-06	NUWC IPT	2019-04-23 10:00:59.410028-06	1.00000	21	5	10:00:00
1715	2019-04-23 10:00:00-06	2019-04-23 11:15:00-06	Analysis of -2 result	2019-04-23 11:09:52.049833-06	1.25000	178	5	11:15:00
1714	2019-04-23 10:34:27-06	2019-04-23 11:14:40-06	Studying python, permissions	2019-04-23 11:14:41.573157-06	0.67028	32	10	\N
1717	2019-04-23 12:00:00-06	2019-04-23 12:28:47-06	accounting	2019-04-23 12:28:49.583095-06	0.47972	40	7	\N
1716	2019-04-23 11:15:00-06	2019-04-23 12:15:00-06	Test runs	2019-04-23 12:58:58.759413-06	1.00000	129	5	12:15:00
1718	2019-04-23 12:15:00-06	2019-04-23 13:00:00-06	Test run	2019-04-23 12:59:17.72537-06	0.75000	3	5	13:00:00
1720	2019-04-23 13:04:04-06	2019-04-23 13:29:33-06	Studying python	2019-04-23 13:29:34.583164-06	0.42472	32	10	\N
1722	2019-04-23 08:30:00-06	2019-04-23 12:00:00-06	Making drawing, etc	2019-04-23 15:13:32.880308-06	3.50000	168	11	12:00:00
1723	2019-04-23 12:01:00-06	2019-04-23 15:10:00-06	Designing the house in Fusion 360	2019-04-23 15:14:16.678298-06	3.15000	167	11	15:10:00
1709	2019-04-23 07:00:02-06	2019-04-23 11:00:00-06	Purchasing material for stand.	2019-04-23 16:10:18.763891-06	3.99944	168	3	\N
1724	2019-04-23 11:00:00-06	2019-04-23 15:59:59-06	working on siding. helping Jacob with house plans.	2019-04-23 16:59:35.268569-06	4.99972	28	3	\N
1725	2019-04-23 16:00:00-06	2019-04-23 17:10:26-06	working with Engimusing pressure sensor in place of the BMP180 called out in the lesson.	2019-04-23 17:10:30.387204-06	1.17389	130	3	\N
1721	2019-04-23 14:00:00-06	2019-04-23 17:30:00-06	Test run	2019-04-23 17:29:47.364904-06	3.50000	3	5	17:30:00
1727	2019-04-24 07:30:00-06	2019-04-24 07:45:00-06	Status meeting	2019-04-24 08:11:49.160293-06	0.25000	21	5	07:45:00
1728	2019-04-24 07:45:00-06	2019-04-24 08:15:00-06	Bulkhead voltage issue	2019-04-24 08:16:29.440375-06	0.50000	87	5	08:15:00
1729	2019-04-24 08:15:00-06	2019-04-24 11:15:00-06	Test run	2019-04-24 11:12:21.670617-06	3.00000	3	5	11:15:00
1733	2019-04-24 11:30:00-06	2019-04-24 13:00:00-06	Training HV-IR	2019-04-24 13:14:29.664941-06	1.50000	179	5	13:00:00
1734	2019-04-24 13:00:00-06	2019-04-24 13:30:00-06	SN003 bulkhead issue	2019-04-24 13:15:07.56049-06	0.50000	87	5	13:30:00
1726	2019-04-24 06:20:00-06	2019-04-24 15:43:22-06	lining up material for milling stand and repair for casters for big work bench.	2019-04-24 15:43:27.746633-06	9.38944	168	3	\N
1732	2019-04-24 11:00:14-06	2019-04-24 12:30:29-06	misc	2019-04-24 16:30:37.75993-06	1.50417	28	7	\N
1719	2019-04-23 13:00:00-06	2019-04-23 14:00:00-06	KQI meeting	2019-04-26 09:25:28.346228-06	1.00000	180	5	14:00:00
1731	2019-04-24 11:15:00-06	2019-04-24 11:30:00-06	KQI Analysis	2019-04-26 09:25:55.044987-06	0.25000	180	5	11:30:00
1730	2019-04-24 10:00:00-06	2019-04-24 14:00:55-06	Studying python, permissions consolidation	2019-04-24 14:00:57.413481-06	4.01528	32	10	\N
1736	2019-04-24 08:30:00-06	2019-04-24 15:00:00-06	Designing house in fusion 360, moving steps to side door, moving metal, moving old shelves to patio.	2019-04-24 15:04:34.526374-06	6.50000	166	11	15:00:00
1735	2019-04-24 13:30:00-06	2019-04-24 16:15:00-06	Training Carrier Validation, Element Verification, Mapping, Consolidation	2019-04-24 16:09:31.316763-06	2.75000	179	5	16:15:00
1737	2019-04-25 07:30:00-06	2019-04-25 09:45:00-06	Training Carrier Validation, Element Verification, Mapping, Consolidation	2019-04-25 09:42:05.186137-06	2.25000	179	5	09:45:00
1919	2019-05-18 12:30:00-06	2019-05-18 15:00:00-06	Test history database	2019-05-18 15:02:54.813179-06	2.50000	84	5	15:00:00
1763	2019-04-29 11:26:03-06	2019-04-29 13:37:01-06	Studying python, reformatting the parts page making it look cleaner	2019-04-29 13:37:02.464534-06	2.18278	32	10	\N
1741	2019-04-25 10:43:22-06	2019-04-25 14:43:31-06	labeling permissions, studying	2019-04-25 14:43:32.429643-06	4.00250	32	10	\N
1742	2019-04-25 08:00:00-06	2019-04-25 13:00:00-06	Measuring, Cutting, setting up welder, and welding the top of the CNC stand.	2019-04-25 15:08:10.477236-06	5.00000	168	11	13:00:00
1743	2019-04-25 13:01:00-06	2019-04-25 15:05:00-06	Cleaning shop and Arduino lessons. Lesson 3 completed	2019-04-25 15:08:54.03999-06	2.06667	28	11	15:05:00
1745	2019-04-25 14:50:00-06	2019-04-25 15:11:19-06	Helping Jacob with his programming.	2019-04-25 15:11:21.039162-06	0.35528	130	3	\N
1765	2019-04-29 12:45:00-06	2019-04-29 14:15:00-06	Carrier content bug	2019-04-29 14:05:51.846903-06	1.50000	3	5	14:15:00
1738	2019-04-25 09:45:00-06	2019-04-25 18:15:00-06	Fixed bugs	2019-04-25 18:15:35.716684-06	8.50000	3	5	18:15:00
1746	2019-04-25 17:30:00-06	2019-04-25 21:00:00-06	Inventory	2019-04-25 21:02:57.191675-06	3.50000	28	8	21:00:00
1747	2019-04-26 06:45:00-06	2019-04-26 07:15:00-06	CD for BP1080	2019-04-26 07:17:10.500206-06	0.50000	41	5	07:15:00
1750	2019-04-26 07:15:00-06	2019-04-26 09:00:00-06	Training Carrier Validation, Element Verification, Mapping, Consolidation	2019-04-26 09:09:24.057675-06	1.75000	179	5	09:00:00
1748	2019-04-26 07:42:26-06	2019-04-26 08:45:48-06	accounting	2019-04-26 09:53:04.047519-06	1.05611	40	7	\N
1753	2019-04-26 10:00:34-06	2019-04-26 10:22:54-06	shop org	2019-04-26 10:22:56.464414-06	0.37222	28	7	\N
1752	2019-04-26 09:00:00-06	2019-04-26 13:15:00-06	Debug	2019-04-26 13:09:37.88841-06	4.25000	180	5	13:15:00
1751	2019-04-26 07:50:00-06	2019-04-26 14:10:02-06	Welding up the Milling Machine stand.	2019-04-26 14:10:04.556976-06	6.33389	168	3	\N
1754	2019-04-26 10:58:31-06	2019-04-26 15:00:04-06	Consolidating permissions	2019-04-26 15:00:05.540109-06	4.02583	32	10	\N
1756	2019-04-27 09:23:29-06	2019-04-27 11:45:00-06	organization	2019-04-27 18:24:10.635398-06	2.35861	28	7	11:45:00
1755	2019-04-27 16:03:10-06	2019-04-27 20:03:55-06	Studying python	2019-04-27 20:03:57.429553-06	4.01250	32	10	\N
1757	2019-04-29 07:30:00-06	2019-04-29 08:45:00-06	Status	2019-04-29 08:41:52.217637-06	1.25000	21	5	08:45:00
1758	2019-04-29 07:00:00-06	2019-04-29 08:55:32-06	Repair and test MOD0 doc board channel 13.\r\nJ3 pin 21 bad. Removed and replaced J3.	2019-04-29 08:57:58.013428-06	1.92556	125	3	\N
1740	2019-04-25 10:16:39-06	2019-04-25 13:44:59-06	Cutting material for stand.	2019-04-29 09:23:57.521604-06	3.47222	168	3	\N
1760	2019-04-29 08:43:14-06	2019-04-29 10:43:41-06	parts	2019-04-29 10:43:58.022222-06	2.00750	28	7	\N
1762	2019-04-29 08:45:00-06	2019-04-29 10:45:00-06	Carrier content bug	2019-04-29 11:04:29.945504-06	2.00000	3	5	10:45:00
1761	2019-04-29 10:43:42-06	2019-04-29 11:14:04-06	banking	2019-04-29 11:14:06.540527-06	0.50611	40	7	\N
1764	2019-04-29 10:45:00-06	2019-04-29 12:15:00-06	Progeny IPT	2019-04-29 12:19:37.763327-06	1.50000	21	5	12:15:00
1739	2019-04-25 07:00:00-06	2019-04-25 08:45:00-06	Replace relay #45 on 53711-8667035 S/N 2 PWB.	2019-04-29 15:13:05.945329-06	1.75000	173	3	\N
1766	2019-04-25 08:45:00-06	2019-04-25 10:16:00-06	Replaced connector.	2019-04-29 15:14:13.180321-06	1.51667	125	3	\N
1744	2019-04-25 13:45:00-06	2019-04-25 14:49:59-06	Run to Harris to change time from 2.05 sec to 2.50 sec for torque tester.	2019-04-29 15:15:17.08691-06	1.08306	125	3	\N
1749	2019-04-26 06:50:00-06	2019-04-26 07:49:59-06	Ran over to Harris to change the Pre stress time on the torque controller back to 2050 ms. from 2500 ms.	2019-04-29 15:15:34.142454-06	0.99972	125	3	\N
1767	2019-04-22 09:00:00-06	2019-04-22 12:00:00-06	Cleaning	2019-04-29 15:23:28.04728-06	3.00000	28	13	12:00:00
1768	2019-04-22 14:00:00-06	2019-04-22 16:30:00-06	Cleaning	2019-04-29 15:24:22.364319-06	2.50000	28	13	16:30:00
1769	2019-04-24 08:00:00-06	2019-04-24 10:50:00-06	Weed Trimming	2019-04-29 15:25:42.36408-06	2.83333	28	13	10:50:00
1770	2019-04-24 13:00:00-06	2019-04-24 16:00:00-06	Cleaning in shop and Pick up at Marshalls	2019-04-29 15:27:24.524804-06	3.00000	28	13	16:00:00
1771	2019-04-29 08:15:00-06	2019-04-29 12:10:00-06	Finishing mounting of casters and setting up Welder	2019-04-29 15:30:08.632259-06	3.91667	168	13	12:10:00
1772	2019-04-29 13:30:00-06	2019-04-29 15:30:00-06	Welding	2019-04-29 15:31:15.519673-06	2.00000	168	13	15:30:00
1774	2019-04-29 08:30:00-06	2019-04-29 13:00:00-06	Purchase of c25 gas for the welder, cutting metal, welding, grinding, etc.	2019-04-29 16:17:08.688538-06	4.50000	168	11	13:00:00
1775	2019-04-29 13:01:00-06	2019-04-29 16:17:00-06	Cleaning shop, cleaning grinding mess, waxing tool tops, cutting boxes to put in the garbage can, etc,	2019-04-29 16:17:59.606197-06	3.26667	28	11	16:17:00
1773	2019-04-29 16:00:47-06	2019-04-29 17:03:53-06	bank	2019-04-29 17:03:56.71802-06	1.05167	40	7	\N
1759	2019-04-29 08:55:33-06	2019-04-29 16:10:00-06	Welding stand.	2019-04-29 17:37:51.078833-06	7.24083	168	3	\N
1779	2019-04-30 07:10:00-06	2019-04-30 10:38:10-06	Changed A to D converter from Bulkhead #2 to Bulkhead #3.	2019-04-30 10:39:08.783709-06	3.46944	87	3	\N
1776	2019-04-29 16:45:00-06	2019-04-29 19:45:00-06	Daily status report	2019-04-29 18:49:25.961287-06	3.00000	181	5	19:45:00
1777	2019-04-29 17:30:00-06	2019-04-29 21:00:00-06	Install boards, clean/label stencils	2019-04-29 20:58:56.377399-06	3.50000	29	8	21:00:00
1785	2019-04-30 11:30:00-06	2019-04-30 13:45:00-06	ADAS SN2 Calibration	2019-04-30 13:43:43.212394-06	2.25000	15	5	13:30:00
1780	2019-04-30 10:38:11-06	2019-04-30 11:19:25-06	Making test cables for the display boards.	2019-04-30 11:20:15.37833-06	0.68722	36	3	\N
1778	2019-04-30 07:30:00-06	2019-04-30 08:30:00-06	ADAS Bulkhead debug	2019-04-30 11:22:27.059422-06	1.00000	87	5	08:15:00
1782	2019-04-30 08:30:00-06	2019-04-30 08:45:00-06	Carrier Debug	2019-04-30 11:22:53.874191-06	0.25000	80	5	08:45:00
1783	2019-04-30 08:45:00-06	2019-04-30 10:45:00-06	Daily status report	2019-04-30 11:23:53.806384-06	2.00000	181	5	10:45:00
1784	2019-04-30 10:45:00-06	2019-04-30 11:30:00-06	Review analysis	2019-04-30 11:24:28.622555-06	0.75000	34	5	11:30:00
1781	2019-04-30 11:19:26-06	2019-04-30 14:07:19-06	Back to Harris to calibrate bulkhead #3.	2019-04-30 14:07:59.06493-06	2.79806	87	3	\N
1787	2019-04-30 13:45:00-06	2019-04-30 14:15:00-06	Array_HA0336 file issue	2019-04-30 14:22:57.332883-06	0.50000	80	5	14:15:00
1786	2019-04-30 13:01:38-06	2019-04-30 14:50:49-06	Working on permission sheet	2019-04-30 14:50:50.396934-06	1.81972	32	10	\N
1790	2019-04-30 14:15:00-06	2019-04-30 15:15:00-06	Daily status report	2019-04-30 15:17:39.932556-06	1.00000	181	5	15:15:00
1791	2019-04-30 09:30:00-06	2019-04-30 13:00:00-06	Designing the house in fusion 360 windows, stairs, doors, etc.	2019-04-30 15:24:29.642854-06	3.50000	166	11	13:00:00
1792	2019-04-30 13:01:00-06	2019-04-30 15:25:00-06	Welding and grinding the PCNC Stand	2019-04-30 15:25:05.431965-06	2.40000	168	11	15:25:00
1789	2019-04-30 14:59:47-06	2019-04-30 15:26:59-06	Figuring out how to combine permissions	2019-04-30 15:27:00.740014-06	0.45333	32	10	\N
1793	2019-04-30 11:32:29-06	2019-04-30 13:32:58-06	deposit, shopping	2019-04-30 16:33:15.875835-06	2.00806	40	7	\N
1794	2019-04-30 15:33:21-06	2019-04-30 16:33:47-06	filing	2019-04-30 16:33:48.849232-06	1.00722	40	7	\N
1788	2019-04-30 14:07:20-06	2019-04-30 17:16:16-06	making up test cable.	2019-04-30 17:16:23.329929-06	3.14889	36	3	\N
1796	2019-04-30 20:30:00-06	2019-04-30 21:03:00-06	fixing crash	2019-04-30 21:03:58.769409-06	0.55000	32	10	\N
1795	2019-04-30 20:00:00-06	2019-04-30 21:30:00-06	Daily status report	2019-04-30 21:30:41.675865-06	1.50000	181	5	21:30:00
1916	2019-05-17 12:15:00-06	2019-05-17 18:00:00-06	Element verification test, Mapping test	2019-05-17 18:03:13.371097-06	5.75000	181	5	18:00:00
1800	2019-05-01 09:00:00-06	2019-05-01 11:00:00-06	Welding Welding and just a little more welding	2019-05-01 11:00:28.980214-06	2.00000	168	13	11:00:00
1798	2019-05-01 08:15:36-06	2019-05-01 10:30:39-06	door,	2019-05-01 11:18:52.032533-06	2.25083	28	7	\N
1799	2019-05-01 09:08:47-06	2019-05-01 13:09:03-06	Changing activity box to be small again	2019-05-01 13:09:04.799143-06	4.00444	32	10	\N
1797	2019-05-01 06:00:00-06	2019-05-01 12:00:00-06	Utility functions	2019-05-01 15:19:03.054829-06	6.00000	181	5	07:00:00
1801	2019-05-01 13:00:00-06	2019-05-01 14:00:00-06	Connector shell removal	2019-05-01 15:19:42.625478-06	1.00000	175	5	14:00:00
1802	2019-05-01 14:00:00-06	2019-05-01 14:15:00-06	Connector discussion	2019-05-01 15:22:03.378331-06	0.25000	87	5	14:30:00
1803	2019-05-01 14:15:00-06	2019-05-01 14:45:00-06	Call with Henry	2019-05-01 15:24:10.335287-06	0.50000	34	5	15:00:00
1804	2019-05-01 14:45:00-06	2019-05-01 15:15:00-06	Status	2019-05-01 15:24:55.086978-06	0.50000	21	5	15:15:00
1805	2019-05-01 15:15:00-06	2019-05-01 15:45:00-06	Carrier verification	2019-05-01 15:40:19.323258-06	0.50000	181	5	15:45:00
1806	2019-05-01 13:00:00-06	2019-05-01 16:20:00-06	Welding, Welding and Welding	2019-05-01 16:16:36.410345-06	3.33333	168	13	16:20:00
1807	2019-05-01 09:00:00-06	2019-05-01 16:15:00-06	Welding and preparing stand for paint and use.	2019-05-01 16:17:21.027163-06	7.25000	168	11	16:15:00
1808	2019-05-02 06:45:00-06	2019-05-02 07:15:00-06	Inventory	2019-05-02 07:07:21.106622-06	0.50000	181	5	07:15:00
1810	2019-05-02 07:15:00-06	2019-05-02 10:30:00-06	HPT Analysis of 75 & 77	2019-05-02 11:02:52.559315-06	3.25000	34	5	10:30:00
1811	2019-05-02 10:30:00-06	2019-05-02 11:00:00-06	Status	2019-05-02 11:03:13.62793-06	0.50000	21	5	11:00:00
1812	2019-05-02 11:00:00-06	2019-05-02 12:00:00-06	Inventory	2019-05-02 11:54:22.356313-06	1.00000	181	5	12:00:00
1813	2019-05-02 10:00:00-06	2019-05-02 12:10:00-06	Welding and grinding the stand	2019-05-02 12:11:59.519351-06	2.16667	168	11	12:10:00
1809	2019-05-02 10:04:03-06	2019-05-02 14:04:34-06	making new page and making engimusing number a link	2019-05-02 14:04:36.109959-06	4.00861	32	10	\N
1814	2019-05-02 12:00:00-06	2019-05-02 14:30:00-06	Inventory	2019-05-02 16:05:38.693965-06	2.50000	181	5	14:30:00
1815	2019-05-02 14:30:00-06	2019-05-02 16:00:00-06	HPT Analysis with Henry	2019-05-02 16:06:29.580033-06	1.50000	34	5	16:00:00
1816	2019-05-02 17:40:00-06	2019-05-02 21:00:00-06	Inventory	2019-05-02 21:01:19.988526-06	3.33333	28	8	21:00:00
1817	2019-05-03 07:30:00-06	2019-05-03 09:30:00-06	Verification debug	2019-05-03 10:22:33.543427-06	2.00000	181	5	09:30:00
1819	2019-05-03 09:30:00-06	2019-05-03 10:30:00-06	Planning Meeting	2019-05-03 10:23:14.089854-06	1.00000	84	5	10:30:00
1820	2019-05-03 10:30:00-06	2019-05-03 13:15:00-06	Mapping	2019-05-03 13:12:10.603641-06	2.75000	181	5	13:15:00
1818	2019-05-03 10:07:01-06	2019-05-03 14:18:08-06	Reorganizing parts list	2019-05-03 14:18:09.368898-06	4.18528	32	10	\N
1821	2019-05-04 11:46:17-06	2019-05-04 13:26:15-06	working on view page for parts	2019-05-04 13:26:16.38253-06	1.66611	32	10	\N
1822	2019-05-04 13:46:04-06	2019-05-04 14:08:59-06	working on view page	2019-05-04 14:09:00.657816-06	0.38194	32	10	\N
1823	2019-05-06 09:00:51-06	2019-05-06 11:24:14-06	banking accounting	2019-05-06 11:24:15.780159-06	2.38972	40	7	\N
1825	2019-05-06 09:00:00-06	2019-05-06 15:00:00-06	Prepping stand for paint tomorrow, and cleaning shop, with research about the Trajan saw warranty	2019-05-06 14:40:26.875648-06	6.00000	168	11	15:00:00
1824	2019-05-06 11:23:53-06	2019-05-06 15:05:52-06	making new view readable only	2019-05-06 15:05:54.191878-06	3.69972	32	10	\N
2938	2019-10-01 11:15:00-06	2019-10-01 12:15:00-06	record write	2019-10-01 12:21:11.181829-06	1.00000	225	5	12:15:00
1826	2019-05-06 12:09:20-06	2019-05-06 13:09:41-06	banking, shopping	2019-05-06 16:19:12.658908-06	1.00583	40	7	\N
1828	2019-05-07 09:00:00-06	2019-05-07 11:00:00-06	Welding bolts onto legs, cleaning stand, and then painting	2019-05-07 11:17:22.420045-06	2.00000	168	13	11:00:00
1827	2019-05-07 10:00:00-06	2019-05-07 12:10:18-06	ordering	2019-05-07 13:14:32.523126-06	2.17167	28	7	\N
1830	2019-05-07 09:00:00-06	2019-05-07 14:50:00-06	Primed stand and cleaned shop	2019-05-07 14:48:26.030441-06	5.83333	168	11	14:50:00
1829	2019-05-07 11:52:00-06	2019-05-07 15:05:59-06	working on new parts page	2019-05-07 15:06:00.527504-06	3.23306	32	10	\N
1831	2019-05-07 14:00:00-06	2019-05-07 15:00:00-06	home depot	2019-05-07 20:05:32.780517-06	1.00000	28	7	15:00:00
1832	2019-05-08 06:45:00-06	2019-05-08 07:49:59-06	Lesson 24 & 25.	2019-05-08 10:16:50.405905-06	1.08306	130	3	\N
1834	2019-05-08 08:45:00-06	2019-05-08 10:43:13-06	Ship order	2019-05-08 10:43:16.436934-06	1.97028	39	7	\N
1835	2019-05-08 11:12:19-06	2019-05-08 13:09:04-06	working on new parts page	2019-05-08 13:09:05.655548-06	1.94583	32	10	\N
1833	2019-05-08 07:50:00-06	2019-05-08 15:00:13-06	Installing siding on west side.	2019-05-08 15:00:19.617722-06	7.17028	28	3	\N
1836	2019-05-08 16:00:00-06	2019-05-08 17:00:00-06	mail & home depot	2019-05-09 06:47:08.35547-06	1.00000	39	7	17:00:00
1838	2019-05-08 09:00:00-06	2019-05-08 15:05:00-06	Cleaning shop, working on stand, etc.	2019-05-09 10:24:43.153645-06	6.08333	168	11	15:05:00
1839	2019-05-09 09:00:00-06	2019-05-09 10:50:00-06	Dissasembly of casters	2019-05-09 10:47:40.414685-06	1.83333	28	13	10:50:00
1841	2019-05-09 07:00:00-06	2019-05-09 09:59:59-06	Grinding the mounts level.	2019-05-09 13:57:55.88245-06	2.99972	168	3	\N
1842	2019-05-09 10:00:00-06	2019-05-09 11:29:59-06	Hauled old cabinet off.	2019-05-09 13:59:11.042556-06	1.49972	28	3	\N
1837	2019-05-09 09:30:00-06	2019-05-09 10:30:00-06	Status	2019-05-09 14:05:02.45967-06	1.00000	21	5	10:30:00
1844	2019-05-09 10:30:00-06	2019-05-09 14:00:00-06	Testing	2019-05-09 14:05:29.317421-06	3.50000	181	5	14:00:00
1840	2019-05-09 10:50:58-06	2019-05-09 14:37:05-06	working on new parts page	2019-05-09 14:37:06.87645-06	3.76861	32	10	\N
1845	2019-05-09 13:50:00-06	2019-05-09 15:00:00-06	Sanding the stand	2019-05-09 14:53:05.461876-06	1.16667	168	13	15:00:00
1846	2019-05-09 09:00:00-06	2019-05-09 15:00:00-06	Sanding stand, taking the cupboards to habit, etc.	2019-05-09 14:54:17.550874-06	6.00000	168	11	15:00:00
1843	2019-05-09 11:30:00-06	2019-05-09 15:04:59-06	Dismantled wood cabinet and glued it.	2019-05-09 15:05:01.671791-06	3.58306	28	3	\N
1847	2019-05-09 13:31:06-06	2019-05-09 15:31:36-06	accounting	2019-05-09 15:31:38.95308-06	2.00833	40	7	\N
1848	2019-05-09 17:40:00-06	2019-05-09 21:00:00-06	Inventory	2019-05-09 20:57:54.015-06	3.33333	28	8	21:00:00
1849	2019-05-10 11:24:11-06	2019-05-10 15:06:04-06	making the page more compact	2019-05-10 15:06:06.73666-06	3.69806	32	10	\N
1850	2019-05-10 07:10:00-06	2019-05-10 15:11:14-06	Building cabinets.	2019-05-10 15:11:16.717022-06	8.02056	28	3	\N
1852	2019-05-11 09:30:00-06	2019-05-11 13:47:22-06	Building Cabinet & moving material.	2019-05-11 13:47:28.093058-06	4.28944	28	3	\N
1851	2019-05-11 13:31:28-06	2019-05-11 15:29:30-06	trying to combine permissions	2019-05-11 15:29:31.278643-06	1.96722	32	10	\N
1854	2019-05-13 07:30:00-06	2019-05-13 07:45:00-06	Status	2019-05-13 08:12:04.087227-06	0.25000	21	5	07:45:00
1855	2019-05-13 07:45:00-06	2019-05-13 08:00:00-06	Tuning discussion with Rick Daley	2019-05-13 08:12:34.693869-06	0.25000	75	5	08:00:00
1856	2019-05-13 08:00:00-06	2019-05-13 08:45:00-06	Carrier Consolidation	2019-05-13 08:47:52.201052-06	0.75000	181	5	08:45:00
1857	2019-05-13 08:45:00-06	2019-05-13 09:00:00-06	ESS failure on BP1081	2019-05-13 09:05:24.997947-06	0.25000	42	5	09:00:00
1858	2019-05-13 09:00:00-06	2019-05-13 10:45:00-06	Carrier Consolidation	2019-05-13 10:47:21.184625-06	1.75000	181	5	10:45:00
1860	2019-05-13 09:00:00-06	2019-05-13 11:15:00-06	Cleaning and mowing lawn	2019-05-13 11:11:02.348883-06	2.25000	28	13	11:15:00
1859	2019-05-13 10:45:00-06	2019-05-13 12:00:00-06	Progeny IPT	2019-05-13 12:00:34.99971-06	1.25000	21	5	12:00:00
1853	2019-05-13 07:10:00-06	2019-05-13 09:44:59-06	Repairing  2 each docking PWB's.	2019-05-13 13:33:33.568151-06	2.58306	125	3	\N
1863	2019-05-13 09:45:00-06	2019-05-13 11:20:00-06	Assembling Thermocouple.	2019-05-13 13:38:17.399357-06	1.58333	174	3	\N
1861	2019-05-13 11:32:01-06	2019-05-13 15:02:10-06	combining permissions	2019-05-13 15:02:11.286587-06	3.50250	32	10	\N
1862	2019-05-13 12:00:00-06	2019-05-13 16:45:00-06	Remap bug	2019-05-13 16:44:16.430067-06	4.75000	181	5	16:45:00
1865	2019-05-13 12:20:00-06	2019-05-13 17:10:03-06	Sanding cabinet.	2019-05-13 17:10:07.39474-06	4.83417	28	3	\N
1864	2019-05-13 11:20:00-06	2019-05-13 12:19:59-06	Took load to Habitat for Humanity.	2019-05-13 13:40:10.272994-06	0.99972	28	3	\N
1866	2019-05-13 13:00:00-06	2019-05-13 14:43:37-06	checking acct.	2019-05-13 14:43:39.364514-06	1.72694	40	7	\N
1867	2019-05-13 14:30:00-06	2019-05-13 15:35:00-06	Cleaning, disassembly of shelving unit	2019-05-13 15:34:10.561505-06	1.08333	28	13	15:35:00
1868	2019-05-13 09:00:00-06	2019-05-13 15:30:00-06	Arduino tutorials, taking stuff to restore, cleaning shop, sanding, loading stand into jason's dads truck	2019-05-13 15:35:31.350482-06	6.50000	28	11	15:30:00
1915	2019-05-17 11:55:28-06	2019-05-17 14:48:09-06	permissions, trying to make them work	2019-05-17 14:48:11.091828-06	2.87806	32	10	\N
1870	2019-05-14 08:00:00-06	2019-05-14 09:45:00-06	Element verification fixes	2019-05-14 10:10:15.494225-06	1.75000	181	5	09:45:00
1917	2019-05-18 10:15:00-06	2019-05-18 12:15:00-06	Test history database	2019-05-18 15:02:04.352553-06	2.00000	84	5	12:15:00
1872	2019-05-14 10:15:00-06	2019-05-14 11:00:00-06	Element verification fixes	2019-05-14 10:56:43.084654-06	0.75000	181	5	11:00:00
1871	2019-05-14 09:45:00-06	2019-05-14 10:15:00-06	HPT Analysis	2019-05-14 10:57:39.931247-06	0.50000	81	5	10:15:00
1920	2019-05-18 15:45:00-06	2019-05-18 17:15:00-06	Test history database	2019-05-18 17:20:40.633948-06	1.50000	84	5	17:15:00
1873	2019-05-14 11:00:00-06	2019-05-14 12:15:00-06	CAP/FM Failure Review meeting	2019-05-14 12:11:16.384655-06	1.25000	84	5	12:15:00
1897	2019-05-16 07:05:00-06	2019-05-16 16:30:00-06	painting cabinet.	2019-05-20 08:49:04.2448-06	9.41667	28	3	\N
1875	2019-05-14 12:15:00-06	2019-05-14 12:30:00-06	Fix Crystal's icons, etc	2019-05-14 12:22:45.933669-06	0.25000	80	5	12:30:00
1874	2019-05-14 11:13:51-06	2019-05-14 14:19:59-06	finishing combining permissions	2019-05-14 14:20:00.824768-06	3.10222	32	10	\N
1877	2019-05-14 14:40:00-06	2019-05-14 15:00:00-06	Moving Cabinents	2019-05-14 14:54:54.726595-06	0.33333	28	13	15:00:00
1925	2019-05-20 11:00:00-06	2019-05-20 12:15:00-06	Progeny IPT	2019-05-20 13:09:20.288724-06	1.25000	21	5	12:15:00
1879	2019-05-14 08:40:00-06	2019-05-14 15:00:00-06	cleaning cleaning and more cleaning and moving and disassembling shelves	2019-05-14 15:01:30.362547-06	6.33333	28	11	15:00:00
1878	2019-05-14 14:55:35-06	2019-05-14 15:34:09-06	putting edit button on new page, fixing errors	2019-05-14 15:34:10.207713-06	0.64278	32	10	\N
1876	2019-05-14 12:30:00-06	2019-05-14 16:15:00-06	Element verification test	2019-05-14 16:18:14.266307-06	3.75000	181	5	16:15:00
1880	2019-05-14 12:30:10-06	2019-05-14 14:30:00-06	shop, home depot	2019-05-14 16:31:11.587093-06	1.99722	28	7	14:30:00
1881	2019-05-13 15:00:00-06	2019-05-13 15:30:00-06	bank	2019-05-14 16:32:57.108262-06	0.50000	40	7	15:30:00
1927	2019-05-20 13:41:12-06	2019-05-20 14:24:13-06	accounting	2019-05-20 14:24:55.565482-06	0.71694	40	7	\N
1882	2019-05-14 08:30:00-06	2019-05-14 09:15:00-06	accountingg	2019-05-14 16:33:52.775853-06	0.75000	40	7	09:15:00
1929	2019-05-16 14:26:43-06	2019-05-16 15:00:00-06	paper work	2019-05-20 14:27:31.259874-06	0.55472	40	7	15:00:00
1883	2019-05-14 07:00:00-06	2019-05-14 17:20:44-06	Rearranging shop.	2019-05-14 17:20:52.489863-06	10.34556	28	3	\N
1884	2019-05-15 07:30:00-06	2019-05-15 08:00:00-06	Status	2019-05-15 08:20:22.129247-06	0.50000	21	5	08:00:00
1923	2019-05-20 07:10:00-06	2019-05-20 15:31:47-06	Working on cabinets.	2019-05-20 15:31:52.317604-06	8.36306	28	3	\N
1885	2019-05-15 08:00:00-06	2019-05-15 09:00:00-06	Element verification log	2019-05-15 09:24:08.208327-06	1.00000	181	5	09:00:00
1886	2019-05-15 09:00:00-06	2019-05-15 09:30:00-06	Mapping approval research	2019-05-15 09:24:44.379551-06	0.50000	84	5	09:30:00
1930	2019-05-20 12:15:00-06	2019-05-20 16:30:00-06	Measuring floor, shop layout, cleaning shop	2019-05-20 16:24:47.919995-06	4.25000	28	11	16:15:00
2509	2019-07-30 14:15:00-06	2019-07-30 16:00:00-06	Plot generation	2019-07-30 15:55:15.988705-06	1.75000	8	5	16:00:00
1888	2019-05-15 08:45:00-06	2019-05-15 11:05:00-06	Cleaning and moving stuff	2019-05-15 11:10:27.836326-06	2.33333	28	13	11:05:00
1931	2019-05-20 16:50:28-06	2019-05-20 17:40:14-06	figuring out permissions	2019-05-20 17:40:16.607533-06	0.82944	32	10	\N
1887	2019-05-15 09:30:00-06	2019-05-15 13:00:00-06	Element verification log	2019-05-15 13:37:52.200724-06	3.50000	181	5	13:00:00
1890	2019-05-15 13:00:00-06	2019-05-15 13:45:00-06	Classified computer meeting	2019-05-15 13:38:24.906756-06	0.75000	21	5	13:45:00
1889	2019-05-15 11:18:07-06	2019-05-15 13:48:20-06	combining permissions	2019-05-15 13:48:22.255768-06	2.50361	32	10	\N
1933	2019-05-20 19:20:51-06	2019-05-20 21:15:01-06	working on creating roles	2019-05-20 21:15:03.165258-06	1.90278	32	10	\N
1893	2019-05-15 13:00:00-06	2019-05-15 14:45:00-06	Cleaning and moving stuff	2019-05-15 14:45:06.438007-06	1.75000	28	13	15:45:00
1894	2019-05-15 08:45:00-06	2019-05-15 14:45:00-06	cleaning shop,one arduino tutorial, etc.	2019-05-15 14:45:37.72673-06	6.00000	28	11	14:45:00
1892	2019-05-15 14:23:59-06	2019-05-15 15:21:21-06	trying to figure out how to combine permissions, having problems	2019-05-15 15:21:22.689325-06	0.95611	32	10	\N
1891	2019-05-15 13:45:00-06	2019-05-15 16:00:00-06	HPT voltage review	2019-05-15 15:53:25.959181-06	2.25000	182	5	16:00:00
1934	2019-05-21 07:30:00-06	2019-05-21 09:00:00-06	Fault tree	2019-05-21 10:26:44.939596-06	1.50000	81	5	09:00:00
1896	2019-05-15 07:00:00-06	2019-05-15 17:00:00-06	Repairing light switches, installing air conditioner.	2019-05-15 16:55:29.486985-06	10.00000	28	3	\N
1895	2019-05-15 16:00:00-06	2019-05-15 17:00:00-06	Mapping check off sheet	2019-05-15 17:02:42.447393-06	1.00000	181	5	17:00:00
1935	2019-05-21 09:00:00-06	2019-05-21 10:00:00-06	Progeny IPT	2019-05-21 10:27:08.963075-06	1.00000	21	5	10:00:00
1936	2019-05-21 10:00:00-06	2019-05-21 10:30:00-06	Shaker fuse issue	2019-05-21 10:27:36.913231-06	0.50000	15	5	10:30:00
1898	2019-05-16 07:30:00-06	2019-05-16 11:30:00-06	Test history database	2019-05-16 12:23:07.627448-06	4.00000	84	5	11:30:00
1900	2019-05-16 11:30:00-06	2019-05-16 12:15:00-06	Requirements meeting	2019-05-16 12:23:28.967049-06	0.75000	172	5	12:15:00
1938	2019-05-21 08:40:00-06	2019-05-21 11:05:00-06	Assembly of welding stand and application of bondo to moldings	2019-05-21 11:05:16.565255-06	2.41667	28	13	11:05:00
1899	2019-05-16 10:50:13-06	2019-05-16 14:32:17-06	fixing view page	2019-05-16 14:32:18.639276-06	3.70111	32	10	\N
1902	2019-05-16 09:00:00-06	2019-05-16 15:00:00-06	Removing molding from laundry room, cleaning shop, taking cabinet to the DI, pickup of new door, moving materials	2019-05-16 15:00:41.803147-06	6.00000	28	11	15:00:00
1901	2019-05-16 12:15:00-06	2019-05-16 14:00:00-06	Test history database	2019-05-16 15:27:03.998927-06	1.75000	84	5	14:00:00
1937	2019-05-21 12:15:00-06	2019-05-21 12:30:00-06	HPT BP1077 review	2019-05-21 12:46:04.835662-06	0.25000	80	5	12:15:00
1903	2019-05-16 14:00:00-06	2019-05-16 15:30:00-06	BP1081 & BP1086 Call & Measurement	2019-05-16 16:05:11.296584-06	1.50000	21	5	15:00:00
1904	2019-05-16 15:30:00-06	2019-05-16 15:45:00-06	BP1082 HPT meeting	2019-05-16 16:06:21.525579-06	0.25000	81	5	15:45:00
1905	2019-05-16 15:45:00-06	2019-05-16 16:15:00-06	Shaker fuse issue	2019-05-16 16:10:27.683461-06	0.50000	15	5	16:15:00
1939	2019-05-21 12:30:00-06	2019-05-21 12:45:00-06	Startup vib system	2019-05-21 12:46:26.042798-06	0.25000	15	5	12:45:00
1906	2019-05-16 17:30:00-06	2019-05-16 21:00:00-06	Inventory/attach shelves	2019-05-16 21:04:45.940648-06	3.50000	28	8	21:00:00
1869	2019-05-13 17:30:00-06	2019-05-13 21:00:00-06	Attach shelves	2019-05-16 21:05:22.17858-06	3.50000	28	8	21:00:00
1907	2019-05-16 19:00:00-06	2019-05-16 21:30:00-06	Test history database	2019-05-16 21:33:15.357545-06	2.50000	84	5	21:30:00
1941	2019-05-21 08:40:00-06	2019-05-21 15:00:00-06	Filling holes on shop, cleaning shop, etc	2019-05-21 13:29:59.035901-06	6.33333	28	11	15:00:00
1942	2019-05-21 12:45:00-06	2019-05-21 15:00:00-06	Remapping bug fix	2019-05-21 14:54:23.508645-06	2.25000	181	5	15:00:00
1943	2019-05-21 13:35:00-06	2019-05-21 15:00:00-06	cleaning shop	2019-05-21 14:59:18.278069-06	1.41667	28	13	15:00:00
1944	2019-05-21 15:00:00-06	2019-05-21 15:15:00-06	ESS review 75,79,82,84	2019-05-21 15:11:36.856855-06	0.25000	42	5	15:15:00
1940	2019-05-21 07:00:00-06	2019-05-21 15:18:04-06	Gluing window cabinet, Checking level of floor.	2019-05-21 15:18:09.690409-06	8.30111	28	3	\N
1945	2019-05-21 15:15:00-06	2019-05-21 16:30:00-06	Fault tree	2019-05-21 16:32:15.881923-06	1.25000	81	5	16:30:00
1946	2019-05-21 18:00:00-06	2019-05-21 19:00:00-06	Credit report	2019-05-21 19:42:24.33248-06	1.00000	40	7	19:00:00
1947	2019-05-21 09:00:00-06	2019-05-21 11:00:00-06	banking accounting	2019-05-21 19:43:20.991674-06	2.00000	40	7	11:00:00
1949	2019-05-21 20:45:00-06	2019-05-21 22:00:00-06	Fault tree	2019-05-21 21:57:39.607271-06	1.25000	81	5	22:00:00
1948	2019-05-21 20:01:32-06	2019-05-21 22:04:37-06	creating roles	2019-05-21 22:04:39.420327-06	2.05139	32	10	\N
1950	2019-05-22 07:30:00-06	2019-05-22 08:00:00-06	Status	2019-05-22 07:58:29.577647-06	0.50000	21	5	08:00:00
2807	2019-09-12 08:15:00-06	2019-09-12 12:30:00-06	adding capability	2019-09-12 14:25:51.493924-06	4.25000	8	5	12:29:59
1951	2019-05-22 08:00:00-06	2019-05-22 10:15:00-06	Fault tree	2019-05-22 10:08:38.15067-06	2.25000	81	5	10:15:00
1952	2019-05-22 10:15:00-06	2019-05-22 10:30:00-06	Relay SN4 failure	2019-05-22 10:28:36.814741-06	0.25000	87	5	10:30:00
1953	2019-05-22 10:30:00-06	2019-05-22 10:45:00-06	Tuning -006s to map	2019-05-22 10:34:42.212073-06	0.25000	75	5	10:45:00
1954	2019-05-22 10:45:00-06	2019-05-22 11:15:00-06	Nose dictionary duplicate fix	2019-05-22 11:16:10.072457-06	0.50000	84	5	11:15:00
1955	2019-05-22 11:15:00-06	2019-05-22 11:45:00-06	Array revision list	2019-05-22 11:50:06.768327-06	0.50000	84	5	11:45:00
1956	2019-05-22 11:45:00-06	2019-05-22 13:00:00-06	Remap element	2019-05-22 13:53:50.086821-06	1.25000	41	5	13:00:00
1958	2019-05-22 07:00:00-06	2019-05-22 15:24:03-06	Checking level North room. sanding & gluing cabinet.	2019-05-22 15:24:05.838176-06	8.40083	28	3	\N
1960	2019-05-22 08:35:00-06	2019-05-22 15:05:00-06	Measuring floor, shop layout, cleaning shop, 3d printing two materials	2019-05-22 15:40:53.452029-06	6.50000	28	11	15:05:00
1961	2019-05-22 16:50:02-06	2019-05-22 20:18:29-06	making roles	2019-05-22 20:18:30.795129-06	3.47417	32	10	\N
1957	2019-05-22 13:00:00-06	2019-05-22 18:30:00-06	Array revision list	2019-05-22 20:23:52.485035-06	5.50000	84	5	18:30:00
1964	2019-05-22 18:30:00-06	2019-05-22 20:30:00-06	DVDs for shipment	2019-05-22 20:25:07.231956-06	2.00000	41	5	20:30:00
1962	2019-05-22 17:30:00-06	2019-05-22 21:00:00-06	Inventory	2019-05-22 20:51:11.616856-06	3.50000	28	8	21:00:00
1959	2019-05-22 15:38:59-06	2019-05-22 16:00:00-06	paper work	2019-05-22 20:58:48.502905-06	0.35028	40	7	\N
1963	2019-05-22 15:30:00-06	2019-05-22 19:30:00-06	Replacing shorted connector.	2019-05-23 07:02:09.531799-06	4.00000	176	3	\N
1965	2019-05-23 07:02:23-06	2019-05-23 07:51:52-06	sanding cabinet.	2019-05-23 07:52:32.49079-06	0.82472	28	3	\N
1967	2019-05-23 07:30:00-06	2019-05-23 08:00:00-06	HPT connector replacement	2019-05-23 08:03:40.202854-06	0.50000	81	5	08:00:00
1968	2019-05-23 08:00:00-06	2019-05-23 08:15:00-06	Fault tree	2019-05-23 08:11:19.932925-06	0.25000	81	5	08:15:00
1969	2019-05-23 08:15:00-06	2019-05-23 08:30:00-06	Duplicate SN code revision	2019-05-23 08:33:11.245154-06	0.25000	84	5	08:30:00
1970	2019-05-23 08:30:00-06	2019-05-23 09:30:00-06	Training	2019-05-23 09:27:12.091169-06	1.00000	81	5	09:30:00
1966	2019-05-23 07:51:53-06	2019-05-23 09:51:39-06	Repairing shorted connector.	2019-05-23 09:52:04.663849-06	1.99611	176	3	\N
1988	2019-05-28 09:30:00-06	2019-05-28 09:45:00-06	Database testing	2019-05-28 12:57:07.921114-06	0.25000	84	5	09:45:00
1973	2019-05-23 09:00:00-06	2019-05-23 11:15:00-06	Sanding	2019-05-23 12:06:22.251464-06	2.25000	28	13	11:15:00
1972	2019-05-23 10:45:00-06	2019-05-23 12:15:00-06	Carrier Consolidation	2019-05-23 12:16:56.42717-06	1.50000	181	5	12:15:00
1974	2019-05-23 13:00:00-06	2019-05-23 13:45:00-06	Carrier Consolidation	2019-05-23 13:51:18.944233-06	0.75000	181	5	13:45:00
1975	2019-05-23 12:00:00-06	2019-05-23 15:00:00-06	Sanding	2019-05-23 14:59:27.27735-06	3.00000	28	13	15:00:00
1976	2019-05-23 09:00:00-06	2019-05-23 14:45:00-06	Sanding and prepping cabinet for paint tomorrow	2019-05-23 15:00:53.353784-06	5.75000	28	11	14:45:00
1971	2019-05-23 09:51:40-06	2019-05-23 15:04:00-06	working on cabinet.	2019-05-23 15:04:05.660366-06	5.20556	28	3	\N
1977	2019-05-23 16:06:39-06	2019-05-23 18:27:34-06	working on making field readonly	2019-05-23 18:27:35.276504-06	2.34861	32	10	\N
1978	2019-05-23 17:45:00-06	2019-05-23 21:00:00-06	Inventory	2019-05-23 21:00:31.064808-06	3.25000	28	8	21:00:00
1980	2019-05-24 12:15:00-06	2019-05-24 13:15:00-06	Carrier Consolidation	2019-05-24 13:28:37.135339-06	1.00000	181	5	13:15:00
1982	2019-05-24 14:00:00-06	2019-05-24 14:30:00-06	Carrier Consolidation	2019-05-24 14:38:39.94736-06	0.50000	181	5	14:30:00
1981	2019-05-24 08:30:00-06	2019-05-24 13:40:00-06	Sanding and painting the window cabinet, and picking up material	2019-05-24 14:39:08.336251-06	5.16667	28	11	13:40:00
1983	2019-05-25 08:00:48-06	2019-05-25 08:45:00-06	heloo	2019-05-25 08:47:36.82017-06	0.73667	40	7	08:45:00
1979	2019-05-24 06:50:00-06	2019-05-24 11:30:00-06	Re wiring the AC in south shop.	2019-05-28 07:02:24.519322-06	4.66667	28	3	\N
2005	2019-05-29 12:45:00-06	2019-05-29 15:00:00-06	Mapping fixes	2019-05-29 14:57:19.564577-06	2.25000	181	5	15:00:00
1985	2019-05-28 08:00:00-06	2019-05-28 08:15:00-06	Status	2019-05-28 08:20:23.700457-06	0.25000	21	5	08:15:00
1987	2019-05-28 09:00:00-06	2019-05-28 09:30:00-06	Data move status	2019-05-28 09:29:20.161088-06	0.50000	81	5	09:30:00
1989	2019-05-28 09:45:00-06	2019-05-28 10:30:00-06	Pressure bulkhead debug	2019-05-28 10:20:11.191143-06	0.75000	81	5	10:30:00
1990	2019-05-28 08:55:00-06	2019-05-28 09:45:00-06	Sanding cabinets and wall in shop	2019-05-28 12:22:39.687067-06	0.83333	28	13	09:45:00
1991	2019-05-28 10:30:00-06	2019-05-28 13:00:00-06	Database testing	2019-05-28 12:57:58.152033-06	2.50000	84	5	13:00:00
1993	2019-05-28 08:40:00-06	2019-05-28 15:00:00-06	painting cabinbet, 2 coats of primer and paint	2019-05-28 14:56:02.173469-06	6.33333	28	11	15:00:00
1992	2019-05-28 14:00:00-06	2019-05-28 15:30:00-06	Database testing	2019-05-28 15:36:01.445545-06	1.50000	84	5	15:30:00
1994	2019-05-28 15:30:00-06	2019-05-28 16:15:00-06	Moved and checked	2019-05-28 16:12:14.946027-06	0.75000	42	5	16:15:00
1984	2019-05-28 06:45:00-06	2019-05-28 17:00:23-06	Building cabinets	2019-05-28 17:00:26.613256-06	10.25639	28	3	\N
1996	2019-05-28 16:19:45-06	2019-05-28 18:21:44-06	studying python	2019-05-28 18:21:45.809203-06	2.03306	32	10	\N
1995	2019-05-28 16:15:00-06	2019-05-28 19:00:00-06	DVDs for shipment	2019-05-28 18:57:07.829642-06	2.75000	41	5	19:00:00
1998	2019-05-29 07:15:00-06	2019-05-29 07:30:00-06	Disposition plan	2019-05-29 07:29:07.012235-06	0.25000	84	5	07:30:00
1999	2019-05-29 07:30:00-06	2019-05-29 08:00:00-06	Status	2019-05-29 07:53:11.122936-06	0.50000	21	5	08:00:00
2000	2019-05-29 08:00:00-06	2019-05-29 10:00:00-06	DVDs for shipment	2019-05-29 10:18:19.606087-06	2.00000	41	5	10:00:00
2001	2019-05-29 10:00:00-06	2019-05-29 10:15:00-06	Mapping discussion with John H.	2019-05-29 10:18:47.766653-06	0.25000	84	5	10:15:00
2003	2019-05-29 09:10:00-06	2019-05-29 11:15:00-06	Sanding and adding filler to the wall	2019-05-29 11:15:48.148227-06	2.08333	28	13	11:15:00
2002	2019-05-29 10:15:00-06	2019-05-29 12:30:00-06	Date bug	2019-05-29 12:41:02.320391-06	2.25000	181	5	12:30:00
2004	2019-05-29 12:30:00-06	2019-05-29 12:45:00-06	Extract tunables	2019-05-29 12:41:34.503136-06	0.25000	75	5	12:45:00
2006	2019-05-29 08:30:00-06	2019-05-29 14:30:00-06	Filing and sanding walls, painting cabinet, fixing gate (sanding and straightening)	2019-05-29 14:28:51.320218-06	6.00000	28	11	14:30:00
1997	2019-05-29 07:05:00-06	2019-05-29 17:36:42-06	Installing AC, finishing up cabinet.	2019-05-29 17:36:46.173795-06	10.52833	28	3	\N
2007	2019-05-29 14:58:33-06	2019-05-29 18:30:22-06	making new admin page	2019-05-29 18:30:23.260428-06	3.53028	32	10	\N
1932	2019-05-20 12:15:00-06	2019-05-20 18:15:00-06	BP1018 Debug, BP1086 analysis, Retested elements analysis, Fault tree	2019-05-29 20:01:05.259358-06	6.00000	81	5	18:15:00
2008	2019-05-29 17:30:00-06	2019-05-29 21:00:00-06	Inventory	2019-05-29 21:02:16.761995-06	3.50000	28	8	21:00:00
2010	2019-05-30 07:45:00-06	2019-05-30 08:00:00-06	Packaging SN 2	2019-05-30 08:11:30.073162-06	0.25000	87	5	08:00:00
2011	2019-05-30 07:50:00-06	2019-05-30 08:41:39-06	bank, paper	2019-05-30 08:41:41.840175-06	0.86083	40	7	\N
2012	2019-05-29 12:00:00-06	2019-05-29 14:00:00-06	Banking	2019-05-30 08:42:29.423445-06	2.00000	40	7	14:00:00
2013	2019-05-28 08:40:00-06	2019-05-28 09:50:00-06	paper work	2019-05-30 08:43:07.796655-06	1.16667	40	7	09:50:00
2014	2019-05-30 08:00:00-06	2019-05-30 13:30:00-06	Sync systems, carrier content fix, folder for print items	2019-05-30 13:33:35.307-06	5.50000	181	5	13:30:00
2015	2019-05-30 13:30:00-06	2019-05-30 14:45:00-06	Search DB for element	2019-05-30 14:53:21.072268-06	1.25000	84	5	14:45:00
2017	2019-05-30 08:05:00-06	2019-05-30 17:00:00-06	Welding fence, mowing lawn, setting up new sander, moldings around air conditioner, cleaning shop, etc.	2019-05-30 16:56:56.502519-06	8.91667	28	11	17:00:00
2016	2019-05-30 14:45:00-06	2019-05-30 15:00:00-06	Housing discussion	2019-06-04 10:30:45.504046-06	0.25000	21	5	15:00:00
1986	2019-05-28 08:15:00-06	2019-05-28 09:00:00-06	Pol date issue	2019-06-04 10:34:27.939973-06	0.75000	81	5	09:00:00
2009	2019-05-30 07:00:00-06	2019-05-30 17:09:35-06	Testing drum sander,installing A/C, installing cabinet.	2019-05-30 17:09:44.464774-06	10.15972	28	3	\N
2808	2019-09-12 14:00:00-06	2019-09-12 15:15:00-06	adding capability	2019-09-12 15:16:08.816308-06	1.25000	8	5	15:15:00
2817	2019-09-16 07:30:00-06	2019-09-16 08:00:00-06	Status	2019-09-16 07:50:59.247067-06	0.50000	21	5	08:00:00
2019	2019-05-30 18:09:23-06	2019-05-30 18:46:01-06	making new admin page link	2019-05-30 18:46:06.117235-06	0.61056	32	10	\N
2020	2019-05-30 18:00:00-06	2019-05-30 20:15:00-06	Carrier Consolidation	2019-05-30 20:20:04.154942-06	2.25000	181	5	20:15:00
2018	2019-05-30 17:30:00-06	2019-05-30 21:00:00-06	Inventory	2019-05-30 21:04:52.602128-06	3.50000	28	8	21:00:00
2022	2019-05-31 09:47:04-06	2019-05-31 11:15:24-06	paper work	2019-05-31 11:15:31.859672-06	1.47222	40	7	\N
2023	2019-05-31 07:20:00-06	2019-05-31 11:55:00-06	Sanding and prepping the wall for primer	2019-05-31 11:55:31.516079-06	4.58333	28	13	11:55:00
2024	2019-05-31 12:36:51-06	2019-05-31 13:18:56-06	permissions	2019-05-31 13:18:58.247227-06	0.70139	32	10	\N
2026	2019-05-31 13:15:00-06	2019-05-31 15:25:00-06	Painting	2019-05-31 15:20:58.778083-06	2.16667	28	13	15:25:00
2027	2019-05-31 08:05:00-06	2019-05-31 15:25:00-06	Sanding and painting	2019-05-31 15:22:04.152069-06	7.33333	28	11	15:25:00
2025	2019-05-31 14:19:02-06	2019-05-31 15:44:34-06	permissions	2019-05-31 15:44:35.446581-06	1.42556	32	10	\N
2021	2019-05-31 07:30:00-06	2019-05-31 17:00:00-06	DB get tuning	2019-05-31 17:00:19.702771-06	9.50000	84	5	17:00:00
2028	2019-05-31 17:21:41-06	2019-05-31 17:58:45-06	permissions	2019-05-31 17:58:47.670934-06	0.61778	32	10	\N
2029	2019-05-31 18:46:50-06	2019-05-31 19:09:19-06	permissions	2019-05-31 19:09:20.173738-06	0.37472	32	10	\N
2030	2019-06-01 13:10:54-06	2019-06-01 13:30:17-06	permissions, found out how to do it	2019-06-01 13:30:21.659857-06	0.32306	32	10	\N
2031	2019-06-01 13:41:22-06	2019-06-01 15:42:20-06	permissions, going to get it working	2019-06-01 15:42:21.189171-06	2.01611	32	10	\N
2032	2019-06-01 15:53:04-06	2019-06-01 17:56:24-06	permissions	2019-06-01 17:56:25.558379-06	2.05556	32	10	\N
2033	2019-06-03 07:30:00-06	2019-06-03 07:45:00-06	Status	2019-06-03 08:38:21.377852-06	0.25000	21	5	07:45:00
2035	2019-06-03 10:45:00-06	2019-06-03 12:00:00-06	Progeny IPT	2019-06-03 12:21:28.869318-06	1.25000	21	5	12:00:00
2037	2019-06-03 13:00:00-06	2019-06-03 15:00:00-06	Cables and monitor and cpu mounts	2019-06-03 15:02:11.095426-06	2.00000	183	5	15:00:00
2039	2019-06-03 07:00:00-06	2019-06-03 12:44:59-06	AC wiring.	2019-06-03 15:15:23.048687-06	5.74972	28	3	\N
2040	2019-06-03 12:45:00-06	2019-06-03 15:15:36-06	Wiring for sacker at Harris.	2019-06-03 15:15:38.72881-06	2.51000	183	3	\N
2041	2019-06-03 15:19:51-06	2019-06-03 17:17:39-06	finishing permissions	2019-06-03 17:17:40.12368-06	1.96333	32	10	\N
2042	2019-06-03 17:45:00-06	2019-06-03 21:00:00-06	Inventory	2019-06-03 20:53:13.078879-06	3.25000	28	8	21:00:00
2043	2019-06-03 18:30:00-06	2019-06-03 21:00:00-06	Carrier Consolidation	2019-06-03 21:08:20.909263-06	2.50000	181	5	21:00:00
2068	2019-06-06 10:00:00-06	2019-06-06 12:30:00-06	Disposition code	2019-06-06 18:21:31.790824-06	2.50000	84	5	12:30:00
2052	2019-06-04 18:13:02-06	2019-06-04 18:18:56-06	project timesheet	2019-06-04 18:18:58.613219-06	0.09833	32	10	\N
2038	2019-06-03 08:30:00-06	2019-06-03 15:07:00-06	Sanding and preping wall for paint, sanding outdoor moldings	2019-06-04 09:48:19.744849-06	6.61667	28	11	15:07:00
2045	2019-06-04 07:40:49-06	2019-06-04 09:30:00-06	payroll files	2019-06-04 09:57:25.404382-06	1.81972	39	7	09:30:00
2047	2019-06-04 09:00:00-06	2019-06-04 10:00:00-06	NUWC IPT	2019-06-04 10:18:50.817586-06	1.00000	21	5	10:00:00
2034	2019-06-03 07:45:00-06	2019-06-03 10:45:00-06	Create single list - confidential/coded	2019-06-04 10:44:36.210306-06	3.00000	84	5	10:45:00
2036	2019-06-03 12:00:00-06	2019-06-03 13:00:00-06	Create full history plot - Capacitance	2019-06-04 10:45:31.646451-06	1.00000	84	5	13:00:00
2044	2019-06-04 08:15:00-06	2019-06-04 09:00:00-06	Create full history plot - Frequency	2019-06-04 10:46:09.270755-06	0.75000	84	5	09:00:00
2048	2019-06-04 10:15:00-06	2019-06-04 11:15:00-06	Database retrieve tuning, nose, and retest information	2019-06-04 10:47:56.371942-06	1.00000	84	5	11:15:00
2049	2019-06-04 11:15:00-06	2019-06-04 12:30:00-06	Create disposition test files	2019-06-04 12:32:18.200111-06	1.25000	84	5	12:30:00
2050	2019-06-04 09:40:00-06	2019-06-04 15:40:00-06	Wall is completely sanded, and ready for primer. I also cleaned the shop.	2019-06-04 15:40:30.921825-06	6.00000	28	11	15:40:00
2051	2019-06-04 15:52:52-06	2019-06-04 18:02:53-06	project timesheet	2019-06-04 18:02:55.480726-06	2.16694	32	10	\N
2053	2019-06-04 21:38:43-06	2019-06-04 23:04:42-06	project timesheet	2019-06-04 23:04:48.027696-06	1.43306	32	10	\N
2046	2019-06-04 07:00:00-06	2019-06-04 15:24:00-06	Building trim around A/C.	2019-06-05 07:20:17.083825-06	8.40000	28	3	\N
2055	2019-06-05 07:30:00-06	2019-06-05 08:00:00-06	Status	2019-06-05 07:55:45.345461-06	0.50000	21	5	08:00:00
2056	2019-06-05 08:00:00-06	2019-06-05 12:30:00-06	Element verification test, Mapping test	2019-06-05 13:23:20.317309-06	4.50000	181	5	12:30:00
2057	2019-06-05 12:30:00-06	2019-06-05 13:30:00-06	High frequency ring meeting	2019-06-05 13:24:04.771412-06	1.00000	21	5	13:30:00
2058	2019-06-05 08:35:00-06	2019-06-05 14:35:00-06	Primed the wall, arduino tutorial, cleaning	2019-06-05 13:25:51.847835-06	6.00000	28	11	14:35:00
2059	2019-06-05 13:30:00-06	2019-06-05 14:45:00-06	Frozen glue test and verification	2019-06-05 14:48:53.961793-06	1.25000	81	5	14:30:00
2054	2019-06-05 07:15:00-06	2019-06-05 15:21:18-06	Sanding cabinets.	2019-06-05 15:21:23.048795-06	8.10500	28	3	\N
2060	2019-06-05 14:58:17-06	2019-06-05 17:15:35-06	figuring out activities box	2019-06-05 17:15:36.399955-06	2.28833	32	10	\N
2061	2019-06-05 20:45:00-06	2019-06-05 21:45:00-06	Disposition code	2019-06-05 21:55:35.40014-06	1.00000	84	5	21:45:00
2069	2019-06-06 12:30:00-06	2019-06-06 14:00:00-06	Planning Meeting	2019-06-06 18:24:14.79763-06	1.50000	184	5	14:00:00
2063	2019-06-06 07:30:00-06	2019-06-06 08:00:00-06	Carrier Consolidation	2019-06-06 08:06:50.001028-06	0.50000	181	5	08:00:00
2064	2019-06-06 08:00:00-06	2019-06-06 09:30:00-06	Disposition code	2019-06-06 10:05:34.773336-06	1.50000	84	5	09:30:00
2065	2019-06-06 09:30:00-06	2019-06-06 10:00:00-06	Duplicate SN meeting	2019-06-06 10:06:08.267321-06	0.50000	80	5	10:00:00
2066	2019-06-06 08:30:00-06	2019-06-06 12:17:00-06	filling north wall, helping with cabinets, etc	2019-06-06 12:17:29.212458-06	3.78333	28	11	12:17:00
2062	2019-06-06 07:05:00-06	2019-06-06 15:07:02-06	working on cabinets.	2019-06-06 15:07:07.555601-06	8.03389	28	3	\N
2067	2019-06-06 14:28:31-06	2019-06-06 17:42:45-06	activities field	2019-06-06 17:42:46.833824-06	3.23722	32	10	\N
2070	2019-06-06 14:00:00-06	2019-06-06 14:30:00-06	Status	2019-06-06 18:24:45.99355-06	0.50000	21	5	14:30:00
2071	2019-06-06 14:30:00-06	2019-06-06 15:00:00-06	ADAS HPT Cal OQE	2019-06-06 18:25:31.313717-06	0.50000	81	5	15:00:00
2072	2019-06-06 15:00:00-06	2019-06-06 16:45:00-06	Carrier Consolidation	2019-06-06 18:26:19.214875-06	1.75000	81	5	16:45:00
2076	2019-06-07 18:01:41-06	2019-06-07 19:27:13-06	part lookup	2019-06-07 19:27:15.093044-06	1.42556	32	10	\N
2074	2019-06-07 09:45:36-06	2019-06-07 10:39:56-06	paper work	2019-06-07 10:40:00.357915-06	0.90556	40	7	\N
2073	2019-06-07 06:58:33-06	2019-06-07 15:05:07-06	Working on cabinets.	2019-06-07 15:05:13.889052-06	8.10944	28	3	\N
2075	2019-06-07 15:30:55-06	2019-06-07 16:36:47-06	activities field	2019-06-07 16:36:48.410531-06	1.09778	32	10	\N
2077	2019-06-08 14:43:59-06	2019-06-08 17:00:53-06	adding a search box	2019-06-08 17:00:54.792018-06	2.28167	32	10	\N
2079	2019-06-10 07:30:00-06	2019-06-10 07:45:00-06	Status	2019-06-10 07:56:57.815169-06	0.25000	21	5	07:45:00
2080	2019-06-10 07:45:00-06	2019-06-10 08:00:00-06	ADAS HPT Cal OQE	2019-06-10 08:02:31.52884-06	0.25000	81	5	08:00:00
2081	2019-06-10 08:00:00-06	2019-06-10 08:45:00-06	BP1081 & BP1086 FRACA comment review	2019-06-10 08:42:03.649013-06	0.75000	185	5	08:15:00
2083	2019-06-10 10:45:00-06	2019-06-10 12:15:00-06	Progeny IPT	2019-06-10 12:06:11.75678-06	1.50000	21	5	12:15:00
2084	2019-06-10 12:15:00-06	2019-06-10 14:15:00-06	Disposition code	2019-06-10 14:45:28.119704-06	2.00000	84	5	14:15:00
2085	2019-06-10 14:15:00-06	2019-06-10 14:45:00-06	PMR slide review	2019-06-10 14:46:27.243641-06	0.50000	185	5	14:45:00
2082	2019-06-10 08:45:00-06	2019-06-10 10:45:00-06	Disposition code	2019-06-14 10:15:21.27681-06	2.00000	187	5	10:45:00
2087	2019-06-10 08:30:00-06	2019-06-10 12:00:00-06	Designing the fire alarm case on fusion 360.	2019-06-10 15:32:14.459522-06	3.50000	167	11	12:00:00
2088	2019-06-10 12:30:00-06	2019-06-10 15:32:00-06	sanding outside moldings, cleaning, mowing lawn, etc.	2019-06-10 15:32:35.497598-06	3.03333	28	11	15:32:00
2086	2019-06-10 14:45:00-06	2019-06-10 16:15:00-06	Capacitance failures retest review	2019-06-10 16:18:20.671244-06	1.50000	81	5	16:15:00
2078	2019-06-10 07:11:53-06	2019-06-10 17:26:02-06	Installing Cabinets	2019-06-10 17:26:04.748742-06	10.23583	28	3	\N
2120	2019-06-13 13:29:36-06	2019-06-13 15:30:04-06	working on location search box	2019-06-13 15:30:05.640034-06	2.00778	32	10	\N
2089	2019-06-10 18:03:31-06	2019-06-10 20:13:02-06	timesheet	2019-06-10 20:13:03.642496-06	2.15861	32	10	\N
2090	2019-06-10 17:30:00-06	2019-06-10 21:00:00-06	Inventory	2019-06-10 20:55:30.840763-06	3.50000	28	8	21:00:00
2092	2019-06-11 07:30:00-06	2019-06-11 07:45:00-06	PMR slide review	2019-06-11 07:47:18.046181-06	0.25000	185	5	07:45:00
2125	2019-06-13 08:15:00-06	2019-06-13 16:15:00-06	Sanding, painting, cleaning, 3d printing, etc.	2019-06-13 16:14:11.739789-06	8.00000	169	11	16:15:00
2093	2019-06-11 07:45:00-06	2019-06-11 10:15:00-06	Capacitance failures retest review & meeting	2019-06-11 10:19:04.559593-06	2.50000	81	5	10:15:00
2094	2019-06-11 10:15:00-06	2019-06-11 13:00:00-06	Disposition code	2019-06-11 13:12:22.013013-06	2.75000	84	5	13:00:00
2096	2019-06-11 08:30:00-06	2019-06-11 15:30:00-06	Preparing moldings for primer tomorrow, designing and printing fire alarm case.	2019-06-11 13:49:46.353437-06	7.00000	28	11	15:30:00
2099	2019-06-11 09:05:00-06	2019-06-11 15:11:00-06	sanding board above door, and using a heat gun to strip pain	2019-06-11 15:12:29.575567-06	6.10000	28	13	15:11:00
2098	2019-06-11 15:00:00-06	2019-06-11 16:15:00-06	BP1081 Fault Tree review meeting	2019-06-11 16:14:11.408118-06	1.25000	185	5	16:15:00
2097	2019-06-11 14:58:08-06	2019-06-11 16:25:49-06	working on engimusing search box	2019-06-11 16:25:51.272209-06	1.46139	32	10	\N
2100	2019-06-11 14:56:44-06	2019-06-11 17:00:00-06	banking, paper, paint stuff	2019-06-11 20:57:25.835004-06	2.05444	40	7	17:00:00
2101	2019-06-12 07:30:00-06	2019-06-12 07:45:00-06	Status	2019-06-12 07:45:37.119959-06	0.25000	21	5	07:45:00
2115	2019-06-13 06:59:10-06	2019-06-13 17:07:52-06	Painting the out side walls.	2019-06-13 17:08:00.800148-06	10.14500	28	3	\N
2103	2019-06-12 07:45:00-06	2019-06-12 08:00:00-06	TD coding issue	2019-06-12 08:38:47.040875-06	0.25000	80	5	07:59:59
2102	2019-06-12 08:00:00-06	2019-06-12 08:30:00-06	Sprint 1 plan	2019-06-12 08:39:07.023107-06	0.50000	184	5	08:30:00
2091	2019-06-11 07:20:00-06	2019-06-11 16:00:00-06	Installing casters on cabinets.	2019-06-12 09:16:32.564665-06	8.66667	28	3	\N
2104	2019-06-12 08:30:00-06	2019-06-12 10:15:00-06	Fault tree comment updates	2019-06-12 10:11:35.651427-06	1.75000	185	5	10:15:00
2107	2019-06-12 10:15:00-06	2019-06-12 12:30:00-06	PCB design	2019-06-12 13:28:09.509887-06	2.25000	186	5	12:30:00
2108	2019-06-12 12:30:00-06	2019-06-12 13:30:00-06	High frequency ring meeting	2019-06-12 13:28:52.485917-06	1.00000	185	5	13:30:00
2109	2019-06-12 13:30:00-06	2019-06-12 14:30:00-06	PCB design	2019-06-12 14:36:18.251983-06	1.00000	186	5	14:30:00
2110	2019-06-12 14:30:00-06	2019-06-12 15:00:00-06	Fault tree comment updates	2019-06-12 14:55:18.253816-06	0.50000	185	5	15:00:00
2111	2019-06-12 11:45:00-06	2019-06-12 15:50:00-06	Sanding and taping	2019-06-12 15:48:27.683694-06	4.08333	28	13	15:50:00
2112	2019-06-12 11:30:00-06	2019-06-12 16:00:00-06	Sanding and taping	2019-06-12 15:50:05.592421-06	4.50000	28	11	16:00:00
2105	2019-06-12 07:00:00-06	2019-06-12 17:13:23-06	Getting outside of shop ready to paint.	2019-06-12 17:13:34.08593-06	10.22306	28	3	\N
2113	2019-06-12 17:42:27-06	2019-06-12 19:15:49-06	activities	2019-06-12 19:15:50.923721-06	1.55611	32	10	\N
2114	2019-06-12 19:00:00-06	2019-06-12 20:30:00-06	Disposition code	2019-06-12 20:27:47.672201-06	1.50000	84	5	20:30:00
2137	2019-06-14 09:30:00-06	2019-06-14 13:08:00-06	painting the wall and clean up	2019-06-14 13:05:26.56774-06	3.63333	28	11	13:08:00
2116	2019-06-13 07:30:00-06	2019-06-13 07:45:00-06	Status	2019-06-13 07:48:46.625636-06	0.25000	21	5	07:45:00
2117	2019-06-13 07:45:00-06	2019-06-13 08:45:00-06	Disposition code	2019-06-13 08:49:02.693419-06	1.00000	84	5	08:45:00
2106	2019-06-12 09:30:00-06	2019-06-12 11:55:18-06	payroll reports	2019-06-13 11:55:36.814683-06	2.42167	39	7	\N
2118	2019-06-13 08:45:00-06	2019-06-13 13:30:00-06	Verification debug	2019-06-13 13:30:09.705663-06	4.75000	181	5	13:30:00
2122	2019-06-13 14:15:00-06	2019-06-13 14:45:00-06	Shaker cable	2019-06-13 15:08:13.889161-06	0.50000	15	5	14:45:00
2123	2019-06-13 14:45:00-06	2019-06-13 15:15:00-06	BP1081 FACAR review	2019-06-13 15:09:08.957268-06	0.50000	185	5	15:15:00
2124	2019-06-13 08:10:00-06	2019-06-13 15:15:00-06	Assembly of paint gun, Painting	2019-06-13 15:16:51.883521-06	7.08333	28	13	15:15:00
2119	2019-06-13 09:55:46-06	2019-06-13 15:00:04-06	shop painting etc	2019-06-13 18:43:22.604915-06	5.07167	39	7	\N
2126	2019-06-13 17:45:00-06	2019-06-13 21:00:00-06	Inventory	2019-06-13 20:49:56.995811-06	3.25000	28	8	21:00:00
2127	2019-06-13 18:45:06-06	2019-06-13 21:37:06-06	working on location search box	2019-06-13 21:37:00.384662-06	2.86667	32	10	\N
2128	2019-06-14 07:45:00-06	2019-06-14 08:00:00-06	Capacitance failures retest review	2019-06-14 07:56:27.682371-06	0.25000	185	5	08:00:00
2129	2019-06-14 08:00:00-06	2019-06-14 09:30:00-06	Disposition code	2019-06-14 09:26:32.950453-06	1.50000	84	5	09:30:00
2130	2019-06-14 09:30:00-06	2019-06-14 10:15:00-06	Contract mod meeting	2019-06-14 10:13:56.485236-06	0.75000	187	5	10:15:00
2121	2019-06-13 13:30:00-06	2019-06-13 14:15:00-06	Disposition code	2019-06-14 10:14:21.878608-06	0.75000	187	5	14:15:00
2095	2019-06-11 13:15:00-06	2019-06-11 15:00:00-06	Disposition code	2019-06-14 10:15:05.606434-06	1.75000	187	5	15:00:00
2132	2019-06-14 10:15:00-06	2019-06-14 11:00:00-06	Disposition code	2019-06-14 11:37:25.806345-06	0.75000	84	5	10:45:00
2133	2019-06-14 11:00:00-06	2019-06-14 11:45:00-06	Capacitance failures MRB	2019-06-14 11:38:08.268358-06	0.75000	185	5	11:45:00
2134	2019-06-14 11:45:00-06	2019-06-14 12:15:00-06	Carrier Consolidation	2019-06-14 12:12:47.488974-06	0.50000	80	5	12:15:00
2135	2019-06-14 12:15:00-06	2019-06-14 12:30:00-06	Disposition code	2019-06-14 12:26:40.041436-06	0.25000	84	5	12:30:00
2136	2019-06-14 09:45:00-06	2019-06-14 12:40:00-06	Painting	2019-06-14 12:36:45.147557-06	2.91667	28	13	12:40:00
2131	2019-06-14 09:15:00-06	2019-06-14 13:10:31-06	Painting outside.	2019-06-14 13:10:35.448166-06	3.92528	28	3	\N
2138	2019-06-14 12:30:00-06	2019-06-14 13:15:00-06	Update tuning check element	2019-06-14 13:18:06.099557-06	0.75000	187	5	13:15:00
2140	2019-06-14 13:15:00-06	2019-06-14 13:45:00-06	Update tuning generate milling data	2019-06-14 13:48:27.665304-06	0.50000	187	5	13:45:00
2139	2019-06-14 13:47:54-06	2019-06-14 13:56:12-06	working on location search box	2019-06-14 13:56:13.890965-06	0.13833	32	10	\N
2141	2019-06-15 11:41:23-06	2019-06-15 13:48:21-06	working on location search box	2019-06-15 13:48:22.190782-06	2.11611	32	10	\N
2142	2019-06-17 07:30:00-06	2019-06-17 08:15:00-06	Status	2019-06-17 08:11:42.732396-06	0.75000	21	5	08:15:00
2143	2019-06-17 08:15:00-06	2019-06-17 10:30:00-06	Tuning info to data base	2019-06-17 10:34:32.190068-06	2.25000	187	5	10:30:00
2144	2019-06-17 10:30:00-06	2019-06-17 12:00:00-06	plot tunables on 10Hz band plot	2019-06-17 11:55:38.01774-06	1.50000	187	5	12:00:00
2145	2019-06-17 07:36:54-06	2019-06-17 12:00:00-06	moving desk, organization	2019-06-17 13:37:51.165774-06	4.38500	39	7	\N
2146	2019-06-17 12:00:00-06	2019-06-17 14:30:00-06	creating tuning dictionary	2019-06-17 14:28:29.726023-06	2.50000	187	5	14:30:00
2147	2019-06-17 07:10:00-06	2019-06-17 08:29:59-06	Working on trim around A/C in North shop.	2019-06-17 14:37:15.258111-06	1.33306	28	3	\N
2148	2019-06-17 08:30:00-06	2019-06-17 09:29:59-06	Replacing U21 on transmit controller.	2019-06-17 14:38:11.20244-06	0.99972	125	3	\N
2149	2019-06-17 09:30:00-06	2019-06-17 15:43:39-06	moving desk from house to shop.	2019-06-17 15:43:41.645518-06	6.22750	28	3	\N
2150	2019-06-17 10:00:00-06	2019-06-17 16:00:00-06	Cleaning and preparing outside for the paint booth and the primary activity	2019-06-17 15:53:56.001836-06	6.00000	28	11	16:00:00
2151	2019-06-17 09:30:00-06	2019-06-17 16:00:00-06	Preparing backyard for the primary activity, and paint booth	2019-06-17 15:55:16.598303-06	6.50000	28	13	16:00:00
2152	2019-06-17 16:15:28-06	2019-06-17 18:08:13-06	working on location search box	2019-06-17 18:08:15.045507-06	1.87917	32	10	\N
2809	2019-09-12 15:15:00-06	2019-09-12 15:30:00-06	Modify software to test young elements	2019-09-12 15:20:20.262787-06	0.25000	80	5	15:30:00
2153	2019-06-17 18:40:12-06	2019-06-17 18:49:11-06	finishing location search box	2019-06-17 18:49:12.963436-06	0.14972	32	10	\N
2155	2019-06-17 20:39:51-06	2019-06-17 21:23:03-06	working on location search box	2019-06-17 21:23:04.387175-06	0.72000	32	10	\N
2154	2019-06-17 20:30:00-06	2019-06-17 21:30:00-06	Carrier Consolidation	2019-06-17 21:43:06.602736-06	1.00000	181	5	21:30:00
2156	2019-06-17 14:00:00-06	2019-06-17 15:00:00-06	getting paint	2019-06-18 07:25:40.813981-06	1.00000	39	7	15:00:00
2158	2019-06-18 07:45:00-06	2019-06-18 08:30:00-06	Cap binner issue	2019-06-18 08:53:49.921943-06	0.75000	81	5	08:30:00
2159	2019-06-18 08:30:00-06	2019-06-18 08:45:00-06	Failure review	2019-06-18 08:55:33.346674-06	0.25000	84	5	08:45:00
2160	2019-06-18 08:45:00-06	2019-06-18 09:00:00-06	PMR slide review	2019-06-18 09:03:34.148509-06	0.25000	21	5	09:00:00
2161	2019-06-18 09:00:00-06	2019-06-18 10:00:00-06	Automatic Tuning	2019-06-18 11:37:36.346248-06	1.00000	84	5	10:00:00
2162	2019-06-18 10:00:00-06	2019-06-18 11:00:00-06	Cap binner issue	2019-06-18 11:38:16.992469-06	1.00000	81	5	11:00:00
2163	2019-06-18 11:00:00-06	2019-06-18 13:45:00-06	PMR	2019-06-18 13:43:45.401327-06	2.75000	21	5	13:45:00
2164	2019-06-18 13:45:00-06	2019-06-18 14:00:00-06	Cap binner issue	2019-06-18 14:16:51.093416-06	0.25000	81	5	14:00:00
2166	2019-06-18 08:25:00-06	2019-06-18 15:00:00-06	Prepping area to paint cabinets, then painting them.	2019-06-18 14:54:25.581532-06	6.58333	28	11	15:00:00
2167	2019-06-18 08:25:00-06	2019-06-18 15:00:00-06	Preparing are to paint, then painitng cabinets	2019-06-18 14:55:52.308571-06	6.58333	28	13	15:00:00
2157	2019-06-18 07:10:00-06	2019-06-18 15:22:05-06	setting up paint tent and get started to primer cabinets.	2019-06-18 15:22:10.296999-06	8.20139	28	3	\N
2168	2019-06-18 15:41:43-06	2019-06-18 16:19:02-06	looking for ways to improve functionality, studying python	2019-06-18 16:19:03.043177-06	0.62194	32	10	\N
2165	2019-06-18 14:00:00-06	2019-06-18 16:45:00-06	PMR	2019-06-18 16:50:02.838756-06	2.75000	21	5	16:45:00
2190	2019-06-20 11:00:00-06	2019-06-20 12:34:59-06	Replacing thermocouple on connectors.	2019-06-20 13:50:46.411119-06	1.58306	174	3	\N
2169	2019-06-18 19:00:00-06	2019-06-18 21:00:00-06	Carrier Consolidation	2019-06-18 21:01:26.857053-06	2.00000	3	5	21:00:00
2170	2019-06-18 20:57:59-06	2019-06-18 21:58:24-06	working on timesheet	2019-06-18 21:58:25.811357-06	1.00694	31	10	\N
2172	2019-06-18 07:25:40-06	2019-06-18 09:30:00-06	banking, cleaning, set up	2019-06-19 07:32:49.930643-06	2.07222	39	7	09:30:00
2174	2019-06-19 07:30:00-06	2019-06-19 07:45:00-06	Status	2019-06-19 08:16:19.340706-06	0.25000	21	5	07:45:00
2175	2019-06-19 07:45:00-06	2019-06-19 08:15:00-06	Cap binner issue	2019-06-19 08:16:57.128847-06	0.50000	81	5	08:15:00
2176	2019-06-19 08:15:00-06	2019-06-19 11:45:00-06	Tuning element selection	2019-06-19 11:43:31.742304-06	3.50000	80	5	11:45:00
2178	2019-06-19 07:30:00-06	2019-06-19 14:50:00-06	Preparing are to paint, then painitng cabinets, dissasembly of pop up tent	2019-06-19 14:48:14.843338-06	7.33333	28	13	14:50:00
2179	2019-06-19 07:40:00-06	2019-06-19 15:08:00-06	Painting cabinets, began sanding on shop wall, router table top, dismantle of pop tent	2019-06-19 15:07:07.623993-06	7.46667	28	11	15:08:00
2171	2019-06-19 07:05:00-06	2019-06-19 15:40:10-06	Painting cabinets.	2019-06-19 15:40:20.210269-06	8.58611	28	3	\N
2180	2019-06-19 15:40:36-06	2019-06-19 18:08:43-06	activities field	2019-06-19 18:08:48.926136-06	2.46861	31	10	\N
2177	2019-06-19 11:45:00-06	2019-06-19 12:45:00-06	BP1081 monitor software	2019-06-19 18:34:32.15114-06	1.00000	81	5	12:45:00
2182	2019-06-19 12:45:00-06	2019-06-19 16:15:00-06	Data Base population debug	2019-06-19 18:36:17.183791-06	3.50000	84	5	16:15:00
2181	2019-06-19 18:33:19-06	2019-06-19 18:40:55-06	timesheet activities	2019-06-19 18:40:56.603391-06	0.12667	31	10	\N
2183	2019-06-19 20:25:00-06	2019-06-19 21:40:00-06	Carrier Consolidation	2019-06-19 21:48:18.852366-06	1.25000	3	5	21:45:00
2173	2019-06-19 07:32:55-06	2019-06-19 10:52:48-06	banking, paint	2019-06-20 07:53:26.535154-06	3.33139	40	7	\N
2184	2019-06-20 07:30:00-06	2019-06-20 08:30:00-06	Relay 5 issue & BP1092 open issue	2019-06-20 08:35:01.982726-06	1.00000	81	5	08:30:00
2185	2019-06-20 08:30:00-06	2019-06-20 08:45:00-06	Element verification test	2019-06-20 08:46:36.759607-06	0.25000	81	5	08:45:00
2186	2019-06-20 08:45:00-06	2019-06-20 09:15:00-06	BP1081 monitor software	2019-06-20 09:08:42.841661-06	0.50000	81	5	09:15:00
2188	2019-06-20 07:10:00-06	2019-06-20 07:54:59-06	Replacing thermocouple on connectors.	2019-06-20 13:46:01.990493-06	0.74972	174	3	\N
2189	2019-06-20 07:55:00-06	2019-06-20 10:59:59-06	Replacing relay.	2019-06-20 13:49:03.269766-06	3.08306	173	3	\N
2187	2019-06-20 09:15:00-06	2019-06-20 11:30:00-06	Tunable inventory database create	2019-06-20 14:02:05.169764-06	2.25000	187	5	12:00:00
2192	2019-06-20 11:30:00-06	2019-06-20 14:00:00-06	Relay 5 issue & BP1092 open issue	2019-06-20 14:03:26.406431-06	2.50000	81	5	14:00:00
2193	2019-06-20 08:30:00-06	2019-06-20 12:30:00-06	Application of filler to shop wall, cleaning in shop	2019-06-20 14:13:45.024497-06	4.00000	28	13	12:30:00
2194	2019-06-20 13:00:00-06	2019-06-20 14:15:00-06	Sanding back wall	2019-06-20 14:14:31.47738-06	1.25000	28	13	14:15:00
2195	2019-06-20 14:00:00-06	2019-06-20 14:15:00-06	Element verification test	2019-06-20 14:15:30.717346-06	0.25000	81	5	14:15:00
2197	2019-06-20 08:30:00-06	2019-06-20 14:38:00-06	Cleaning shop, sanding, moldings outside, north west window	2019-06-20 15:05:51.800811-06	6.13333	28	11	14:38:00
2191	2019-06-20 12:35:00-06	2019-06-20 15:30:50-06	Outside trim on A/C .	2019-06-20 15:30:53.390954-06	2.93056	28	3	\N
2196	2019-06-20 14:15:00-06	2019-06-20 17:15:00-06	BP1092 Fault Tree Analysis	2019-06-20 17:18:22.923254-06	3.00000	185	5	17:15:00
2198	2019-06-20 16:09:01-06	2019-06-20 18:17:08-06	activities field	2019-06-20 18:17:10.131641-06	2.13528	31	10	\N
2200	2019-06-20 08:31:00-06	2019-06-20 09:30:00-06	paper	2019-06-20 18:31:28.154068-06	0.98333	40	7	09:30:00
2199	2019-06-20 17:45:00-06	2019-06-20 21:00:00-06	Inventory	2019-06-20 20:58:13.78235-06	3.25000	28	8	21:00:00
2202	2019-06-21 09:25:33-06	2019-06-21 11:26:04-06	shopping	2019-06-21 11:26:06.945007-06	2.00861	28	7	\N
2203	2019-06-21 08:25:00-06	2019-06-21 15:06:00-06	Organizing desks, cleaning shop, sanding walls, filling walls	2019-06-21 15:06:59.107299-06	6.68333	28	11	15:06:00
2204	2019-06-21 07:05:00-06	2019-06-21 12:05:00-06	Working on table saw & cabinets.	2019-06-21 15:12:00.333954-06	5.00000	28	3	\N
2209	2019-06-22 16:29:16-06	2019-06-22 18:12:25-06	activities field	2019-06-22 18:12:27.345998-06	1.71917	32	10	\N
2205	2019-06-21 13:00:00-06	2019-06-21 15:32:13-06	Working on cabinets & Leveling floor.	2019-06-21 15:32:16.285927-06	2.53694	28	3	\N
2206	2019-06-21 17:08:54-06	2019-06-21 18:00:05-06	activities field	2019-06-21 18:00:07.124749-06	0.85306	31	10	\N
2207	2019-06-21 14:00:00-06	2019-06-21 18:00:00-06	Generate Inventory Database	2019-06-22 11:37:34.496349-06	4.00000	187	5	18:00:00
2208	2019-06-22 11:30:00-06	2019-06-22 17:30:00-06	Disposition debug	2019-06-22 19:36:48.667658-06	6.00000	84	5	17:30:00
2210	2019-06-22 17:30:00-06	2019-06-22 18:30:00-06	Nose data to database debug	2019-06-22 19:37:53.383995-06	1.00000	84	5	18:30:00
2211	2019-06-22 18:30:00-06	2019-06-22 19:45:00-06	Duplicate SN files, Mixed up SN research	2019-06-22 19:38:48.646158-06	1.25000	84	5	19:45:00
2212	2019-06-24 07:30:00-06	2019-06-24 08:30:00-06	Status	2019-06-24 08:29:58.001601-06	1.00000	21	5	08:30:00
2213	2019-06-24 08:30:00-06	2019-06-24 09:30:00-06	Initial edits	2019-06-24 09:25:39.040679-06	1.00000	189	5	09:30:00
2215	2019-06-24 09:30:00-06	2019-06-24 09:45:00-06	BP1081 MRR update	2019-06-24 09:44:25.297226-06	0.25000	185	5	09:45:00
2214	2019-06-24 08:37:11-06	2019-06-24 10:02:20-06	paper work	2019-06-24 10:02:22.478882-06	1.41917	40	7	\N
2216	2019-06-24 09:45:00-06	2019-06-24 10:45:00-06	Carrier Consolidation	2019-06-24 10:39:18.53614-06	1.00000	3	5	10:45:00
2217	2019-06-24 10:45:00-06	2019-06-24 12:00:00-06	Progeny IPT	2019-06-24 10:39:41.376745-06	1.25000	21	5	12:00:00
2251	2019-06-24 09:40:00-06	2019-06-24 15:15:00-06	Moving cabinents and other tools to basement, sanding wall	2019-06-24 15:12:50.013217-06	5.58333	28	13	15:15:00
2252	2019-06-24 08:40:00-06	2019-06-24 15:05:00-06	Moving the cabinets and tools to the basement, final sanding/prep on walls for paint tomorrow.	2019-06-24 15:14:42.979533-06	6.41667	28	11	15:05:00
2250	2019-06-24 14:53:05-06	2019-06-24 17:53:41-06	finishing activities search box	2019-06-24 17:53:45.29461-06	3.01000	31	10	\N
2253	2019-06-24 17:30:00-06	2019-06-24 21:00:00-06	Inventory	2019-06-24 20:57:44.021853-06	3.50000	28	8	21:00:00
2810	2019-09-12 18:00:00-06	2019-09-12 21:00:00-06	Website	2019-09-12 20:58:45.770303-06	3.00000	230	8	21:00:00
2255	2019-06-25 08:40:00-06	2019-06-25 12:30:00-06	Painting wall and dissasembly of cabinent	2019-06-25 12:26:42.101514-06	3.83333	28	13	12:30:00
2821	2019-09-16 10:45:00-06	2019-09-16 11:45:00-06	Progeny IPT	2019-09-16 12:05:03.168879-06	1.00000	21	5	11:45:00
2256	2019-06-25 21:00:22-06	2019-06-25 21:49:38-06	invoice report	2019-06-25 21:49:39.94576-06	0.82111	31	10	\N
2257	2019-06-26 07:30:00-06	2019-06-26 08:00:00-06	Status	2019-06-26 08:41:36.599647-06	0.50000	21	5	08:00:00
2258	2019-06-26 08:00:00-06	2019-06-26 08:45:00-06	HA0493 file corruption	2019-06-26 08:42:57.273499-06	0.75000	80	5	08:45:00
2259	2019-06-26 08:45:00-06	2019-06-26 09:45:00-06	File check and DVD creation	2019-06-26 10:06:05.940508-06	1.00000	41	5	09:45:00
2260	2019-06-26 09:45:00-06	2019-06-26 10:00:00-06	HA0493 remap	2019-06-26 11:11:56.637163-06	0.25000	80	5	10:00:00
2261	2019-06-26 10:00:00-06	2019-06-26 11:15:00-06	File check and DVD creation	2019-06-26 11:21:59.459666-06	1.25000	41	5	11:15:00
2262	2019-06-26 11:15:00-06	2019-06-26 11:45:00-06	BP1086, BP1087, BP1088, BP1090, BP1091	2019-06-26 11:50:15.639033-06	0.50000	42	5	11:45:00
2263	2019-06-26 11:45:00-06	2019-06-26 12:00:00-06	Training	2019-06-26 12:22:36.336504-06	0.25000	15	5	12:00:00
2265	2019-06-26 08:00:00-06	2019-06-26 10:00:00-06	shop org	2019-06-26 13:05:18.196641-06	2.00000	28	7	10:00:00
2266	2019-06-26 09:40:00-06	2019-06-26 14:50:00-06	Filling holes in wall, moving in supplies, wraping pick n place machine	2019-06-26 14:45:38.891251-06	5.16667	28	13	14:50:00
2267	2019-06-26 13:05:18-06	2019-06-26 14:00:00-06	bankstatement	2019-06-26 15:43:55.070625-06	0.91167	40	7	14:00:00
2264	2019-06-26 12:00:00-06	2019-06-26 14:00:00-06	BP1086, BP1087, BP1088, BP1090, BP1091	2019-06-26 15:53:13.015347-06	2.00000	41	5	14:00:00
2268	2019-06-26 14:00:00-06	2019-06-26 14:30:00-06	BP1081 resolution	2019-06-26 15:53:37.334963-06	0.50000	185	5	14:30:00
2269	2019-06-26 14:30:00-06	2019-06-26 15:30:00-06	FAP meeting for housings	2019-06-26 15:54:24.847994-06	1.00000	185	5	15:30:00
2270	2019-06-26 15:30:00-06	2019-06-26 16:15:00-06	DVDs for shipment	2019-06-26 16:13:30.131306-06	0.75000	41	5	16:15:00
2271	2019-06-26 14:43:55-06	2019-06-26 15:45:00-06	pricing	2019-06-26 16:43:53.206075-06	1.01806	28	7	15:45:00
2272	2019-06-26 07:00:00-06	2019-06-26 17:02:12-06	Working on floor.	2019-06-26 17:05:10.969369-06	10.03667	28	3	\N
2273	2019-06-26 17:49:00-06	2019-06-26 18:58:39-06	invoice report	2019-06-26 18:58:40.635217-06	1.16083	32	10	\N
2274	2019-06-27 07:30:00-06	2019-06-27 08:30:00-06	HPT help	2019-06-27 08:30:41.682333-06	1.00000	80	5	08:30:00
2275	2019-06-27 08:30:00-06	2019-06-27 09:00:00-06	Train Rick on tuning	2019-06-27 09:02:50.274666-06	0.50000	80	5	09:00:00
2276	2019-06-27 09:00:00-06	2019-06-27 09:30:00-06	FACAR updates	2019-06-27 09:34:13.082221-06	0.50000	185	5	09:30:00
2278	2019-06-27 14:17:34-06	2019-06-27 16:18:16-06	invoice report	2019-06-27 16:18:18.160753-06	2.01167	31	10	\N
2277	2019-06-27 09:30:00-06	2019-06-27 15:30:00-06	Mapping test runs	2019-06-27 16:41:55.296329-06	6.00000	84	5	15:30:00
2280	2019-06-27 15:30:00-06	2019-06-27 16:45:00-06	FACAR updates	2019-06-27 16:42:40.607067-06	1.25000	185	5	16:45:00
2279	2019-06-27 07:00:00-06	2019-06-27 17:19:24-06	Moving equipment out of north shop .	2019-06-27 17:19:27.231963-06	10.32333	28	3	\N
2254	2019-06-25 07:00:00-06	2019-06-25 17:30:00-06	Working on floor.	2019-06-27 17:20:03.248865-06	10.50000	28	3	\N
2281	2019-06-27 19:28:51-06	2019-06-27 19:45:06-06	invoice report	2019-06-27 19:45:09.574254-06	0.27083	31	10	\N
2282	2019-06-27 18:00:00-06	2019-06-27 20:30:00-06	Organization/Inventory	2019-06-27 20:26:44.262381-06	2.50000	28	8	20:30:00
2283	2019-06-28 07:00:00-06	2019-06-28 08:30:00-06	FACAR updates	2019-06-28 08:38:06.22119-06	1.50000	185	5	08:30:00
2284	2019-06-28 08:30:00-06	2019-06-28 09:15:00-06	BP1089	2019-06-28 09:12:51.574387-06	0.75000	41	5	09:00:00
2285	2019-06-28 09:15:00-06	2019-06-28 11:15:00-06	Automatic Tuning	2019-06-28 12:52:17.857916-06	2.00000	84	5	11:15:00
2288	2019-06-28 13:00:00-06	2019-06-28 14:30:00-06	Automatic Tuning	2019-06-28 14:36:20.505957-06	1.50000	84	5	14:30:00
2287	2019-06-28 11:15:00-06	2019-06-28 13:00:00-06	FACAR updates	2019-06-28 14:41:26.488732-06	1.75000	185	5	13:00:00
2289	2019-06-28 14:30:00-06	2019-06-28 14:45:00-06	FACAR updates	2019-06-28 14:42:11.46301-06	0.25000	185	5	14:45:00
2291	2019-06-27 20:00:00-06	2019-06-27 22:13:00-06	invoice report	2019-06-28 15:38:12.450696-06	2.21667	31	10	\N
2292	2019-06-28 08:45:00-06	2019-06-28 11:00:00-06	shop org, banking	2019-06-28 16:45:02.836801-06	2.25000	28	7	11:00:00
2293	2019-06-27 13:00:00-06	2019-06-27 15:00:00-06	shop org	2019-06-28 16:46:18.340843-06	2.00000	28	7	15:00:00
2290	2019-06-28 15:33:55-06	2019-06-28 17:07:56-06	invoice report	2019-06-28 17:07:58.221884-06	1.56694	31	10	\N
2294	2019-06-28 17:41:58-06	2019-06-28 19:24:00-06	invoice report	2019-06-28 19:24:01.812893-06	1.70056	31	10	\N
2286	2019-06-28 08:15:00-06	2019-06-28 18:30:00-06	Setting up plastic room.	2019-06-29 13:36:04.347748-06	10.25000	28	3	\N
2295	2019-06-29 09:00:00-06	2019-06-29 13:41:01-06	Working on floor in shop.	2019-06-29 13:41:04.927898-06	4.68361	28	3	\N
2296	2019-06-29 16:22:35-06	2019-06-29 20:04:27-06	studying python	2019-06-29 20:04:28.834994-06	3.69778	31	10	\N
2298	2019-07-01 07:30:00-06	2019-07-01 07:45:00-06	Status	2019-07-01 07:43:40.171133-06	0.25000	21	5	07:45:00
2299	2019-07-01 07:45:00-06	2019-07-01 08:45:00-06	Quarterly set up	2019-07-01 08:58:29.6109-06	1.00000	15	5	08:30:00
2300	2019-07-01 09:00:00-06	2019-07-01 10:45:00-06	Automatic Tuning	2019-07-01 12:21:37.611135-06	1.75000	84	5	10:45:00
2301	2019-07-01 10:45:00-06	2019-07-01 12:30:00-06	Progeny IPT	2019-07-01 12:27:54.280422-06	1.75000	21	5	12:30:00
2303	2019-07-01 08:10:00-06	2019-07-01 12:00:00-06	bids, banking	2019-07-01 13:14:35.57253-06	3.83333	28	7	12:00:00
2302	2019-07-01 12:45:00-06	2019-07-01 15:30:00-06	Automatic Tuning	2019-07-01 15:59:37.339286-06	2.75000	84	5	15:30:00
2305	2019-07-01 15:30:00-06	2019-07-01 16:00:00-06	BP1104 mismarked element	2019-07-01 16:00:20.087653-06	0.50000	81	5	16:00:00
2306	2019-07-01 15:10:22-06	2019-07-01 15:10:50-06	test	2019-07-01 16:27:43.423571-06	0.00778	222	10	\N
2297	2019-07-01 07:00:00-06	2019-07-01 07:59:59-06	Working on floor measurements.	2019-07-01 17:38:16.378654-06	0.99972	28	3	\N
2307	2019-07-01 08:00:00-06	2019-07-01 12:59:59-06	Inspecting equiptment.	2019-07-01 17:39:25.65029-06	4.99972	15	3	\N
2308	2019-07-01 13:00:00-06	2019-07-01 17:39:38-06	Working on floor.	2019-07-01 17:39:43.391909-06	4.66056	28	3	\N
2304	2019-07-01 15:14:10-06	2019-07-01 17:44:28-06	studying python	2019-07-01 17:44:30.429073-06	2.50500	31	10	\N
2309	2019-07-01 17:45:00-06	2019-07-01 21:00:00-06	Inventory	2019-07-01 20:56:09.212675-06	3.25000	28	8	21:00:00
2311	2019-07-02 07:30:00-06	2019-07-02 08:45:00-06	BP1104 mismarked element	2019-07-02 08:41:56.458004-06	1.25000	81	5	08:45:00
2312	2019-07-02 08:45:00-06	2019-07-02 10:15:00-06	NUWC IPT	2019-07-02 10:09:53.364202-06	1.50000	21	5	10:15:00
2313	2019-07-02 10:15:00-06	2019-07-02 13:00:00-06	Automatic Tuning	2019-07-02 12:56:48.969571-06	2.75000	84	5	13:00:00
2314	2019-07-02 13:00:00-06	2019-07-02 13:15:00-06	Array order meeting	2019-07-02 13:12:33.697352-06	0.25000	21	5	13:15:00
2315	2019-07-02 13:15:00-06	2019-07-02 14:00:00-06	Automatic Tuning	2019-07-02 13:56:31.948248-06	0.75000	84	5	14:00:00
2316	2019-07-02 14:00:00-06	2019-07-02 15:00:00-06	Sync systems	2019-07-02 14:58:22.038682-06	1.00000	84	5	15:00:00
2318	2019-07-02 15:00:00-06	2019-07-02 15:45:00-06	All hands	2019-07-02 15:39:00.987735-06	0.75000	21	5	15:45:00
2317	2019-07-02 14:32:11-06	2019-07-02 16:34:50-06	studying python	2019-07-02 16:34:52.452084-06	2.04417	31	10	\N
2310	2019-07-02 06:51:54-06	2019-07-02 17:00:03-06	Working on floor.	2019-07-02 17:00:07.937594-06	10.13583	28	3	\N
2319	2019-07-02 17:15:09-06	2019-07-02 18:41:04-06	part lookup reform	2019-07-02 18:41:05.988045-06	1.43194	32	10	\N
2320	2019-07-03 07:30:00-06	2019-07-03 07:45:00-06	Status	2019-07-03 08:23:14.528534-06	0.25000	21	5	07:45:00
2321	2019-07-03 07:45:00-06	2019-07-03 08:15:00-06	Quarterly review	2019-07-03 08:24:01.353651-06	0.50000	15	5	08:15:00
2323	2019-07-03 07:00:00-06	2019-07-03 09:29:59-06	Inspecting equipment.	2019-07-03 11:14:20.788198-06	2.49972	15	3	\N
2322	2019-07-03 08:15:00-06	2019-07-03 16:00:00-06	Sync systems/code review	2019-07-03 15:57:53.862462-06	7.75000	84	5	16:00:00
2324	2019-07-03 09:30:00-06	2019-07-03 17:00:10-06	Working on floor.	2019-07-03 17:00:15.112895-06	7.50278	28	3	\N
2325	2019-07-03 17:25:30-06	2019-07-03 18:56:24-06	part lookup reform	2019-07-03 18:56:27.706147-06	1.51500	32	10	\N
2326	2019-07-05 15:40:24-06	2019-07-05 17:11:29-06	part lookup reform	2019-07-05 17:11:30.990064-06	1.51806	31	10	\N
2327	2019-07-05 19:24:37-06	2019-07-05 21:25:05-06	part lookup reform	2019-07-05 21:25:06.201932-06	2.00778	31	10	\N
2328	2019-07-06 13:00:35-06	2019-07-06 15:49:40-06	part lookup reform	2019-07-06 15:49:41.972711-06	2.81806	32	10	\N
2330	2019-07-08 07:30:00-06	2019-07-08 07:45:00-06	Status	2019-07-08 07:47:48.998636-06	0.25000	21	5	07:45:00
2331	2019-07-08 07:45:00-06	2019-07-08 09:30:00-06	Sync systems	2019-07-08 09:31:15.105221-06	1.75000	84	5	09:30:00
2332	2019-07-08 09:30:00-06	2019-07-08 10:00:00-06	Carrier Consolidation	2019-07-08 11:10:07.225615-06	0.50000	181	5	10:00:00
2333	2019-07-08 10:00:00-06	2019-07-08 11:00:00-06	Database population	2019-07-08 11:11:06.242202-06	1.00000	84	5	11:00:00
2334	2019-07-08 11:00:00-06	2019-07-08 11:30:00-06	Progeny IPT	2019-07-08 12:56:16.530382-06	0.50000	21	5	11:30:00
2335	2019-07-08 11:30:00-06	2019-07-08 13:45:00-06	Debug	2019-07-08 14:18:38.438413-06	2.25000	84	5	13:45:00
2336	2019-07-08 13:45:00-06	2019-07-08 15:00:00-06	Wrong prestress date issue	2019-07-08 15:00:34.392074-06	1.25000	80	5	15:00:00
2337	2019-07-08 14:43:11-06	2019-07-08 15:13:44-06	fixing lookup form	2019-07-08 15:13:46.481028-06	0.50917	32	10	\N
2338	2019-07-08 15:00:00-06	2019-07-08 15:15:00-06	Map BP1109	2019-07-08 15:19:02.320079-06	0.25000	81	5	15:15:00
2340	2019-07-08 15:15:00-06	2019-07-08 15:45:00-06	Thermocouple research	2019-07-08 15:42:42.582928-06	0.50000	81	5	15:45:00
2329	2019-07-08 06:59:48-06	2019-07-08 17:06:35-06	Working on floor.	2019-07-08 17:06:38.907299-06	10.11306	28	3	\N
2339	2019-07-08 15:31:02-06	2019-07-08 17:35:26-06	part lookup reform	2019-07-08 17:35:27.929088-06	2.07333	32	10	\N
2342	2019-07-08 18:10:49-06	2019-07-08 18:23:19-06	part lookup reform	2019-07-08 18:23:20.882399-06	0.20833	32	10	\N
2341	2019-07-08 17:45:00-06	2019-07-08 20:15:00-06	Inventory	2019-07-08 20:18:20.253892-06	2.50000	29	8	\N
2344	2019-07-09 07:00:00-06	2019-07-09 17:08:27-06	Working on floor.	2019-07-09 17:08:30.527046-06	10.14083	28	3	\N
2345	2019-07-09 16:18:29-06	2019-07-09 17:58:28-06	part lookup reform	2019-07-09 17:58:29.678082-06	1.66639	32	10	\N
2343	2019-07-09 07:30:00-06	2019-07-09 09:30:00-06	Wrong prestress date issue	2019-07-09 18:05:45.869353-06	2.00000	80	5	09:30:00
2346	2019-07-09 09:30:00-06	2019-07-09 18:15:00-06	Thermotron debug	2019-07-09 18:10:01.055112-06	8.75000	15	5	18:15:00
2347	2019-07-10 07:30:00-06	2019-07-10 08:00:00-06	Status	2019-07-10 08:02:33.942293-06	0.50000	21	5	08:00:00
2349	2019-07-10 06:50:00-06	2019-07-10 17:02:20-06	Working on floor.	2019-07-10 17:02:23.742786-06	10.20556	28	3	\N
2348	2019-07-10 08:00:00-06	2019-07-10 16:45:00-06	Thermotron debug	2019-07-10 18:33:06.168392-06	8.75000	15	5	16:45:00
2351	2019-07-10 16:45:00-06	2019-07-10 18:15:00-06	BP1092 Fault Tree Analysis #2	2019-07-10 18:33:37.237638-06	1.50000	185	5	18:15:00
2350	2019-07-10 15:35:33-06	2019-07-10 18:36:41-06	part lookup reform	2019-07-10 18:36:44.691256-06	3.01889	32	10	\N
2353	2019-07-11 07:45:00-06	2019-07-11 08:00:00-06	Document Review	2019-07-11 07:56:55.878146-06	0.25000	175	5	08:00:00
2354	2019-07-11 08:00:00-06	2019-07-11 12:45:00-06	Thermotron debug	2019-07-11 12:54:14.707303-06	4.75000	15	5	12:45:00
2355	2019-07-11 12:45:00-06	2019-07-11 13:30:00-06	Wrong prestress date issue	2019-07-11 14:08:43.245965-06	0.75000	80	5	13:15:00
2356	2019-07-11 13:30:00-06	2019-07-11 14:15:00-06	Document Review	2019-07-11 14:09:07.041044-06	0.75000	175	5	14:15:00
2357	2019-07-11 14:15:00-06	2019-07-11 16:00:00-06	Carrier Consolidation	2019-07-11 16:05:01.035056-06	1.75000	181	5	16:00:00
2352	2019-07-11 06:56:49-06	2019-07-11 17:11:04-06	Working on floor.	2019-07-11 17:11:07.156528-06	10.23750	28	3	\N
2358	2019-07-11 16:41:17-06	2019-07-11 18:26:20-06	part reform	2019-07-11 18:26:22.380438-06	1.75083	32	10	\N
2359	2019-07-11 17:45:00-06	2019-07-11 21:00:00-06	Inventory	2019-07-11 20:58:59.75132-06	3.25000	28	8	21:00:00
2361	2019-07-08 10:00:00-06	2019-07-08 12:00:00-06	paper wk, supplies	2019-07-12 07:20:33.977352-06	2.00000	28	7	12:00:00
2362	2019-07-09 09:00:00-06	2019-07-09 11:00:00-06	shopping, bank	2019-07-12 07:21:15.413999-06	2.00000	40	7	11:00:00
2363	2019-07-10 09:00:00-06	2019-07-10 11:00:00-06	shopping	2019-07-12 07:21:47.810834-06	2.00000	28	7	11:00:00
2364	2019-07-12 10:00:00-06	2019-07-12 11:30:00-06	billis	2019-07-12 07:22:20.95704-06	1.50000	40	7	11:30:00
2365	2019-07-03 09:00:00-06	2019-07-03 15:00:00-06	bills, shop,	2019-07-12 07:23:39.328561-06	6.00000	28	7	15:00:00
2502	2019-07-30 09:36:37-06	2019-07-30 10:30:00-06	Scanning	2019-07-31 07:33:13.822164-06	0.88972	40	7	\N
2360	2019-07-12 07:00:00-06	2019-07-12 08:15:00-06	Sync systems, Tuning path forward	2019-07-12 08:28:24.042176-06	1.25000	84	5	08:15:00
2368	2019-07-12 07:23:39-06	2019-07-12 08:30:00-06	stuff	2019-07-12 10:08:27.804586-06	1.10583	40	7	08:30:00
2369	2019-07-12 11:15:00-06	2019-07-12 12:30:00-06	fixed coding Fn mean issue	2019-07-12 12:31:24.510664-06	1.25000	84	5	12:30:00
2367	2019-07-12 08:15:00-06	2019-07-12 11:15:00-06	BP1092 Fault Tree Analysis update	2019-07-12 12:31:54.827677-06	3.00000	185	5	11:15:00
2370	2019-07-12 12:30:00-06	2019-07-12 13:00:00-06	BP1092 Fault Tree Analysis update	2019-07-12 13:00:05.792599-06	0.50000	185	5	13:00:00
2371	2019-07-12 13:00:00-06	2019-07-12 13:30:00-06	Carrier Consolidation	2019-07-12 13:28:58.34413-06	0.50000	3	5	13:30:00
2373	2019-07-12 13:30:00-06	2019-07-12 14:45:00-06	Proposal meeting	2019-07-12 14:40:44.999623-06	1.25000	223	5	14:45:00
2366	2019-07-12 08:10:00-06	2019-07-12 15:17:54-06	Working on floor.	2019-07-12 15:17:59.548912-06	7.13167	28	3	\N
2372	2019-07-12 13:50:26-06	2019-07-12 15:46:23-06	part lookup	2019-07-12 15:46:25.213698-06	1.93250	32	10	\N
2374	2019-07-12 14:45:00-06	2019-07-12 16:00:00-06	Carrier Consolidation	2019-07-12 16:00:24.74818-06	1.25000	3	5	16:00:00
2375	2019-07-08 08:30:00-06	2019-07-08 16:00:00-06	leveling floor	2019-07-12 17:07:16.736682-06	7.50000	28	11	16:00:00
2376	2019-07-09 08:30:00-06	2019-07-09 15:00:00-06	leveling floor	2019-07-12 17:08:02.220252-06	6.50000	28	11	15:00:00
2377	2019-07-10 08:30:00-06	2019-07-10 15:00:00-06	leveling floor	2019-07-12 17:08:23.528131-06	6.50000	28	11	15:00:00
2378	2019-07-12 08:30:00-06	2019-07-12 15:00:00-06	leveling floor	2019-07-12 17:08:51.544772-06	6.50000	28	11	15:00:00
2379	2019-07-11 08:30:00-06	2019-07-11 15:00:00-06	leveling floor	2019-07-12 17:09:37.958814-06	6.50000	28	11	15:00:00
2380	2019-07-13 08:30:00-06	2019-07-13 12:45:00-06	Make up for June 27. I was super sick and left early and didn't put in the hours I worked.	2019-07-12 17:11:10.899137-06	4.25000	28	11	12:45:00
2381	2019-07-12 18:26:26-06	2019-07-12 19:41:38-06	part lookup reform	2019-07-12 19:41:40.39803-06	1.25333	32	10	\N
2382	2019-07-13 09:00:00-06	2019-07-13 13:00:08-06	Working on floor.	2019-07-13 13:00:10.382322-06	4.00222	28	3	\N
2383	2019-07-13 14:36:51-06	2019-07-13 16:05:24-06	part lookup reform	2019-07-13 16:05:26.200206-06	1.47583	32	10	\N
2384	2019-07-15 07:30:00-06	2019-07-15 08:15:00-06	Status	2019-07-15 08:14:34.401306-06	0.75000	21	5	08:15:00
2385	2019-07-15 08:15:00-06	2019-07-15 09:00:00-06	FAP review	2019-07-15 08:55:08.464282-06	0.75000	224	5	09:00:00
2388	2019-07-08 09:25:00-06	2019-07-08 16:00:00-06	Work on leveling and installation of wood for floor	2019-07-15 09:40:59.732489-06	6.58333	28	13	16:00:00
2389	2019-07-09 08:50:00-06	2019-07-09 11:20:00-06	Installation of wood and and leveling	2019-07-15 09:42:47.412325-06	2.50000	28	13	11:20:00
2390	2019-07-09 12:15:00-06	2019-07-09 15:00:00-06	Moving plywood and gluing cross pieces	2019-07-15 09:45:09.14344-06	2.75000	28	13	15:00:00
2391	2019-07-10 09:10:00-06	2019-07-10 15:00:00-06	Cuting and temporary installation of plywood, install and measurement of crosspieces	2019-07-15 09:47:00.663285-06	5.83333	28	13	15:00:00
2392	2019-07-11 08:30:00-06	2019-07-11 15:00:00-06	Installation of vapor barrier and first part of plywood	2019-07-15 09:48:26.027308-06	6.50000	28	13	15:00:00
2386	2019-07-15 08:00:00-06	2019-07-15 11:00:00-06	banking bookkeeping	2019-07-17 07:56:56.884856-06	3.00000	39	7	\N
2393	2019-07-12 08:30:00-06	2019-07-12 15:00:00-06	Final installation of plywood and vapor barrier	2019-07-15 09:49:42.133238-06	6.50000	28	13	15:00:00
2811	2019-09-11 07:30:00-06	2019-09-11 10:30:00-06	painting	2019-09-13 07:53:57.188425-06	3.00000	28	7	10:30:00
2813	2019-09-12 10:00:00-06	2019-09-12 11:00:00-06	Accounting	2019-09-13 07:55:08.429292-06	1.00000	39	7	11:00:00
2819	2019-09-16 08:00:00-06	2019-09-16 08:30:00-06	Reviewing trim automation with Scott	2019-09-16 08:26:45.475282-06	0.50000	172	5	08:30:00
2822	2019-09-16 11:45:00-06	2019-09-16 12:00:00-06	Reviewing trim automation with Gordon	2019-09-16 12:05:44.040656-06	0.25000	172	5	12:00:00
2824	2019-09-16 12:15:00-06	2019-09-16 15:30:00-06	Status report issues	2019-09-16 20:14:07.784871-06	3.25000	84	5	15:30:00
2829	2019-09-17 10:15:00-06	2019-09-17 10:30:00-06	fix create_log	2019-09-17 10:35:21.197048-06	0.25000	181	5	10:30:00
2831	2019-09-17 13:45:00-06	2019-09-17 14:00:00-06	Tuned 700Hz elements report	2019-09-17 13:59:39.904668-06	0.25000	84	5	14:00:00
2833	2019-09-17 15:30:00-06	2019-09-17 16:00:00-06	Tuning debug	2019-09-17 16:03:18.4561-06	0.50000	84	5	16:00:00
2826	2019-09-17 07:00:49-06	2019-09-17 17:29:20-06	working on milling stand.	2019-09-17 17:29:24.163676-06	10.47528	28	3	\N
2835	2019-09-18 08:00:00-06	2019-09-18 09:00:00-06	Tuning debug	2019-09-18 12:33:16.928587-06	1.00000	84	5	09:00:00
2837	2019-09-18 12:30:00-06	2019-09-18 13:00:00-06	Capacitance plot	2019-09-18 12:57:14.370744-06	0.50000	235	5	13:00:00
2838	2019-09-18 13:00:00-06	2019-09-18 13:30:00-06	Test system capacitance meeting	2019-09-18 13:27:53.5173-06	0.50000	178	5	13:30:00
2840	2019-09-18 06:50:00-06	2019-09-18 17:11:23-06	building sweep board.	2019-09-18 17:11:27.453188-06	10.35639	8	3	\N
2844	2019-09-19 13:00:00-06	2019-09-19 14:30:00-06	Architecture research meeting	2019-09-19 14:29:55.99967-06	1.50000	184	5	14:30:00
2845	2019-09-19 14:30:00-06	2019-09-19 15:45:00-06	GUI programming	2019-09-19 15:42:38.674877-06	1.25000	236	5	15:45:00
2842	2019-09-19 07:50:00-06	2019-09-19 17:23:23-06	building boards and cables.	2019-09-19 17:23:27.450884-06	9.55639	8	3	\N
2847	2019-09-20 08:30:00-06	2019-09-20 08:45:00-06	Inventory backup bug	2019-09-20 08:43:04.513906-06	0.25000	80	5	08:45:00
2849	2019-09-20 09:00:00-06	2019-09-20 09:15:00-06	Inventory backup bug	2019-09-20 09:13:53.816711-06	0.25000	80	5	09:15:00
2850	2019-09-20 09:15:00-06	2019-09-20 13:00:00-06	Test procedure	2019-09-20 13:14:54.014701-06	3.75000	236	5	13:00:00
2852	2019-09-23 06:50:00-06	2019-09-23 17:00:00-06	Repair pick & place machine.	2019-09-24 06:55:37.622637-06	10.16667	29	3	\N
2856	2019-09-24 06:50:00-06	2019-09-24 15:00:00-06	Repair pick & place machine.	2019-09-24 06:58:45.611838-06	8.16667	29	3	\N
2854	2019-09-23 08:00:00-06	2019-09-23 15:45:00-06	State machine	2019-09-24 07:58:50.9029-06	7.75000	236	5	15:45:00
2859	2019-09-24 09:00:00-06	2019-09-24 10:00:00-06	NUWC IPT	2019-09-24 10:15:47.284872-06	1.00000	21	5	10:00:00
2926	2019-09-30 08:00:00-06	2019-09-30 08:15:00-06	Laser Serialization EA review	2019-09-30 08:08:35.911397-06	0.25000	185	5	08:15:00
2861	2019-09-24 15:15:00-06	2019-09-24 15:45:00-06	BP1099, BP1100, BP1101, BP1104	2019-09-24 15:47:28.872575-06	0.50000	41	5	15:45:00
2865	2019-09-25 08:00:00-06	2019-09-25 08:30:00-06	BP1099, BP1100, BP1101, BP1104	2019-09-25 08:22:22.15813-06	0.50000	41	5	08:30:00
2867	2019-09-25 09:15:00-06	2019-09-25 09:30:00-06	BP1099, BP1100, BP1101, BP1104	2019-09-25 09:27:01.113548-06	0.25000	41	5	09:30:00
2868	2019-09-25 09:30:00-06	2019-09-25 09:45:00-06	Integration	2019-09-25 09:49:09.435439-06	0.25000	236	5	09:45:00
2871	2019-09-25 11:30:00-06	2019-09-25 11:45:00-06	Integration	2019-09-25 12:43:45.484215-06	0.25000	235	5	11:45:00
2873	2019-09-25 12:45:00-06	2019-09-25 13:30:00-06	Proposal meeting	2019-09-25 13:35:35.025495-06	0.75000	239	5	13:30:00
2863	2019-09-25 07:00:00-06	2019-09-25 15:12:42-06	Testing array sweep PWB.	2019-09-25 15:12:45.949891-06	8.21167	8	3	\N
2875	2019-09-25 15:30:00-06	2019-09-25 15:45:00-06	Tuning backup improvement	2019-09-25 15:43:08.326003-06	0.25000	80	5	15:45:00
2910	2019-09-26 10:00:00-06	2019-09-26 10:15:00-06	Quarterly set up	2019-09-26 10:01:15.622298-06	0.25000	15	5	10:15:00
2912	2019-09-26 10:45:00-06	2019-09-26 11:00:00-06	Reviewed design document	2019-09-26 11:06:18.620335-06	0.25000	184	5	11:00:00
2914	2019-09-26 12:00:00-06	2019-09-26 12:30:00-06	Database research	2019-09-26 11:58:49.646028-06	0.50000	225	5	12:30:00
2916	2019-09-26 13:00:00-06	2019-09-26 14:00:00-06	Test Engineering meeting	2019-09-26 14:02:25.530033-06	1.00000	184	5	14:00:00
2918	2019-09-26 14:15:00-06	2019-09-26 15:30:00-06	Database repair app	2019-09-26 15:31:33.821056-06	1.25000	80	5	15:30:00
2920	2019-09-26 18:00:00-06	2019-09-26 21:00:00-06	Assemble boards	2019-09-26 21:03:24.16863-06	3.00000	238	8	21:00:00
2908	2019-09-26 07:00:00-06	2019-09-26 11:00:00-06	Mounting milling machine onto stand.	2019-09-27 15:57:57.507376-06	4.00000	29	3	\N
2922	2019-09-26 11:00:00-06	2019-09-26 16:30:00-06	quarterly inspection.	2019-09-27 16:00:47.1506-06	5.50000	15	3	\N
2928	2019-09-30 08:45:00-06	2019-09-30 09:15:00-06	AITS Q3 PM	2019-09-30 10:42:27.08392-06	0.50000	15	5	09:45:00
2930	2019-09-30 10:45:00-06	2019-09-30 12:30:00-06	Progeny IPT	2019-09-30 12:32:14.206752-06	1.75000	21	5	12:30:00
2924	2019-09-30 06:59:04-06	2019-09-30 17:13:06-06	Connecting up heater.	2019-09-30 17:13:08.832272-06	10.23389	28	3	\N
2936	2019-10-01 08:15:00-06	2019-10-01 10:15:00-06	record backup	2019-10-01 10:11:47.646074-06	2.00000	225	5	10:15:00
2932	2019-09-30 13:30:00-06	2019-09-30 15:45:00-06	Overall test flow	2019-10-01 12:38:06.779508-06	2.25000	236	5	15:45:00
2934	2019-10-01 06:45:00-06	2019-10-01 07:59:59-06	Repairing thermocuplers.	2019-10-01 17:12:37.484652-06	1.24972	173	3	\N
2940	2019-10-01 08:00:00-06	2019-10-01 17:12:47-06	Shop organisation.	2019-10-01 17:12:51.42862-06	9.21306	29	3	\N
2944	2019-10-03 13:00:00-06	2019-10-03 14:30:00-06	Template design	2019-10-03 14:35:54.543174-06	1.50000	184	5	14:30:00
2942	2019-10-03 06:45:00-06	2019-10-03 15:20:34-06	cleaning up back porch and shop.	2019-10-03 15:20:37.125411-06	8.59278	28	3	\N
2946	2019-10-03 18:10:00-06	2019-10-03 20:00:00-06	Organization	2019-10-03 19:54:36.080014-06	1.83333	28	8	20:00:00
2950	2019-10-04 10:00:00-06	2019-10-04 11:15:00-06	Tuning strategy meeting	2019-10-04 12:15:32.24563-06	1.25000	84	5	11:15:00
2951	2019-10-04 11:15:00-06	2019-10-04 12:15:00-06	Fixed element too young bug	2019-10-04 12:16:32.847739-06	1.00000	181	5	12:15:00
2952	2019-10-04 12:15:00-06	2019-10-04 12:30:00-06	Test before inspect setup	2019-10-04 12:32:31.097244-06	0.25000	84	5	12:30:00
2953	2019-10-04 12:30:00-06	2019-10-04 12:45:00-06	BP1104 DVD	2019-10-04 12:54:05.71337-06	0.25000	41	5	12:45:00
2949	2019-10-04 10:00:00-06	2019-10-04 13:00:11-06	Shop organisation.	2019-10-04 13:00:14.68525-06	3.00306	28	3	\N
2954	2019-10-04 12:45:00-06	2019-10-04 14:00:00-06	Test before inspect setup	2019-10-04 13:56:22.759242-06	1.25000	84	5	14:00:00
2955	2019-10-04 14:00:00-06	2019-10-04 15:45:00-06	tests for failures	2019-10-04 15:50:34.799165-06	1.75000	236	5	15:45:00
2948	2019-10-04 07:45:00-06	2019-10-04 10:00:00-06	tests for failures	2019-10-04 15:51:02.797162-06	2.25000	236	5	10:00:00
2956	2019-10-07 07:30:00-06	2019-10-07 08:00:00-06	Status	2019-10-07 08:34:45.212038-06	0.50000	21	5	08:00:00
2957	2019-10-07 08:00:00-06	2019-10-07 08:15:00-06	Test before inspect setup	2019-10-07 08:36:19.149128-06	0.25000	84	5	08:15:00
2958	2019-10-07 08:15:00-06	2019-10-07 09:30:00-06	ADAS 05-04 Mixed Calibration	2019-10-07 09:33:10.024792-06	1.25000	87	5	09:30:00
2960	2019-10-07 09:30:00-06	2019-10-07 10:00:00-06	Test before inspect setup	2019-10-07 10:49:51.09611-06	0.50000	84	5	10:00:00
2961	2019-10-07 10:00:00-06	2019-10-07 10:45:00-06	test cable	2019-10-07 10:50:37.302726-06	0.75000	236	5	10:45:00
2962	2019-10-07 10:45:00-06	2019-10-07 12:00:00-06	Progeny IPT	2019-10-07 12:37:34.705045-06	1.25000	21	5	12:00:00
2959	2019-10-07 07:00:00-06	2019-10-07 15:21:50-06	Shop organisation.	2019-10-07 15:21:53.808611-06	8.36389	28	3	\N
2963	2019-10-07 12:00:00-06	2019-10-07 16:30:00-06	manual test setup	2019-10-07 16:30:01.92377-06	4.50000	236	5	16:30:00
2964	2019-10-07 16:43:00-06	2019-10-07 18:03:00-06	Finished the Engimusing Logo cutouts, and sent you E and N. Next step is to finish the letters, correct what you want corrected, and the lightbulb I.	2019-10-07 18:04:59.197615-06	1.33333	168	11	18:03:00
2965	2019-10-08 07:45:00-06	2019-10-08 08:00:00-06	Slide review	2019-10-08 08:01:31.975644-06	0.25000	21	5	08:00:00
2394	2019-07-13 08:40:00-06	2019-07-13 15:35:00-06	Past labor hours for removal of shop door, clean up and moving out everything from back shop space	2019-07-15 09:51:48.676323-06	6.91667	28	13	15:35:00
2387	2019-07-15 09:00:00-06	2019-07-15 10:45:00-06	Carrier Consolidation	2019-07-15 10:42:59.312291-06	1.75000	3	5	10:45:00
2812	2019-09-12 08:00:00-06	2019-09-12 10:00:00-06	shop	2019-09-13 07:54:36.782015-06	2.00000	28	7	10:00:00
2395	2019-07-15 10:45:00-06	2019-07-15 12:00:00-06	Progeny IPT	2019-07-15 12:04:24.423146-06	1.25000	21	5	12:00:00
2397	2019-07-15 12:00:00-06	2019-07-15 15:00:00-06	Carrier Consolidation	2019-07-15 14:51:09.235197-06	3.00000	3	5	15:00:00
2818	2019-09-16 07:45:00-06	2019-09-16 17:20:02-06	Working on walls.	2019-09-16 17:20:05.844488-06	9.58389	28	3	\N
2423	2019-07-17 13:30:00-06	2019-07-17 15:45:00-06	700Hz nose report	2019-07-17 15:49:42.811131-06	2.25000	84	5	15:45:00
2428	2019-07-17 16:29:26-06	2019-07-17 18:39:29-06	mouser api	2019-07-17 18:39:31.478951-06	2.16750	32	10	\N
2430	2019-07-17 10:30:00-06	2019-07-17 12:00:00-06	paint shopping	2019-07-18 07:13:13.549488-06	1.50000	28	7	12:00:00
2396	2019-07-15 07:00:00-06	2019-07-15 15:34:02-06	Working on floor.	2019-07-15 15:34:06.548251-06	8.56722	28	3	\N
2399	2019-07-15 15:28:21-06	2019-07-15 16:43:44-06	part lookup reform	2019-07-15 16:43:46.846973-06	1.25639	32	10	\N
2398	2019-07-15 15:00:00-06	2019-07-15 17:00:00-06	Simulate -005, -006 tuning	2019-07-15 16:54:18.340924-06	2.00000	80	5	17:00:00
2400	2019-07-15 08:40:00-06	2019-07-15 15:00:00-06	Baltic Burch over the plywood	2019-07-15 17:05:13.537177-06	6.33333	28	11	15:00:00
2401	2019-07-15 17:11:00-06	2019-07-15 17:55:09-06	part lookup reform	2019-07-15 17:55:12.398207-06	0.73583	32	10	\N
2402	2019-07-15 17:30:00-06	2019-07-15 21:00:00-06	Inventory	2019-07-15 20:56:41.580504-06	3.50000	28	8	21:00:00
2403	2019-07-16 07:30:00-06	2019-07-16 09:00:00-06	Automatic Tuning	2019-07-16 10:05:18.815959-06	1.50000	84	5	09:00:00
2404	2019-07-16 09:00:00-06	2019-07-16 10:00:00-06	NUWC IPT	2019-07-16 10:05:57.085288-06	1.00000	21	5	10:00:00
2429	2019-07-18 05:00:00-06	2019-07-18 11:45:00-06	700Hz nose report	2019-07-18 11:48:38.59235-06	6.75000	84	5	11:45:00
2405	2019-07-16 10:00:00-06	2019-07-16 11:45:00-06	IR Failures	2019-07-16 12:10:51.383471-06	1.75000	185	5	10:45:00
2408	2019-07-16 14:27:32-06	2019-07-16 15:24:15-06	part lookup reform	2019-07-16 15:24:18.52619-06	0.94528	32	10	\N
2407	2019-07-16 07:35:00-06	2019-07-16 15:35:32-06	Working on floor.	2019-07-16 15:35:35.785697-06	8.00889	28	3	\N
2406	2019-07-16 11:45:00-06	2019-07-16 16:45:00-06	Automatic Tuning	2019-07-16 16:51:14.330691-06	5.00000	84	5	16:45:00
2410	2019-07-16 16:45:00-06	2019-07-16 17:00:00-06	FAP review	2019-07-16 16:58:46.175735-06	0.25000	224	5	17:00:00
2409	2019-07-16 16:16:26-06	2019-07-16 17:52:34-06	part lookup reform	2019-07-16 17:52:36.907045-06	1.60222	32	10	\N
2411	2019-07-16 10:00:00-06	2019-07-16 11:00:00-06	shop, bank	2019-07-17 07:57:41.484136-06	1.00000	39	7	11:00:00
2412	2019-07-17 07:00:00-06	2019-07-17 07:58:43-06	accounting	2019-07-17 07:58:45.835322-06	0.97861	39	7	\N
2413	2019-07-17 07:30:00-06	2019-07-17 08:00:00-06	Status	2019-07-17 08:04:32.249082-06	0.50000	21	5	08:00:00
2414	2019-07-17 08:00:00-06	2019-07-17 08:45:00-06	Automatic Tuning	2019-07-17 08:45:11.046205-06	0.75000	84	5	08:45:00
2416	2019-07-17 08:15:00-06	2019-07-17 08:55:47-06	supplies	2019-07-17 08:55:50.39342-06	0.67972	28	7	\N
2415	2019-07-17 08:45:00-06	2019-07-17 09:45:00-06	IR Failures - remap BP1104	2019-07-17 09:58:03.397252-06	1.00000	81	5	09:45:00
2417	2019-07-17 09:45:00-06	2019-07-17 10:30:00-06	Training	2019-07-17 10:34:54.057508-06	0.75000	84	5	10:15:00
2419	2019-07-15 09:20:00-06	2019-07-15 15:20:00-06	Installation of floorboards	2019-07-17 12:20:23.891583-06	6.00000	28	13	15:20:00
2420	2019-07-16 08:30:00-06	2019-07-16 15:20:00-06	Final install of floorboards and application of glue putty	2019-07-17 12:21:55.862889-06	6.83333	28	13	15:20:00
2421	2019-07-17 09:00:00-06	2019-07-17 15:00:00-06	Sanding, Sanding and a little more sanding	2019-07-17 12:29:50.000186-06	6.00000	28	13	15:00:00
2418	2019-07-17 10:30:00-06	2019-07-17 12:45:00-06	700Hz nose report	2019-07-17 13:26:54.884714-06	2.25000	84	5	12:45:00
2422	2019-07-17 12:45:00-06	2019-07-17 13:30:00-06	Ceramics meeting, Classified computer meeting	2019-07-17 13:27:37.075756-06	0.75000	21	5	13:30:00
2424	2019-07-17 07:00:00-06	2019-07-17 11:29:59-06	Working on floor.	2019-07-17 14:28:21.839399-06	4.49972	28	3	\N
2425	2019-07-17 11:30:00-06	2019-07-17 12:44:59-06	Repairing test cable.	2019-07-17 14:30:34.775128-06	1.24972	125	3	\N
2426	2019-07-17 12:45:00-06	2019-07-17 14:31:00-06	Replacing relay.	2019-07-17 14:31:12.589445-06	1.76667	173	3	\N
2427	2019-07-17 14:31:01-06	2019-07-17 15:42:33-06	Working on floor.	2019-07-17 15:42:36.392-06	1.19222	28	3	\N
2431	2019-07-18 11:45:00-06	2019-07-18 12:30:00-06	histograms to 1 file	2019-07-18 12:26:11.86189-06	0.75000	84	5	12:30:00
2433	2019-07-18 12:30:00-06	2019-07-18 14:30:00-06	Carrier Consolidation	2019-07-18 14:25:27.014227-06	2.00000	3	5	14:30:00
2434	2019-07-18 07:00:00-06	2019-07-18 15:13:52-06	Working on floor.	2019-07-18 15:13:59.035216-06	8.23111	28	3	\N
2435	2019-07-18 14:30:00-06	2019-07-18 15:15:00-06	Ceramic binning	2019-07-18 15:18:23.767991-06	0.75000	21	5	15:15:00
2436	2019-07-16 09:15:00-06	2019-07-16 15:20:00-06	Leveling floor, finished putting boards, began filling with glue sawdust mixture	2019-07-18 16:07:51.005403-06	6.08333	28	11	15:20:00
2437	2019-07-18 09:00:00-06	2019-07-18 17:20:00-06	Sanding the floor.	2019-07-18 16:09:21.849541-06	8.33333	28	11	17:20:00
2510	2019-07-30 21:11:08-06	2019-07-30 22:41:25-06	learning python	2019-07-30 22:41:27.586874-06	1.50472	32	10	\N
2438	2019-07-17 08:45:00-06	2019-07-17 14:00:00-06	Final sanding and painting floor. (TIMES ARE THURSDAY, System wont let me change, so i swapped the two)	2019-07-18 16:10:47.191433-06	5.25000	28	11	14:00:00
2432	2019-07-18 14:01:50-06	2019-07-18 16:41:28-06	mouser api	2019-07-18 16:41:29.454871-06	2.66056	32	10	\N
2448	2019-07-19 08:45:00-06	2019-07-19 10:00:00-06	Cleaning, mixing finish, moving table saw	2019-07-21 19:33:43.872784-06	1.25000	28	13	10:00:00
2439	2019-07-18 17:30:00-06	2019-07-18 20:30:00-06	Inventory	2019-07-18 20:27:01.619127-06	3.00000	28	8	20:30:00
2440	2019-07-18 07:13:13-06	2019-07-18 09:00:00-06	stuff	2019-07-18 21:00:11.615565-06	1.77972	40	7	09:00:00
2441	2019-07-19 06:55:00-06	2019-07-19 15:02:23-06	Working on floor.	2019-07-19 15:02:27.739845-06	8.12306	28	3	\N
2442	2019-07-19 14:29:57-06	2019-07-19 15:41:02-06	mouser api	2019-07-19 15:41:04.580139-06	1.18472	32	10	\N
2444	2019-07-18 19:06:42-06	2019-07-18 20:23:00-06	mouser api	2019-07-20 20:09:27.126947-06	1.27167	32	10	\N
2443	2019-07-20 20:05:29-06	2019-07-20 22:07:38-06	mouser api	2019-07-20 22:07:40.400863-06	2.03583	32	10	\N
2445	2019-07-19 08:40:00-06	2019-07-19 15:00:00-06	Leveling the floor in the wood shop part	2019-07-20 22:18:27.094312-06	6.33333	28	11	15:00:00
2446	2019-07-17 15:00:00-06	2019-07-17 16:00:00-06	Yet more sanding	2019-07-21 19:29:57.220677-06	1.00000	28	13	16:00:00
2447	2019-07-18 08:00:00-06	2019-07-18 15:00:00-06	Sanding of floor with 220 and final prep for finish	2019-07-21 19:31:15.410369-06	7.00000	28	13	15:00:00
2449	2019-07-22 07:30:00-06	2019-07-22 08:00:00-06	Status	2019-07-22 08:03:19.256441-06	0.50000	21	5	08:00:00
2450	2019-07-22 08:00:00-06	2019-07-22 10:45:00-06	GUI programming	2019-07-22 10:58:21.709885-06	2.75000	8	5	10:45:00
2452	2019-07-22 10:45:00-06	2019-07-22 12:30:00-06	Progeny IPT	2019-07-22 12:29:15.239906-06	1.75000	21	5	12:30:00
2453	2019-07-22 12:30:00-06	2019-07-22 12:45:00-06	Serial Number file generation	2019-07-22 14:00:25.779576-06	0.25000	8	5	12:45:00
2454	2019-07-22 12:45:00-06	2019-07-22 16:15:00-06	700Hz nose report	2019-07-22 16:17:03.460069-06	3.50000	80	5	16:15:00
2455	2019-07-22 14:52:28-06	2019-07-22 16:43:23-06	mouser api	2019-07-22 16:43:25.557054-06	1.84861	32	10	\N
2451	2019-07-22 07:05:00-06	2019-07-22 17:25:55-06	Working on floor.	2019-07-22 17:26:01.414993-06	10.34861	28	3	\N
2456	2019-07-22 17:30:00-06	2019-07-22 20:00:00-06	Inventory	2019-07-22 20:00:55.459436-06	2.50000	28	8	20:00:00
2458	2019-07-23 08:30:00-06	2019-07-23 16:30:00-06	AITS spreadsheet fix	2019-07-23 18:18:02.509299-06	8.00000	81	5	16:30:00
2459	2019-07-24 07:30:00-06	2019-07-24 08:00:00-06	Status	2019-07-24 08:28:38.438568-06	0.50000	21	5	08:00:00
2457	2019-07-23 06:45:00-06	2019-07-23 13:45:00-06	Working on floor.	2019-07-24 11:00:36.096108-06	7.00000	28	3	\N
2460	2019-07-24 08:00:00-06	2019-07-24 12:30:00-06	AITS spreadsheet fix	2019-07-24 13:21:40.6885-06	4.50000	5	5	12:30:00
2461	2019-07-24 07:00:00-06	2019-07-24 09:59:59-06	Working on floor.	2019-07-24 10:58:06.452419-06	2.99972	28	3	\N
2814	2019-09-13 07:30:00-06	2019-09-13 10:00:00-06	cleaning	2019-09-13 10:57:22.052973-06	2.50000	28	7	10:00:00
2462	2019-07-24 10:00:00-06	2019-07-24 10:58:13-06	Changing programming back to 2.05 sec on torque controller.	2019-07-24 10:58:27.255019-06	0.97028	125	3	\N
2463	2019-07-23 13:45:00-06	2019-07-23 15:29:59-06	Changing programming on torque controller to 2.5 sec for engineering testing.	2019-07-24 11:09:00.082376-06	1.74972	125	3	\N
2464	2019-07-23 15:30:00-06	2019-07-23 17:35:00-06	Working on floor.	2019-07-24 11:10:12.232631-06	2.08333	28	3	\N
2466	2019-07-24 13:30:00-06	2019-07-24 15:45:00-06	AITS spreadsheet fix	2019-07-24 15:51:29.307757-06	2.25000	5	5	15:45:00
2467	2019-07-24 12:30:00-06	2019-07-24 13:29:59-06	Ceramic binning	2019-07-24 15:53:03.64654-06	0.99972	185	5	13:29:59
2465	2019-07-24 10:58:14-06	2019-07-24 17:16:15-06	Working on floor.	2019-07-24 17:16:19.650063-06	6.30028	28	3	\N
2468	2019-07-24 16:15:43-06	2019-07-24 18:55:55-06	mouser api	2019-07-24 18:55:57.378248-06	2.67000	32	10	\N
2469	2019-07-25 07:45:00-06	2019-07-25 10:15:00-06	AITS spreadsheet fix	2019-07-25 10:20:45.015255-06	2.50000	5	5	10:15:00
2470	2019-07-25 10:15:00-06	2019-07-25 11:15:00-06	AITS spreadsheet population program	2019-07-25 11:21:41.043782-06	1.00000	5	5	11:15:00
2471	2019-07-25 11:15:00-06	2019-07-25 11:30:00-06	Scope determination	2019-07-25 11:47:43.0153-06	0.25000	172	5	11:30:00
2472	2019-07-25 11:30:00-06	2019-07-25 15:30:00-06	AITS spreadsheet population program	2019-07-25 15:27:15.639695-06	4.00000	5	5	15:30:00
2473	2019-07-25 13:00:00-06	2019-07-25 15:00:00-06	banking, shop	2019-07-25 16:16:16.199402-06	2.00000	40	7	15:00:00
2474	2019-07-22 11:00:00-06	2019-07-22 12:00:00-06	supplies	2019-07-25 16:16:55.411125-06	1.00000	28	7	12:00:00
2475	2019-07-25 07:00:00-06	2019-07-25 17:06:00-06	Working on floor.	2019-07-25 17:06:04.2876-06	10.10000	28	3	\N
2476	2019-07-25 17:17:51-06	2019-07-25 20:05:05-06	part lookup reform	2019-07-25 20:05:07.647745-06	2.78722	32	10	\N
2477	2019-07-22 08:30:00-06	2019-07-22 15:10:00-06	Gluing and bolting boards to floor	2019-07-25 22:08:50.93765-06	6.66667	28	13	15:10:00
2478	2019-07-23 08:50:00-06	2019-07-23 14:50:00-06	More installation of boards and cleaning	2019-07-25 22:09:56.043883-06	6.00000	28	13	14:50:00
2479	2019-07-26 07:45:00-06	2019-07-26 13:15:00-06	AITS spreadsheet population program	2019-07-26 13:21:52.589835-06	5.50000	5	5	13:15:00
2480	2019-07-26 13:15:00-06	2019-07-26 13:45:00-06	Reviewed draft	2019-07-26 13:49:33.314406-06	0.50000	175	5	13:45:00
2481	2019-07-26 13:45:00-06	2019-07-26 15:00:00-06	AITS spreadsheet population program	2019-07-26 15:05:38.853393-06	1.25000	5	5	14:00:00
2482	2019-07-26 17:28:49-06	2019-07-26 18:36:40-06	mouser	2019-07-26 18:36:41.780459-06	1.13083	32	10	\N
2483	2019-07-26 20:58:58-06	2019-07-26 23:08:00-06	learning python	2019-07-26 23:08:02.142825-06	2.15056	32	10	\N
2485	2019-07-27 10:10:00-06	2019-07-27 16:00:00-06	Measuring and planing floor	2019-07-27 16:33:53.892337-06	5.83333	28	11	16:00:00
2486	2019-07-26 09:00:00-06	2019-07-26 15:00:00-06	Cutting and installing joists. Long and short	2019-07-27 16:35:15.807558-06	6.00000	28	11	15:00:00
2487	2019-07-25 08:45:00-06	2019-07-25 17:00:00-06	Moving stuff around (CNC,Pick n place, etc) to access south shop flooring, and then	2019-07-27 16:36:34.212648-06	8.25000	28	11	17:00:00
2488	2019-07-23 08:45:00-06	2019-07-23 15:00:00-06	Floor joists install, South shop	2019-07-27 16:37:57.386179-06	6.25000	28	11	15:00:00
2489	2019-07-22 08:40:00-06	2019-07-22 15:00:00-06	leveling floor	2019-07-27 16:38:35.31488-06	6.33333	28	11	15:00:00
2484	2019-07-27 15:40:44-06	2019-07-27 17:41:25-06	learning python	2019-07-27 17:41:26.973468-06	2.01139	32	10	\N
2490	2019-07-27 21:29:31-06	2019-07-27 23:04:16-06	learning python	2019-07-27 23:04:19.136413-06	1.57917	32	10	\N
2491	2019-07-25 09:00:00-06	2019-07-25 16:15:00-06	Installation of floor boards	2019-07-27 23:14:03.747836-06	7.25000	28	13	16:15:00
2492	2019-07-26 09:00:00-06	2019-07-26 15:00:00-06	Gluing and bolting boards to floor	2019-07-27 23:14:38.990405-06	6.00000	28	13	15:00:00
2493	2019-07-29 07:30:00-06	2019-07-29 08:00:00-06	Status	2019-07-29 08:01:08.083245-06	0.50000	21	5	08:00:00
2495	2019-07-29 10:45:00-06	2019-07-29 12:00:00-06	Progeny IPT	2019-07-29 12:10:42.018141-06	1.25000	21	5	12:00:00
2494	2019-07-29 08:00:00-06	2019-07-29 10:45:00-06	BP1088,BP1093,BP1094,BP1097	2019-07-29 12:12:00.673983-06	2.75000	41	5	10:45:00
2496	2019-07-29 12:00:00-06	2019-07-29 13:45:00-06	BP1088,BP1093,BP1094,BP1097	2019-07-29 13:46:05.520501-06	1.75000	41	5	13:45:00
2497	2019-07-29 13:45:00-06	2019-07-29 16:15:00-06	Serial Number file generation	2019-07-29 16:19:25.849083-06	2.50000	8	5	16:15:00
2498	2019-07-29 17:19:03-06	2019-07-29 18:06:56-06	learning python	2019-07-29 18:06:57.682319-06	0.79806	32	10	\N
2500	2019-07-29 18:41:47-06	2019-07-29 20:24:06-06	learning python	2019-07-29 20:24:07.56397-06	1.70528	32	10	\N
2501	2019-07-29 09:35:46-06	2019-07-29 11:30:00-06	supplies, banking	2019-07-30 09:36:37.57637-06	1.90389	40	7	11:30:00
2504	2019-07-30 08:00:00-06	2019-07-30 08:30:00-06	Ceramic binning	2019-07-30 10:40:06.176459-06	0.50000	185	5	08:30:00
2505	2019-07-30 08:30:00-06	2019-07-30 09:30:00-06	BP1081 channel 88 problem	2019-07-30 10:40:45.596709-06	1.00000	185	5	09:30:00
2506	2019-07-30 09:30:00-06	2019-07-30 10:15:00-06	NUWC IPT	2019-07-30 10:41:08.320898-06	0.75000	21	5	10:15:00
2507	2019-07-30 10:15:00-06	2019-07-30 14:00:00-06	New checklists	2019-07-30 14:17:13.927228-06	3.75000	15	5	14:00:00
2503	2019-07-30 07:30:00-06	2019-07-30 08:00:00-06	BP1092 AIB conductivity test	2019-07-30 14:17:36.647361-06	0.50000	185	5	08:00:00
2508	2019-07-30 14:00:00-06	2019-07-30 14:15:00-06	BP1092 AIB conductivity test	2019-07-30 14:17:54.028922-06	0.25000	185	5	14:15:00
2511	2019-07-31 07:30:00-06	2019-07-31 08:00:00-06	Status	2019-07-31 08:00:25.760848-06	0.50000	21	5	08:00:00
2512	2019-07-31 08:00:00-06	2019-07-31 11:30:00-06	Initial testing	2019-07-31 11:27:10.848485-06	3.50000	8	5	11:30:00
2513	2019-07-31 11:30:00-06	2019-07-31 12:30:00-06	Element test meeting	2019-07-31 12:26:35.362204-06	1.00000	185	5	12:30:00
2515	2019-07-31 08:30:00-06	2019-07-31 09:46:00-06	bank	2019-07-31 20:09:15.984428-06	1.26667	40	7	09:46:00
2514	2019-07-31 19:18:45-06	2019-07-31 22:26:47-06	studying python	2019-07-31 22:26:48.582063-06	3.13389	32	10	\N
2516	2019-08-01 07:30:00-06	2019-08-01 08:30:00-06	Serial Number file generation	2019-08-01 08:34:39.588075-06	1.00000	8	5	08:30:00
2517	2019-08-01 08:30:00-06	2019-08-01 10:30:00-06	Review new requirements	2019-08-01 10:35:06.810502-06	2.00000	172	5	10:30:00
2519	2019-08-01 12:30:00-06	2019-08-01 14:00:00-06	ATF2, Staff meeting	2019-08-01 14:10:52.882697-06	1.50000	184	5	14:00:00
2518	2019-08-01 10:30:00-06	2019-08-01 12:30:00-06	Test files	2019-08-01 14:14:10.859849-06	2.00000	8	5	12:30:00
2520	2019-08-01 14:00:00-06	2019-08-01 15:30:00-06	Plot generation	2019-08-01 15:31:52.59785-06	1.50000	8	5	15:30:00
2521	2019-08-01 14:00:00-06	2019-08-01 16:00:00-06	accounting	2019-08-01 19:30:15.499936-06	2.00000	40	7	\N
2522	2019-08-01 21:14:33-06	2019-08-01 23:14:58-06	learning python	2019-08-01 23:15:00.209172-06	2.00694	32	10	\N
2523	2019-08-02 22:08:53-06	2019-08-02 23:23:22-06	learning python	2019-08-02 23:23:24.079825-06	1.24139	32	10	\N
2524	2019-08-03 09:16:11-06	2019-08-03 09:57:26-06	accounting	2019-08-03 09:57:28.953066-06	0.68750	39	7	\N
2525	2019-08-03 20:58:16-06	2019-08-03 23:05:17-06	learning python	2019-08-03 23:05:20.747165-06	2.11694	32	10	\N
2526	2019-07-01 09:00:00-06	2019-07-01 15:00:00-06	Leveling floor	2019-08-04 12:20:58.982088-06	6.00000	28	11	15:00:00
2527	2019-07-02 08:40:00-06	2019-07-02 15:00:00-06	Leveling floor	2019-08-04 12:21:24.992516-06	6.33333	28	11	15:00:00
2528	2019-08-02 08:45:00-06	2019-08-02 16:31:00-06	leveling floor	2019-08-04 12:22:41.193493-06	7.76667	28	11	16:31:00
2529	2019-08-01 09:20:00-06	2019-08-01 15:10:00-06	Leveling floor	2019-08-04 12:23:03.938801-06	5.83333	28	11	15:10:00
2531	2019-08-05 07:30:00-06	2019-08-05 08:00:00-06	Status	2019-08-05 08:30:14.594463-06	0.50000	21	5	08:00:00
2499	2019-07-29 17:45:00-06	2019-07-29 21:00:00-06	Inventory	2019-08-05 20:55:30.921599-06	3.25000	28	8	21:00:00
2532	2019-08-05 08:00:00-06	2019-08-05 08:30:00-06	BP1108 6 IR failures	2019-08-05 08:31:28.380794-06	0.50000	81	5	08:30:00
2533	2019-08-05 08:30:00-06	2019-08-05 09:00:00-06	BP1092 AIB conductivity test	2019-08-05 09:45:06.517235-06	0.50000	185	5	09:00:00
2617	2019-08-13 06:50:00-06	2019-08-13 15:29:06-06	Working on floor.	2019-08-13 15:29:12.007376-06	8.65167	28	3	\N
2534	2019-08-05 09:00:00-06	2019-08-05 10:45:00-06	Test files	2019-08-05 11:35:53.398159-06	1.75000	8	5	10:45:00
2535	2019-08-05 10:45:00-06	2019-08-05 11:30:00-06	Progeny IPT	2019-08-05 11:36:36.525004-06	0.75000	21	5	11:30:00
2537	2019-08-05 12:00:00-06	2019-08-05 15:30:28-06	supplies, bank	2019-08-05 15:30:31.027138-06	3.50778	40	7	\N
2536	2019-08-05 11:30:00-06	2019-08-05 17:00:00-06	Test files, Plots	2019-08-05 16:58:06.563834-06	5.50000	8	5	14:45:00
2530	2019-08-05 06:55:00-06	2019-08-05 17:02:33-06	Working on floor.	2019-08-05 17:02:40.794813-06	10.12583	28	3	\N
2539	2019-08-05 16:28:24-06	2019-08-05 18:00:36-06	studying python	2019-08-05 18:00:38.842425-06	1.53667	32	10	\N
2540	2019-08-05 18:37:27-06	2019-08-05 20:04:06-06	studying python	2019-08-05 20:04:08.171497-06	1.44417	32	10	\N
2541	2019-08-05 17:45:00-06	2019-08-05 21:00:00-06	Inventory	2019-08-05 20:55:55.231979-06	3.25000	28	8	21:00:00
2543	2019-08-06 07:45:00-06	2019-08-06 08:30:00-06	Validation document review	2019-08-06 08:30:33.421721-06	0.75000	184	5	08:30:00
2544	2019-08-06 09:00:21-06	2019-08-06 10:08:13-06	misc	2019-08-06 10:08:15.932906-06	1.13111	39	7	\N
2545	2019-08-06 08:30:00-06	2019-08-06 15:00:00-06	Trim automation with Scott	2019-08-06 15:53:27.623097-06	6.50000	172	5	14:30:00
2546	2019-08-06 15:00:00-06	2019-08-06 16:00:00-06	Meeting and transferring data from old computer	2019-08-06 15:54:28.679469-06	1.00000	77	5	16:00:00
2542	2019-08-06 07:00:00-06	2019-08-06 16:40:00-06	Working on floor.	2019-08-07 07:01:27.735146-06	9.66667	28	3	\N
2568	2019-08-09 12:30:00-06	2019-08-09 14:30:00-06	Element verification bug	2019-08-09 14:31:34.647775-06	2.00000	84	5	14:30:00
2548	2019-08-07 07:30:00-06	2019-08-07 08:00:00-06	Status	2019-08-07 07:58:03.039673-06	0.50000	21	5	08:00:00
2549	2019-08-07 08:00:00-06	2019-08-07 08:45:00-06	Researching requirements	2019-08-07 09:13:44.186717-06	0.75000	225	5	08:30:00
2550	2019-08-07 08:45:00-06	2019-08-07 10:15:00-06	Carrier Consolidation - setup test	2019-08-07 10:10:48.162214-06	1.50000	3	5	10:15:00
2552	2019-08-07 10:45:00-06	2019-08-07 11:15:00-06	Researching requirements	2019-08-07 11:10:37.928232-06	0.50000	225	5	11:15:00
2551	2019-08-07 10:15:00-06	2019-08-07 10:45:00-06	Reporting utility	2019-08-07 11:37:56.831965-06	0.50000	84	5	10:45:00
2553	2019-08-07 11:15:00-06	2019-08-07 12:30:00-06	Reporting utility	2019-08-07 13:00:00.842625-06	1.25000	84	5	12:30:00
2554	2019-08-07 12:30:00-06	2019-08-07 13:00:00-06	Ceramic meeting	2019-08-07 13:00:35.337061-06	0.50000	185	5	13:00:00
2555	2019-08-07 13:00:00-06	2019-08-07 13:15:00-06	Element verification bug	2019-08-07 15:08:44.519883-06	0.25000	84	5	13:15:00
2556	2019-08-07 13:15:00-06	2019-08-07 15:00:00-06	LabView Tutorial	2019-08-07 16:05:52.268761-06	1.75000	184	5	15:00:00
2557	2019-08-07 15:00:00-06	2019-08-07 15:30:00-06	Status	2019-08-07 16:06:22.5251-06	0.50000	21	5	15:30:00
2558	2019-08-07 15:30:00-06	2019-08-07 16:00:00-06	Element verification bug	2019-08-07 16:06:52.484098-06	0.50000	84	5	16:00:00
2547	2019-08-07 07:00:00-06	2019-08-07 17:15:10-06	Working on floor.	2019-08-07 17:15:14.364343-06	10.25278	28	3	\N
2569	2019-08-09 09:00:00-06	2019-08-09 15:01:02-06	Working on floor.	2019-08-09 15:01:06.698361-06	6.01722	28	3	\N
2559	2019-08-08 08:30:00-06	2019-08-08 10:00:00-06	Element verification bug	2019-08-08 10:57:53.221084-06	1.50000	84	5	10:00:00
2560	2019-08-08 10:00:00-06	2019-08-08 11:00:00-06	MRR meeting	2019-08-08 10:58:13.087716-06	1.00000	21	5	11:00:00
2561	2019-08-08 11:00:00-06	2019-08-08 13:00:00-06	Element verification bug	2019-08-08 15:27:19.80987-06	2.00000	84	5	13:00:00
2562	2019-08-08 13:00:00-06	2019-08-08 15:30:00-06	LabView meeting	2019-08-08 15:27:46.008615-06	2.50000	184	5	15:30:00
2563	2019-08-08 16:15:00-06	2019-08-08 17:30:00-06	Element verification bug	2019-08-08 17:33:09.775616-06	1.25000	84	5	17:30:00
2564	2019-08-08 07:00:00-06	2019-08-08 17:38:31-06	Working on floor.	2019-08-08 17:38:33.960947-06	10.64194	28	3	\N
2565	2019-08-08 18:00:00-06	2019-08-08 20:30:00-06	Element verification bug	2019-08-08 20:43:17.858178-06	2.50000	84	5	20:30:00
2566	2019-08-09 07:45:00-06	2019-08-09 12:00:00-06	Element verification bug	2019-08-09 12:36:09.124381-06	4.25000	84	5	12:00:00
2567	2019-08-09 12:00:00-06	2019-08-09 12:30:00-06	Hi Voltage Failures	2019-08-09 12:36:55.454021-06	0.50000	84	5	12:30:00
2571	2019-08-05 08:45:00-06	2019-08-05 15:05:00-06	leveling floor	2019-08-09 17:19:16.29132-06	6.33333	28	11	15:05:00
2572	2019-08-06 08:26:00-06	2019-08-06 15:00:00-06	leveling floor	2019-08-09 17:19:55.9161-06	6.56667	28	11	15:00:00
2573	2019-08-09 08:25:00-06	2019-08-09 15:07:00-06	leveling floor	2019-08-09 17:20:27.545781-06	6.70000	28	11	15:07:00
2574	2019-08-07 09:17:00-06	2019-08-07 15:00:00-06	leveling floor	2019-08-09 17:20:59.418299-06	5.71667	28	11	15:00:00
2570	2019-08-09 16:30:00-06	2019-08-09 17:30:00-06	Element verification bug	2019-08-09 17:46:04.851019-06	1.00000	84	5	17:30:00
2575	2019-08-10 09:30:00-06	2019-08-10 12:30:00-06	Element verification bug	2019-08-10 12:36:54.722093-06	3.00000	84	5	12:30:00
2576	2019-08-10 13:30:00-06	2019-08-10 15:00:00-06	Element verification bug	2019-08-10 15:42:15.567485-06	1.50000	84	5	15:00:00
2577	2019-08-10 15:45:00-06	2019-08-10 17:30:00-06	Element verification bug	2019-08-10 17:26:17.168803-06	1.75000	84	5	17:30:00
2578	2019-08-05 09:10:00-06	2019-08-05 14:35:00-06	Leveling and gluing boards	2019-08-11 23:02:53.247267-06	5.41667	28	13	14:35:00
2579	2019-08-06 09:00:00-06	2019-08-06 16:15:00-06	Cutting plywood and laying down plastic	2019-08-11 23:04:38.711704-06	7.25000	28	13	16:15:00
2580	2019-08-07 09:25:00-06	2019-08-07 16:00:00-06	Screwing down plywood pieces	2019-08-11 23:05:41.268-06	6.58333	28	13	16:00:00
2582	2019-08-12 13:45:00-06	2019-08-12 14:15:00-06	Checking Element Verification	2019-08-12 14:11:13.603083-06	0.50000	84	5	14:15:00
2581	2019-08-12 07:00:00-06	2019-08-12 15:15:32-06	Working on floor.	2019-08-12 15:15:36.500483-06	8.25889	28	3	\N
2583	2019-08-12 14:15:00-06	2019-08-12 15:00:00-06	Reporting utility	2019-08-12 15:27:16.195743-06	0.75000	84	5	15:00:00
2616	2019-08-13 12:00:00-06	2019-08-13 14:30:00-06	Reporting utility	2019-08-13 14:28:31.067694-06	2.50000	84	5	14:30:00
2623	2019-08-15 10:00:00-06	2019-08-15 15:07:00-06	Working on floor.	2019-08-15 15:07:04.172012-06	5.11667	28	3	\N
2618	2019-08-13 17:15:00-06	2019-08-13 18:00:00-06	Reporting utility	2019-08-13 18:04:44.689101-06	0.75000	84	5	18:00:00
2619	2019-08-13 15:00:00-06	2019-08-13 15:15:00-06	Answered questions	2019-08-13 18:05:49.994874-06	0.25000	81	5	15:15:00
2620	2019-08-14 06:45:00-06	2019-08-14 15:06:00-06	Working on floor.	2019-08-14 15:06:02.996254-06	8.35000	28	3	\N
2621	2019-08-15 06:41:01-06	2019-08-15 08:29:59-06	Working on floor.	2019-08-15 10:54:25.413103-06	1.81611	28	3	\N
2622	2019-08-15 08:30:00-06	2019-08-15 09:59:59-06	Replacing connector P90.	2019-08-15 10:55:10.204469-06	1.49972	173	3	\N
2624	2019-08-15 07:30:00-06	2019-08-15 15:00:00-06	sanding floor	2019-08-15 17:09:04.8093-06	7.50000	28	11	15:00:00
2625	2019-08-12 08:48:00-06	2019-08-12 12:00:00-06	Leveling and gluing boards	2019-08-15 17:10:04.796461-06	3.20000	28	11	12:00:00
2626	2019-08-12 13:00:00-06	2019-08-12 15:17:00-06	floor	2019-08-15 17:10:30.682466-06	2.28333	28	11	15:17:00
2627	2019-08-13 08:30:00-06	2019-08-13 15:04:00-06	Gluing and bolting boards to floor	2019-08-15 17:11:47.227559-06	6.56667	28	11	15:04:00
2628	2019-08-14 09:00:00-06	2019-08-14 15:00:00-06	leveling floor	2019-08-15 17:12:29.305689-06	6.00000	28	11	15:00:00
2629	2019-08-15 17:30:00-06	2019-08-15 21:00:00-06	Inventory	2019-08-15 20:58:21.869609-06	3.50000	28	8	21:00:00
2630	2019-08-16 06:55:00-06	2019-08-16 15:15:00-06	Working on floor.	2019-08-17 09:52:23.399588-06	8.33333	28	3	\N
2631	2019-08-17 09:00:00-06	2019-08-17 11:07:26-06	Working on floor.	2019-08-17 11:07:33.364069-06	2.12389	28	3	\N
2633	2019-08-19 07:30:00-06	2019-08-19 08:30:00-06	Status	2019-08-19 08:26:13.003716-06	1.00000	21	5	08:30:00
2634	2019-08-19 08:15:00-06	2019-08-19 12:30:00-06	bank, paper work	2019-08-19 14:42:00.571556-06	4.25000	40	7	12:30:00
2636	2019-08-12 09:30:00-06	2019-08-12 15:15:00-06	Gluing and nailing boards down	2019-08-19 08:37:50.157942-06	5.75000	28	13	15:15:00
2637	2019-08-13 08:30:00-06	2019-08-13 15:00:00-06	More of gluing and installing boards	2019-08-19 08:39:13.280117-06	6.50000	28	13	15:00:00
2638	2019-08-19 09:20:00-06	2019-08-19 15:00:00-06	Final sanding	2019-08-19 08:40:27.786554-06	5.66667	28	13	15:00:00
2639	2019-08-16 08:30:00-06	2019-08-16 12:15:00-06	Painting on first coat of floor coating	2019-08-19 08:41:22.218855-06	3.75000	28	13	12:15:00
2635	2019-08-19 08:30:00-06	2019-08-19 08:45:00-06	Reinstalled AITS board	2019-08-19 08:44:15.95726-06	0.25000	15	5	08:45:00
2640	2019-08-14 09:20:00-06	2019-08-14 15:00:00-06	Final gluing and beginning sanding	2019-08-19 08:44:20.791647-06	5.66667	28	13	15:00:00
2815	2019-09-13 07:00:00-06	2019-09-13 13:40:24-06	Working on walls.	2019-09-13 13:40:29.139221-06	6.67333	28	3	\N
2641	2019-08-19 08:45:00-06	2019-08-19 09:15:00-06	Trim automation install	2019-08-19 09:26:06.966659-06	0.50000	172	5	09:15:00
2642	2019-08-19 09:15:00-06	2019-08-19 10:15:00-06	Element verification test	2019-08-19 10:13:52.757648-06	1.00000	84	5	10:15:00
2643	2019-08-19 10:15:00-06	2019-08-19 11:15:00-06	Trusted download revision	2019-08-19 11:13:27.287334-06	1.00000	84	5	11:15:00
2644	2019-08-19 11:15:00-06	2019-08-19 11:45:00-06	Installed new cables	2019-08-19 11:53:56.211715-06	0.50000	15	5	11:45:00
2632	2019-08-19 07:00:00-06	2019-08-19 07:29:59-06	Working on floor.	2019-08-19 12:14:21.210906-06	0.49972	28	3	\N
2646	2019-08-19 07:30:00-06	2019-08-19 09:14:59-06	Replace connector #89	2019-08-19 12:16:27.488777-06	1.74972	173	3	\N
2676	2019-08-22 16:15:00-06	2019-08-22 16:30:00-06	AITS Connector	2019-08-22 16:27:17.604562-06	0.25000	15	5	16:30:00
2647	2019-08-19 09:15:00-06	2019-08-19 14:45:02-06	Prepping the inside walls.	2019-08-19 14:45:25.913705-06	5.50056	28	3	\N
2648	2019-08-19 14:30:00-06	2019-08-19 15:33:01-06	post	2019-08-19 15:33:03.896683-06	1.05028	28	7	\N
2650	2019-08-19 03:00:00-06	2019-08-19 03:15:00-06	More sanding	2019-08-19 15:35:05.056948-06	0.25000	28	13	03:15:00
2645	2019-08-19 12:00:00-06	2019-08-19 16:45:00-06	Clean up code	2019-08-19 16:46:57.902914-06	4.75000	8	5	16:45:00
2649	2019-08-19 14:45:03-06	2019-08-19 16:29:59-06	Changing connector.	2019-08-19 17:08:26.282788-06	1.74889	173	3	\N
2651	2019-08-19 16:30:00-06	2019-08-19 17:28:03-06	Working on floor.	2019-08-19 17:28:06.985827-06	0.96750	28	3	\N
2652	2019-08-20 08:00:00-06	2019-08-20 08:30:00-06	Status	2019-08-20 08:32:50.73801-06	0.50000	21	5	08:30:00
2672	2019-08-22 06:50:00-06	2019-08-22 16:30:03-06	Painting walls.	2019-08-22 16:30:06.87614-06	9.66750	28	3	\N
2653	2019-08-20 08:30:00-06	2019-08-20 11:30:00-06	Documentation	2019-08-20 12:50:59.472519-06	3.00000	8	5	11:30:00
2655	2019-08-20 11:30:00-06	2019-08-20 12:00:00-06	Checking Software	2019-08-20 12:51:42.865047-06	0.50000	84	5	12:00:00
2654	2019-08-20 07:45:00-06	2019-08-20 12:49:43-06	paint prep	2019-08-20 15:49:51.302472-06	5.07861	28	7	\N
2656	2019-08-20 12:00:00-06	2019-08-20 15:00:00-06	KQI report software	2019-08-20 16:12:14.917649-06	3.00000	226	5	15:00:00
2657	2019-08-20 15:00:00-06	2019-08-20 16:15:00-06	Tuning strategy meeting	2019-08-20 16:16:55.138034-06	1.25000	75	5	16:15:00
2658	2019-08-20 16:15:00-06	2019-08-20 16:30:00-06	Parallel Tuning Path Evaluation	2019-08-20 16:30:54.544798-06	0.25000	75	5	16:30:00
2659	2019-08-20 06:50:00-06	2019-08-20 08:29:59-06	repairing dock PWB.	2019-08-20 17:01:46.570053-06	1.66639	173	3	\N
2660	2019-08-20 08:30:00-06	2019-08-20 17:01:58-06	Working on walls of shop.	2019-08-20 17:02:02.468267-06	8.53278	28	3	\N
2661	2019-08-21 07:15:00-06	2019-08-21 07:30:00-06	KQI report bug	2019-08-21 08:03:53.788798-06	0.25000	80	5	07:30:00
2662	2019-08-21 07:30:00-06	2019-08-21 07:45:00-06	Status	2019-08-21 08:04:29.506066-06	0.25000	21	5	07:45:00
2663	2019-08-21 07:45:00-06	2019-08-21 08:00:00-06	Debug	2019-08-21 08:05:19.315282-06	0.25000	8	5	08:00:00
2665	2019-08-21 07:04:45-06	2019-08-21 09:30:00-06	painting stuff	2019-08-21 11:05:34.755403-06	2.42083	28	7	09:30:00
2664	2019-08-21 08:00:00-06	2019-08-21 12:45:00-06	KQI report bug	2019-08-21 12:47:49.215412-06	4.75000	84	5	12:45:00
2666	2019-08-21 12:15:12-06	2019-08-21 13:15:00-06	pizza party	2019-08-21 14:15:55.769614-06	0.99667	39	7	13:15:00
2668	2019-08-21 06:55:00-06	2019-08-21 17:22:12-06	installing door.	2019-08-21 17:22:15.943419-06	10.45333	28	3	\N
2667	2019-08-21 16:00:00-06	2019-08-21 20:30:00-06	KQI report bug	2019-08-21 20:33:03.910059-06	4.50000	84	5	20:30:00
2669	2019-08-21 08:30:00-06	2019-08-21 15:54:00-06	Sanding walls, teaching fusion 360, etc.	2019-08-21 21:39:30.570004-06	7.40000	28	11	15:54:00
2670	2019-08-20 08:36:00-06	2019-08-20 15:47:00-06	Moving stuff, wall sanding, etc.	2019-08-21 21:40:27.626906-06	7.18333	28	11	15:47:00
2671	2019-08-19 08:30:00-06	2019-08-19 16:10:00-06	Mowing lawn, finishing floor and wall, etc.	2019-08-21 21:41:40.630688-06	7.66667	28	11	16:10:00
2673	2019-08-22 07:45:00-06	2019-08-22 13:00:00-06	KQI report bug	2019-08-22 16:21:52.663551-06	5.25000	185	5	13:00:00
2674	2019-08-22 13:00:00-06	2019-08-22 15:30:00-06	ATF2 strategy	2019-08-22 16:22:29.088094-06	2.50000	184	5	15:30:00
2675	2019-08-22 15:30:00-06	2019-08-22 16:15:00-06	Proposal meeting	2019-08-22 16:26:18.898177-06	0.75000	227	5	16:15:00
2677	2019-08-22 17:45:00-06	2019-08-22 21:00:00-06	Inventory	2019-08-22 21:02:14.469459-06	3.25000	28	8	21:00:00
2680	2019-08-23 07:45:00-06	2019-08-23 09:22:10-06	replace connectors.	2019-08-23 09:22:27.795511-06	1.61944	173	3	\N
2679	2019-08-23 08:15:00-06	2019-08-23 08:30:00-06	Element verification bug	2019-08-23 09:42:33.687226-06	0.25000	84	5	08:30:00
2681	2019-08-23 08:30:00-06	2019-08-23 09:45:00-06	ATF2 strategy	2019-08-23 09:43:01.600465-06	1.25000	184	5	09:45:00
2682	2019-08-23 09:45:00-06	2019-08-23 10:15:00-06	Sweep system debug	2019-08-23 10:08:56.249304-06	0.50000	80	5	10:15:00
2678	2019-08-23 07:45:00-06	2019-08-23 08:15:00-06	Test system debug	2019-08-23 10:09:20.422968-06	0.50000	80	5	08:15:00
2683	2019-08-23 10:15:00-06	2019-08-23 12:30:00-06	Element verification bug	2019-08-23 13:16:12.150219-06	2.25000	84	5	12:30:00
2684	2019-08-23 12:30:00-06	2019-08-23 13:15:00-06	Ceramic meeting	2019-08-23 13:17:09.818584-06	0.75000	185	5	13:15:00
2685	2019-08-23 13:15:00-06	2019-08-23 13:45:00-06	Element verification bug	2019-08-23 13:37:52.789594-06	0.50000	84	5	13:45:00
2686	2019-08-23 13:45:00-06	2019-08-23 14:45:00-06	Parallel Tuning Path Evaluation	2019-08-23 15:14:03.017181-06	1.00000	75	5	14:30:00
2687	2019-08-23 14:45:00-06	2019-08-23 15:45:00-06	Cap, Keff, and dis report	2019-08-23 15:50:20.552248-06	1.00000	8	5	15:45:00
2688	2019-08-23 15:45:00-06	2019-08-23 16:00:00-06	Layout	2019-08-23 15:59:36.672488-06	0.25000	228	5	16:00:00
2689	2019-08-22 07:15:00-06	2019-08-22 09:00:00-06	shop , bank	2019-08-24 07:16:47.660742-06	1.75000	29	7	09:00:00
2690	2019-08-23 08:00:00-06	2019-08-23 09:00:00-06	paper work	2019-08-24 07:17:31.580934-06	1.00000	39	7	09:00:00
2691	2019-08-24 14:00:00-06	2019-08-24 19:00:00-06	Layout	2019-08-24 19:01:01.184794-06	5.00000	228	5	19:00:00
2693	2019-08-26 07:30:00-06	2019-08-26 08:00:00-06	Status	2019-08-26 07:58:20.829738-06	0.50000	21	5	08:00:00
2694	2019-08-26 08:00:00-06	2019-08-26 09:30:00-06	OPS50 tests	2019-08-26 09:24:37.056327-06	1.50000	8	5	09:30:00
2695	2019-08-26 09:30:00-06	2019-08-26 10:45:00-06	Spot measurement grab	2019-08-26 12:52:28.839578-06	1.25000	8	5	10:45:00
2697	2019-08-26 10:45:00-06	2019-08-26 11:45:00-06	Progeny IPT	2019-08-26 12:53:18.981987-06	1.00000	21	5	11:45:00
2698	2019-08-26 11:45:00-06	2019-08-26 13:45:00-06	Spot measurement debug	2019-08-26 13:38:53.499398-06	2.00000	8	5	13:45:00
2699	2019-08-26 13:45:00-06	2019-08-26 16:30:00-06	Modified code	2019-08-26 16:23:49.332401-06	2.75000	229	5	16:30:00
2700	2019-08-26 17:45:00-06	2019-08-26 20:00:00-06	Inventory	2019-08-26 19:55:06.422892-06	2.25000	28	8	20:00:00
2701	2019-08-26 20:45:00-06	2019-08-26 21:45:00-06	Layout	2019-08-26 21:46:21.64677-06	1.00000	228	5	21:45:00
2702	2019-08-27 08:15:00-06	2019-08-27 08:45:00-06	Relay board issue	2019-08-27 10:06:22.758804-06	0.50000	15	5	08:45:00
2703	2019-08-27 08:45:00-06	2019-08-27 09:00:00-06	Carrier Consolidation debug	2019-08-27 10:07:21.502726-06	0.25000	229	5	09:00:00
2704	2019-08-27 09:00:00-06	2019-08-27 10:00:00-06	NUWC IPT	2019-08-27 10:11:10.522446-06	1.00000	21	5	10:00:00
2705	2019-08-27 10:00:00-06	2019-08-27 10:30:00-06	Carrier Consolidation debug	2019-08-27 11:05:25.522411-06	0.50000	229	5	10:30:00
2706	2019-08-27 11:00:00-06	2019-08-27 13:00:00-06	BP1081, BP1092, BP1095, BP1096	2019-08-28 09:15:13.741463-06	2.00000	41	5	13:00:00
2692	2019-08-26 07:00:00-06	2019-08-26 12:22:01-06	Repairing 3 MOD1 docking PWB.	2019-09-02 15:06:04.849033-06	5.36694	125	3	\N
2696	2019-08-26 12:22:02-06	2019-08-26 15:00:00-06	Working on walls.	2019-08-27 14:55:32.19188-06	2.63278	28	3	\N
2707	2019-08-27 07:00:00-06	2019-08-27 10:29:59-06	Working on walls.	2019-08-27 14:57:04.656929-06	3.49972	28	3	\N
2710	2019-08-27 13:00:00-06	2019-08-27 17:00:00-06	Tuning decisions and improvements	2019-08-27 20:47:33.572014-06	4.00000	75	5	17:00:00
2711	2019-08-27 20:45:00-06	2019-08-27 22:15:00-06	Tuning additional features	2019-08-27 22:15:32.851107-06	1.50000	75	5	22:15:00
2709	2019-08-27 12:15:01-06	2019-08-27 15:25:00-06	Working on walls.	2019-08-28 06:56:09.434311-06	3.16639	28	3	\N
2713	2019-08-27 07:30:00-06	2019-08-27 08:00:00-06	Status	2019-08-28 07:56:11.762231-06	0.50000	21	5	08:00:00
2714	2019-08-28 07:30:00-06	2019-08-28 08:00:00-06	Status	2019-08-28 09:12:27.839652-06	0.50000	21	5	08:00:00
2715	2019-08-28 08:00:00-06	2019-08-28 08:30:00-06	BP1096 connector	2019-08-28 09:13:56.029156-06	0.50000	15	5	08:30:00
2716	2019-08-28 08:30:00-06	2019-08-28 09:00:00-06	BP1081, BP1092, BP1095, BP1096	2019-08-28 09:14:53.949008-06	0.50000	42	5	09:00:00
2717	2019-08-28 09:00:00-06	2019-08-28 10:00:00-06	DVDs for shipment	2019-08-28 09:55:10.857892-06	1.00000	41	5	09:45:00
2712	2019-08-28 06:50:00-06	2019-08-28 15:17:36-06	Working on walls.	2019-08-28 15:17:41.716307-06	8.46000	28	3	\N
2718	2019-08-28 10:00:00-06	2019-08-28 15:45:00-06	Tuning changes	2019-08-28 15:43:27.50219-06	5.75000	75	5	15:45:00
2720	2019-08-27 08:30:00-06	2019-08-27 15:15:00-06	Moving final stuff and painting the wall. I forgot to put these hours in for last Tuesday	2019-08-28 20:07:24.392787-06	6.75000	28	13	15:15:00
2746	2019-09-03 11:30:00-06	2019-09-03 12:30:00-06	Connector issues meeting	2019-09-03 12:34:32.922858-06	1.00000	21	5	12:30:00
2719	2019-08-28 18:00:00-06	2019-08-28 20:45:00-06	Tuning changes	2019-08-29 07:37:15.914017-06	2.75000	75	5	20:45:00
2721	2019-08-29 07:30:00-06	2019-08-29 11:00:00-06	Tuning changes	2019-08-29 11:06:40.12251-06	3.50000	75	5	11:00:00
2722	2019-08-29 11:00:00-06	2019-08-29 11:15:00-06	Manual report	2019-08-29 11:19:22.429447-06	0.25000	226	5	11:15:00
2723	2019-08-29 11:15:00-06	2019-08-29 11:45:00-06	AITS connector fix	2019-08-29 11:51:29.524844-06	0.50000	15	5	11:45:00
2724	2019-08-29 11:45:00-06	2019-08-29 12:30:00-06	Tuning changes	2019-08-29 12:26:38.98658-06	0.75000	75	5	12:30:00
2725	2019-08-29 12:30:00-06	2019-08-29 12:45:00-06	ATF2 strategy	2019-08-29 14:04:04.360062-06	0.25000	184	5	12:45:00
2726	2019-08-29 12:45:00-06	2019-08-29 13:00:00-06	Tuning changes	2019-08-29 14:04:36.573008-06	0.25000	75	5	13:00:00
2727	2019-08-29 13:00:00-06	2019-08-29 14:00:00-06	Status	2019-08-29 14:05:53.352048-06	1.00000	21	5	14:00:00
2728	2019-08-29 07:05:00-06	2019-08-29 15:10:00-06	Painting.	2019-08-29 15:43:34.08806-06	8.08333	28	3	\N
2729	2019-08-29 14:00:00-06	2019-08-29 16:00:00-06	Fix duplicate elements	2019-08-29 16:00:06.560723-06	2.00000	229	5	16:00:00
2730	2019-08-29 08:00:00-06	2019-08-29 12:00:00-06	supplies, bank	2019-08-29 17:02:44.1804-06	4.00000	28	7	12:00:00
2731	2019-08-26 09:00:00-06	2019-08-26 11:00:00-06	supplies	2019-08-29 17:03:32.527076-06	2.00000	40	7	11:00:00
2732	2019-08-27 10:00:00-06	2019-08-27 12:30:00-06	materials	2019-08-29 17:05:14.34104-06	2.50000	39	7	12:30:00
2733	2019-08-29 10:00:00-06	2019-08-29 11:25:00-06	Designing the Engimusing logo for the wall. Letters cut out	2019-08-29 21:00:52.271141-06	1.41667	166	11	11:25:00
2734	2019-08-30 07:00:00-06	2019-08-30 15:18:28-06	Working on walls.	2019-08-30 15:18:31.681217-06	8.30778	28	3	\N
2735	2019-08-30 14:15:00-06	2019-08-30 15:45:00-06	Fix duplicate elements	2019-08-30 15:58:12.610503-06	1.50000	229	5	15:45:00
2736	2019-08-31 15:30:00-06	2019-08-31 16:30:00-06	Inventory file fix	2019-08-31 16:44:38.818647-06	1.00000	229	5	16:30:00
2738	2019-08-31 17:00:00-06	2019-08-31 18:15:00-06	Array sweep dock layout	2019-08-31 18:19:48.380149-06	1.25000	228	5	18:15:00
2739	2019-09-02 12:30:00-06	2019-09-02 13:45:00-06	Array sweep dock layout	2019-09-02 14:13:12.046067-06	1.25000	228	5	13:37:00
2708	2019-08-27 10:30:00-06	2019-08-27 12:15:00-06	Replacing relay.	2019-09-02 15:06:42.01676-06	1.75000	87	3	\N
2742	2019-09-03 07:30:00-06	2019-09-03 08:00:00-06	Status	2019-09-03 07:59:55.241535-06	0.50000	21	5	08:00:00
2743	2019-09-03 08:00:00-06	2019-09-03 10:45:00-06	BP1098	2019-09-03 12:32:55.758948-06	2.75000	41	5	10:45:00
2744	2019-09-03 10:45:00-06	2019-09-03 11:15:00-06	BP1098	2019-09-03 12:33:31.473628-06	0.50000	42	5	11:15:00
2745	2019-09-03 11:15:00-06	2019-09-03 11:30:00-06	Mapping issue	2019-09-03 12:34:00.391914-06	0.25000	80	5	11:30:00
2747	2019-09-03 12:30:00-06	2019-09-03 13:30:00-06	Mapping issue	2019-09-03 13:36:07.688268-06	1.00000	80	5	13:30:00
2748	2019-09-03 13:30:00-06	2019-09-03 13:45:00-06	PM checksheets	2019-09-03 14:28:28.375265-06	0.25000	15	5	13:45:00
2749	2019-09-03 13:45:00-06	2019-09-03 16:00:00-06	Tuning additional features	2019-09-03 16:00:24.372958-06	2.25000	75	5	16:00:00
2741	2019-09-03 07:00:00-06	2019-09-03 17:10:09-06	Working on walls.	2019-09-03 17:10:14.883508-06	10.16917	28	3	\N
2750	2019-09-03 19:00:00-06	2019-09-03 20:30:00-06	Tuning additional features	2019-09-03 20:43:50.532002-06	1.50000	75	5	20:30:00
2751	2019-09-03 20:30:00-06	2019-09-03 22:00:00-06	Layout & send out	2019-09-03 22:11:33.768433-06	1.50000	8	5	22:00:00
2753	2019-09-04 07:45:00-06	2019-09-04 08:00:00-06	HVIR boards send out	2019-09-04 08:07:21.620534-06	0.25000	8	5	08:00:00
2754	2019-09-04 08:00:00-06	2019-09-04 12:30:00-06	Tuning additional features	2019-09-04 13:13:39.265659-06	4.50000	75	5	12:30:00
2755	2019-09-04 12:30:00-06	2019-09-04 13:15:00-06	Ceramic meeting	2019-09-04 13:40:38.330698-06	0.75000	21	5	13:15:00
2756	2019-09-04 13:15:00-06	2019-09-04 13:45:00-06	Connector inspection	2019-09-04 13:41:28.861462-06	0.50000	87	5	13:45:00
2757	2019-09-04 13:45:00-06	2019-09-04 16:00:00-06	Tuning additional features	2019-09-04 15:56:21.555603-06	2.25000	75	5	16:00:00
2752	2019-09-04 07:00:45-06	2019-09-04 17:07:15-06	Working on walls.	2019-09-04 17:07:18.111373-06	10.10833	28	3	\N
2759	2019-09-05 07:30:00-06	2019-09-05 07:45:00-06	Status	2019-09-05 07:47:13.093084-06	0.25000	21	5	07:45:00
2760	2019-09-05 07:45:00-06	2019-09-05 13:00:00-06	Tuning additional features	2019-09-05 12:54:48.886511-06	5.25000	75	5	13:00:00
2761	2019-09-05 13:00:00-06	2019-09-05 14:30:00-06	ATF2 strategy	2019-09-05 17:05:25.552419-06	1.50000	184	5	14:30:00
2762	2019-09-05 14:30:00-06	2019-09-05 17:00:00-06	Tuning additional features	2019-09-05 17:06:09.125104-06	2.50000	75	5	17:00:00
2758	2019-09-05 06:58:56-06	2019-09-05 17:10:37-06	Working on walls.	2019-09-05 17:10:43.524156-06	10.19472	28	3	\N
2763	2019-09-05 17:45:00-06	2019-09-05 21:00:00-06	Inventory	2019-09-05 20:59:34.930591-06	3.25000	28	8	21:00:00
2764	2019-09-06 07:45:00-06	2019-09-06 15:00:00-06	Tuning additional features	2019-09-06 15:07:22.365606-06	7.25000	75	5	15:00:00
2766	2019-09-06 15:00:00-06	2019-09-06 15:15:00-06	Status	2019-09-06 15:08:18.532639-06	0.25000	21	5	15:45:00
2765	2019-09-06 08:00:00-06	2019-09-06 17:32:08-06	Working on walls.	2019-09-06 17:32:12.778813-06	9.53556	28	3	\N
2767	2019-09-03 08:00:00-06	2019-09-03 12:00:00-06	Painting etc	2019-09-07 13:39:04.332345-06	4.00000	28	7	12:00:00
2768	2019-09-04 09:00:00-06	2019-09-04 10:00:00-06	banking	2019-09-07 13:39:43.308175-06	1.00000	39	7	10:00:00
2769	2019-09-04 13:00:00-06	2019-09-04 16:00:00-06	painting, supplies	2019-09-07 13:41:30.733066-06	3.00000	28	7	16:00:00
2770	2019-09-19 13:00:00-06	2019-09-19 16:00:00-06	painting, supplies	2019-09-07 13:42:14.075787-06	3.00000	28	7	16:00:00
2771	2019-09-06 13:00:00-06	2019-09-06 16:00:00-06	painting, shop	2019-09-07 13:44:11.593277-06	3.00000	28	7	16:00:00
2772	2019-09-07 11:00:00-06	2019-09-07 13:00:00-06	paint	2019-09-07 13:44:37.686056-06	2.00000	28	7	13:00:00
2773	2019-09-09 07:30:00-06	2019-09-09 08:00:00-06	Status	2019-09-09 08:11:54.661779-06	0.50000	21	5	08:00:00
2774	2019-09-09 08:00:00-06	2019-09-09 08:30:00-06	Delete element bug	2019-09-09 08:44:01.489237-06	0.50000	84	5	08:30:00
2776	2019-09-09 08:00:00-06	2019-09-09 10:00:00-06	materials, paint	2019-09-09 11:59:28.987588-06	2.00000	28	7	10:00:00
2775	2019-09-09 08:30:00-06	2019-09-09 10:45:00-06	Install new software	2019-09-09 12:35:47.146869-06	2.25000	75	5	10:45:00
2777	2019-09-09 10:45:00-06	2019-09-09 12:45:00-06	Progeny IPT	2019-09-09 12:36:12.526259-06	2.00000	21	5	12:45:00
2778	2019-09-09 12:45:00-06	2019-09-09 15:00:00-06	Bug Fixes	2019-09-09 14:56:46.777993-06	2.25000	229	5	15:00:00
2780	2019-09-09 15:00:00-06	2019-09-09 15:30:00-06	Review PMR slides	2019-09-09 15:28:31.416687-06	0.50000	185	5	15:30:00
2779	2019-09-09 13:00:00-06	2019-09-09 15:00:00-06	paint, bank statement	2019-09-09 15:48:18.743681-06	2.00000	28	7	15:00:00
2781	2019-09-09 07:15:00-06	2019-09-09 15:25:05-06	Working on walls.	2019-09-09 15:25:07.834618-06	8.16806	28	3	\N
2874	2019-09-25 13:30:00-06	2019-09-25 15:30:00-06	Integration	2019-09-25 15:42:37.548854-06	2.00000	235	5	15:30:00
2782	2019-09-09 17:45:00-06	2019-09-09 21:00:00-06	Website training	2019-09-09 20:59:24.023271-06	3.25000	128	8	21:00:00
2805	2019-09-12 12:30:00-06	2019-09-12 13:00:00-06	Status meeting	2019-09-12 14:26:18.809781-06	0.50000	184	5	13:30:00
2804	2019-09-12 07:00:00-06	2019-09-12 15:19:55-06	Setting up pick and place machine.	2019-09-12 15:19:57.074745-06	8.33194	28	3	\N
2816	2019-09-13 10:57:22-06	2019-09-13 12:30:00-06	cleaning	2019-09-13 14:40:02.8628-06	1.54389	28	7	12:30:00
2785	2019-09-10 08:00:00-06	2019-09-10 09:00:00-06	Revise unmap application	2019-09-10 08:57:00.693273-06	1.00000	231	5	09:00:00
2820	2019-09-16 08:30:00-06	2019-09-16 10:45:00-06	Status report issues	2019-09-16 10:44:43.33186-06	2.25000	84	5	10:45:00
2786	2019-09-10 09:00:00-06	2019-09-10 11:00:00-06	NUWC IPT	2019-09-10 11:02:55.382549-06	2.00000	21	5	11:00:00
2823	2019-09-16 12:00:00-06	2019-09-16 12:15:00-06	Relay board packaging	2019-09-16 12:18:40.235913-06	0.25000	87	5	12:15:00
2788	2019-09-10 09:30:00-06	2019-09-10 10:30:00-06	paint	2019-09-10 11:24:24.56341-06	1.00000	28	7	10:30:00
2787	2019-09-10 11:00:00-06	2019-09-10 12:45:00-06	Revise unmap application	2019-09-10 12:50:30.55339-06	1.75000	231	5	12:45:00
2789	2019-09-10 12:45:00-06	2019-09-10 13:00:00-06	ADAS CADAS/FPGA research	2019-09-10 13:07:48.724398-06	0.25000	87	5	13:00:00
2790	2019-09-10 13:00:00-06	2019-09-10 13:30:00-06	fixed fix_date function	2019-09-10 15:26:15.769277-06	0.50000	84	5	13:30:00
2791	2019-09-10 13:30:00-06	2019-09-10 15:30:00-06	Ordered parts	2019-09-10 15:26:42.651472-06	2.00000	8	5	15:30:00
2783	2019-09-10 07:00:00-06	2019-09-10 16:11:38-06	Working on walls.	2019-09-10 16:11:42.099583-06	9.19389	28	3	\N
2825	2019-09-16 17:45:00-06	2019-09-16 21:00:00-06	Assemble boards	2019-09-16 20:58:05.467015-06	3.25000	29	8	21:00:00
2793	2019-09-11 07:30:00-06	2019-09-11 08:00:00-06	Status	2019-09-11 08:07:17.137086-06	0.50000	21	5	08:00:00
2827	2019-09-17 07:45:00-06	2019-09-17 08:00:00-06	fix create_log	2019-09-17 08:09:51.98927-06	0.25000	181	5	08:00:00
2794	2019-09-11 08:00:00-06	2019-09-11 09:00:00-06	Revised element log	2019-09-11 10:05:42.128582-06	1.00000	181	5	09:00:00
2795	2019-09-11 09:00:00-06	2019-09-11 10:30:00-06	KQI report software	2019-09-11 11:44:40.419135-06	1.50000	181	5	10:00:00
2796	2019-09-11 10:30:00-06	2019-09-11 11:45:00-06	TI-17 proposal review	2019-09-11 11:45:54.531256-06	1.25000	227	5	11:45:00
2784	2019-09-10 07:45:00-06	2019-09-10 08:00:00-06	TI-17 proposal review	2019-09-11 11:46:06.896282-06	0.25000	227	5	08:00:00
2828	2019-09-17 08:00:00-06	2019-09-17 10:15:00-06	PMR	2019-09-17 10:08:58.40225-06	2.25000	21	5	10:15:00
2792	2019-09-11 07:00:00-06	2019-09-11 15:35:41-06	Setting up shop.	2019-09-11 15:35:47.288751-06	8.59472	28	3	\N
2798	2019-09-12 07:00:00-06	2019-09-12 07:15:00-06	Status	2019-09-12 07:14:51.877274-06	0.25000	21	5	07:15:00
2799	2019-09-11 20:30:00-06	2019-09-11 22:00:00-06	AIB layout	2019-09-12 07:17:27.853521-06	1.50000	232	5	22:00:00
2800	2019-09-09 16:00:00-06	2019-09-09 17:00:00-06	Material selection research	2019-09-12 07:19:20.902392-06	1.00000	233	5	17:00:00
2801	2019-09-10 16:00:00-06	2019-09-10 17:00:00-06	Material selection research	2019-09-12 07:20:06.450001-06	1.00000	233	5	17:00:00
2830	2019-09-17 10:30:00-06	2019-09-17 13:45:00-06	PMR	2019-09-17 13:47:50.665395-06	3.25000	21	5	13:45:00
2797	2019-09-11 11:45:00-06	2019-09-11 12:15:00-06	Install revised element log	2019-09-12 07:21:38.989105-06	0.50000	181	5	15:30:00
2802	2019-09-12 07:15:00-06	2019-09-12 08:15:00-06	Test file generation	2019-09-12 07:22:37.523479-06	1.00000	8	5	08:15:00
2803	2019-09-11 12:15:00-06	2019-09-11 15:30:00-06	Debug	2019-09-12 07:23:19.023069-06	3.25000	8	5	15:30:00
2806	2019-09-12 13:00:00-06	2019-09-12 14:00:00-06	Test meeting	2019-09-12 14:22:36.309101-06	1.00000	234	5	14:00:00
2832	2019-09-17 14:00:00-06	2019-09-17 15:30:00-06	Status report issues	2019-09-17 16:02:42.455054-06	1.50000	84	5	15:30:00
2834	2019-09-18 07:30:00-06	2019-09-18 08:00:00-06	Status	2019-09-18 07:54:12.950776-06	0.50000	21	5	08:00:00
2836	2019-09-18 09:00:00-06	2019-09-18 12:30:00-06	Status report issues	2019-09-18 12:33:40.095484-06	3.50000	84	5	12:30:00
2839	2019-09-18 13:30:00-06	2019-09-18 15:00:00-06	Capacitance plot	2019-09-18 14:56:53.048632-06	1.50000	235	5	15:00:00
2841	2019-09-19 05:45:00-06	2019-09-19 09:00:00-06	Replace element	2019-09-19 09:05:26.097904-06	3.25000	235	5	09:00:00
2843	2019-09-19 09:00:00-06	2019-09-19 13:00:00-06	GUI programming	2019-09-19 14:28:49.571129-06	4.00000	236	5	13:00:00
2846	2019-09-20 06:15:00-06	2019-09-20 08:30:00-06	Test procedure	2019-09-20 08:34:08.327063-06	2.25000	236	5	08:30:00
2848	2019-09-20 08:45:00-06	2019-09-20 09:00:00-06	Test procedure	2019-09-20 09:13:21.755357-06	0.25000	236	5	09:00:00
2851	2019-09-20 13:00:00-06	2019-09-20 14:00:00-06	Database research	2019-09-20 14:03:21.179436-06	1.00000	225	5	14:00:00
2853	2019-09-23 07:30:00-06	2019-09-23 08:00:00-06	Status	2019-09-23 15:41:50.317525-06	0.50000	21	5	08:00:00
2857	2019-09-24 07:45:00-06	2019-09-24 08:00:00-06	Status	2019-09-24 07:57:58.024506-06	0.25000	21	5	08:00:00
2858	2019-09-24 08:00:00-06	2019-09-24 09:00:00-06	State machine	2019-09-24 07:58:32.379486-06	1.00000	236	5	09:00:00
2862	2019-09-24 15:00:00-06	2019-09-24 15:15:00-06	BP1099, BP1100, BP1101, BP1104	2019-09-24 15:47:16.680944-06	0.25000	42	5	15:14:59
2860	2019-09-24 10:15:00-06	2019-09-24 15:00:00-06	Serial I/F testing	2019-09-24 15:47:54.124539-06	4.75000	236	5	13:15:00
2864	2019-09-25 07:30:00-06	2019-09-25 08:00:00-06	Status	2019-09-25 08:09:23.662912-06	0.50000	21	5	08:00:00
2866	2019-09-25 08:30:00-06	2019-09-25 09:15:00-06	V76 Analyzer testing	2019-09-25 09:19:57.248483-06	0.75000	236	5	09:15:00
2869	2019-09-25 09:45:00-06	2019-09-25 10:15:00-06	Array 29847 failure	2019-09-25 10:20:13.911556-06	0.50000	172	5	10:15:00
2870	2019-09-25 10:15:00-06	2019-09-25 11:30:00-06	BP1099, BP1100, BP1101, BP1104	2019-09-25 11:24:34.458511-06	1.25000	41	5	11:30:00
2872	2019-09-25 11:45:00-06	2019-09-25 12:45:00-06	Array 29847 failure	2019-09-25 12:44:15.345815-06	1.00000	172	5	12:45:00
2909	2019-09-26 08:15:00-06	2019-09-26 10:00:00-06	Tuning backup improvement	2019-09-26 09:54:49.062797-06	1.75000	84	5	10:00:00
2911	2019-09-26 10:15:00-06	2019-09-26 10:45:00-06	Tuning negative numbers	2019-09-26 10:48:09.85464-06	0.50000	80	5	10:45:00
2913	2019-09-26 11:00:00-06	2019-09-26 12:00:00-06	increase speed sound	2019-09-26 11:58:15.469864-06	1.00000	184	5	12:00:00
2915	2019-09-26 12:30:00-06	2019-09-26 13:00:00-06	Status meeting	2019-09-26 14:01:34.065055-06	0.50000	184	5	13:00:00
2917	2019-09-26 14:00:00-06	2019-09-26 14:15:00-06	Quarterly set up	2019-09-26 15:30:49.112388-06	0.25000	15	5	14:15:00
2919	2019-09-26 17:15:00-06	2019-09-26 17:45:00-06	Database repair app	2019-09-26 17:46:44.77777-06	0.50000	80	5	17:45:00
2855	2019-09-23 17:40:00-06	2019-09-23 21:00:00-06	Assemble boards	2019-09-26 18:14:48.241564-06	3.33333	238	8	21:00:00
2923	2019-09-26 16:30:00-06	2019-09-26 18:10:00-06	Setting up Cherry picker to install Milling machine.	2019-09-27 16:03:15.377781-06	1.66667	28	3	\N
2921	2019-09-27 08:00:00-06	2019-09-27 16:03:46-06	Mounting mill on stand.	2019-09-27 16:03:51.987768-06	8.06278	28	3	\N
2927	2019-09-30 08:15:00-06	2019-09-30 08:45:00-06	Database research	2019-09-30 09:00:55.158989-06	0.50000	225	5	08:45:00
2925	2019-09-30 07:30:00-06	2019-09-30 08:00:00-06	Status	2019-09-30 10:41:37.201103-06	0.50000	21	5	08:00:00
2929	2019-09-30 09:15:00-06	2019-09-30 10:45:00-06	Database research	2019-09-30 10:43:55.525777-06	1.50000	225	5	10:45:00
2937	2019-10-01 10:15:00-06	2019-10-01 11:15:00-06	Architecture discussion	2019-10-01 11:07:27.551117-06	1.00000	184	5	11:15:00
2935	2019-10-01 07:30:00-06	2019-10-01 07:45:00-06	Error reporting	2019-10-01 12:37:54.917363-06	0.25000	236	5	07:45:00
2931	2019-09-30 12:30:00-06	2019-09-30 13:30:00-06	Full fail test	2019-10-01 12:38:22.670839-06	1.00000	236	5	13:30:00
2939	2019-10-01 12:15:00-06	2019-10-01 15:45:00-06	Error reporting, hardware testing	2019-10-01 15:45:57.491993-06	3.50000	236	5	15:45:00
2941	2019-10-02 07:00:00-06	2019-10-02 17:00:07-06	Organizing shop and back porch.	2019-10-02 17:00:11.162171-06	10.00194	28	3	\N
2943	2019-10-03 07:45:00-06	2019-10-03 13:00:00-06	hardware testing	2019-10-03 13:19:55.2181-06	5.25000	236	5	13:00:00
2945	2019-10-03 14:30:00-06	2019-10-03 16:00:00-06	App to generate tuning history	2019-10-03 15:52:39.497357-06	1.50000	84	5	16:00:00
2933	2019-09-30 18:00:00-06	2019-09-30 21:00:00-06	Assemble boards	2019-10-03 19:22:48.890243-06	3.00000	29	8	21:00:00
2947	2019-10-04 07:30:00-06	2019-10-04 07:45:00-06	Modified plots for tuning	2019-10-04 08:17:29.697871-06	0.25000	80	5	07:45:00
2966	2019-10-08 08:00:00-06	2019-10-08 09:00:00-06	manual test setup	2019-10-08 11:05:16.287602-06	1.00000	236	5	09:00:00
2968	2019-10-08 09:00:00-06	2019-10-08 11:00:00-06	NUWC IPT	2019-10-08 11:05:51.245883-06	2.00000	21	5	11:00:00
2969	2019-10-08 11:00:00-06	2019-10-08 14:15:00-06	debug	2019-10-08 14:18:23.820152-06	3.25000	236	5	14:15:00
2967	2019-10-08 06:50:00-06	2019-10-08 15:15:10-06	Shop organisation.	2019-10-08 15:15:14.429199-06	8.41944	28	3	\N
2970	2019-10-08 14:15:00-06	2019-10-08 15:30:00-06	Hard disk reduction with Shawn	2019-10-08 15:54:41.455844-06	1.25000	21	5	15:30:00
2971	2019-10-08 15:30:00-06	2019-10-08 16:00:00-06	Assisting Joe & Clara	2019-10-08 15:55:31.869939-06	0.50000	84	5	16:00:00
2972	2019-10-08 16:00:00-06	2019-10-08 16:45:00-06	debug	2019-10-09 07:29:18.32126-06	0.75000	236	5	16:45:00
2973	2019-10-09 07:30:00-06	2019-10-09 07:45:00-06	Status	2019-10-09 07:41:18.701367-06	0.25000	21	5	07:45:00
2975	2019-10-09 07:00:00-06	2019-10-09 15:30:01-06	Shop organisation.	2019-10-09 15:30:06.197014-06	8.50028	28	3	\N
2974	2019-10-09 07:45:00-06	2019-10-09 16:30:00-06	debug	2019-10-09 16:34:42.46571-06	8.75000	236	5	16:30:00
2976	2019-10-10 06:30:00-06	2019-10-10 12:30:00-06	debug	2019-10-10 13:44:40.101345-06	6.00000	236	5	12:30:00
2977	2019-10-10 12:30:00-06	2019-10-10 13:45:00-06	ATF2 strategy	2019-10-10 13:45:12.273639-06	1.25000	184	5	13:45:00
2978	2019-10-10 06:50:00-06	2019-10-10 15:10:05-06	Shop organisation.	2019-10-10 15:10:09.059026-06	8.33472	28	3	\N
2979	2019-10-10 17:45:00-06	2019-10-10 20:30:00-06	Organization	2019-10-10 20:22:48.435617-06	2.75000	28	8	21:00:00
2981	2019-10-11 07:30:00-06	2019-10-11 08:30:00-06	debug	2019-10-11 08:27:16.129224-06	1.00000	236	5	08:30:00
2980	2019-10-11 07:15:00-06	2019-10-11 15:25:17-06	Shop organisation.	2019-10-11 15:25:20.307709-06	8.17139	28	3	\N
2982	2019-10-14 07:10:00-06	2019-10-14 17:30:16-06	Shop organisation.	2019-10-14 17:30:19.03207-06	10.33778	28	3	\N
2983	2019-10-14 08:45:00-06	2019-10-14 16:45:00-06	Validation document	2019-10-14 17:58:44.770125-06	8.00000	236	5	16:45:00
2984	2019-10-14 17:30:00-06	2019-10-14 21:30:00-06	Organization	2019-10-14 21:31:39.538791-06	4.00000	28	8	21:30:00
2985	2019-10-15 07:30:00-06	2019-10-15 09:30:00-06	Validation document, validation	2019-10-15 09:26:46.423212-06	2.00000	236	5	09:30:00
2986	2019-10-15 09:30:00-06	2019-10-15 10:15:00-06	Mapping meeting	2019-10-15 10:10:20.815986-06	0.75000	84	5	10:45:00
2987	2019-10-15 10:15:00-06	2019-10-15 16:00:00-06	debug	2019-10-15 16:03:34.356836-06	5.75000	236	5	16:00:00
2988	2019-10-16 07:30:00-06	2019-10-16 08:00:00-06	Status	2019-10-16 07:55:59.150277-06	0.50000	236	5	08:00:00
2989	2019-10-16 08:00:00-06	2019-10-16 13:30:00-06	Validation document, validation	2019-10-16 13:29:32.058362-06	5.50000	236	5	13:30:00
2990	2019-10-16 16:15:00-06	2019-10-16 17:45:00-06	CAD design	2019-10-16 17:47:17.085146-06	1.50000	233	5	17:45:00
2991	2019-10-16 18:15:00-06	2019-10-16 19:30:00-06	CAD design	2019-10-16 19:26:27.8817-06	1.25000	233	5	19:30:00
2992	2019-10-17 07:30:00-06	2019-10-17 07:45:00-06	Evaluate 3D print	2019-10-17 08:00:27.744928-06	0.25000	233	5	07:45:00
2993	2019-10-17 08:00:00-06	2019-10-17 10:00:00-06	Install on network computer	2019-10-17 09:54:00.47983-06	2.00000	236	5	10:00:00
2994	2019-10-17 10:00:00-06	2019-10-17 13:00:00-06	Test new dock boards	2019-10-17 14:25:53.098673-06	3.00000	235	5	13:00:00
2995	2019-10-17 13:00:00-06	2019-10-17 14:30:00-06	LV Test meeting	2019-10-17 14:26:40.666293-06	1.50000	234	5	14:30:00
2996	2019-10-17 15:00:00-06	2019-10-17 16:15:00-06	Test new dock boards	2019-10-17 16:13:35.83683-06	1.25000	235	5	16:15:00
2997	2019-10-17 18:00:00-06	2019-10-17 20:30:00-06	Assemble boards	2019-10-17 20:31:36.448845-06	2.50000	29	8	20:30:00
2998	2019-10-17 19:00:00-06	2019-10-17 19:30:00-06	Test new dock boards	2019-10-18 07:17:33.931103-06	0.50000	235	5	19:30:00
2999	2019-10-18 07:00:00-06	2019-10-18 13:30:00-06	Test new dock boards	2019-10-18 14:30:01.165245-06	6.50000	235	5	13:30:00
3000	2019-10-18 13:30:00-06	2019-10-18 14:00:00-06	Mapping meeting	2019-10-18 14:30:21.282181-06	0.50000	84	5	14:00:00
3001	2019-10-18 14:00:00-06	2019-10-18 14:30:00-06	Test 16 channel lead-lead test	2019-10-18 15:16:41.206538-06	0.50000	236	5	14:30:00
3002	2019-10-18 14:30:00-06	2019-10-18 15:15:00-06	Connector shell replacement	2019-10-18 15:17:15.237154-06	0.75000	84	5	15:15:00
3003	2019-10-18 16:15:00-06	2019-10-18 16:30:00-06	3D print	2019-10-18 16:32:12.011797-06	0.25000	233	5	16:30:00
3004	2019-10-19 13:12:00-06	2019-10-19 14:09:00-06	Redesigning E and N	2019-10-19 14:55:41.052625-06	0.95000	28	11	14:09:00
3005	2019-10-19 14:35:00-06	2019-10-19 14:55:00-06	Designing G	2019-10-19 14:56:10.850884-06	0.33333	28	11	14:55:00
3006	2019-10-21 07:30:00-06	2019-10-21 08:00:00-06	Status	2019-10-21 09:30:21.720593-06	0.50000	21	5	08:00:00
3007	2019-10-21 08:00:00-06	2019-10-21 08:30:00-06	ESS review	2019-10-21 09:30:46.693735-06	0.50000	42	5	08:30:00
3008	2019-10-21 08:30:00-06	2019-10-21 10:45:00-06	Backup & File sync	2019-10-21 11:30:54.521243-06	2.25000	181	5	10:45:00
3009	2019-10-21 10:45:00-06	2019-10-21 12:00:00-06	Progeny IPT	2019-10-21 11:57:06.377594-06	1.25000	21	5	12:00:00
3010	2019-10-21 12:00:00-06	2019-10-21 13:00:00-06	Backup & File sync	2019-10-21 12:56:42.003184-06	1.00000	181	5	13:00:00
3011	2019-10-21 13:00:00-06	2019-10-21 17:15:00-06	KQI check	2019-10-21 17:08:50.55869-06	4.25000	84	5	13:45:00
3013	2019-10-22 07:30:00-06	2019-10-22 09:00:00-06	Mapping strategy meetings	2019-10-22 10:15:56.471728-06	1.50000	84	5	09:00:00
3014	2019-10-22 09:00:00-06	2019-10-22 10:15:00-06	NUWC IPT	2019-10-22 10:16:37.353884-06	1.25000	21	5	10:15:00
3015	2019-10-22 10:15:00-06	2019-10-22 11:30:00-06	Test history database	2019-10-22 12:14:24.200637-06	1.25000	181	5	11:30:00
3016	2019-10-22 11:30:00-06	2019-10-22 12:15:00-06	Meeting, Initial Capacitance checks	2019-10-22 12:15:12.234166-06	0.75000	272	5	12:15:00
3017	2019-10-22 12:15:00-06	2019-10-22 13:15:00-06	Mapping strategy meetings	2019-10-22 13:34:01.924626-06	1.00000	185	5	13:15:00
3018	2019-10-22 13:15:00-06	2019-10-22 15:00:00-06	Backup & File sync	2019-10-22 15:00:57.36631-06	1.75000	181	5	15:00:00
3012	2019-10-22 06:59:25-06	2019-10-22 15:12:01-06	Shop organisation.	2019-10-22 15:12:04.014687-06	8.21000	28	3	\N
3019	2019-10-23 07:30:00-06	2019-10-23 07:45:00-06	Status	2019-10-23 07:47:53.943334-06	0.25000	21	5	07:45:00
3020	2019-10-23 07:45:00-06	2019-10-23 08:30:00-06	Backup & File sync	2019-10-23 08:28:41.607104-06	0.75000	181	5	08:30:00
3021	2019-10-23 08:30:00-06	2019-10-23 10:00:00-06	88-8-8 change	2019-10-23 09:57:14.805456-06	1.50000	84	5	10:00:00
3022	2019-10-23 10:00:00-06	2019-10-23 10:30:00-06	Training	2019-10-23 11:39:26.553826-06	0.50000	235	5	10:30:00
3024	2019-10-23 06:50:00-06	2019-10-23 15:21:21-06	Shop organisation.	2019-10-23 15:21:24.041521-06	8.52250	28	3	\N
3023	2019-10-23 10:30:00-06	2019-10-23 13:30:00-06	Connector inspection, AITS test, Removing AIB, Writing report email	2019-10-23 15:55:12.828862-06	3.00000	272	5	11:45:00
3025	2019-10-23 13:30:00-06	2019-10-23 16:00:00-06	Debug	2019-10-23 15:56:08.977178-06	2.50000	235	5	16:00:00
3059	2019-10-24 07:00:00-06	2019-10-24 08:19:44-06	Shop organisation.	2019-10-24 08:20:51.309216-06	1.32889	29	3	\N
3060	2019-10-24 08:19:45-06	2019-10-24 09:41:28-06	Replace relay #26.	2019-10-24 09:41:56.580176-06	1.36194	173	3	\N
3058	2019-10-24 07:45:00-06	2019-10-24 09:00:00-06	BP1102,BP1103,BP1105,BP1106,BP1107	2019-10-24 09:48:29.004189-06	1.25000	41	5	09:00:00
3062	2019-10-24 09:00:00-06	2019-10-24 10:45:00-06	Tuning issues	2019-10-24 11:40:34.411514-06	1.75000	80	5	09:45:00
3063	2019-10-24 10:45:00-06	2019-10-24 11:45:00-06	Final test	2019-10-24 11:41:01.417302-06	1.00000	225	5	11:45:00
3064	2019-10-24 11:45:00-06	2019-10-24 13:00:00-06	Element verification bug	2019-10-24 12:52:18.651449-06	1.25000	84	5	13:00:00
3065	2019-10-24 13:00:00-06	2019-10-24 14:00:00-06	Test dept meeting	2019-10-24 14:44:04.625616-06	1.00000	234	5	14:00:00
3066	2019-10-24 14:00:00-06	2019-10-24 14:30:00-06	ATF2 meeting	2019-10-24 14:44:30.387922-06	0.50000	184	5	14:30:00
3067	2019-10-24 14:30:00-06	2019-10-24 14:45:00-06	Training	2019-10-24 14:45:50.545315-06	0.25000	235	5	14:45:00
3068	2019-10-24 14:45:00-06	2019-10-24 15:30:00-06	DVDs for shipment	2019-10-24 16:15:15.254271-06	0.75000	41	5	15:30:00
3069	2019-10-24 15:30:00-06	2019-10-24 16:15:00-06	Element verification bug	2019-10-24 16:15:50.429286-06	0.75000	80	5	16:15:00
3070	2019-10-24 15:41:00-06	2019-10-24 16:45:00-06	Finishing G and U	2019-10-24 16:47:30.743343-06	1.06667	28	11	16:45:00
3071	2019-10-24 18:30:00-06	2019-10-24 20:15:00-06	Element verification bug	2019-10-24 20:18:16.153712-06	1.75000	80	5	20:15:00
3073	2019-10-24 17:40:00-06	2019-10-24 21:00:00-06	Removing Inventory on Website	2019-10-24 21:00:19.888744-06	3.33333	230	8	21:00:00
3072	2019-10-24 20:15:00-06	2019-10-24 21:15:00-06	Mapping options	2019-10-24 21:21:04.370439-06	1.00000	84	5	21:15:00
3061	2019-10-24 09:41:29-06	2019-10-24 15:30:00-06	Installing Casters.	2019-10-25 07:05:03.161392-06	5.80861	29	3	\N
3075	2019-10-25 07:30:00-06	2019-10-25 11:00:00-06	Debug	2019-10-25 11:05:45.621652-06	3.50000	84	5	11:00:00
3074	2019-10-25 07:00:00-06	2019-10-25 14:47:16-06	Shop organisation.	2019-10-25 14:47:18.572385-06	7.78778	28	3	\N
3076	2019-10-28 07:00:49-06	2019-10-28 17:06:16-06	Shop organisation.	2019-10-28 17:06:19.490497-06	10.09083	28	3	\N
3077	2019-10-28 17:30:00-06	2019-10-28 21:00:00-06	Labeling	2019-10-28 21:04:33.805769-06	3.50000	28	8	21:00:00
3078	2019-10-29 06:55:04-06	2019-10-29 17:32:02-06	Shop organisation.	2019-10-29 17:32:06.549353-06	10.61611	28	3	\N
3079	2019-10-30 11:45:00-06	2019-10-30 12:45:00-06	remap issue, tuning issue	2019-10-30 12:46:28.051201-06	1.00000	80	5	12:45:00
3080	2019-10-30 07:00:00-06	2019-10-30 17:30:26-06	Shop organisation.	2019-10-30 17:30:29.477623-06	10.50722	28	3	\N
3081	2019-10-30 17:45:00-06	2019-10-30 21:00:00-06	Labeling	2019-10-30 21:01:45.393539-06	3.25000	28	8	21:00:00
3082	2019-10-31 07:15:00-06	2019-10-31 16:30:00-06	Shop organisation.	2019-10-31 17:02:50.985619-06	9.25000	28	3	\N
3083	2019-11-01 07:30:00-06	2019-11-01 10:15:00-06	Script to generate prestress date file from database	2019-11-01 10:15:49.482085-06	2.75000	84	5	10:15:00
3084	2019-11-01 10:15:00-06	2019-11-01 12:00:00-06	Prestress date and ageing verification	2019-11-01 13:05:20.172893-06	1.75000	84	5	12:00:00
3085	2019-11-01 12:00:00-06	2019-11-01 13:00:00-06	New contract cost reduction	2019-11-01 13:07:22.614626-06	1.00000	273	5	13:00:00
3086	2019-11-01 13:00:00-06	2019-11-01 14:00:00-06	date format issue	2019-11-01 15:27:50.17589-06	1.00000	80	5	14:00:00
3087	2019-11-01 14:00:00-06	2019-11-01 15:30:00-06	Prestress date and ageing verification	2019-11-01 15:28:18.007079-06	1.50000	84	5	15:30:00
3088	2019-11-04 07:00:00-07	2019-11-04 15:21:15-07	Shop organisation.	2019-11-04 15:21:18.124103-07	8.35417	28	3	\N
3090	2019-11-04 11:00:00-07	2019-11-04 11:30:00-07	Progeny IPT	2019-11-04 18:47:07.355597-07	0.50000	21	5	11:30:00
3089	2019-11-04 17:30:00-07	2019-11-04 21:00:00-07	Labeling/Training on Inkscape and Kdenlive	2019-11-04 21:04:22.671179-07	3.50000	28	8	21:00:00
3092	2019-11-05 08:30:00-07	2019-11-05 09:00:00-07	Check prestress dates	2019-11-05 09:08:06.926324-07	0.50000	84	5	09:00:00
3093	2019-11-05 09:00:00-07	2019-11-05 10:00:00-07	NUWC IPT	2019-11-05 10:00:35.629511-07	1.00000	21	5	10:00:00
3091	2019-11-05 07:20:00-07	2019-11-05 08:09:59-07	Shop organisation.	2019-11-05 10:26:48.815665-07	0.83306	28	3	\N
3094	2019-11-05 08:10:00-07	2019-11-05 10:26:52-07	Replace relay and connector.	2019-11-05 10:27:09.294254-07	2.28111	173	3	\N
3096	2019-11-05 10:15:00-07	2019-11-05 11:00:00-07	Array Sweep	2019-11-05 11:02:41.35129-07	0.75000	235	5	11:00:00
3097	2019-11-05 14:00:00-07	2019-11-05 14:45:00-07	AITS issues	2019-11-05 14:38:28.03394-07	0.75000	87	5	14:45:00
3095	2019-11-05 10:26:53-07	2019-11-05 15:39:10-07	Shop organisation.	2019-11-05 15:39:14.564143-07	5.20472	28	3	\N
3098	2019-11-05 14:45:00-07	2019-11-05 16:45:00-07	Tuning issues	2019-11-05 16:43:57.81187-07	2.00000	84	5	16:45:00
3099	2019-11-06 07:05:00-07	2019-11-06 07:49:59-07	Shop organisation.	2019-11-06 12:31:39.585804-07	0.74972	28	3	\N
3100	2019-11-06 07:50:00-07	2019-11-06 12:31:42-07	Repairing connectors.	2019-11-06 12:32:17.203927-07	4.69500	173	3	\N
3102	2019-11-06 07:30:00-07	2019-11-06 07:45:00-07	Status	2019-11-06 13:01:45.069826-07	0.25000	21	5	07:45:00
3103	2019-11-06 07:45:00-07	2019-11-06 12:00:00-07	AITS issues	2019-11-06 13:02:14.237132-07	4.25000	15	5	12:00:00
3101	2019-11-06 12:31:43-07	2019-11-06 15:21:52-07	Shop organisation. Repairing Lap top.	2019-11-06 15:21:55.959939-07	2.83583	28	3	\N
3104	2019-11-06 13:00:00-07	2019-11-06 17:00:00-07	Tuning issues	2019-11-06 17:32:25.712456-07	4.00000	84	5	17:00:00
3105	2019-11-06 18:45:00-07	2019-11-06 21:15:00-07	Tuning issues	2019-11-07 07:34:09.762756-07	2.50000	84	5	21:15:00
3107	2019-11-07 07:30:00-07	2019-11-07 11:15:00-07	Tuning issues	2019-11-07 11:26:45.426612-07	3.75000	84	5	11:15:00
3108	2019-11-07 11:30:00-07	2019-11-07 12:15:00-07	Tuning issues	2019-11-07 12:13:39.900709-07	0.75000	84	5	12:15:00
3106	2019-11-07 07:00:28-07	2019-11-07 11:59:59-07	Shop organisation.	2019-11-07 15:01:18.544347-07	4.99194	28	3	\N
3109	2019-11-07 12:00:00-07	2019-11-07 15:01:20-07	connectors.	2019-11-07 15:01:32.547027-07	3.02222	173	3	\N
3111	2019-11-07 12:30:00-07	2019-11-07 13:00:00-07	Status meeting	2019-11-07 15:05:31.819646-07	0.50000	184	5	13:00:00
3112	2019-11-07 13:00:00-07	2019-11-07 13:45:00-07	Test meeting	2019-11-07 15:05:58.932866-07	0.75000	234	5	13:45:00
3113	2019-11-07 13:45:00-07	2019-11-07 14:00:00-07	AITS issues	2019-11-07 15:06:31.813831-07	0.25000	15	5	14:00:00
3114	2019-11-07 15:00:00-07	2019-11-07 16:30:00-07	Tuning issues	2019-11-07 16:38:18.229402-07	1.50000	84	5	16:30:00
3116	2019-11-07 18:45:00-07	2019-11-07 20:00:00-07	Tuning issues	2019-11-07 20:03:32.717551-07	1.25000	84	5	20:00:00
3115	2019-11-07 17:45:00-07	2019-11-07 20:45:00-07	Learning Kdenlive and Inkscape	2019-11-07 20:45:59.621469-07	3.00000	230	8	20:45:00
3110	2019-11-07 15:01:21-07	2019-11-07 16:30:00-07	Shop organisation.	2019-11-08 07:07:40.785611-07	1.47750	28	3	\N
3118	2019-11-08 07:45:00-07	2019-11-08 13:30:00-07	Tuning issues	2019-11-08 13:34:37.154426-07	5.75000	84	5	13:30:00
3119	2019-11-08 14:30:00-07	2019-11-08 17:00:00-07	Tuning issues	2019-11-08 17:15:05.5158-07	2.50000	84	5	17:00:00
3120	2019-11-08 18:05:00-07	2019-11-08 18:35:00-07	Tuning issues	2019-11-08 18:34:04.727868-07	0.50000	84	5	18:35:00
3121	2019-11-09 20:21:00-07	2019-11-09 20:48:00-07	M and S	2019-11-09 21:36:34.648322-07	0.45000	28	11	20:48:00
3122	2019-11-09 21:13:00-07	2019-11-09 21:37:00-07	Editing the S	2019-11-09 21:37:49.981008-07	0.40000	28	11	21:37:00
3126	2019-11-11 07:30:00-07	2019-11-11 08:30:00-07	Status	2019-11-11 16:43:10.98086-07	1.00000	21	5	08:30:00
3117	2019-11-08 07:00:00-07	2019-11-08 15:00:00-07	Working at Harris,	2019-11-11 07:18:19.642988-07	8.00000	28	3	\N
3123	2019-11-11 07:05:00-07	2019-11-11 08:29:59-07	Repairing air compressor.	2019-11-11 15:51:01.461473-07	1.41639	28	3	\N
3124	2019-11-11 08:30:00-07	2019-11-11 15:29:59-07	Repair Common Sounder PWB.	2019-11-11 15:51:39.156038-07	6.99972	125	3	\N
3127	2019-11-11 08:30:00-07	2019-11-11 08:45:00-07	AITS Connector	2019-11-11 16:43:38.543971-07	0.25000	87	5	08:45:00
3128	2019-11-11 08:45:00-07	2019-11-11 15:30:00-07	Tuning debug	2019-11-11 16:44:03.758405-07	6.75000	84	5	15:30:00
3125	2019-11-11 15:30:00-07	2019-11-11 17:11:20-07	Working on Air Compressor.	2019-11-11 17:11:22.305665-07	1.68889	28	3	\N
3129	2019-11-11 17:45:00-07	2019-11-11 20:45:00-07	Learning Kdenlive and Inkscape	2019-11-11 20:38:18.252779-07	3.00000	230	8	20:45:00
3130	2019-11-12 08:30:00-07	2019-11-12 08:45:00-07	Coordinate testing	2019-11-12 08:38:29.799733-07	0.25000	272	5	08:45:00
3131	2019-11-12 08:45:00-07	2019-11-12 09:15:00-07	BP1108 F5 beam evaluation	2019-11-12 09:06:27.050704-07	0.50000	84	5	09:15:00
3132	2019-11-12 09:15:00-07	2019-11-12 16:15:00-07	Tuning debug	2019-11-12 16:34:53.845955-07	7.00000	84	5	16:15:00
3134	2019-11-12 16:15:00-07	2019-11-12 16:30:00-07	Coordinate testing	2019-11-12 16:35:14.995715-07	0.25000	272	5	16:30:00
3133	2019-11-12 07:10:00-07	2019-11-12 17:31:19-07	Repair and test.	2019-11-12 17:31:26.011748-07	10.35528	276	3	\N
3135	2019-11-13 07:30:00-07	2019-11-13 08:00:00-07	Status	2019-11-13 08:18:38.883936-07	0.50000	21	5	08:00:00
3136	2019-11-13 08:00:00-07	2019-11-13 15:45:00-07	Program to move tuned elements	2019-11-13 15:40:39.952352-07	7.75000	84	5	15:45:00
3137	2019-11-13 07:30:00-07	2019-11-13 16:45:00-07	Repairing & Retest Common sounder.	2019-11-14 06:42:54.795157-07	9.25000	276	3	\N
3139	2019-11-14 07:45:00-07	2019-11-14 09:30:00-07	Tuning - go through all bands	2019-11-14 09:35:21.652826-07	1.75000	84	5	09:30:00
3140	2019-11-14 09:30:00-07	2019-11-14 11:30:00-07	Tuning - add tunable inventory in	2019-11-14 11:28:17.662065-07	2.00000	84	5	11:30:00
3141	2019-11-14 11:30:00-07	2019-11-14 12:30:00-07	Status	2019-11-14 14:38:19.695071-07	1.00000	21	5	12:30:00
3142	2019-11-14 12:30:00-07	2019-11-14 13:15:00-07	Tuning - add tunable inventory in	2019-11-14 14:38:48.686839-07	0.75000	84	5	13:15:00
3143	2019-11-14 13:15:00-07	2019-11-14 14:30:00-07	Labview meeting	2019-11-14 14:39:41.712644-07	1.25000	234	5	14:30:00
3144	2019-11-14 14:30:00-07	2019-11-14 15:30:00-07	Tuning - add tunable inventory in	2019-11-14 15:32:48.2261-07	1.00000	84	5	15:30:00
3138	2019-11-14 06:43:12-07	2019-11-14 16:26:50-07	Repair.	2019-11-14 16:27:03.58934-07	9.72722	274	3	\N
3145	2019-11-14 16:26:51-07	2019-11-14 16:54:07-07	Shop organisation.	2019-11-14 16:54:10.971014-07	0.45444	28	3	\N
3146	2019-11-14 17:45:00-07	2019-11-14 19:45:00-07	Learning Kdenlive and Inkscape	2019-11-14 19:40:16.357765-07	2.00000	230	8	19:45:00
3148	2019-11-14 20:00:00-07	2019-11-14 21:02:00-07	Designed the Lightbulb, and finished correcting other letters. Just need to scale them and hollow them	2019-11-15 10:45:48.766317-07	1.03333	28	11	21:02:00
3149	2019-11-15 10:35:00-07	2019-11-15 12:35:13-07	Shop organisation.	2019-11-15 12:35:38.195249-07	2.00361	28	3	\N
3147	2019-11-15 08:00:00-07	2019-11-15 13:00:00-07	Tuning - add tunable inventory in	2019-11-15 13:19:22.934599-07	5.00000	84	5	13:00:00
3151	2019-11-15 13:00:00-07	2019-11-15 13:15:00-07	MRB	2019-11-15 13:19:48.342967-07	0.25000	274	5	13:15:00
3150	2019-11-15 12:35:14-07	2019-11-15 13:59:59-07	MRB meeting.	2019-11-15 14:40:29.439451-07	1.41250	275	3	\N
3152	2019-11-15 13:15:00-07	2019-11-15 16:00:00-07	Tuning - fixed missing fixed tune elements	2019-11-15 16:04:47.244226-07	2.75000	84	5	16:00:00
3153	2019-11-15 14:00:00-07	2019-11-15 16:41:28-07	Shop organisation.	2019-11-15 16:41:33.142379-07	2.69111	28	3	\N
3154	2019-11-16 13:10:00-07	2019-11-16 17:14:10-07	Shop organisation.	2019-11-16 17:14:12.326114-07	4.06944	28	3	\N
3155	2019-11-16 10:00:00-07	2019-11-16 10:40:00-07	Finished lightbulb and began sizing other letters	2019-11-17 21:28:56.641036-07	0.66667	28	11	10:40:00
3157	2019-11-18 07:30:00-07	2019-11-18 08:00:00-07	Status	2019-11-18 08:31:48.394524-07	0.50000	21	5	08:00:00
3158	2019-11-18 08:00:00-07	2019-11-18 10:45:00-07	Transfer data, TVR issue	2019-11-18 12:50:47.499845-07	2.75000	41	5	10:45:00
3159	2019-11-18 10:45:00-07	2019-11-18 12:00:00-07	Progen	2019-11-18 12:51:09.391893-07	1.25000	21	5	12:00:00
3160	2019-11-18 12:00:00-07	2019-11-18 12:30:00-07	AITS Packup	2019-11-18 12:51:48.873912-07	0.50000	87	5	12:30:00
3161	2019-11-18 12:30:00-07	2019-11-18 12:45:00-07	Transfer data, TVR issue	2019-11-18 12:52:52.725052-07	0.25000	41	5	12:45:00
3156	2019-11-18 07:00:00-07	2019-11-18 15:10:03-07	Shop organisation.	2019-11-18 15:10:05.776133-07	8.16750	28	3	\N
3162	2019-11-18 12:45:00-07	2019-11-18 14:45:00-07	Report	2019-11-18 15:39:42.814481-07	2.00000	272	5	14:45:00
3163	2019-11-18 14:45:00-07	2019-11-18 15:30:00-07	BP1108,BP1109,BP1110,BP1112,BP1113	2019-11-18 15:40:28.379148-07	0.75000	41	5	15:30:00
3164	2019-11-18 17:45:00-07	2019-11-18 21:00:00-07	Video edit training	2019-11-18 20:57:27.249681-07	3.25000	230	8	21:00:00
3166	2019-11-19 07:45:00-07	2019-11-19 08:15:00-07	TVR issue	2019-11-19 08:17:14.574835-07	0.50000	41	5	08:15:00
3167	2019-11-19 08:15:00-07	2019-11-19 12:15:00-07	Fix e56 program, Write output files at end of simulation	2019-11-19 12:58:29.261082-07	4.00000	84	5	12:15:00
3168	2019-11-19 12:15:00-07	2019-11-19 12:30:00-07	TVR issue	2019-11-19 12:58:59.236014-07	0.25000	41	5	12:30:00
3165	2019-11-19 07:00:00-07	2019-11-19 14:00:00-07	Shop organisation.	2019-11-19 15:27:38.508754-07	7.00000	28	3	\N
3169	2019-11-19 12:30:00-07	2019-11-19 21:30:00-07	Analysis of delta issue	2019-11-19 21:37:38.161334-07	9.00000	84	5	21:30:00
3171	2019-11-20 07:15:00-07	2019-11-20 07:30:00-07	Position elements issue	2019-11-20 07:17:30.801943-07	0.25000	84	5	07:30:00
3172	2019-11-20 07:30:00-07	2019-11-20 08:00:00-07	Status	2019-11-20 08:04:18.831991-07	0.50000	21	5	08:00:00
3173	2019-11-20 08:00:00-07	2019-11-20 14:30:00-07	Position elements issue	2019-11-20 14:27:02.422675-07	6.50000	84	5	14:30:00
3170	2019-11-20 07:05:00-07	2019-11-20 15:35:14-07	Shop organisation.	2019-11-20 15:35:18.162255-07	8.50389	28	3	\N
3175	2019-11-20 18:49:00-07	2019-11-20 20:15:00-07	Scaling and designing holds on N and G	2019-11-20 20:15:41.310999-07	1.43333	28	11	20:15:00
3174	2019-11-20 19:15:00-07	2019-11-20 23:59:59-07	Sidelobe issue	2019-11-21 00:47:24.603642-07	4.74972	84	5	23:59:59
3176	2019-11-21 00:00:01-07	2019-11-21 00:45:02-07	Sidelobe issue	2019-11-21 00:48:06.517482-07	0.75028	84	5	00:45:02
3178	2019-11-21 07:30:00-07	2019-11-21 07:45:00-07	Sidelobe issue	2019-11-21 08:06:42.576116-07	0.25000	84	5	07:45:00
3179	2019-11-21 07:45:00-07	2019-11-21 08:00:00-07	ESS	2019-11-21 08:07:13.067143-07	0.25000	42	5	08:00:00
3180	2019-11-21 08:00:00-07	2019-11-21 14:30:00-07	Sidelobe issue	2019-11-21 14:36:40.523954-07	6.50000	84	5	14:30:00
3177	2019-11-21 07:10:00-07	2019-11-21 15:41:41-07	Shop organisation.	2019-11-21 15:41:44.21601-07	8.52806	28	3	\N
3181	2019-11-21 18:00:00-07	2019-11-21 21:00:00-07	Video edit training	2019-11-21 20:53:57.531086-07	3.00000	230	8	21:00:00
3183	2019-11-22 08:00:00-07	2019-11-22 10:30:00-07	Sidelobe issue	2019-11-22 11:41:05.284365-07	2.50000	84	5	10:30:00
3184	2019-11-22 10:30:00-07	2019-11-22 11:15:00-07	AITS Connector	2019-11-22 11:41:42.577607-07	0.75000	87	5	11:15:00
3182	2019-11-22 07:10:00-07	2019-11-22 12:35:21-07	Shop organisation.	2019-11-22 12:36:16.810884-07	5.42250	28	3	\N
3186	2019-11-22 12:35:22-07	2019-11-22 13:59:56-07	Changing connector.	2019-11-22 14:00:07.403384-07	1.40944	173	3	\N
3187	2019-11-22 13:59:57-07	2019-11-22 15:40:47-07	Shop organisation.	2019-11-22 15:40:52.542564-07	1.68056	28	3	\N
3185	2019-11-22 11:15:00-07	2019-11-22 16:00:00-07	Sidelobe issue	2019-11-22 15:57:13.068695-07	4.75000	84	5	16:00:00
3188	2019-11-22 17:15:00-07	2019-11-22 18:00:00-07	Sidelobe issue	2019-11-22 18:04:17.674153-07	0.75000	84	5	18:00:00
3222	2019-11-23 08:00:00-07	2019-11-23 11:02:31-07	Shop organisation.	2019-11-23 11:02:33.538032-07	3.04194	28	3	\N
3221	2019-11-23 07:30:00-07	2019-11-23 12:45:00-07	Sidelobe issue	2019-11-23 12:56:15.766169-07	5.25000	84	5	12:45:00
3223	2019-11-23 13:45:00-07	2019-11-23 17:45:00-07	Element selection	2019-11-23 17:49:52.800402-07	4.00000	84	5	17:45:00
3224	2019-11-23 16:30:00-07	2019-11-23 17:14:00-07	Finishing letters	2019-11-23 18:06:13.770811-07	0.73333	28	11	17:14:00
3225	2019-11-23 17:45:00-07	2019-11-23 18:06:00-07	Finishing letters	2019-11-23 18:06:39.904079-07	0.35000	28	11	18:06:00
3226	2019-11-23 18:30:00-07	2019-11-23 22:00:00-07	Element selection	2019-11-23 22:03:33.558439-07	3.50000	84	5	21:45:00
3227	2019-11-24 07:30:00-07	2019-11-24 10:15:00-07	Element selection	2019-11-24 15:08:40.914465-07	2.75000	84	5	10:15:00
3228	2019-11-24 14:00:00-07	2019-11-24 15:45:00-07	Element selection	2019-11-25 07:01:40.70381-07	1.75000	84	5	15:45:00
3237	2019-11-25 13:45:00-07	2019-11-25 17:15:00-07	KQI report software	2019-11-25 17:15:12.173648-07	3.50000	84	5	17:15:00
3230	2019-11-25 07:30:00-07	2019-11-25 07:45:00-07	Status	2019-11-25 07:52:55.322942-07	0.25000	21	5	07:45:00
3231	2019-11-24 16:00:00-07	2019-11-24 16:15:00-07	Data Encryption	2019-11-25 07:53:47.081503-07	0.25000	41	5	16:15:00
3232	2019-11-25 07:45:00-07	2019-11-25 08:00:00-07	BP1108,BP1109,BP1110,BP1112,BP1113	2019-11-25 07:54:25.063233-07	0.25000	42	5	08:00:00
3233	2019-11-25 10:45:00-07	2019-11-25 11:45:00-07	Progeny IPT	2019-11-25 11:44:37.866397-07	1.00000	21	5	11:45:00
3234	2019-11-25 08:00:00-07	2019-11-25 08:30:00-07	BP1108,BP1109,BP1110,BP1112,BP1113	2019-11-25 11:45:29.530432-07	0.50000	41	5	08:30:00
3235	2019-11-25 08:30:00-07	2019-11-25 10:44:59-07	KQI report software	2019-11-25 11:46:16.855105-07	2.24972	84	5	10:44:59
3236	2019-11-25 11:45:00-07	2019-11-25 13:45:00-07	AITS Training, debug	2019-11-25 13:52:16.610849-07	2.00000	87	5	13:45:00
3229	2019-11-25 07:00:00-07	2019-11-25 17:01:15-07	Shop organisation.	2019-11-25 17:01:18.858706-07	10.02083	28	3	\N
3238	2019-11-25 17:45:00-07	2019-11-25 21:00:00-07	Learning video editing	2019-11-25 20:59:45.092217-07	3.25000	230	8	21:00:00
3240	2019-11-26 08:00:00-07	2019-11-26 09:30:00-07	KQI report software	2019-11-26 09:29:54.3148-07	1.50000	84	5	09:30:00
3241	2019-11-26 09:30:00-07	2019-11-26 09:45:00-07	F5 analysis	2019-11-26 09:48:48.184435-07	0.25000	41	5	09:45:00
3242	2019-11-26 09:45:00-07	2019-11-26 10:30:00-07	Tuning simulation	2019-11-26 10:27:53.014986-07	0.75000	84	5	10:30:00
3243	2019-11-26 10:30:00-07	2019-11-26 11:15:00-07	MRR 24745	2019-11-26 11:16:06.728646-07	0.75000	21	5	11:15:00
3244	2019-11-26 11:15:00-07	2019-11-26 12:45:00-07	Tuning simulation	2019-11-26 12:41:01.236663-07	1.50000	84	5	12:45:00
3245	2019-11-26 12:45:00-07	2019-11-26 13:00:00-07	MRR 24745	2019-11-26 13:02:11.752858-07	0.25000	21	5	13:00:00
3239	2019-11-26 07:10:00-07	2019-11-26 17:11:04-07	Shop organisation.	2019-11-26 17:11:08.458264-07	10.01778	28	3	\N
3246	2019-11-26 13:00:00-07	2019-11-26 15:00:00-07	Tuning simulation	2019-11-26 16:10:43.315523-07	2.00000	84	5	15:00:00
3247	2019-11-26 15:00:00-07	2019-11-26 15:45:00-07	Meters vs Yards issue	2019-11-26 16:12:07.139772-07	0.75000	21	5	15:45:00
3248	2019-11-26 15:45:00-07	2019-11-26 16:15:00-07	Tuning simulation	2019-11-26 16:21:26.596619-07	0.50000	84	5	16:15:00
3250	2019-11-26 07:30:00-07	2019-11-26 07:45:00-07	Status	2019-11-27 07:48:28.583634-07	0.25000	21	5	07:45:00
3251	2019-11-27 08:45:00-07	2019-11-27 09:00:00-07	Tuning simulation	2019-11-27 09:10:02.52332-07	0.25000	84	5	09:00:00
3249	2019-11-27 07:15:00-07	2019-11-27 17:14:11-07	Shop organisation.	2019-11-27 17:14:14.614852-07	9.98639	28	3	\N
3252	2019-11-27 09:15:00-07	2019-11-27 16:00:00-07	Tuning simulation	2019-11-27 18:42:50.444349-07	6.75000	84	5	16:00:00
3253	2019-11-27 19:30:00-07	2019-11-27 21:00:00-07	Tuning simulation	2019-11-27 20:56:16.480561-07	1.50000	84	5	21:00:00
3254	2019-11-29 08:20:00-07	2019-11-29 16:16:00-07	Shop organisation.	2019-11-29 16:16:07.752768-07	7.93333	28	3	\N
3255	2019-11-29 19:45:00-07	2019-11-29 21:45:00-07	Tuning simulation	2019-11-29 21:45:07.516035-07	2.00000	84	5	21:45:00
3256	2019-11-30 15:00:00-07	2019-11-30 17:15:00-07	Tuning simulation	2019-11-30 17:52:31.964047-07	2.25000	84	5	17:15:00
3257	2019-11-30 17:45:00-07	2019-11-30 19:00:00-07	Tuning simulation	2019-11-30 19:24:45.910025-07	1.25000	84	5	19:00:00
3258	2019-12-02 07:30:00-07	2019-12-02 07:45:00-07	Status	2019-12-02 07:41:43.599463-07	0.25000	21	5	07:45:00
3259	2019-12-02 07:45:00-07	2019-12-02 10:45:00-07	Tuning simulation	2019-12-02 12:11:43.091573-07	3.00000	84	5	10:45:00
3261	2019-12-02 10:45:00-07	2019-12-02 12:15:00-07	Progeny IPT	2019-12-02 12:12:02.525757-07	1.50000	21	5	12:15:00
3262	2019-12-02 12:15:00-07	2019-12-02 12:45:00-07	Array sweep issue	2019-12-02 12:44:01.365022-07	0.50000	81	5	12:45:00
3263	2019-12-02 12:45:00-07	2019-12-02 13:00:00-07	KQI discussion with Rick Daley	2019-12-02 13:05:19.268518-07	0.25000	84	5	13:00:00
3260	2019-12-02 07:00:00-07	2019-12-02 15:22:51-07	Shop organisation.	2019-12-02 15:22:53.963735-07	8.38083	28	3	\N
3264	2019-12-02 13:00:00-07	2019-12-02 15:30:00-07	Tuning simulation	2019-12-02 15:33:23.286007-07	2.50000	84	5	15:30:00
3265	2019-12-02 17:30:00-07	2019-12-02 19:45:00-07	Learning video editing	2019-12-02 19:50:02.865822-07	2.25000	230	8	19:45:00
3266	2019-12-02 19:30:00-07	2019-12-02 21:45:00-07	Tuning simulation	2019-12-02 21:49:14.650826-07	2.25000	84	5	21:45:00
3268	2019-12-03 07:45:00-07	2019-12-03 08:00:00-07	Element failures	2019-12-03 08:08:11.524306-07	0.25000	21	5	08:00:00
3269	2019-12-03 08:00:00-07	2019-12-03 08:30:00-07	Comment review	2019-12-03 08:32:51.995161-07	0.50000	175	5	08:30:00
3267	2019-12-03 07:05:00-07	2019-12-03 15:25:01-07	Shop organisation.	2019-12-03 15:25:06.522975-07	8.33361	28	3	\N
3270	2019-12-03 08:30:00-07	2019-12-03 16:00:00-07	Tuning simulation	2019-12-03 15:53:20.515839-07	7.50000	84	5	16:00:00
3272	2019-12-04 07:30:00-07	2019-12-04 07:45:00-07	Status	2019-12-04 07:43:15.692244-07	0.25000	21	5	07:45:00
3274	2019-12-03 11:12:00-07	2019-12-03 11:37:00-07	S	2019-12-04 12:04:09.512063-07	0.41667	28	11	11:37:00
3275	2019-12-03 16:28:00-07	2019-12-03 17:02:00-07	S	2019-12-04 12:04:35.731775-07	0.56667	28	11	17:02:00
3276	2019-12-04 12:10:00-07	2019-12-04 13:15:00-07	Finishing all the letters and preparing them to send	2019-12-04 13:19:18.396885-07	1.08333	28	11	13:15:00
3271	2019-12-04 07:15:00-07	2019-12-04 15:36:54-07	Shop organisation.	2019-12-04 15:37:00.907847-07	8.36500	28	3	\N
3273	2019-12-04 07:45:00-07	2019-12-04 17:00:00-07	Tuning simulation	2019-12-04 17:01:02.208634-07	9.25000	84	5	17:00:00
3289	2019-12-09 07:30:00-07	2019-12-09 08:15:00-07	Status, Old array data	2019-12-09 08:09:21.680805-07	0.75000	21	5	08:15:00
3277	2019-12-05 07:30:00-07	2019-12-05 13:00:00-07	Tuning simulation	2019-12-05 12:59:05.373371-07	5.50000	84	5	13:00:00
3279	2019-12-05 13:00:00-07	2019-12-05 13:30:00-07	Test meeting	2019-12-05 14:12:49.472035-07	0.50000	234	5	13:30:00
3280	2019-12-05 13:30:00-07	2019-12-05 14:15:00-07	Bid meeting	2019-12-05 14:13:29.663989-07	0.75000	272	5	14:25:00
3278	2019-12-05 07:05:00-07	2019-12-05 15:34:02-07	Shop organisation.	2019-12-05 15:34:06.316148-07	8.48389	28	3	\N
3281	2019-12-05 14:15:00-07	2019-12-05 15:45:00-07	Tuning simulation	2019-12-05 15:38:51.11705-07	1.50000	84	5	15:45:00
3282	2019-12-05 17:00:00-07	2019-12-05 17:30:00-07	Finishing and sending letters	2019-12-05 17:40:41.084679-07	0.50000	28	11	17:30:00
3283	2019-12-05 17:45:00-07	2019-12-05 21:00:00-07	Learning video editing	2019-12-05 21:03:57.133817-07	3.25000	230	8	21:00:00
3285	2019-12-06 08:00:00-07	2019-12-06 14:30:00-07	Tuning simulation	2019-12-06 14:41:08.501222-07	6.50000	84	5	14:30:00
3286	2019-12-06 14:30:00-07	2019-12-06 14:45:00-07	KQI compilation	2019-12-06 14:41:51.612657-07	0.25000	226	5	14:45:00
3284	2019-12-06 07:10:48-07	2019-12-06 15:21:30-07	Shop organisation.	2019-12-06 15:21:34.804555-07	8.17833	28	3	\N
3287	2019-12-07 10:15:00-07	2019-12-07 14:19:37-07	Shop organisation.	2019-12-07 14:19:39.800238-07	4.07694	28	3	\N
3290	2019-12-09 08:15:00-07	2019-12-09 10:45:00-07	Tuning simulation	2019-12-09 12:26:45.86315-07	2.50000	84	5	10:45:00
3291	2019-12-09 10:45:00-07	2019-12-09 12:30:00-07	Progeny IPT	2019-12-09 12:27:06.122941-07	1.75000	21	5	12:30:00
3292	2019-12-09 12:30:00-07	2019-12-09 13:30:00-07	Fixed tuning update	2019-12-09 15:29:17.93874-07	1.00000	80	5	13:30:00
3293	2019-12-09 13:30:00-07	2019-12-09 15:30:00-07	Tuning simulation	2019-12-09 15:35:01.796353-07	2.00000	84	5	15:30:00
3288	2019-12-09 07:00:00-07	2019-12-09 17:15:35-07	Shop organisation.	2019-12-09 17:15:39.495599-07	10.25972	28	3	\N
3295	2019-12-10 07:45:00-07	2019-12-10 15:45:00-07	Tuning simulation	2019-12-10 15:53:31.159256-07	8.00000	84	5	15:45:00
3294	2019-12-10 07:00:00-07	2019-12-10 17:09:17-07	Shop organisation.	2019-12-10 17:09:20.45897-07	10.15472	28	3	\N
3297	2019-12-11 07:45:00-07	2019-12-11 13:00:00-07	Tuning discussion, Tuning simulation	2019-12-11 13:29:36.92685-07	5.25000	84	5	13:00:00
3298	2019-12-11 13:00:00-07	2019-12-11 14:30:00-07	AITS issues	2019-12-11 14:32:11.236878-07	1.50000	87	5	14:30:00
3296	2019-12-11 07:10:00-07	2019-12-11 08:29:59-07	Shop organisation.	2019-12-11 16:51:37.358481-07	1.33306	28	3	\N
3300	2019-12-11 08:30:00-07	2019-12-11 10:29:59-07	HFMPA	2019-12-11 16:53:12.99618-07	1.99972	276	3	\N
3301	2019-12-11 10:30:00-07	2019-12-11 15:29:59-07	Repairing and build test cables.	2019-12-11 16:53:59.731674-07	4.99972	173	3	\N
3302	2019-12-11 15:30:00-07	2019-12-11 17:23:06-07	Shop organisation.	2019-12-11 17:23:09.605591-07	1.88500	28	3	\N
3304	2019-12-12 08:00:00-07	2019-12-12 08:30:00-07	AITS channel 90 failure	2019-12-12 10:06:35.455031-07	0.50000	87	5	08:30:00
3299	2019-12-11 14:30:00-07	2019-12-11 15:00:00-07	fish	2019-12-12 10:06:58.157534-07	0.50000	185	5	15:00:00
3305	2019-12-12 08:30:00-07	2019-12-12 09:00:00-07	fish	2019-12-12 10:07:56.332153-07	0.50000	185	5	09:00:00
3306	2019-12-12 09:00:00-07	2019-12-12 10:00:00-07	Found bug in RVS spreadsheet from incorrect manual entry	2019-12-12 10:09:04.938175-07	1.00000	178	5	10:00:00
3307	2019-12-12 10:00:00-07	2019-12-12 10:15:00-07	fish	2019-12-12 10:33:32.002434-07	0.25000	185	5	10:15:00
3308	2019-12-12 10:15:00-07	2019-12-12 10:30:00-07	AITS channel 90 failure	2019-12-12 10:34:15.682739-07	0.25000	87	5	10:30:00
3309	2019-12-12 10:30:00-07	2019-12-12 12:00:00-07	fish	2019-12-12 13:03:23.577503-07	1.50000	185	5	13:00:00
3310	2019-12-12 12:00:00-07	2019-12-12 13:00:00-07	Labview meeting	2019-12-12 13:04:14.764697-07	1.00000	234	5	13:00:00
3311	2019-12-12 13:00:00-07	2019-12-12 14:00:00-07	Tune remove data base update	2019-12-12 14:12:58.632731-07	1.00000	84	5	14:00:00
3312	2019-12-12 14:00:00-07	2019-12-12 15:30:00-07	fish	2019-12-12 15:51:39.875092-07	1.50000	185	5	15:30:00
3314	2019-12-12 09:10:00-07	2019-12-12 17:10:00-07	Finishing the letters on the wall, cutting them out and perfecting scaling.	2019-12-12 17:05:47.494754-07	8.00000	28	11	17:10:00
3303	2019-12-12 07:05:00-07	2019-12-12 17:21:00-07	Shop organisation.	2019-12-12 17:21:05.648801-07	10.26667	28	3	\N
3315	2019-12-13 08:00:00-07	2019-12-13 09:30:00-07	fish	2019-12-13 10:29:51.580869-07	1.50000	185	5	09:30:00
3316	2019-12-13 09:30:00-07	2019-12-13 10:30:00-07	BP1111,BP1114,BP1115,BP1118	2019-12-13 10:31:00.892382-07	1.00000	41	5	10:30:00
3313	2019-12-12 15:30:00-07	2019-12-12 15:45:00-07	BP1111,BP1114,BP1115,BP1118	2019-12-13 10:31:19.514484-07	0.25000	42	5	15:45:00
3318	2019-12-13 10:00:00-07	2019-12-13 14:01:42-07	Shop organisation.	2019-12-13 14:01:45.836497-07	4.02833	28	3	\N
3317	2019-12-13 10:30:00-07	2019-12-13 12:15:00-07	fish	2019-12-13 12:48:07.417612-07	1.75000	185	5	12:15:00
3319	2019-12-13 12:15:00-07	2019-12-13 12:45:00-07	AITS issues	2019-12-13 12:48:49.964289-07	0.50000	87	5	12:45:00
3320	2019-12-13 12:45:00-07	2019-12-13 13:15:00-07	BP1111,BP1114,BP1115,BP1118	2019-12-13 13:14:35.600947-07	0.50000	41	5	13:15:00
3321	2019-12-13 09:00:00-07	2019-12-13 14:05:00-07	Sizing with Barbara and beginning printing	2019-12-13 13:57:26.023451-07	5.08333	28	11	14:05:00
3323	2019-12-16 07:30:00-07	2019-12-16 08:00:00-07	Status	2019-12-16 07:53:19.940952-07	0.50000	21	5	08:00:00
3324	2019-12-16 08:00:00-07	2019-12-16 10:00:00-07	math bug, backup test files	2019-12-16 10:10:41.95953-07	2.00000	235	5	10:00:00
3326	2019-12-16 10:45:00-07	2019-12-16 12:15:00-07	Progeny IPT	2019-12-16 12:10:26.790775-07	1.50000	21	5	12:15:00
3325	2019-12-16 10:00:00-07	2019-12-16 10:45:00-07	AITS report	2019-12-16 12:10:36.992286-07	0.75000	185	5	10:45:00
3327	2019-12-16 12:15:00-07	2019-12-16 12:45:00-07	Reviewed report	2019-12-16 12:42:14.08067-07	0.50000	272	5	12:30:00
3328	2019-12-16 12:45:00-07	2019-12-16 14:30:00-07	AITS procedures redline	2019-12-16 14:31:59.288117-07	1.75000	185	5	14:30:00
3322	2019-12-16 07:00:00-07	2019-12-16 15:19:40-07	Shop organisation.	2019-12-16 15:19:46.632168-07	8.32778	28	3	\N
3329	2019-12-16 09:10:00-07	2019-12-16 15:30:00-07	Finishing the letters on the wall, height and width. Barbara approved.	2019-12-16 15:36:30.36483-07	6.33333	28	11	15:30:00
3330	2019-12-16 18:00:00-07	2019-12-16 18:45:00-07	AITS procedures redline	2019-12-16 18:48:18.210541-07	0.75000	185	5	18:45:00
3331	2019-12-16 18:00:00-07	2019-12-16 20:00:00-07	Learning video editing	2019-12-16 19:57:11.831533-07	2.00000	230	8	20:00:00
3332	2019-12-16 18:45:00-07	2019-12-16 20:00:00-07	Plot legends & grid lines	2019-12-16 20:05:02.235379-07	1.25000	235	5	20:00:00
3334	2019-12-17 07:45:00-07	2019-12-17 09:00:00-07	AITS procedures redline	2019-12-17 10:05:34.412755-07	1.25000	185	5	09:00:00
3335	2019-12-17 09:00:00-07	2019-12-17 10:00:00-07	NUWC IPT	2019-12-17 10:05:59.926257-07	1.00000	21	5	10:00:00
3336	2019-12-17 10:00:00-07	2019-12-17 10:45:00-07	AITS procedures redline	2019-12-17 10:46:09.44241-07	0.75000	185	5	10:45:00
3337	2019-12-17 10:45:00-07	2019-12-17 14:30:00-07	Test file verification	2019-12-17 15:24:36.958682-07	3.75000	235	5	14:30:00
3338	2019-12-17 14:30:00-07	2019-12-17 15:30:00-07	fish	2019-12-17 15:25:00.133848-07	1.00000	185	5	15:30:00
3339	2019-12-17 08:50:00-07	2019-12-17 10:30:00-07	Designing the two bottom halfs of the sandblasting	2019-12-17 15:47:04.414996-07	1.66667	28	11	10:30:00
3340	2019-12-17 12:35:00-07	2019-12-17 15:52:00-07	Printing	2019-12-17 15:47:47.486528-07	3.28333	28	11	15:52:00
3356	2019-12-19 07:00:00-07	2019-12-19 12:29:59-07	PM inspection	2019-12-19 12:53:26.731038-07	5.49972	15	3	\N
3341	2019-12-18 06:30:00-07	2019-12-18 07:30:00-07	Retest/Replace capability	2019-12-18 10:29:41.633835-07	1.00000	235	5	07:30:00
3343	2019-12-18 07:30:00-07	2019-12-18 07:45:00-07	Status	2019-12-18 10:31:27.622146-07	0.25000	21	5	07:45:00
3344	2019-12-18 07:45:00-07	2019-12-18 12:30:00-07	Retest/Replace capability	2019-12-18 13:27:43.535479-07	4.75000	235	5	12:30:00
3345	2019-12-18 12:30:00-07	2019-12-18 13:30:00-07	Fixed rvs program for Lolita	2019-12-18 13:28:35.310629-07	1.00000	178	5	13:30:00
3357	2019-12-19 12:30:00-07	2019-12-19 15:11:14-07	Shop organisation.	2019-12-19 15:11:18.083801-07	2.68722	28	3	\N
3342	2019-12-18 10:30:01-07	2019-12-18 14:01:11-07	PM inspection.	2019-12-18 14:05:40.970388-07	3.51944	15	3	\N
3347	2019-12-18 08:50:00-07	2019-12-18 09:50:00-07	Reviewing prints with Barbra and setting new design to print	2019-12-18 14:06:11.762948-07	1.00000	28	11	09:50:00
3348	2019-12-18 06:50:00-07	2019-12-18 10:30:00-07	ESD Benches.	2019-12-18 14:17:46.973891-07	3.66667	279	3	\N
3333	2019-12-17 06:45:00-07	2019-12-17 07:45:00-07	Shop organisation.	2019-12-18 14:21:38.799471-07	1.00000	28	3	\N
3349	2019-12-17 12:00:01-07	2019-12-17 16:00:00-07	PM inspection.	2019-12-18 14:25:11.564273-07	3.99972	15	3	\N
3350	2019-12-17 07:45:00-07	2019-12-17 12:00:00-07	ESD Benches.	2019-12-18 14:25:47.760095-07	4.25000	279	3	\N
3351	2019-12-18 10:52:00-07	2019-12-18 13:45:00-07	Designing a stopper on the sandblast holder, and tightening tolerances	2019-12-18 14:39:16.043701-07	2.88333	28	11	13:45:00
3352	2019-12-18 13:53:00-07	2019-12-18 14:45:00-07	Cleaning shop and printing/design/study of how to print the letters	2019-12-18 14:40:34.580097-07	0.86667	28	11	14:45:00
3353	2019-12-18 13:30:00-07	2019-12-18 14:45:00-07	Retest/Replace capability	2019-12-18 14:43:26.204107-07	1.25000	235	5	14:45:00
3354	2019-12-18 14:45:00-07	2019-12-18 18:00:00-07	Moving stuff from the attic	2019-12-18 14:45:11.347174-07	3.25000	28	11	18:00:00
3346	2019-12-18 14:01:12-07	2019-12-18 15:15:51-07	Shop organisation.	2019-12-18 15:15:57.020648-07	1.24417	28	3	\N
3358	2019-12-19 12:25:00-07	2019-12-19 15:15:00-07	Printing and redesigning (putting logo on and tightening tolerances).	2019-12-19 15:12:23.432355-07	2.83333	28	11	15:15:00
3355	2019-12-19 07:00:00-07	2019-12-19 12:30:00-07	Retest/Replace capability	2019-12-19 15:34:25.417386-07	5.50000	235	5	12:30:00
3359	2019-12-19 12:30:00-07	2019-12-19 13:00:00-07	ATF2 meeting	2019-12-19 15:35:22.914563-07	0.50000	184	5	13:00:00
3360	2019-12-19 13:00:00-07	2019-12-19 13:30:00-07	Test meeting	2019-12-19 15:35:46.485853-07	0.50000	234	5	13:30:00
3361	2019-12-19 13:30:00-07	2019-12-19 14:15:00-07	Connector issues	2019-12-19 15:36:29.866314-07	0.75000	21	5	14:15:00
3362	2019-12-20 06:50:00-07	2019-12-20 08:56:33-07	PM Inspection.	2019-12-20 08:57:27.961659-07	2.10917	15	3	\N
3364	2019-12-20 09:00:00-07	2019-12-20 15:07:00-07	Printing and redesigning (Tighter tolerances and the hole in the top to pry the gromit out)	2019-12-20 15:04:00.60445-07	6.11667	28	11	15:07:00
3363	2019-12-20 08:56:34-07	2019-12-20 15:10:36-07	Shop organisation.	2019-12-20 15:10:38.740354-07	6.23389	28	3	\N
3365	2019-12-21 10:05:28-07	2019-12-21 13:10:46-07	Shop organisation.	2019-12-21 13:10:48.764478-07	3.08833	28	3	\N
3366	2019-12-23 06:45:00-07	2019-12-23 15:30:30-07	Shop organisation.	2019-12-23 15:30:33.793904-07	8.75833	28	3	\N
3367	2019-12-23 09:10:00-07	2019-12-23 16:30:00-07	Dump trip, Taking stuff upstairs, printing and taking out trash.	2019-12-23 16:26:46.21286-07	7.33333	28	11	16:30:00
3368	2019-12-26 10:00:00-07	2019-12-26 12:20:00-07	Removing amplifier and working on new design	2019-12-26 12:21:04.322605-07	2.33333	28	11	12:20:00
3369	2019-12-26 17:45:00-07	2019-12-26 21:00:00-07	Solder/prep boards	2019-12-26 21:01:25.330346-07	3.25000	230	8	21:00:00
3370	2019-12-27 09:00:00-07	2019-12-27 15:25:00-07	Designing Sandblaster with clear tubing, buying wood, and working/cleaning the attic.	2019-12-27 15:19:51.157197-07	6.41667	28	11	15:25:00
3371	2019-12-30 09:07:00-07	2019-12-30 16:00:00-07	Amplifier and printing letters	2019-12-31 16:36:39.74486-07	6.88333	28	11	16:00:00
3372	2019-12-31 09:00:00-07	2019-12-31 16:40:00-07	Working in the house and printing letters	2019-12-31 16:37:25.496362-07	7.66667	28	11	16:40:00
3373	2020-01-01 10:25:00-07	2020-01-01 12:10:00-07	Cleaning and setting up printer for the G	2020-01-01 15:50:57.270836-07	1.75000	28	11	12:10:00
3374	2020-01-01 13:30:00-07	2020-01-01 15:55:00-07	Designing the Sander dust collector, installing letters with Barbara, and printing M	2020-01-01 15:54:27.099686-07	2.41667	28	11	15:55:00
3375	2020-01-02 08:00:00-07	2020-01-02 10:00:00-07	Security meeting	2020-01-02 10:28:50.485645-07	2.00000	21	5	10:00:00
3376	2020-01-02 10:00:00-07	2020-01-02 12:30:00-07	Retest/Replace capability	2020-01-02 13:46:39.076668-07	2.50000	235	5	12:30:00
3377	2020-01-02 12:30:00-07	2020-01-02 13:00:00-07	ATF2 meeting	2020-01-02 13:47:09.686739-07	0.50000	184	5	13:00:00
3378	2020-01-02 13:00:00-07	2020-01-02 13:45:00-07	Test meeting	2020-01-02 13:50:05.519036-07	0.75000	234	5	13:30:00
3379	2020-01-02 13:45:00-07	2020-01-02 14:30:00-07	Retest/Replace capability	2020-01-02 14:31:19.382869-07	0.75000	235	5	14:30:00
3380	2020-01-02 09:00:00-07	2020-01-02 14:30:00-07	Designing Sander, diagnosing 3d printer (prints were warping) and then reprinting the M.	2020-01-02 14:31:31.833-07	5.50000	28	11	14:30:00
3382	2020-01-03 09:00:00-07	2020-01-03 10:30:00-07	Full test debug	2020-01-03 14:42:27.529842-07	1.50000	235	5	10:30:00
3383	2020-01-03 10:30:00-07	2020-01-03 14:45:00-07	fish	2020-01-03 14:42:56.027767-07	4.25000	185	5	14:45:00
3381	2020-01-03 07:10:00-07	2020-01-03 15:46:28-07	Shop organisation.	2020-01-03 15:46:31.781183-07	8.60778	28	3	\N
3692	2020-03-09 07:30:00-06	2020-03-09 07:45:00-06	Status	2020-03-09 07:40:25.520456-06	0.25000	21	5	07:45:00
3384	2020-01-03 09:00:00-07	2020-01-03 15:50:00-07	Buying stuff from home depot, printing letters, etc	2020-01-03 15:44:50.294809-07	6.83333	28	11	15:50:00
3385	2020-01-02 20:00:00-07	2020-01-02 20:20:00-07	Starting the U to print, I came in the night	2020-01-03 15:45:34.635566-07	0.33333	28	11	20:20:00
3705	2020-03-10 15:00:00-06	2020-03-10 15:30:00-06	Basic GUI	2020-03-10 15:33:46.695547-06	0.50000	289	5	15:30:00
3386	2020-01-03 21:50:00-07	2020-01-03 23:59:00-07	2 hours Barbara told me to add on and setting up the final G to print (10min)	2020-01-03 22:29:01.593216-07	2.15000	28	11	23:59:00
3388	2020-01-04 10:20:00-07	2020-01-04 10:45:00-07	Setting up the printer to print the M fuller so it wont wave, hopefully	2020-01-04 10:42:23.630501-07	0.41667	28	11	10:45:00
3387	2020-01-04 09:56:00-07	2020-01-04 16:14:16-07	Shop organisation.	2020-01-04 16:14:20.061867-07	6.30444	28	3	\N
3389	2020-01-04 14:45:00-07	2020-01-04 18:45:00-07	Pick and place machine	2020-01-04 18:49:35.396275-07	4.00000	29	8	18:45:00
3390	2020-01-06 07:10:00-07	2020-01-06 17:16:13-07	Shop organisation.	2020-01-06 17:16:17.667714-07	10.10361	28	3	\N
3391	2020-01-06 18:30:00-07	2020-01-06 20:45:00-07	Pick and place machine	2020-01-06 20:36:25.01861-07	2.25000	29	8	20:45:00
3392	2020-01-07 07:15:00-07	2020-01-07 17:21:27-07	Shop organisation.	2020-01-07 17:21:30.551425-07	10.10750	28	3	\N
3393	2020-01-08 07:00:00-07	2020-01-08 17:12:38-07	Shop organisation.	2020-01-08 17:12:41.804489-07	10.21056	28	3	\N
3426	2020-01-09 07:00:00-07	2020-01-09 17:06:51-07	Shop organisation.	2020-01-09 17:06:53.385225-07	10.11417	28	3	\N
3427	2020-01-09 17:45:00-07	2020-01-09 21:30:00-07	Assemble boards	2020-01-09 21:25:24.52477-07	3.75000	29	8	21:30:00
3429	2020-01-13 11:30:00-07	2020-01-13 12:00:00-07	fish	2020-01-13 13:48:09.505938-07	0.50000	185	5	12:00:00
3428	2020-01-13 06:50:00-07	2020-01-13 15:17:16-07	Shop organisation.	2020-01-13 15:17:20.311314-07	8.45444	28	3	\N
3431	2020-01-14 09:00:00-07	2020-01-14 09:15:00-07	NUWC IPT slide review	2020-01-14 09:28:15.989944-07	0.25000	21	5	09:15:00
3432	2020-01-14 11:00:00-07	2020-01-14 12:00:00-07	Full test debug	2020-01-14 12:06:32.898238-07	1.00000	235	5	12:00:00
3430	2020-01-14 06:55:11-07	2020-01-14 15:10:15-07	Shop organisation.	2020-01-14 15:10:17.870914-07	8.25111	28	3	\N
3433	2020-01-15 06:50:13-07	2020-01-15 15:07:27-07	Shop organisation.	2020-01-15 15:07:30.738804-07	8.28722	28	3	\N
3434	2020-01-16 07:05:07-07	2020-01-16 15:25:36-07	Repair and testing.	2020-01-16 15:25:17.322837-07	8.34139	277	3	\N
3435	2020-01-16 09:30:00-07	2020-01-16 12:45:00-07	fish	2020-01-16 16:05:20.955035-07	3.25000	185	5	12:45:00
3436	2020-01-16 12:45:00-07	2020-01-16 13:00:00-07	ATF2 meeting	2020-01-16 16:05:45.069453-07	0.25000	184	5	13:00:00
3437	2020-01-16 13:00:00-07	2020-01-16 14:15:00-07	Test meeting	2020-01-16 16:06:12.275565-07	1.25000	234	5	14:15:00
3438	2020-01-16 18:15:00-07	2020-01-16 20:00:00-07	Assemble boards	2020-01-16 19:52:05.646957-07	1.75000	29	8	20:00:00
3440	2020-01-17 09:45:00-07	2020-01-17 12:30:00-07	fish	2020-01-17 12:29:19.842831-07	2.75000	185	5	12:30:00
3439	2020-01-17 06:35:10-07	2020-01-17 07:59:59-07	Shop organisation.	2020-01-17 15:20:09.313811-07	1.41361	28	3	\N
3441	2020-01-17 08:00:00-07	2020-01-17 15:21:23-07	Trouble shooting &repair.	2020-01-17 15:21:26.723454-07	7.35639	277	3	\N
3442	2020-01-20 06:48:57-07	2020-01-20 09:59:50-07	Repair.	2020-01-20 10:00:06.152957-07	3.18139	277	3	\N
3453	2020-01-22 06:50:01-07	2020-01-22 07:49:19-07	Shop organisation.	2020-01-22 07:49:39.525232-07	0.98833	28	3	\N
3444	2020-01-20 09:59:51-07	2020-01-20 11:58:05-07	Shop organisation.	2020-01-20 11:58:09.37045-07	1.97056	28	3	\N
3443	2020-01-20 09:45:00-07	2020-01-20 10:45:00-07	Process document	2020-01-20 12:36:07.506041-07	1.00000	41	5	10:45:00
3445	2020-01-20 10:45:00-07	2020-01-20 12:00:00-07	Progeny IPT	2020-01-20 12:36:40.361754-07	1.25000	21	5	12:00:00
3446	2020-01-20 12:00:00-07	2020-01-20 13:00:00-07	Process document	2020-01-20 12:57:29.06354-07	1.00000	41	5	13:00:00
3447	2020-01-20 16:07:00-07	2020-01-20 16:22:00-07	Review PMR slides	2020-01-20 18:41:01.021536-07	0.25000	185	5	16:22:00
3449	2020-01-21 09:45:00-07	2020-01-21 11:00:00-07	HVIR tester re-program	2020-01-21 10:57:36.681527-07	1.25000	81	5	11:00:00
3450	2020-01-21 11:00:00-07	2020-01-21 12:15:00-07	fish	2020-01-21 12:08:53.419153-07	1.25000	84	5	12:15:00
3448	2020-01-21 06:48:29-07	2020-01-21 12:10:09-07	Shop organisation.	2020-01-21 12:10:45.884561-07	5.36111	28	3	\N
3451	2020-01-21 12:10:10-07	2020-01-21 14:30:07-07	Testing.	2020-01-21 14:31:08.014998-07	2.33250	274	3	\N
3452	2020-01-21 14:30:08-07	2020-01-21 17:05:00-07	Repairing cable on IR tester.	2020-01-21 17:05:03.17404-07	2.58111	173	3	\N
3455	2020-01-22 10:00:00-07	2020-01-22 10:45:00-07	BP1117,BP1119,BP1120,BP1121,BP1122	2020-01-22 10:40:24.226441-07	0.75000	42	5	10:45:00
3456	2020-01-22 10:45:00-07	2020-01-22 12:15:00-07	BP1117,BP1119,BP1120,BP1121,BP1122	2020-01-22 12:07:48.320842-07	1.50000	41	5	12:15:00
3454	2020-01-22 07:49:20-07	2020-01-22 16:43:47-07	Testing.	2020-01-22 16:43:59.948374-07	8.90750	274	3	\N
3458	2020-01-22 16:43:48-07	2020-01-22 17:03:01-07	Shop organisation.	2020-01-22 17:03:04.058625-07	0.32028	28	3	\N
3457	2020-01-22 16:00:00-07	2020-01-22 17:00:00-07	Element data base	2020-01-22 17:03:17.681767-07	1.00000	226	5	17:00:00
3459	2020-01-20 11:30:00-07	2020-01-20 14:01:00-07	Added time from printing letters Saturday and building shelves with Barbara on Monday	2020-01-22 17:17:39.469909-07	2.51667	28	11	14:01:00
3460	2020-01-23 06:50:07-07	2020-01-23 07:26:40-07	Shop organisation.	2020-01-23 07:26:57.028658-07	0.60917	28	3	\N
3462	2020-01-23 09:30:00-07	2020-01-23 10:45:00-07	DVDs for shipment	2020-01-23 10:50:16.656886-07	1.25000	41	5	10:45:00
3463	2020-01-23 10:45:00-07	2020-01-23 13:00:00-07	Extract cap data	2020-01-23 12:53:58.58246-07	2.25000	226	5	13:00:00
3464	2020-01-23 13:00:00-07	2020-01-23 14:00:00-07	Element Cap Failures	2020-01-23 13:58:37.533131-07	1.00000	21	5	14:00:00
3461	2020-01-23 07:26:41-07	2020-01-23 16:33:22-07	Testing.	2020-01-23 16:33:34.692615-07	9.11139	275	3	\N
3465	2020-01-23 16:33:23-07	2020-01-23 17:06:13-07	Shop organisation.	2020-01-23 17:06:17.682285-07	0.54722	28	3	\N
3467	2020-01-24 09:15:00-07	2020-01-24 10:00:00-07	database issue	2020-01-24 09:56:29.827141-07	0.75000	172	5	10:00:00
3468	2020-01-24 10:00:00-07	2020-01-24 13:00:00-07	Stack capacitance	2020-01-24 13:04:14.538481-07	3.00000	226	5	13:00:00
3466	2020-01-24 06:50:14-07	2020-01-24 11:10:00-07	Repair & testing.	2020-01-27 07:04:09.953907-07	4.32944	274	3	\N
3469	2020-01-27 07:00:19-07	2020-01-27 13:16:29-07	Testing.	2020-01-27 13:16:52.823215-07	6.26944	274	3	\N
3470	2020-01-27 09:00:00-07	2020-01-27 13:45:00-07	Stack capacitance	2020-01-27 13:46:42.315183-07	4.75000	226	5	13:45:00
3471	2020-01-27 13:16:30-07	2020-01-27 15:08:06-07	Repairing test boards.	2020-01-27 15:08:08.67188-07	1.86000	173	3	\N
3473	2020-01-28 08:00:00-07	2020-01-28 11:15:00-07	PMR	2020-01-28 11:21:12.311244-07	3.25000	21	5	11:15:00
3472	2020-01-28 06:50:00-07	2020-01-28 13:40:04-07	Shop organisation.	2020-01-28 13:40:10.111223-07	6.83444	28	3	\N
3475	2020-01-29 09:00:00-07	2020-01-29 13:30:00-07	BOEs with Ryan	2020-01-29 13:29:53.817361-07	4.50000	280	5	13:30:00
3474	2020-01-29 07:00:00-07	2020-01-29 15:10:14-07	Shop organisation.	2020-01-29 15:10:18.859649-07	8.17056	28	3	\N
3476	2020-01-29 16:30:00-07	2020-01-29 17:00:00-07	Read SOw	2020-01-29 18:27:01.980048-07	0.50000	280	5	17:00:00
3478	2020-01-30 08:45:00-07	2020-01-30 10:00:00-07	Capacitance difference plot	2020-01-30 09:59:57.486169-07	1.25000	226	5	10:00:00
3477	2020-01-30 07:00:00-07	2020-01-30 11:09:55-07	Shop organisation.	2020-01-30 11:10:10.490453-07	4.16528	28	3	\N
3480	2020-01-30 11:09:56-07	2020-01-30 13:40:28-07	Testing	2020-01-30 13:40:40.781206-07	2.50889	275	3	\N
3479	2020-01-30 10:00:00-07	2020-01-30 12:30:00-07	BOEs with Ryan	2020-01-30 14:57:12.653281-07	2.50000	280	5	12:30:00
3482	2020-01-30 12:30:00-07	2020-01-30 13:00:00-07	ATF Status	2020-01-30 14:57:49.807157-07	0.50000	184	5	13:00:00
3483	2020-01-30 13:00:00-07	2020-01-30 13:30:00-07	Test meeting	2020-01-30 14:58:10.340263-07	0.50000	234	5	13:30:00
3484	2020-01-30 13:30:00-07	2020-01-30 15:00:00-07	Connector shell issues	2020-01-30 14:58:34.767924-07	1.50000	21	5	15:00:00
3481	2020-01-30 13:40:29-07	2020-01-30 15:11:31-07	Shop organisation.	2020-01-30 15:11:35.067245-07	1.51722	28	3	\N
3486	2020-01-31 10:55:56-07	2020-01-31 15:02:33-07	Shop organisation.	2020-01-31 15:02:39.646465-07	4.11028	28	3	\N
3485	2020-01-31 06:50:16-07	2020-01-31 10:55:55-07	Shop organisation.	2020-01-31 10:56:05.91738-07	4.09417	28	3	\N
3487	2020-02-03 11:00:00-07	2020-02-03 11:30:00-07	Progeny IPT	2020-02-03 11:58:58.522435-07	0.50000	21	5	11:30:00
3488	2020-02-03 15:00:00-07	2020-02-03 16:00:00-07	Proposal NRE	2020-02-03 16:48:24.904242-07	1.00000	280	5	16:00:00
3489	2020-02-03 17:00:00-07	2020-02-03 18:00:00-07	Proposal NRE	2020-02-03 17:54:01.840287-07	1.00000	280	5	18:00:00
3490	2020-02-04 06:59:17-07	2020-02-04 08:38:37-07	Changing coonnector.	2020-02-04 08:38:50.015138-07	1.65556	173	3	\N
3492	2020-02-04 08:30:00-07	2020-02-04 14:00:00-07	Proposal NRE	2020-02-04 14:02:31.730653-07	5.50000	280	5	14:00:00
3493	2020-02-04 14:00:00-07	2020-02-04 14:45:00-07	Shaker Tap, Analyzer swap	2020-02-04 15:37:04.34917-07	0.75000	81	5	14:45:00
3494	2020-02-04 14:45:00-07	2020-02-04 15:45:00-07	Proposal NRE	2020-02-04 15:39:18.232064-07	1.00000	280	5	15:45:00
3491	2020-02-04 08:38:38-07	2020-02-04 17:10:26-07	Shop organisation.	2020-02-04 17:10:32.859454-07	8.53000	28	3	\N
3496	2020-02-05 08:30:00-07	2020-02-05 14:00:00-07	Proposal NRE Shaker	2020-02-05 14:12:11.582435-07	5.50000	280	5	14:00:00
3495	2020-02-05 07:00:00-07	2020-02-05 17:10:01-07	Shop organisation.	2020-02-05 17:10:05.12826-07	10.16694	28	3	\N
3498	2020-02-06 09:00:00-07	2020-02-06 10:00:00-07	Capacitance plot	2020-02-06 10:07:19.322908-07	1.00000	226	5	10:00:00
3499	2020-02-06 10:00:00-07	2020-02-06 15:45:00-07	Rotator Attachment, CSW security	2020-02-06 16:18:07.834529-07	5.75000	280	5	15:45:00
3500	2020-02-06 15:45:00-07	2020-02-06 16:15:00-07	Connector RCCA	2020-02-06 16:19:02.528419-07	0.50000	185	5	16:15:00
3497	2020-02-06 07:15:00-07	2020-02-06 17:16:55-07	Shop organisation.	2020-02-06 17:16:58.064718-07	10.03194	28	3	\N
3533	2020-02-07 06:57:46-07	2020-02-07 09:31:27-07	Shop organisation.	2020-02-07 09:32:04.495783-07	2.56139	28	3	\N
3535	2020-02-07 09:31:28-07	2020-02-07 10:58:35-07	Repairing HFMPA.	2020-02-07 10:58:47.360255-07	1.45194	277	3	\N
3536	2020-02-07 10:58:36-07	2020-02-07 12:04:00-07	Shop organisation.	2020-02-07 12:04:05.285738-07	1.09000	28	3	\N
3534	2020-02-07 08:15:00-07	2020-02-07 15:00:00-07	Rotator Attachment	2020-02-07 15:13:17.928919-07	6.75000	280	5	15:00:00
3537	2020-02-07 15:00:00-07	2020-02-07 15:15:00-07	Capacitance difference plot	2020-02-07 15:22:24.648728-07	0.25000	226	5	15:15:00
3538	2020-02-08 10:30:00-07	2020-02-08 14:02:35-07	Working on the house.	2020-02-08 14:02:38.259011-07	3.54306	28	3	\N
3540	2020-02-10 09:45:00-07	2020-02-10 10:15:00-07	BOEs with Ryan	2020-02-10 10:16:56.88146-07	0.50000	280	5	10:15:00
3541	2020-02-10 10:15:00-07	2020-02-10 10:45:00-07	TVR plots	2020-02-10 11:59:39.760282-07	0.50000	226	5	10:45:00
3542	2020-02-10 10:45:00-07	2020-02-10 12:00:00-07	Progeny IPT	2020-02-10 12:00:10.891435-07	1.25000	21	5	12:00:00
3539	2020-02-10 07:00:00-07	2020-02-10 15:13:12-07	Shop organisation.	2020-02-10 15:13:15.064119-07	8.22000	28	3	\N
3543	2020-02-10 12:00:00-07	2020-02-10 13:00:00-07	Technical Proposal Review	2020-02-10 15:32:50.073925-07	1.00000	280	5	13:00:00
3544	2020-02-10 13:00:00-07	2020-02-10 15:00:00-07	Array Plots	2020-02-10 15:33:12.918779-07	2.00000	226	5	15:00:00
3545	2020-02-11 07:00:00-07	2020-02-11 08:06:27-07	inspection & clean.	2020-02-11 08:07:06.598336-07	1.10750	281	3	\N
3547	2020-02-11 09:00:00-07	2020-02-11 10:00:00-07	NUWC IPT	2020-02-11 10:32:55.318178-07	1.00000	21	5	10:00:00
3546	2020-02-11 08:06:28-07	2020-02-11 10:47:19-07	Designing cabinet for CNC.	2020-02-11 10:48:10.772298-07	2.68083	28	3	\N
3548	2020-02-11 10:00:00-07	2020-02-11 13:30:00-07	Array Plots	2020-02-11 13:31:33.612709-07	3.50000	226	5	13:30:00
3549	2020-02-11 10:47:20-07	2020-02-11 15:19:04-07	Wiring IR testers.	2020-02-11 15:19:11.652291-07	4.52889	278	3	\N
3550	2020-02-12 07:00:00-07	2020-02-12 08:21:46-07	Repairing cables.	2020-02-12 08:22:00.423002-07	1.36278	278	3	\N
3552	2020-02-12 08:21:47-07	2020-02-12 15:12:56-07	Shop organisation.	2020-02-12 15:13:01.352065-07	6.85250	28	3	\N
3551	2020-02-12 08:15:00-07	2020-02-12 15:30:00-07	Array Plots	2020-02-12 15:29:55.032364-07	7.25000	226	5	15:30:00
3554	2020-02-13 08:45:00-07	2020-02-13 10:00:00-07	Array Plots	2020-02-13 11:03:49.846938-07	1.25000	226	5	10:00:00
3555	2020-02-13 10:00:00-07	2020-02-13 11:00:00-07	Technical Proposal Review	2020-02-13 11:05:05.70332-07	1.00000	280	5	11:00:00
3553	2020-02-13 07:00:00-07	2020-02-13 08:30:00-07	Repair and testing.	2020-02-13 11:45:54.15453-07	1.50000	277	3	\N
3558	2020-02-13 08:30:00-07	2020-02-13 10:00:00-07	Working on IR tester.	2020-02-13 11:47:33.861024-07	1.50000	278	3	\N
3556	2020-02-13 11:00:00-07	2020-02-13 13:00:00-07	Array Plots	2020-02-13 14:46:32.554197-07	2.00000	226	5	13:00:00
3559	2020-02-13 13:00:00-07	2020-02-13 14:00:00-07	Test meeting	2020-02-13 14:46:54.733989-07	1.00000	234	5	14:00:00
3557	2020-02-13 10:00:00-07	2020-02-13 15:20:48-07	Shop organisation.	2020-02-13 15:20:50.135541-07	5.34667	28	3	\N
3560	2020-02-13 14:00:00-07	2020-02-13 14:45:00-07	Array Plots	2020-02-13 20:18:38.731504-07	0.75000	226	5	14:45:00
3561	2020-02-14 07:05:00-07	2020-02-14 08:35:37-07	inspection & clean.	2020-02-14 08:35:47.250536-07	1.51028	281	3	\N
3563	2020-02-14 08:30:00-07	2020-02-14 10:00:00-07	Dissipation Plot	2020-02-14 13:38:34.216318-07	1.50000	235	5	10:00:00
3564	2020-02-14 10:00:00-07	2020-02-14 13:45:00-07	Array Plots	2020-02-14 13:39:00.210121-07	3.75000	226	5	13:45:00
3562	2020-02-14 08:35:38-07	2020-02-14 15:13:51-07	Shop organisation.	2020-02-14 15:13:54.479157-07	6.63694	28	3	\N
3566	2020-02-17 09:15:00-07	2020-02-17 13:45:00-07	Fixed backup, Made OPS selection mandatory, Updated help for normal first pass	2020-02-17 13:51:55.233406-07	4.50000	235	5	13:45:00
3567	2020-02-17 08:00:00-07	2020-02-17 15:00:00-07	Redesign sandblaster tubing, and transferring Fusion files to Jason	2020-02-17 14:56:56.649805-07	7.00000	28	11	15:00:00
3565	2020-02-17 08:30:00-07	2020-02-17 16:52:08-07	Shop organisation.	2020-02-17 16:52:13.293566-07	8.36889	28	3	\N
3568	2020-02-18 07:00:06-07	2020-02-18 09:38:06-07	Shop organisation.	2020-02-18 09:38:31.018298-07	2.63333	28	3	\N
3570	2020-02-18 09:38:07-07	2020-02-18 10:34:37-07	Repair.	2020-02-18 10:35:01.234457-07	0.94167	277	3	\N
3569	2020-02-18 09:00:00-07	2020-02-18 15:00:00-07	Test retest during sweeps, Test replace element, Complete test, G plot filter	2020-02-18 15:03:09.175649-07	6.00000	235	5	15:00:00
3571	2020-02-18 10:34:38-07	2020-02-18 17:32:36-07	Shop organisation.	2020-02-18 17:32:39.893094-07	6.96611	28	3	\N
3573	2020-02-19 09:00:00-07	2020-02-19 15:15:00-07	Secure room test	2020-02-19 15:14:44.201819-07	6.25000	235	5	15:15:00
3572	2020-02-19 07:05:00-07	2020-02-19 17:38:27-07	Shop organisation.	2020-02-19 17:38:30.164383-07	10.55750	28	3	\N
3575	2020-02-20 09:00:00-07	2020-02-20 10:00:00-07	fixed plot discrepancy	2020-02-20 09:56:52.004656-07	1.00000	81	5	10:00:00
3576	2020-02-20 10:00:00-07	2020-02-20 11:15:00-07	Cap failures	2020-02-20 11:10:16.638098-07	1.25000	21	5	11:15:00
3579	2020-02-20 14:30:00-07	2020-02-20 15:30:00-07	FAT analysis BP1067,BP1123, BP1124, BP1126	2020-02-20 15:32:12.58556-07	1.00000	41	5	15:30:00
3577	2020-02-20 11:15:00-07	2020-02-20 11:30:00-07	BP1067,BP1124, BP1125, BP1126	2020-02-20 11:27:24.437332-07	0.25000	42	5	11:30:00
3578	2020-02-20 11:30:00-07	2020-02-20 14:30:00-07	fixed plot discrepancy	2020-02-20 15:31:15.147754-07	3.00000	235	5	14:30:00
3580	2020-02-20 16:00:00-07	2020-02-20 16:30:00-07	30 min from Monday I forgot to add	2020-02-20 16:15:29.135447-07	0.50000	28	11	16:30:00
3574	2020-02-20 07:00:00-07	2020-02-20 17:18:39-07	Shop organisation.	2020-02-20 17:18:42.418038-07	10.31083	28	3	\N
3581	2020-02-21 07:30:00-07	2020-02-21 08:15:00-07	BP1125	2020-02-21 08:40:31.469069-07	0.75000	41	5	08:15:00
3582	2020-02-21 08:15:00-07	2020-02-21 08:45:00-07	Ordered cable parts	2020-02-21 08:41:16.088355-07	0.50000	235	5	08:45:00
3583	2020-02-21 08:45:00-07	2020-02-21 13:00:00-07	Add position and channel readout on check plot button	2020-02-21 12:51:33.834099-07	4.25000	235	5	13:00:00
3584	2020-02-21 13:00:00-07	2020-02-21 14:30:00-07	Read Powerpoint function	2020-02-21 15:28:42.782329-07	1.50000	226	5	14:30:00
3585	2020-02-21 14:30:00-07	2020-02-21 15:30:00-07	Raised floor debug	2020-02-21 15:29:22.217555-07	1.00000	81	5	15:30:00
3587	2020-02-24 07:30:00-07	2020-02-24 08:00:00-07	Status meeting	2020-02-24 08:00:07.160606-07	0.50000	21	5	08:00:00
3588	2020-02-24 08:00:00-07	2020-02-24 09:00:00-07	BP1129	2020-02-24 09:06:00.607516-07	1.00000	41	5	09:00:00
3589	2020-02-24 08:44:12-07	2020-02-24 10:06:56-07	Shop organisation.	2020-02-24 10:07:24.508322-07	1.37889	28	3	\N
3591	2020-02-24 09:00:00-07	2020-02-24 10:45:00-07	BP1129 data transfer	2020-02-24 15:39:17.415642-07	1.75000	41	5	10:45:00
3592	2020-02-24 10:45:00-07	2020-02-24 11:45:00-07	Progeny IPT	2020-02-24 15:39:55.946889-07	1.00000	21	5	11:45:00
3593	2020-02-24 11:45:00-07	2020-02-24 12:15:00-07	BP1010 AITS test	2020-02-24 15:40:32.57606-07	0.50000	272	5	12:15:00
3594	2020-02-24 12:15:00-07	2020-02-24 15:45:00-07	Matlab script to get data from Powerpoint files, Spec limits file, TVR run chart	2020-02-24 15:41:27.703812-07	3.50000	226	5	15:45:00
3596	2020-02-25 07:45:00-07	2020-02-25 08:00:00-07	BP1129	2020-02-25 08:01:29.651575-07	0.25000	42	5	08:00:00
3597	2020-02-25 08:00:00-07	2020-02-25 08:15:00-07	Checked DVDs	2020-02-25 08:59:24.490661-07	0.25000	41	5	08:15:00
3595	2020-02-25 06:50:00-07	2020-02-25 15:03:10-07	Shop organisation.	2020-02-25 15:03:15.56492-07	8.21944	28	3	\N
3598	2020-02-25 08:15:00-07	2020-02-25 15:30:00-07	Phase plots, Stack data consolidation	2020-02-25 15:24:22.700101-07	7.25000	226	5	15:30:00
3600	2020-02-26 07:15:00-07	2020-02-26 07:30:00-07	Assembled cables	2020-02-26 09:38:54.678302-07	0.25000	235	5	07:30:00
3601	2020-02-26 07:30:00-07	2020-02-26 08:00:00-07	Status	2020-02-26 09:40:05.927707-07	0.50000	21	5	08:00:00
3602	2020-02-26 08:00:00-07	2020-02-26 09:45:00-07	Writing vignette	2020-02-26 09:40:38.723537-07	1.75000	233	5	09:45:00
3621	2020-03-02 07:00:00-07	2020-03-02 17:03:42-07	Repair.	2020-03-02 17:03:45.979523-07	10.06167	285	3	\N
3603	2020-02-26 09:45:00-07	2020-02-26 15:30:00-07	Stack data consolidation, Element data consolidation	2020-02-26 15:30:00.613285-07	5.75000	226	5	15:30:00
3604	2020-02-27 07:00:00-07	2020-02-27 08:08:10-07	inspection & clean.	2020-02-27 08:09:42.62997-07	1.13611	281	3	\N
3606	2020-02-27 07:45:00-07	2020-02-27 08:15:00-07	Writing vignette	2020-02-27 09:20:42.966547-07	0.50000	233	5	08:15:00
3607	2020-02-27 08:15:00-07	2020-02-27 08:45:00-07	consulting on FPGA issue	2020-02-27 09:21:58.256526-07	0.50000	285	5	08:45:00
3609	2020-02-27 09:15:00-07	2020-02-27 09:45:00-07	High floor element discussions	2020-02-27 11:20:13.993309-07	0.50000	288	5	09:45:00
3610	2020-02-27 09:45:00-07	2020-02-27 10:30:00-07	Sidelobe evaluation	2020-02-27 11:21:54.944275-07	0.75000	226	5	10:30:00
3611	2020-02-27 10:30:00-07	2020-02-27 11:15:00-07	Meeting	2020-02-27 11:22:28.906156-07	0.75000	288	5	11:15:00
3612	2020-02-27 11:15:00-07	2020-02-27 15:45:00-07	Element run charts	2020-02-27 15:45:27.327877-07	4.50000	226	5	15:45:00
3614	2020-02-28 07:45:00-07	2020-02-28 08:15:00-07	Research	2020-02-28 08:17:03.22676-07	0.50000	289	5	08:15:00
3615	2020-02-28 08:15:00-07	2020-02-28 10:00:00-07	Element run charts	2020-02-28 10:07:09.271598-07	1.75000	226	5	10:00:00
3613	2020-02-28 07:05:00-07	2020-02-28 11:20:34-07	Shop organisation.	2020-02-28 11:21:16.568014-07	4.25944	28	3	\N
3616	2020-02-28 10:00:00-07	2020-02-28 11:00:00-07	Sidelobe evaluation	2020-02-28 14:24:16.046604-07	1.00000	226	5	11:00:00
3618	2020-02-28 11:00:00-07	2020-02-28 14:00:00-07	Element run charts	2020-02-28 14:25:01.892567-07	3.00000	226	5	14:00:00
3619	2020-02-28 14:00:00-07	2020-02-28 14:15:00-07	consulting on FPGA issue	2020-02-28 14:25:36.952827-07	0.25000	285	5	14:15:00
3586	2020-02-24 07:00:00-07	2020-02-24 08:44:11-07	Testing after repair.	2020-02-28 15:01:38.092744-07	1.73639	285	3	\N
3590	2020-02-24 10:06:57-07	2020-02-24 15:01:05-07	Testing.	2020-02-28 15:03:44.306724-07	4.90222	282	3	\N
3608	2020-02-27 08:45:00-07	2020-02-27 09:15:00-07	AIB bent pin technical justification	2020-03-02 20:28:47.720789-07	0.50000	185	5	09:15:00
3599	2020-02-26 07:00:00-07	2020-02-26 15:11:41-07	Repair & Test.	2020-02-28 15:04:09.765386-07	8.19472	283	3	\N
3605	2020-02-27 08:08:11-07	2020-02-27 15:11:57-07	Test and repair.	2020-02-28 15:04:41.985101-07	7.06278	285	3	\N
3617	2020-02-28 11:20:35-07	2020-02-28 15:20:15-07	Test and repair.	2020-02-28 15:20:17.705549-07	3.99444	285	3	\N
3620	2020-02-28 14:15:00-07	2020-02-28 15:45:00-07	Element run charts	2020-02-28 15:42:47.88442-07	1.50000	226	5	15:45:00
3622	2020-03-02 07:30:00-07	2020-03-02 08:00:00-07	Status	2020-03-02 07:54:53.042681-07	0.50000	21	5	08:00:00
3623	2020-03-02 08:00:00-07	2020-03-02 08:15:00-07	Connector issues	2020-03-02 08:21:36.936368-07	0.25000	87	5	08:15:00
3624	2020-03-02 08:15:00-07	2020-03-02 10:45:00-07	Element run charts	2020-03-02 11:46:02.219227-07	2.50000	226	5	10:45:00
3625	2020-03-02 10:45:00-07	2020-03-02 11:45:00-07	Progeny IPT	2020-03-02 11:46:29.265643-07	1.00000	21	5	11:45:00
3626	2020-03-02 11:45:00-07	2020-03-02 13:30:00-07	Stack/Element run charts	2020-03-02 13:36:40.249945-07	1.75000	226	5	13:30:00
3627	2020-03-02 13:30:00-07	2020-03-02 14:15:00-07	FPGA debug	2020-03-02 14:14:55.208091-07	0.75000	285	5	14:15:00
3628	2020-03-02 14:15:00-07	2020-03-02 15:30:00-07	Stack/Element run charts	2020-03-02 15:32:14.145835-07	1.25000	226	5	15:30:00
3629	2020-03-03 07:00:00-07	2020-03-03 07:14:19-07	Shop organisation.	2020-03-03 07:14:31.733156-07	0.23861	28	3	\N
3630	2020-03-03 07:00:00-07	2020-03-03 07:15:00-07	Updated vignette	2020-03-03 08:17:07.152437-07	0.25000	233	5	07:15:00
3632	2020-03-03 07:15:00-07	2020-03-03 08:15:00-07	Planning	2020-03-03 08:17:31.503669-07	1.00000	21	5	08:15:00
3633	2020-03-03 08:15:00-07	2020-03-03 08:30:00-07	Assembled cables	2020-03-03 09:40:34.118309-07	0.25000	235	5	08:30:00
3634	2020-03-03 08:30:00-07	2020-03-03 09:30:00-07	Research	2020-03-03 09:41:40.685514-07	1.00000	289	5	09:30:00
3635	2020-03-03 09:30:00-07	2020-03-03 09:45:00-07	Clock debug	2020-03-03 09:58:39.459819-07	0.25000	285	5	09:45:00
3636	2020-03-03 09:45:00-07	2020-03-03 10:15:00-07	Sidelobe evaluation	2020-03-03 10:10:25.373221-07	0.50000	226	5	10:15:00
3638	2020-03-03 12:00:00-07	2020-03-03 12:15:00-07	Raised floor discussions	2020-03-03 12:12:26.811338-07	0.25000	288	5	12:15:00
3639	2020-03-02 08:30:00-07	2020-03-02 14:00:00-07	Cleaning Shop, Printing Letters, etc.	2020-03-03 16:42:33.790296-07	5.50000	28	11	14:00:00
3640	2020-03-03 09:00:00-07	2020-03-03 17:00:00-07	Redesign of Dust collector, Modifying Sandblaster cap and bottom, printing light bulbs, etc.	2020-03-03 16:47:00.039501-07	8.00000	28	11	17:00:00
3631	2020-03-03 07:14:20-07	2020-03-03 17:15:19-07	Testing.	2020-03-03 17:15:22.227319-07	10.01639	285	3	\N
3641	2020-03-04 07:00:00-07	2020-03-04 07:16:49-07	Shop organisation.	2020-03-04 07:17:01.133909-07	0.28028	28	3	\N
3643	2020-03-04 07:30:00-07	2020-03-04 08:30:00-07	Status	2020-03-04 08:22:45.558332-07	1.00000	21	5	08:30:00
3644	2020-03-04 08:30:00-07	2020-03-04 09:00:00-07	Stack/Element run charts	2020-03-04 10:08:25.865458-07	0.50000	226	5	09:00:00
3645	2020-03-04 09:00:00-07	2020-03-04 10:15:00-07	Cap failures	2020-03-04 10:11:04.546047-07	1.25000	288	5	10:15:00
3642	2020-03-04 07:16:50-07	2020-03-04 12:38:20-07	Testing.	2020-03-04 12:38:32.880806-07	5.35833	285	3	\N
3650	2020-03-05 07:30:00-07	2020-03-05 08:45:00-07	Connector shell RCCA	2020-03-05 08:43:14.78946-07	1.25000	185	5	08:45:00
3646	2020-03-04 10:15:00-07	2020-03-04 15:30:00-07	Stack/Element run charts	2020-03-04 15:21:52.356487-07	5.25000	226	5	15:30:00
3648	2020-03-04 08:30:00-07	2020-03-04 15:30:00-07	Wiring in house, computer reconnect and disconnect, printing letters, and caps.	2020-03-04 15:22:40.100139-07	7.00000	28	11	15:30:00
3647	2020-03-04 12:38:21-07	2020-03-04 17:05:59-07	Wiring house.	2020-03-04 17:06:03.713978-07	4.46056	28	3	\N
3652	2020-03-05 10:00:00-07	2020-03-05 13:00:00-07	Connector shell RCCA	2020-03-05 14:18:00.33246-07	3.00000	84	5	13:00:00
3653	2020-03-05 13:00:00-07	2020-03-05 14:15:00-07	Labview design meeting	2020-03-05 14:19:06.021553-07	1.25000	234	5	14:15:00
3651	2020-03-05 08:45:00-07	2020-03-05 10:00:00-07	Retry bug fix	2020-03-05 14:20:02.514126-07	1.25000	235	5	10:00:00
3654	2020-03-05 14:15:00-07	2020-03-05 16:00:00-07	Retry bug fix	2020-03-05 15:52:39.733017-07	1.75000	235	5	16:00:00
3649	2020-03-05 07:00:00-07	2020-03-05 17:12:01-07	Shop organisation.	2020-03-05 17:12:04.521986-07	10.20028	28	3	\N
3689	2020-03-05 08:30:00-07	2020-03-05 15:30:00-07	Printing, removing paint, wiring	2020-03-08 22:23:07.953488-06	7.00000	28	11	15:30:00
3655	2020-03-06 07:30:00-07	2020-03-06 15:30:00-07	frequency charts	2020-03-06 15:31:53.087007-07	8.00000	226	5	15:30:00
3656	2020-03-06 09:15:00-07	2020-03-06 14:20:53-07	Draging wires & setup rrelays	2020-03-06 16:03:14.455224-07	5.09806	28	3	\N
3690	2020-03-08 08:20:00-06	2020-03-08 14:40:00-06	Wiring and printing and designing.	2020-03-08 22:23:48.005369-06	6.33333	28	11	14:40:00
3693	2020-03-09 07:45:00-06	2020-03-09 10:45:00-06	days: tested - pol date	2020-03-09 10:42:25.333358-06	3.00000	226	5	10:45:00
3694	2020-03-09 10:45:00-06	2020-03-09 12:00:00-06	Progeny IPT	2020-03-09 12:02:21.46971-06	1.25000	21	5	12:00:00
3695	2020-03-09 12:00:00-06	2020-03-09 15:30:00-06	frequency/magnitude	2020-03-09 15:26:18.233699-06	3.50000	226	5	15:30:00
3691	2020-03-09 07:10:00-06	2020-03-09 08:29:59-06	Shop organisation.	2020-03-09 15:31:18.390807-06	1.33306	28	3	\N
3696	2020-03-09 08:30:00-06	2020-03-09 09:29:59-06	Replacing connector.	2020-03-09 15:31:46.044844-06	0.99972	173	3	\N
3697	2020-03-09 09:30:00-06	2020-03-09 15:32:05-06	Testing.	2020-03-09 15:32:08.2094-06	6.03472	285	3	\N
3699	2020-03-10 07:30:00-06	2020-03-10 08:00:00-06	wire tubes	2020-03-10 08:13:12.784134-06	0.50000	233	5	08:00:00
3701	2020-03-10 09:00:00-06	2020-03-10 10:00:00-06	NUWC IPT	2020-03-10 10:12:32.742779-06	1.00000	21	5	10:00:00
3702	2020-03-10 10:00:00-06	2020-03-10 10:15:00-06	ADAS E03 Calibration	2020-03-10 10:13:06.680245-06	0.25000	15	5	10:15:00
3703	2020-03-10 10:15:00-06	2020-03-10 13:00:00-06	stack frequency/magnitude	2020-03-10 15:03:40.851544-06	2.75000	226	5	13:00:00
3704	2020-03-10 13:00:00-06	2020-03-10 15:00:00-06	Connector RCCA	2020-03-10 15:05:39.146205-06	2.00000	185	5	15:00:00
3698	2020-03-10 07:05:00-06	2020-03-10 15:38:06-06	Shop organisation.	2020-03-10 15:38:11.072753-06	8.55167	28	3	\N
3707	2020-03-11 07:30:00-06	2020-03-11 08:15:00-06	Status	2020-03-11 08:16:54.005497-06	0.75000	21	5	08:15:00
3708	2020-03-11 08:15:00-06	2020-03-11 12:30:00-06	Stack/Element run charts	2020-03-11 12:22:02.723662-06	4.25000	226	5	12:30:00
3709	2020-03-11 12:30:00-06	2020-03-11 13:00:00-06	Basic GUI	2020-03-11 12:58:15.209897-06	0.50000	289	5	13:00:00
3706	2020-03-11 07:00:00-06	2020-03-11 09:30:00-06	Printing end caps.	2020-03-11 15:18:34.27331-06	2.50000	28	3	\N
3712	2020-03-11 09:30:00-06	2020-03-11 11:15:00-06	Testing.	2020-03-11 15:18:51.415695-06	1.75000	285	3	\N
3710	2020-03-11 11:15:00-06	2020-03-11 13:10:00-06	Testing.	2020-03-11 15:19:14.428285-06	1.91667	282	3	\N
3711	2020-03-11 13:10:00-06	2020-03-11 15:20:23-06	Testing.	2020-03-11 15:20:28.12483-06	2.17306	283	3	\N
3713	2020-03-11 13:00:00-06	2020-03-11 15:30:00-06	Connector RCCA	2020-03-11 15:30:19.125858-06	2.50000	185	5	15:30:00
3714	2020-03-12 07:30:00-06	2020-03-12 08:00:00-06	Stack/Element run charts	2020-03-12 09:24:38.962846-06	0.50000	226	5	08:00:00
3700	2020-03-10 08:00:00-06	2020-03-10 09:00:00-06	ADAS E03 Calibration	2020-03-12 09:25:04.126761-06	1.00000	290	5	08:30:00
3715	2020-03-12 08:00:00-06	2020-03-12 09:45:00-06	ADAS E03 Calibration	2020-03-12 09:36:43.960038-06	1.75000	290	5	09:45:00
3717	2020-03-12 07:00:00-06	2020-03-12 09:59:20-06	Calibrating ADAS.	2020-03-12 09:59:49.116972-06	2.98889	290	3	\N
3716	2020-03-12 09:45:00-06	2020-03-12 11:30:00-06	Stack/Element run charts	2020-03-12 12:09:19.202985-06	1.75000	226	5	11:30:00
3719	2020-03-12 11:30:00-06	2020-03-12 12:00:00-06	Kickoff meeting	2020-03-12 12:09:54.550896-06	0.50000	289	5	12:00:00
3720	2020-03-12 12:00:00-06	2020-03-12 13:00:00-06	Stack/Element run charts	2020-03-12 13:53:23.963124-06	1.00000	226	5	13:00:00
3721	2020-03-12 13:00:00-06	2020-03-12 14:00:00-06	Test meeting	2020-03-12 13:56:14.154868-06	1.00000	234	5	14:00:00
3722	2020-03-12 14:00:00-06	2020-03-12 15:30:00-06	Stack/Element run charts	2020-03-12 15:28:28.880229-06	1.50000	226	5	15:30:00
3718	2020-03-12 09:59:21-06	2020-03-12 15:30:00-06	Repair & test.	2020-03-13 07:00:45.988233-06	5.51083	282	3	\N
3724	2020-03-13 07:30:00-06	2020-03-13 10:00:00-06	Stack/Element run charts	2020-03-13 10:06:00.5587-06	2.50000	226	5	10:00:00
3725	2020-03-13 11:30:00-06	2020-03-13 14:00:00-06	Nose element charts	2020-03-13 14:05:10.120186-06	2.50000	226	5	14:00:00
3726	2020-03-13 14:00:00-06	2020-03-13 15:15:00-06	ADAS E03 Calibration	2020-03-13 15:13:33.132863-06	1.25000	290	5	15:15:00
3723	2020-03-13 07:00:00-06	2020-03-13 13:29:59-06	Repair.	2020-03-13 15:29:31.753491-06	6.49972	283	3	\N
3727	2020-03-13 13:30:00-06	2020-03-13 15:30:14-06	Calibrating ADAS.	2020-03-13 15:30:17.879644-06	2.00389	290	3	\N
3728	2020-03-13 08:30:00-06	2020-03-13 15:45:00-06	Printing dust shield, cleaning, installing box and wiring up speakers and such, helping Barbara, and Jason	2020-03-13 15:34:53.412298-06	7.25000	28	11	15:45:00
3730	2020-03-16 11:00:00-06	2020-03-16 11:45:00-06	Progeny IPT	2020-03-16 11:52:31.931021-06	0.75000	21	5	11:45:00
3731	2020-03-16 08:40:00-06	2020-03-16 13:15:00-06	Dust Collector shield, Tormach Enclosure, cleaning	2020-03-16 13:10:58.894862-06	4.58333	28	11	13:15:00
3729	2020-03-16 07:00:00-06	2020-03-16 10:29:59-06	Shop organisation.	2020-03-16 16:59:38.926037-06	3.49972	28	3	\N
3732	2020-03-16 10:30:00-06	2020-03-16 11:59:59-06	testing.	2020-03-16 17:00:20.900552-06	1.49972	282	3	\N
3733	2020-03-16 12:00:00-06	2020-03-16 15:30:00-06	Calibrating ADAS.	2020-03-16 17:01:54.913777-06	3.50000	290	3	\N
3734	2020-03-16 15:30:00-06	2020-03-16 17:16:59-06	testing.	2020-03-16 17:17:55.612136-06	1.78306	282	3	\N
3735	2020-03-16 15:30:00-06	2020-03-16 15:45:00-06	Fixed element verification	2020-03-16 19:55:14.466486-06	0.25000	81	5	15:45:00
3736	2020-03-16 15:45:00-06	2020-03-16 17:00:00-06	BP1127, BP1128, BP1130, BP1131	2020-03-16 19:57:12.544571-06	1.25000	41	5	16:45:00
3737	2020-03-17 09:00:00-06	2020-03-17 12:05:00-06	Dust Shield, cleaning shop, Tormach Enclosure	2020-03-17 12:15:51.463117-06	3.08333	28	11	12:05:00
3738	2020-03-17 09:00:00-06	2020-03-17 13:30:00-06	Histogram function	2020-03-17 14:47:59.030247-06	4.50000	226	5	12:30:00
3739	2020-03-17 14:30:00-06	2020-03-17 14:45:00-06	Sidelobe evaluation	2020-03-17 16:18:24.520461-06	0.25000	226	5	14:45:00
3740	2020-03-17 07:00:00-06	2020-03-17 08:29:59-06	Testing.	2020-03-18 07:06:53.984362-06	1.49972	283	3	\N
3741	2020-03-17 08:30:00-06	2020-03-17 15:29:59-06	Calibrating ADAS.	2020-03-18 07:33:56.495879-06	6.99972	290	3	\N
3742	2020-03-17 15:30:00-06	2020-03-17 17:20:00-06	Testing.	2020-03-18 07:34:37.098824-06	1.83333	283	3	\N
3743	2020-03-17 16:00:00-06	2020-03-17 16:30:00-06	Review calibration tests	2020-03-18 09:49:59.459498-06	0.50000	290	5	16:30:00
3744	2020-03-18 07:00:00-06	2020-03-18 08:30:00-06	Shop organisation.	2020-03-19 07:06:01.859857-06	1.50000	28	3	08:30:00
3746	2020-03-19 07:30:00-06	2020-03-19 08:15:00-06	Status	2020-03-19 08:15:47.919354-06	0.75000	21	5	08:15:00
3751	2020-03-19 15:00:00-06	2020-03-19 16:00:00-06	Debug C-1	2020-03-19 16:08:57.33098-06	1.00000	290	5	16:00:00
3747	2020-03-19 09:30:00-06	2020-03-19 10:30:00-06	Review calibration tests	2020-03-19 11:09:28.659671-06	1.00000	290	5	10:30:00
3748	2020-03-19 10:30:00-06	2020-03-19 11:45:00-06	Sidelobe evaluation	2020-03-19 11:40:11.071011-06	1.25000	226	5	11:45:00
3750	2020-03-19 10:10:00-06	2020-03-19 14:30:00-06	Designing Enclosure. https://a360.co/2QsabOL	2020-03-19 14:22:49.937035-06	4.33333	168	11	14:30:00
3749	2020-03-19 12:30:00-06	2020-03-19 14:30:00-06	Basic GUI	2020-03-19 14:38:58.30441-06	2.00000	289	5	14:30:00
3752	2020-03-19 16:00:00-06	2020-03-19 17:15:00-06	Sync files	2020-03-19 17:19:29.196593-06	1.25000	226	5	17:15:00
3753	2020-03-20 09:15:00-06	2020-03-20 09:30:00-06	Sync files	2020-03-20 09:33:29.700141-06	0.25000	226	5	09:30:00
3755	2020-03-20 09:30:00-06	2020-03-20 13:15:00-06	Coolant system, filter, and stand in fusion 360 enclosure design	2020-03-20 13:10:47.953908-06	3.75000	168	11	13:15:00
3754	2020-03-20 09:30:00-06	2020-03-20 12:45:00-06	Connector shell RCCA	2020-03-20 14:26:07.666736-06	3.25000	185	5	12:45:00
3757	2020-03-20 14:15:00-06	2020-03-20 14:30:00-06	Connector shell RCCA	2020-03-20 14:28:59.891632-06	0.25000	185	5	14:30:00
3758	2020-03-20 14:30:00-06	2020-03-20 14:45:00-06	C-9 Debug	2020-03-20 14:46:53.606082-06	0.25000	290	5	14:45:00
3760	2020-03-20 15:45:00-06	2020-03-20 16:00:00-06	Dan Mumma call	2020-03-20 15:58:01.136077-06	0.25000	15	5	15:59:00
3745	2020-03-19 07:00:00-06	2020-03-19 08:00:00-06	Shop organisation.	2020-03-20 16:19:47.475996-06	1.00000	28	3	\N
3762	2020-03-20 10:30:00-06	2020-03-20 16:30:00-06	Calibrating ADAS.	2020-03-20 16:23:34.25218-06	6.00000	290	3	17:30:00
3759	2020-03-20 16:00:00-06	2020-03-20 18:00:00-06	Connector shell RCCA	2020-03-20 18:39:43.767334-06	2.00000	185	5	14:46:00
3761	2020-03-20 08:00:00-06	2020-03-20 10:29:59-06	Evaluation.	2020-03-20 16:17:50.693325-06	2.49972	286	3	\N
3763	2020-03-19 08:00:00-06	2020-03-19 11:00:00-06	Testing	2020-03-20 16:20:56.51344-06	3.00000	282	3	\N
3764	2020-03-19 11:00:00-06	2020-03-19 17:30:00-06	Calibrating ADAS.	2020-03-20 16:22:06.395822-06	6.50000	290	3	\N
3765	2020-03-20 18:45:00-06	2020-03-20 19:45:00-06	Connector shell RCCA	2020-03-20 19:47:11.603017-06	1.00000	185	5	19:45:00
3766	2020-03-23 04:45:00-06	2020-03-23 07:30:00-06	Connector shell RCCA	2020-03-23 07:19:49.095429-06	2.75000	185	5	07:30:00
3767	2020-03-23 07:30:00-06	2020-03-23 08:00:00-06	Status	2020-03-23 08:08:10.732372-06	0.50000	21	5	08:00:00
3768	2020-03-23 07:30:00-06	2020-03-23 08:28:32-06	Shop organisation.	2020-03-23 08:28:48.300512-06	0.97556	28	3	\N
3770	2020-03-23 10:45:00-06	2020-03-23 11:45:00-06	Progeny IPT	2020-03-23 11:40:08.245932-06	1.00000	21	5	11:45:00
3771	2020-03-23 14:45:00-06	2020-03-23 16:30:00-06	Connector shell RCCA	2020-03-23 16:38:24.029349-06	1.75000	185	5	16:30:00
3773	2020-03-24 07:45:00-06	2020-03-24 09:00:00-06	Training	2020-03-24 08:52:04.732059-06	1.25000	81	5	09:00:00
3774	2020-03-24 09:00:00-06	2020-03-24 09:45:00-06	NUWC IPT	2020-03-24 09:52:10.233806-06	0.75000	21	5	09:45:00
3777	2020-03-24 10:00:00-06	2020-03-24 13:00:00-06	Designing connectors, revamping the design to use the aluminum pieces, commencement of searching out parts on McMaster	2020-03-24 13:03:11.267195-06	3.00000	168	11	13:00:00
3776	2020-03-24 12:30:00-06	2020-03-24 13:45:00-06	Connector shell RCCA	2020-03-24 14:28:59.960102-06	1.25000	185	5	13:45:00
3778	2020-03-24 13:45:00-06	2020-03-24 14:30:00-06	Carrier Consolidation	2020-03-24 14:30:30.907325-06	0.75000	181	5	14:30:00
3769	2020-03-23 08:28:33-06	2020-03-23 14:15:09-06	Calibrating ADAS.	2020-03-24 15:23:46.460735-06	5.77667	291	3	\N
3916	2020-04-23 13:45:00-06	2020-04-23 16:30:00-06	Tare Scales	2020-04-23 16:34:05.536023-06	2.75000	289	5	16:30:00
3779	2020-03-24 15:00:00-06	2020-03-24 17:45:00-06	BP1127,BP1128,BP1130,BP1131, and BP1132	2020-03-24 17:51:19.863731-06	2.75000	42	5	17:45:00
3782	2020-03-25 07:30:00-06	2020-03-25 08:00:00-06	Status	2020-03-25 08:14:42.084752-06	0.50000	21	5	08:00:00
3784	2020-03-25 09:00:00-06	2020-03-25 12:15:00-06	Redesign of connector, parts list, and cleaning shop	2020-03-25 12:14:31.483531-06	3.25000	168	11	12:15:00
3783	2020-03-25 08:30:00-06	2020-03-25 12:15:00-06	Connector shell RCCA	2020-03-25 12:20:17.184291-06	3.75000	185	5	12:15:00
3797	2020-03-27 08:00:00-06	2020-03-27 12:14:59-06	Set up Automation.	2020-03-27 21:33:58.241488-06	4.24972	289	3	\N
3807	2020-03-30 13:00:00-06	2020-03-30 15:30:00-06	Communications, Serial.	2020-03-31 07:11:37.903968-06	2.50000	289	3	\N
3787	2020-03-26 08:45:00-06	2020-03-26 09:30:00-06	Training	2020-03-26 12:33:05.472856-06	0.75000	81	5	09:00:00
3798	2020-03-27 12:15:00-06	2020-03-27 15:00:00-06	Calibrating ESD Benches.	2020-03-27 21:34:38.413669-06	2.75000	279	3	\N
3789	2020-03-26 09:30:00-06	2020-03-26 09:45:00-06	Connector shell RCCA	2020-03-26 12:34:25.207002-06	0.25000	185	5	09:45:00
3788	2020-03-26 09:45:00-06	2020-03-26 13:00:00-06	Carrier Consolidation	2020-03-26 13:23:21.498643-06	3.25000	181	5	10:00:00
3790	2020-03-26 13:00:00-06	2020-03-26 13:30:00-06	Test meeting	2020-03-26 13:23:53.755305-06	0.50000	234	5	13:30:00
3791	2020-03-26 14:30:00-06	2020-03-26 16:45:00-06	Carrier Consolidation	2020-03-26 16:56:36.606861-06	2.25000	181	5	16:45:00
3793	2020-03-27 12:15:00-06	2020-03-27 15:15:00-06	Carrier Consolidation	2020-03-27 15:20:47.358834-06	3.00000	181	5	15:15:00
3794	2020-03-26 07:00:00-06	2020-03-26 09:59:59-06	Set up Automation.	2020-03-27 21:28:40.303265-06	2.99972	289	3	\N
3795	2020-03-26 10:00:00-06	2020-03-26 13:44:59-06	Test.	2020-03-27 21:30:32.842954-06	3.74972	286	3	\N
3792	2020-03-27 09:15:00-06	2020-03-27 11:00:00-06	Cleanup, consolidation	2020-03-30 08:54:01.942783-06	1.75000	81	5	11:00:00
3796	2020-03-26 13:45:00-06	2020-03-26 20:00:00-06	Trouble Shooting& Repair.	2020-03-27 21:31:19.746941-06	6.25000	292	3	\N
3775	2020-03-24 09:45:00-06	2020-03-24 12:30:00-06	Scale I/F programming	2020-03-30 08:55:54.169875-06	2.75000	289	5	12:30:00
3786	2020-03-25 12:15:00-06	2020-03-25 17:45:00-06	Scale I/F programming	2020-03-30 08:56:19.997129-06	5.50000	289	5	17:45:00
3800	2020-03-30 09:00:00-06	2020-03-30 10:30:00-06	Carrier Consolidation	2020-03-30 10:24:57.221853-06	1.50000	181	5	10:30:00
3801	2020-03-30 10:30:00-06	2020-03-30 10:45:00-06	Scale I/F programming	2020-03-30 11:51:38.899402-06	0.25000	289	5	10:45:00
3802	2020-03-30 10:45:00-06	2020-03-30 11:30:00-06	Progeny IPT	2020-03-30 11:52:05.425915-06	0.75000	21	5	11:30:00
3809	2020-03-31 08:45:00-06	2020-03-31 09:00:00-06	Status	2020-03-31 09:07:09.930841-06	0.25000	21	5	09:00:00
3803	2020-03-30 07:30:00-06	2020-03-30 07:45:00-06	Status	2020-03-30 11:53:05.258718-06	0.25000	21	5	07:45:00
3804	2020-03-30 12:00:00-06	2020-03-30 12:30:00-06	Scale I/F programming	2020-03-30 12:28:35.975473-06	0.50000	289	5	12:30:00
3781	2020-03-25 07:00:00-06	2020-03-25 13:11:34-06	Test & Repair.	2020-03-30 12:33:14.848693-06	6.19278	286	3	\N
3785	2020-03-25 13:11:35-06	2020-03-25 15:30:00-06	Set up Automation.	2020-03-30 12:34:08.867331-06	2.30694	289	3	\N
3780	2020-03-24 13:24:32-06	2020-03-24 15:31:08-06	Set up Automation.	2020-03-30 12:34:40.98916-06	2.11000	289	3	\N
3772	2020-03-24 07:05:00-06	2020-03-24 13:24:31-06	Test & Repair.	2020-03-30 12:35:32.157474-06	6.32528	287	3	\N
3805	2020-03-30 13:00:00-06	2020-03-30 16:00:00-06	Scale I/F programming	2020-03-30 16:05:53.788239-06	3.00000	289	5	16:00:00
3806	2020-03-30 16:00:00-06	2020-03-30 16:15:00-06	Support	2020-03-30 16:20:39.705723-06	0.25000	81	5	16:15:00
3799	2020-03-30 07:00:00-06	2020-03-30 12:59:59-06	inspection & clean.	2020-03-31 07:11:15.633507-06	5.99972	15	3	\N
3810	2020-03-31 12:15:00-06	2020-03-31 14:00:00-06	Scale I/F programming	2020-03-31 13:55:49.452949-06	1.75000	289	5	14:00:00
3811	2020-04-02 10:00:37-06	2020-04-02 15:22:46-06	enclosure	2020-04-02 15:22:49.44444-06	5.36917	168	11	\N
3808	2020-03-31 07:00:00-06	2020-03-31 17:00:00-06	Testing.	2020-04-03 07:50:07.218401-06	10.00000	287	3	\N
3812	2020-04-01 07:00:00-06	2020-04-01 09:59:59-06	Calibrating ADAS.	2020-04-03 07:54:16.266156-06	2.99972	290	3	\N
3813	2020-04-01 10:00:00-06	2020-04-01 16:59:59-06	Test & Repair Common Sounder ATE.	2020-04-03 07:57:14.694137-06	6.99972	287	3	\N
3815	2020-04-02 07:00:00-06	2020-04-02 08:29:59-06	Dismantling ADAS Calibration Equipment.	2020-04-03 08:10:25.097544-06	1.49972	290	3	\N
3814	2020-04-01 17:00:00-06	2020-04-01 19:30:00-06	Replacing connector.	2020-04-03 07:58:26.34126-06	2.50000	292	3	\N
3816	2020-04-02 08:30:00-06	2020-04-02 11:59:59-06	Testing.	2020-04-03 08:14:01.001306-06	3.49972	286	3	\N
3817	2020-04-02 12:00:00-06	2020-04-02 15:30:00-06	Testing.	2020-04-03 08:14:26.682838-06	3.50000	287	3	\N
3819	2020-04-03 09:00:00-06	2020-04-03 13:30:00-06	Adding in hardware to the enclosure file on Fusion 360.	2020-04-03 13:25:45.871164-06	4.50000	168	11	13:30:00
3818	2020-04-03 07:30:00-06	2020-04-03 11:30:00-06	Making backup connector assemble.	2020-04-03 16:18:52.147177-06	4.00000	292	3	\N
3820	2020-04-06 09:00:00-06	2020-04-06 13:00:00-06	Added all of the hardware to the Fusion 360 file	2020-04-06 12:59:20.599632-06	4.00000	168	11	13:00:00
3821	2020-04-06 08:00:00-06	2020-04-06 14:29:59-06	Evaluation & Testing.	2020-04-07 08:24:47.973618-06	6.49972	287	3	\N
3822	2020-04-06 14:30:00-06	2020-04-06 15:30:00-06	Backup connector assy.	2020-04-07 08:25:49.42935-06	1.00000	292	3	\N
3824	2020-04-07 09:30:00-06	2020-04-07 12:41:00-06	Pricing out how to make tray, cutting down box and moving snow blower to back.	2020-04-07 12:42:03.564272-06	3.18333	168	11	12:41:00
3823	2020-04-07 08:00:00-06	2020-04-07 16:30:00-06	Making a Gold unit Receiver Board	2020-04-08 08:05:41.473431-06	8.50000	287	3	\N
3826	2020-04-09 09:05:00-06	2020-04-09 14:25:00-06	Redesigning Sandblaster caps, Designing frames in Fusion, to be added to the enclosure, cleaning, and learning how to add components into other fusion 360 files.	2020-04-09 14:32:01.863189-06	5.33333	168	11	14:25:00
3827	2020-04-10 08:00:00-06	2020-04-10 11:40:00-06	Finished the block connector for the new metal, printed and tested. And cutting back the vines in the garden (digging up roots and removing)	2020-04-10 11:36:57.873074-06	3.66667	168	11	11:40:00
3825	2020-04-08 08:00:00-06	2020-04-08 09:59:59-06	Working on report.	2020-04-10 13:30:48.694037-06	1.99972	290	3	\N
3829	2020-04-08 15:00:00-06	2020-04-08 16:30:00-06	Evaluation.	2020-04-10 13:33:42.379886-06	1.50000	284	3	\N
3828	2020-04-08 10:00:00-06	2020-04-08 14:59:59-06	Testing.	2020-04-10 13:32:28.535459-06	4.99972	287	3	\N
3830	2020-04-09 08:00:00-06	2020-04-09 12:29:59-06	Makeing a Gold Receiver board.	2020-04-10 13:37:24.698403-06	4.49972	287	3	\N
3860	2020-04-14 13:00:00-06	2020-04-14 14:59:59-06	Repair.	2020-04-17 07:57:37.759227-06	1.99972	284	3	\N
3831	2020-04-09 12:30:00-06	2020-04-09 16:30:00-06	Evaluation.	2020-04-10 13:39:23.807067-06	4.00000	284	3	\N
3861	2020-04-14 15:00:00-06	2020-04-14 16:50:00-06	Getting supplies from Lows.	2020-04-17 07:58:38.718605-06	1.83333	28	3	\N
3832	2020-04-10 08:00:00-06	2020-04-10 16:00:00-06	Evaluation.	2020-04-10 13:46:30.274241-06	8.00000	284	3	\N
3833	2020-04-13 07:30:00-06	2020-04-13 08:00:00-06	Status	2020-04-13 07:57:06.383638-06	0.50000	21	5	08:00:00
3834	2020-04-13 08:00:00-06	2020-04-13 10:00:00-06	Batching state machine/GUI	2020-04-13 10:07:11.205591-06	2.00000	289	5	10:00:00
3835	2020-04-13 10:00:00-06	2020-04-13 10:45:00-06	Element testing email	2020-04-13 10:44:14.285362-06	0.75000	185	5	10:45:00
3836	2020-04-13 10:45:00-06	2020-04-13 11:30:00-06	Progeny IPT	2020-04-13 11:30:07.306192-06	0.75000	21	5	11:30:00
3837	2020-04-13 09:00:00-06	2020-04-13 11:35:00-06	Working on enclosure, printing 2 more sandblaster cap designs, and sweeping and moping the shop	2020-04-13 11:33:51.609431-06	2.58333	168	11	11:35:00
3838	2020-04-13 08:00:00-06	2020-04-13 15:29:59-06	Repair.	2020-04-13 15:59:49.500719-06	7.49972	284	3	\N
3840	2020-04-14 08:30:00-06	2020-04-14 13:30:00-06	Batching state machine/GUI	2020-04-14 13:40:33.316893-06	5.00000	289	5	13:30:00
3841	2020-04-15 07:30:00-06	2020-04-15 08:00:00-06	Status	2020-04-15 08:10:54.418466-06	0.50000	21	5	08:00:00
3843	2020-04-15 09:00:00-06	2020-04-15 13:00:00-06	Batching state machine/GUI	2020-04-15 12:58:05.299505-06	4.00000	289	5	13:00:00
3842	2020-04-15 08:52:24-06	2020-04-15 13:39:11-06	Enclosure design, trying to get the metal rods we have to work in fuison with the other components	2020-04-15 13:39:14.500733-06	4.77972	168	11	\N
3844	2020-04-15 13:13:49-06	2020-04-15 15:29:36-06	python3 sqlite3 tutorial	2020-04-15 15:29:39.148231-06	2.26306	293	15	\N
3845	2020-04-15 15:15:00-06	2020-04-15 16:00:00-06	Batching state machine/GUI	2020-04-15 15:56:32.346433-06	0.75000	289	5	16:00:00
3846	2020-04-15 08:00:00-06	2020-04-15 08:30:00-06	Status	2020-04-16 08:27:42.080535-06	0.50000	21	5	08:30:00
3847	2020-04-16 08:30:00-06	2020-04-16 12:00:00-06	Batching state machine/GUI	2020-04-16 12:27:14.72868-06	3.50000	289	5	12:00:00
3849	2020-04-16 12:00:00-06	2020-04-16 12:30:00-06	Connector shell meeting	2020-04-16 12:27:51.422383-06	0.50000	185	5	12:30:00
3848	2020-04-16 08:44:14-06	2020-04-16 12:46:37-06	python3 sqlite3 tutorial	2020-04-16 12:46:52.845537-06	4.03972	293	15	\N
3850	2020-04-16 12:46:38-06	2020-04-16 13:37:39-06	Started writing some code, wanted to download SQLite viewed to make sure the code does what I want it to	2020-04-16 13:38:34.872789-06	0.85028	289	15	\N
3851	2020-04-16 13:37:40-06	2020-04-16 13:45:32-06	python3 sqlite3 tutorial, downloaded sqlite viewer to check work better	2020-04-16 13:46:29.267379-06	0.13111	293	15	\N
3854	2020-04-16 10:40:00-06	2020-04-16 14:26:00-06	Adding onto the enclosure design and making all of the brackets	2020-04-16 14:25:41.85097-06	3.76667	168	11	14:26:00
3852	2020-04-16 13:45:33-06	2020-04-16 14:37:50-06	writing code for initializing database, also code for inputing first set of data manually	2020-04-16 14:38:29.461694-06	0.87139	289	15	\N
3853	2020-04-16 14:00:00-06	2020-04-16 15:15:00-06	Batching state machine/GUI	2020-04-16 15:12:24.104908-06	1.25000	289	5	15:15:00
3855	2020-04-16 14:37:51-06	2020-04-16 15:17:40-06	Looking into calling information from sqlite	2020-04-16 15:18:22.069733-06	0.66361	293	15	\N
3856	2020-04-16 15:17:41-06	2020-04-16 16:39:40-06	Setting up the read function to read directly from the database	2020-04-16 16:39:54.3381-06	1.36639	289	15	\N
3857	2020-04-16 16:39:41-06	2020-04-16 16:46:43-06	python3 sqlite3 tutorial	2020-04-16 16:46:46.049029-06	0.11722	293	15	\N
3839	2020-04-13 15:30:00-06	2020-04-13 16:30:00-06	getting order at Lows.	2020-04-17 07:44:56.063122-06	1.00000	28	3	\N
3859	2020-04-14 08:00:00-06	2020-04-14 11:45:00-06	Repair.	2020-04-17 07:50:44.802334-06	3.75000	284	3	\N
3862	2020-04-15 08:00:00-06	2020-04-15 09:29:59-06	Working with Andrew to help setup Equipment.	2020-04-17 08:08:40.583503-06	1.49972	28	3	\N
3863	2020-04-15 09:30:00-06	2020-04-15 10:59:59-06	Helping Mike HFMPA.	2020-04-17 08:10:17.899347-06	1.49972	277	3	\N
3864	2020-04-15 11:00:00-06	2020-04-15 15:00:00-06	Repair.	2020-04-17 08:12:39.064154-06	4.00000	284	3	\N
3865	2020-04-16 08:00:00-06	2020-04-16 15:29:59-06	Testing.	2020-04-17 08:15:06.818814-06	7.49972	284	3	\N
3866	2020-04-16 15:30:00-06	2020-04-16 17:10:00-06	Repairing RVS system.	2020-04-17 08:16:01.258388-06	1.66667	292	3	\N
3858	2020-04-17 07:00:00-06	2020-04-17 08:00:00-06	BP1116, BP1133	2020-04-17 10:46:19.415495-06	1.00000	41	5	08:00:00
3868	2020-04-17 08:00:00-06	2020-04-17 09:30:00-06	Carrier Consolidation	2020-04-17 10:47:33.676428-06	1.50000	181	5	09:30:00
3869	2020-04-17 09:30:00-06	2020-04-17 10:15:00-06	E07 transfer	2020-04-17 10:48:35.191523-06	0.75000	185	5	10:15:00
3870	2020-04-17 10:15:00-06	2020-04-17 10:45:00-06	E008, E009, E014, E015 Impedance data transfer	2020-04-17 10:49:27.436526-06	0.50000	185	5	10:45:00
3871	2020-04-17 09:00:00-06	2020-04-17 11:00:00-06	Adding more hardware to enclosure fusion file, and test printing a connector.	2020-04-17 10:58:39.027442-06	2.00000	168	11	11:00:00
3867	2020-04-17 07:10:00-06	2020-04-17 08:59:59-06	Testing.	2020-04-17 15:31:49.916686-06	1.83306	284	3	\N
3873	2020-04-17 09:00:00-06	2020-04-17 10:29:59-06	Finished calibration.	2020-04-17 15:32:27.380048-06	1.49972	279	3	\N
3874	2020-04-17 10:30:00-06	2020-04-17 15:33:07-06	Testing.	2020-04-17 15:33:10.338977-06	5.05194	284	3	\N
3872	2020-04-17 12:31:25-06	2020-04-17 15:42:30-06	Tkinter tutorials	2020-04-17 15:42:32.12735-06	3.18472	293	15	\N
3875	2020-04-18 09:00:00-06	2020-04-18 10:30:00-06	E07 TVR comparison	2020-04-18 10:24:09.857714-06	1.50000	185	5	10:30:00
3877	2020-04-20 07:30:00-06	2020-04-20 08:13:25-06	Testing.	2020-04-20 08:15:14.725375-06	0.72361	284	3	\N
3876	2020-04-20 07:30:00-06	2020-04-20 07:45:00-06	Status	2020-04-20 08:16:29.6467-06	0.25000	21	5	07:45:00
3880	2020-04-20 08:49:20-06	2020-04-20 10:26:19-06	Tkinter	2020-04-20 10:26:21.199116-06	1.61639	293	15	\N
3881	2020-04-20 10:45:00-06	2020-04-20 11:45:00-06	Progeny IPT	2020-04-20 11:45:51.575757-06	1.00000	21	5	11:45:00
3882	2020-04-20 11:56:09-06	2020-04-20 12:58:25-06	Tkinter	2020-04-20 12:58:41.842149-06	1.03778	293	15	\N
3883	2020-04-20 12:58:26-06	2020-04-20 13:03:46-06	SQLite	2020-04-20 13:04:06.984003-06	0.08889	293	15	\N
3879	2020-04-20 07:45:00-06	2020-04-20 08:30:00-06	Searched for AP2700 rental	2020-04-20 14:28:20.952505-06	0.75000	290	5	08:15:00
3885	2020-04-20 14:15:00-06	2020-04-20 14:30:00-06	Review PMR slides	2020-04-20 15:21:22.798089-06	0.25000	185	5	14:30:00
3886	2020-04-20 11:45:00-06	2020-04-20 12:15:00-06	Research Parts Availability	2020-04-20 15:28:07.219654-06	0.50000	294	5	12:15:00
3884	2020-04-20 13:03:47-06	2020-04-20 15:35:45-06	Setting up dictionary into database code	2020-04-20 15:35:58.854001-06	2.53278	289	15	\N
3887	2020-04-20 15:15:00-06	2020-04-20 17:30:00-06	Database code	2020-04-20 17:36:14.449261-06	2.25000	289	5	17:30:00
3878	2020-04-20 08:13:26-06	2020-04-20 09:44:59-06	Assembling.	2020-04-21 07:31:59.905887-06	1.52583	174	3	\N
3889	2020-04-20 09:45:00-06	2020-04-20 10:59:59-06	Finishing calibration.	2020-04-21 07:33:50.59762-06	1.24972	279	3	\N
3890	2020-04-20 11:00:00-06	2020-04-20 15:31:00-06	Assembling interface circuit.	2020-04-21 07:34:54.364775-06	4.51667	284	3	\N
3888	2020-04-20 15:35:46-06	2020-04-20 15:45:00-06	installing pyserial	2020-04-21 08:56:37.384314-06	0.15389	293	15	\N
3892	2020-04-21 08:56:53-06	2020-04-21 09:33:18-06	Settings button	2020-04-21 09:33:27.492108-06	0.60694	289	15	\N
3895	2020-04-21 09:45:00-06	2020-04-21 10:00:00-06	Searched for AP2700 rental	2020-04-21 10:11:01.411486-06	0.25000	290	5	10:00:00
3896	2020-04-21 11:00:00-06	2020-04-21 13:45:00-06	Scale - Rice Lake Scale I/F Programming	2020-04-21 13:53:10.9243-06	2.75000	289	5	13:45:00
3891	2020-04-21 07:20:00-06	2020-04-21 15:31:08-06	Assembling interface circuit.	2020-04-21 15:31:10.75797-06	8.18556	284	3	\N
3894	2020-04-21 09:33:19-06	2020-04-21 12:29:22-06	Django	2020-04-21 12:29:43.494149-06	2.93417	293	15	\N
3897	2020-04-21 12:29:23-06	2020-04-21 13:31:49-06	Fixing settings button	2020-04-21 13:31:57.561887-06	1.04056	289	15	\N
3893	2020-04-21 09:00:00-06	2020-04-21 09:45:00-06	NUWC IPT	2020-04-21 13:51:17.186561-06	0.75000	21	5	09:45:00
3899	2020-04-21 13:45:00-06	2020-04-21 14:30:00-06	Database code	2020-04-21 14:22:20.986451-06	0.75000	289	5	14:30:00
3898	2020-04-21 13:31:50-06	2020-04-21 16:57:48-06	Django	2020-04-21 16:57:49.929796-06	3.43278	293	15	\N
3931	2020-04-27 10:00:00-06	2020-04-27 10:45:00-06	ESS BP1116, BP1133, BP1137, BP1139	2020-04-27 12:11:09.859288-06	0.75000	42	5	10:45:00
3901	2020-04-22 10:00:00-06	2020-04-22 10:15:00-06	Sparing Analysis	2020-04-22 10:50:16.521874-06	0.25000	185	5	10:15:00
3902	2020-04-22 10:15:00-06	2020-04-22 10:30:00-06	APx555 Interface research	2020-04-22 10:51:14.2397-06	0.25000	15	5	10:30:00
3903	2020-04-22 10:30:00-06	2020-04-22 10:45:00-06	E008, E009, E014, E015 Impedance data search	2020-04-22 10:52:16.141266-06	0.25000	185	5	10:45:00
3900	2020-04-22 08:56:09-06	2020-04-22 11:16:32-06	Django	2020-04-22 11:16:50.91915-06	2.33972	293	15	\N
3905	2020-04-22 11:16:33-06	2020-04-22 11:26:27-06	PDFs with python	2020-04-22 11:26:41.937061-06	0.16500	289	15	\N
3906	2020-04-22 11:26:28-06	2020-04-22 11:52:37-06	ReportLab PDF tutorial	2020-04-22 11:53:19.429614-06	0.43583	293	15	\N
3904	2020-04-22 10:45:00-06	2020-04-22 12:45:00-06	Settings	2020-04-22 12:48:15.605416-06	2.00000	289	5	12:45:00
3907	2020-04-22 11:52:38-06	2020-04-22 13:54:12-06	powder_production_wip_form	2020-04-22 13:54:20.902245-06	2.02611	289	15	\N
3909	2020-04-22 14:00:00-06	2020-04-22 16:45:00-06	Settings	2020-04-22 16:48:15.3458-06	2.75000	289	5	16:45:00
3908	2020-04-22 13:54:13-06	2020-04-22 16:57:59-06	django	2020-04-22 16:58:05.239031-06	3.06278	293	15	\N
3911	2020-04-22 13:00:00-06	2020-04-22 15:00:00-06	Information on monitor.	2020-04-23 07:41:04.64877-06	2.00000	289	3	\N
3913	2020-04-23 10:30:00-06	2020-04-23 11:00:00-06	Database code	2020-04-23 11:00:00.823815-06	0.50000	289	5	11:00:00
3914	2020-04-23 11:00:00-06	2020-04-23 11:45:00-06	2-Pin Connector meeting	2020-04-23 12:31:16.061807-06	0.75000	185	5	11:45:00
3915	2020-04-23 12:30:00-06	2020-04-23 13:45:00-06	Database code	2020-04-23 13:50:27.604412-06	1.25000	289	5	13:00:00
3932	2020-04-27 10:45:00-06	2020-04-27 12:00:00-06	Progeny IPT	2020-04-27 12:11:35.108402-06	1.25000	21	5	12:00:00
3912	2020-04-23 08:38:51-06	2020-04-23 16:17:01-06	creating local copy of app and database	2020-04-23 16:17:05.152413-06	7.63611	293	15	\N
3918	2020-04-24 08:30:00-06	2020-04-24 10:30:00-06	FAT analysis BP1137, BP1139	2020-04-24 11:30:40.684423-06	2.00000	41	5	09:30:00
3919	2020-04-24 10:30:00-06	2020-04-24 11:30:00-06	E008, E009, E014, E015 Impedance data search	2020-04-24 11:31:16.595629-06	1.00000	185	5	11:30:00
3920	2020-04-24 11:30:00-06	2020-04-24 14:00:00-06	Communication Test	2020-04-24 14:02:21.393473-06	2.50000	289	5	14:00:00
3917	2020-04-24 08:55:35-06	2020-04-24 16:55:38-06	local repository setup	2020-04-24 16:55:40.661575-06	8.00083	293	15	\N
3910	2020-04-23 07:20:00-06	2020-04-23 08:59:59-06	Building interface board.	2020-04-25 10:50:21.643282-06	1.66639	284	3	\N
3921	2020-04-23 09:00:00-06	2020-04-23 12:29:59-06	Calibration.	2020-04-25 10:52:29.046163-06	3.49972	295	3	\N
3922	2020-04-23 12:30:00-06	2020-04-23 15:40:00-06	Trouble shooting.	2020-04-25 10:53:35.666905-06	3.16667	296	3	\N
3923	2020-04-24 07:00:00-06	2020-04-24 09:59:59-06	Picking up supplies for Barbara.	2020-04-25 11:05:49.36727-06	2.99972	28	3	\N
3929	2020-04-27 08:56:51-06	2020-04-27 13:00:00-06	Adding onto fusion file	2020-04-27 12:57:28.904799-06	4.05250	168	11	\N
3924	2020-04-24 10:00:00-06	2020-04-24 11:29:59-06	Heartbeat test.	2020-04-25 11:08:16.998832-06	1.49972	292	3	\N
3925	2020-04-24 11:30:00-06	2020-04-24 14:29:59-06	Troublshooting.	2020-04-25 11:13:17.123933-06	2.99972	289	3	\N
3926	2020-04-24 14:30:00-06	2020-04-24 15:30:00-06	Troublshooting.	2020-04-25 11:13:44.883505-06	1.00000	296	3	\N
3927	2020-04-27 07:30:00-06	2020-04-27 07:45:00-06	Status	2020-04-27 08:00:16.66536-06	0.25000	21	5	07:45:00
3928	2020-04-27 07:30:00-06	2020-04-27 09:59:59-06	Building up interface PWB.	2020-04-27 15:31:04.010887-06	2.49972	284	3	\N
3933	2020-04-27 10:00:00-06	2020-04-27 15:36:46-06	Testing.	2020-04-27 15:36:48.268146-06	5.61278	296	3	\N
3930	2020-04-27 09:01:22-06	2020-04-27 17:01:24-06	figuring out how the system works	2020-04-27 17:01:26.643237-06	8.00056	32	15	\N
3935	2020-04-28 08:15:00-06	2020-04-28 12:00:00-06	PMR	2020-04-28 12:26:21.53549-06	3.75000	21	5	12:00:00
3937	2020-04-28 12:00:00-06	2020-04-28 13:00:00-06	Printing out thicker infill component, and setting up a parts list	2020-04-28 13:01:56.402708-06	1.00000	168	11	13:00:00
3934	2020-04-28 07:20:00-06	2020-04-28 10:29:59-06	replacing senors	2020-04-28 15:32:26.958914-06	3.16639	296	3	\N
3938	2020-04-28 10:30:00-06	2020-04-28 15:36:59-06	Build interface board.	2020-04-28 15:37:04.88172-06	5.11639	284	3	\N
3936	2020-04-28 08:55:07-06	2020-04-28 18:55:54-06	setting up local server	2020-04-28 18:55:56.345085-06	10.01306	32	15	\N
3941	2020-04-29 09:30:00-06	2020-04-29 09:45:00-06	OPS50 test support	2020-04-29 09:42:48.667457-06	0.25000	81	5	09:45:00
3940	2020-04-29 09:01:55-06	2020-04-29 12:10:29-06	setting up local repositories	2020-04-29 12:10:40.959972-06	3.14278	32	15	\N
3943	2020-04-29 12:10:30-06	2020-04-29 12:52:55-06	Travel	2020-04-29 15:53:52.384817-06	0.70694	39	15	\N
3944	2020-04-29 12:52:56-06	2020-04-29 15:54:07-06	Debugging scale code at l3harris	2020-04-29 15:54:18.093652-06	3.01972	289	15	\N
3945	2020-04-29 15:54:08-06	2020-04-29 16:41:21-06	Travel	2020-04-29 16:41:38.981109-06	0.78694	39	15	\N
3946	2020-04-29 16:41:22-06	2020-04-29 17:13:13-06	Setting up WiFi adapter	2020-04-29 17:13:15.629109-06	0.53083	32	15	\N
3942	2020-04-29 09:45:00-06	2020-04-29 17:00:00-06	Scale simulation code	2020-04-29 17:56:37.652892-06	7.25000	289	5	17:00:00
3939	2020-04-29 07:40:00-06	2020-04-29 13:45:00-06	Changing sensors.	2020-04-30 07:59:54.117465-06	6.08333	296	3	\N
3947	2020-04-30 07:40:00-06	2020-04-30 08:01:00-06	Repair.	2020-04-30 08:01:03.109553-06	0.35000	296	3	\N
3948	2020-04-29 13:45:00-06	2020-04-29 14:59:59-06	Setup.	2020-04-30 08:02:53.645729-06	1.24972	289	3	\N
3949	2020-04-29 15:00:00-06	2020-04-29 16:05:00-06	Repair.	2020-04-30 08:03:25.860916-06	1.08333	296	3	\N
3953	2020-04-29 08:30:00-06	2020-04-29 12:20:00-06	Printing connectors and updating parts needed list and fusion file	2020-04-30 09:55:47.350846-06	3.83333	168	11	12:20:00
3954	2020-04-30 10:15:00-06	2020-04-30 12:45:00-06	powder batch process	2020-04-30 12:51:50.967197-06	2.50000	289	5	12:45:00
3952	2020-04-30 09:30:00-06	2020-04-30 10:15:00-06	OPS50 test support	2020-04-30 14:20:50.827985-06	0.75000	81	5	10:00:00
3956	2020-04-30 09:00:00-06	2020-04-30 14:00:00-06	Printing, adding into enclosure design and building a stand for cordy	2020-04-30 14:27:31.306899-06	5.00000	168	11	14:00:00
3955	2020-04-30 14:15:00-06	2020-04-30 15:15:00-06	powder batch process	2020-04-30 15:18:26.175988-06	1.00000	289	5	15:15:00
3950	2020-04-30 08:01:01-06	2020-04-30 13:29:59-06	Repair.	2020-04-30 16:08:46.587944-06	5.48278	296	3	\N
3957	2020-04-30 13:30:00-06	2020-04-30 13:59:59-06	PM on shaker & oven.	2020-04-30 16:10:05.098873-06	0.49972	15	3	\N
3951	2020-04-30 08:59:36-06	2020-04-30 16:59:40-06	setting up VPS	2020-04-30 16:59:43.022453-06	8.00111	32	15	\N
3958	2020-04-30 14:00:00-06	2020-04-30 16:15:00-06	Making test load Scott V.	2020-05-01 07:19:34.745542-06	2.25000	292	3	\N
3959	2020-05-01 06:50:00-06	2020-05-01 10:29:59-06	Building load board for Scott V.	2020-05-01 13:03:42.589605-06	3.66639	292	3	\N
3960	2020-05-01 08:58:55-06	2020-05-01 14:46:56-06	setting up VPS	2020-05-01 14:46:58.568642-06	5.80028	32	15	\N
3962	2020-05-01 10:30:00-06	2020-05-01 14:55:05-06	Repair.	2020-05-01 14:55:09.319658-06	4.41806	296	3	\N
3963	2020-05-01 10:00:00-06	2020-05-01 15:00:00-06	Redesign of enclosure using the materials, fixing clogged printer, wiping down the shop with cleaner, redesigning connectors for the enclosure.	2020-05-01 16:09:54.31027-06	5.00000	168	11	15:00:00
3961	2020-05-01 12:15:00-06	2020-05-01 16:15:00-06	powder batch process	2020-05-02 11:02:12.491972-06	4.00000	289	5	16:15:00
3996	2020-05-02 08:45:00-06	2020-05-02 11:00:00-06	powder batch process	2020-05-02 11:02:26.47286-06	2.25000	289	5	11:00:00
3997	2020-05-02 11:00:00-06	2020-05-02 11:45:00-06	hopper weight comparison	2020-05-02 11:47:21.847629-06	0.75000	289	5	11:45:00
3998	2020-05-02 11:45:00-06	2020-05-02 12:00:00-06	Planning	2020-05-02 12:04:50.632941-06	0.25000	289	5	12:00:00
3999	2020-05-04 07:30:00-06	2020-05-04 08:00:00-06	Status	2020-05-04 08:34:17.556379-06	0.50000	21	5	08:00:00
4001	2020-05-04 10:00:00-06	2020-05-04 10:30:00-06	HVIR test training	2020-05-04 10:31:44.607659-06	0.50000	81	5	10:30:00
4000	2020-05-04 08:15:00-06	2020-05-04 09:45:00-06	powder batch process	2020-05-04 10:32:04.769436-06	1.50000	289	5	09:30:00
4003	2020-05-04 10:45:00-06	2020-05-04 11:30:00-06	Progeny IPT	2020-05-04 11:31:21.155715-06	0.75000	21	5	11:30:00
4004	2020-05-04 10:51:35-06	2020-05-04 11:56:19-06	scale work	2020-05-04 11:56:45.556743-06	1.07889	289	15	\N
4006	2020-05-04 11:56:20-06	2020-05-04 12:51:06-06	Scale work	2020-05-04 12:51:24.898614-06	0.91278	289	15	\N
4007	2020-05-04 12:51:07-06	2020-05-04 13:14:46-06	quick tkinter review	2020-05-04 13:14:56.946274-06	0.39417	293	15	\N
4005	2020-05-04 11:45:00-06	2020-05-04 15:30:00-06	powder batch process	2020-05-04 15:25:25.64696-06	3.75000	289	5	15:30:00
4009	2020-05-04 09:00:00-06	2020-05-04 15:00:00-06	Sheetrock door, cleaning attic, applying paint stripper to window, and cleaning shop	2020-05-04 15:49:38.682666-06	6.00000	28	11	15:00:00
4010	2020-05-04 15:01:00-06	2020-05-04 16:00:00-06	Sheetrock door, cleaning attic, applying paint stripper to window, and cleaning shop	2020-05-04 15:52:16.093041-06	0.98333	28	11	16:00:00
4011	2020-05-04 15:30:00-06	2020-05-04 16:15:00-06	Status	2020-05-04 16:25:20.152127-06	0.75000	21	5	16:15:00
4008	2020-05-04 13:14:47-06	2020-05-04 18:53:48-06	input form	2020-05-04 18:53:49.506505-06	5.65028	289	15	\N
4002	2020-05-04 07:40:00-06	2020-05-04 16:00:00-06	Repair.	2020-05-05 07:28:40.049604-06	8.33333	296	3	\N
4013	2020-05-05 08:15:00-06	2020-05-05 08:45:00-06	Test schedule, AIB pin repair	2020-05-05 08:38:56.791587-06	0.50000	185	5	08:45:00
4015	2020-05-05 08:45:00-06	2020-05-05 09:00:00-06	Scroll bar fix	2020-05-05 09:11:09.680253-06	0.25000	289	5	09:00:00
4016	2020-05-05 09:00:00-06	2020-05-05 09:30:00-06	NUWC IPT	2020-05-05 09:36:50.319749-06	0.50000	21	5	09:30:00
4018	2020-05-05 09:52:09-06	2020-05-05 10:11:03-06	set up webserver	2020-05-05 10:12:10.931486-06	0.31500	32	15	\N
4029	2020-05-06 09:09:21-06	2020-05-06 11:31:23-06	datasheet pdf	2020-05-06 11:31:25.808845-06	2.36722	289	15	\N
4017	2020-05-05 09:30:00-06	2020-05-05 10:15:00-06	data sheet specification	2020-05-05 10:21:05.530598-06	0.75000	289	5	10:15:00
4012	2020-05-05 07:20:00-06	2020-05-05 08:59:59-06	Repair.	2020-05-05 10:52:21.832644-06	1.66639	296	3	\N
4014	2020-05-05 09:03:36-06	2020-05-05 09:52:08-06	input form	2020-05-05 11:28:52.344699-06	0.80889	289	15	\N
4019	2020-05-05 10:11:04-06	2020-05-05 11:29:03-06	input form	2020-05-05 11:29:05.622595-06	1.29972	289	15	\N
4020	2020-05-05 10:15:00-06	2020-05-05 12:45:00-06	Batch count	2020-05-05 12:47:30.359017-06	2.50000	289	5	12:45:00
4023	2020-05-05 12:45:00-06	2020-05-05 15:15:00-06	Status	2020-05-05 15:33:52.685205-06	2.50000	289	5	15:15:00
4025	2020-05-05 08:50:00-06	2020-05-05 14:52:00-06	Wiring in the house, measuring floor, taking up floor, etc.	2020-05-05 15:52:26.434555-06	6.03333	28	11	14:52:00
4026	2020-05-05 14:53:00-06	2020-05-05 16:00:00-06	Taking up floor, wiring, and cleaning attic	2020-05-05 15:53:33.219319-06	1.11667	28	11	16:00:00
4024	2020-05-05 15:30:00-06	2020-05-05 16:45:00-06	Help function	2020-05-05 16:41:49.691961-06	1.25000	289	5	16:45:00
4022	2020-05-05 14:03:52-06	2020-05-05 19:38:27-06	input form, pdf generator #2	2020-05-05 19:38:29.673798-06	5.57639	289	15	\N
4021	2020-05-05 09:00:00-06	2020-05-05 16:10:00-06	Up stairs floor level.	2020-05-06 07:46:24.783329-06	7.16667	28	3	\N
4045	2020-05-07 09:04:42-06	2020-05-07 11:18:25-06	security	2020-05-07 11:49:41.238432-06	2.22861	32	15	\N
4028	2020-05-06 07:15:00-06	2020-05-06 08:00:00-06	Status	2020-05-06 07:57:23.862433-06	0.75000	21	5	08:00:00
4030	2020-05-06 09:15:00-06	2020-05-06 11:15:00-06	Help functions	2020-05-06 11:24:11.760484-06	2.00000	289	5	11:15:00
4032	2020-05-06 11:15:00-06	2020-05-06 11:45:00-06	Fixed component complete activation	2020-05-06 11:49:07.237896-06	0.50000	289	5	11:45:00
4033	2020-05-06 11:45:00-06	2020-05-06 12:15:00-06	Screencast	2020-05-06 12:15:10.949548-06	0.50000	289	5	12:15:00
4034	2020-05-06 13:00:00-06	2020-05-06 13:45:00-06	Screencast	2020-05-06 13:47:09.66176-06	0.75000	289	5	13:45:00
4035	2020-05-06 14:00:00-06	2020-05-06 14:45:00-06	Screencast	2020-05-06 14:40:28.820798-06	0.75000	289	5	14:45:00
4036	2020-05-06 08:30:00-06	2020-05-06 16:50:00-06	flooring in attic, stripping paint, etc	2020-05-06 16:47:37.085024-06	8.33333	28	11	16:50:00
4031	2020-05-06 11:33:12-06	2020-05-06 17:12:55-06	setting up VPS	2020-05-06 17:12:57.475506-06	5.66194	32	15	\N
4027	2020-05-06 07:40:00-06	2020-05-06 10:59:59-06	Repair ADAIS board.	2020-05-06 17:23:11.045571-06	3.33306	173	3	\N
4037	2020-05-06 11:00:00-06	2020-05-06 15:59:59-06	Repair.	2020-05-06 17:30:58.039099-06	4.99972	296	3	\N
4038	2020-05-06 16:00:00-06	2020-05-06 16:59:59-06	Picking up supplies at Home-depot.	2020-05-06 17:32:40.975634-06	0.99972	28	3	\N
4040	2020-05-06 16:00:00-06	2020-05-06 17:45:00-06	BP1138	2020-05-06 18:43:52.866768-06	1.75000	41	5	17:45:00
4039	2020-05-06 17:00:00-06	2020-05-06 18:49:09-06	Trouble shooting &repair.	2020-05-06 18:49:12.339318-06	1.81917	238	3	\N
4041	2020-05-07 07:30:00-06	2020-05-07 08:01:23-06	picking up supplies at Lows.	2020-05-07 08:01:40.343404-06	0.52306	28	3	\N
4043	2020-05-07 07:30:00-06	2020-05-07 07:45:00-06	Fixed video	2020-05-07 08:06:42.714926-06	0.25000	289	5	07:45:00
4044	2020-05-07 08:45:00-06	2020-05-07 10:30:00-06	Conditional Simulation	2020-05-07 10:28:18.146483-06	1.75000	289	5	10:30:00
4042	2020-05-07 08:01:24-06	2020-05-07 10:52:08-06	Repair.	2020-05-07 10:52:31.939429-06	2.84556	281	3	\N
4046	2020-05-07 10:52:09-06	2020-05-07 13:10:00-06	Repair.	2020-05-08 07:34:35.877685-06	2.29750	296	3	\N
4047	2020-05-07 11:18:26-06	2020-05-07 11:48:46-06	lot number fix	2020-05-07 11:49:47.956084-06	0.50556	289	15	\N
4048	2020-05-07 11:48:47-06	2020-05-07 12:27:37-06	security research	2020-05-07 12:27:49.97608-06	0.64722	32	15	\N
4049	2020-05-07 10:45:00-06	2020-05-07 13:00:00-06	change to lot number	2020-05-07 12:57:22.825056-06	2.25000	289	5	13:00:00
4052	2020-05-07 08:35:00-06	2020-05-07 16:55:00-06	Installing 3/8 plywood, installing plastic, ripping up 3/8 plywood	2020-05-07 16:51:33.151356-06	8.33333	28	11	16:55:00
4051	2020-05-07 13:00:00-06	2020-05-07 13:30:00-06	Test meeting	2020-05-07 17:04:07.700266-06	0.50000	234	5	13:30:00
4050	2020-05-07 12:27:38-06	2020-05-07 17:04:53-06	lookup function	2020-05-07 17:04:54.762275-06	4.62083	289	15	\N
4053	2020-05-08 05:15:00-06	2020-05-08 07:30:00-06	change to lot number, wip sheet, data sheet	2020-05-08 09:04:17.724854-06	2.25000	289	5	07:30:00
4055	2020-05-08 08:54:30-06	2020-05-08 10:04:55-06	fix PPDS	2020-05-08 10:05:07.84875-06	1.17361	289	15	\N
4056	2020-05-08 10:04:56-06	2020-05-08 10:50:42-06	Travel	2020-05-08 10:51:07.632457-06	0.76278	39	15	\N
4054	2020-05-08 07:25:00-06	2020-05-08 11:29:13-06	Repair.	2020-05-08 11:29:27.541974-06	4.07028	281	3	\N
4058	2020-05-08 11:29:14-06	2020-05-08 11:59:59-06	Repair.	2020-05-08 13:36:05.241409-06	0.51250	296	3	\N
4059	2020-05-08 12:00:00-06	2020-05-08 12:59:59-06	Setup.	2020-05-08 13:36:31.160339-06	0.99972	289	3	\N
4061	2020-05-08 13:45:00-06	2020-05-08 14:45:00-06	Scale testing	2020-05-08 14:58:24.450176-06	1.00000	289	5	14:45:00
4060	2020-05-08 13:00:00-06	2020-05-08 15:35:47-06	Repair.	2020-05-08 15:35:50.961248-06	2.59639	296	3	\N
4057	2020-05-08 10:50:43-06	2020-05-08 15:51:36-06	Testing and debutgging at l3harris	2020-05-08 15:51:59.36646-06	5.01472	289	15	\N
4062	2020-05-08 15:51:37-06	2020-05-08 16:55:53-06	Travel	2020-05-08 16:55:59.5933-06	1.07111	39	15	\N
4063	2020-05-08 08:30:00-06	2020-05-08 15:30:00-06	Laying plastic, cleaning and stripping wall.	2020-05-10 08:40:33.550037-06	7.00000	28	11	15:30:00
4065	2020-05-11 07:40:00-06	2020-05-11 10:29:59-06	Repair.	2020-05-11 14:24:43.078011-06	2.83306	296	3	\N
4064	2020-05-11 07:30:00-06	2020-05-11 08:00:00-06	Status	2020-05-12 14:49:28.405496-06	0.50000	21	5	08:00:00
4066	2020-05-11 09:15:00-06	2020-05-11 10:30:00-06	Debug	2020-05-11 10:43:44.340017-06	1.25000	289	5	10:30:00
4069	2020-05-06 08:30:00-06	2020-05-06 14:30:00-06	Work in attic and laying down plastic	2020-05-11 12:37:41.224733-06	6.00000	28	13	14:30:00
4070	2020-05-07 08:45:00-06	2020-05-07 16:15:00-06	Laying down plastic and wood upstairs	2020-05-11 12:39:46.851-06	7.50000	28	13	16:15:00
4068	2020-05-11 10:45:00-06	2020-05-11 11:30:00-06	Progeny IPT	2020-05-11 13:02:02.584634-06	0.75000	21	5	11:30:00
4071	2020-05-11 12:45:00-06	2020-05-11 13:00:00-06	research	2020-05-11 13:02:32.251193-06	0.25000	15	5	13:00:00
4072	2020-05-11 10:30:00-06	2020-05-11 14:24:49-06	ADAIS Calibration.	2020-05-11 14:25:06.749772-06	3.91361	15	3	\N
4073	2020-05-11 14:24:50-06	2020-05-11 15:46:03-06	Repair.	2020-05-11 15:46:05.20114-06	1.35361	296	3	\N
4074	2020-05-11 14:00:00-06	2020-05-11 15:00:00-06	Windows computer setup	2020-05-11 16:18:53.548942-06	1.00000	289	5	15:00:00
4075	2020-05-11 15:00:00-06	2020-05-11 16:00:00-06	Calibration research	2020-05-11 16:20:54.86463-06	1.00000	15	5	16:00:00
4067	2020-05-11 10:02:08-06	2020-05-11 18:02:21-06	bug fixes	2020-05-11 18:02:23.478581-06	8.00361	289	15	\N
4077	2020-05-12 09:02:05-06	2020-05-12 11:07:17-06	security	2020-05-12 11:07:28.564153-06	2.08667	32	15	\N
4078	2020-05-12 11:07:18-06	2020-05-12 11:56:32-06	travel	2020-05-12 11:56:47.660329-06	0.82056	39	15	\N
4080	2020-05-12 09:00:00-06	2020-05-12 09:30:00-06	Meeting	2020-05-12 14:25:48.892827-06	0.50000	297	5	09:30:00
4081	2020-05-12 12:00:00-06	2020-05-12 12:15:00-06	Debug	2020-05-12 14:27:37.90036-06	0.25000	289	5	12:15:00
4079	2020-05-12 11:56:33-06	2020-05-12 15:05:08-06	Testing and demo	2020-05-12 15:05:23.600994-06	3.14306	289	15	\N
4083	2020-05-11 09:00:00-06	2020-05-11 17:30:00-06	attic	2020-05-12 15:08:51.365227-06	8.50000	28	11	17:30:00
4084	2020-05-12 14:00:00-06	2020-05-12 15:45:26-06	Training.	2020-05-12 15:45:28.409094-06	1.75722	130	3	\N
4082	2020-05-12 15:05:09-06	2020-05-12 15:58:55-06	Travel	2020-05-12 15:59:07.259872-06	0.89611	39	15	\N
4086	2020-05-12 09:00:00-06	2020-05-12 17:00:00-06	Attic subflooring	2020-05-12 16:56:43.33262-06	8.00000	28	11	17:00:00
4085	2020-05-12 15:58:56-06	2020-05-12 17:02:12-06	Fixes	2020-05-12 17:02:13.978597-06	1.05444	289	15	\N
4087	2020-05-13 07:30:00-06	2020-05-13 07:45:00-06	Status	2020-05-13 07:50:49.606295-06	0.25000	21	5	07:45:00
4090	2020-05-11 09:45:00-06	2020-05-11 17:30:00-06	Work upstairs including installing insulation and osb	2020-05-13 09:18:47.658077-06	7.75000	28	13	17:30:00
4091	2020-05-12 09:00:00-06	2020-05-12 14:30:00-06	Installing osb on floor	2020-05-13 09:20:01.170158-06	5.50000	28	13	14:30:00
4093	2020-05-13 13:30:00-06	2020-05-13 14:30:00-06	Cap failures	2020-05-13 14:22:49.628247-06	1.00000	185	5	14:30:00
4089	2020-05-13 08:58:23-06	2020-05-13 15:20:30-06	fixes	2020-05-13 15:20:38.953487-06	6.36861	289	15	\N
4092	2020-05-13 11:15:00-06	2020-05-13 11:45:00-06	Capacitance tests	2020-05-13 15:23:45.552362-06	0.50000	81	5	11:30:00
4095	2020-05-13 09:10:00-06	2020-05-13 14:00:00-06	Finishing sub flooring and walls	2020-05-13 15:59:03.568626-06	4.83333	28	11	14:00:00
4094	2020-05-13 15:20:31-06	2020-05-13 15:59:07-06	security	2020-05-13 15:59:15.093491-06	0.64333	32	15	\N
4097	2020-05-13 14:00:00-06	2020-05-13 16:00:00-06	Adding to Walls	2020-05-13 15:59:24.28708-06	2.00000	28	11	16:00:00
4096	2020-05-13 15:59:08-06	2020-05-13 17:00:39-06	more fixes	2020-05-13 17:00:42.35574-06	1.02528	289	15	\N
4100	2020-05-14 09:30:00-06	2020-05-14 09:45:00-06	Reviewed draft	2020-05-14 09:52:02.206633-06	0.25000	297	5	09:45:00
4099	2020-05-14 09:00:13-06	2020-05-14 11:47:22-06	security	2020-05-14 11:47:34.711678-06	2.78583	32	15	\N
4101	2020-05-14 10:00:00-06	2020-05-14 12:00:00-06	Review Ben's changes, input form request	2020-05-14 12:22:18.446554-06	2.00000	289	5	12:00:00
4102	2020-05-14 11:47:23-06	2020-05-14 12:26:21-06	questions and decimal points	2020-05-14 12:26:32.816212-06	0.64944	289	15	\N
4103	2020-05-14 12:26:22-06	2020-05-14 12:58:32-06	security	2020-05-14 12:58:34.110358-06	0.53611	32	15	\N
4104	2020-05-14 13:30:00-06	2020-05-14 14:15:00-06	Cap failures	2020-05-14 14:10:49.08121-06	0.75000	81	5	14:15:00
4098	2020-05-14 07:30:00-06	2020-05-14 13:29:59-06	Trouble shooting &repair.	2020-05-14 14:52:37.814017-06	5.99972	173	3	\N
4105	2020-05-14 13:30:00-06	2020-05-14 15:47:17-06	Calibrating ADAS.	2020-05-14 15:47:20.093662-06	2.28806	15	3	\N
4108	2020-05-15 09:20:00-06	2020-05-15 15:35:00-06	OSB installation in attic addition; Cleaning Shop and Attic, and cleaning up final concrete stuff.	2020-05-15 15:34:43.713612-06	6.25000	28	11	15:35:00
4109	2020-05-15 11:15:00-06	2020-05-15 16:00:00-06	Cap failures	2020-05-15 16:02:29.816736-06	4.75000	81	5	16:00:00
4107	2020-05-15 09:00:08-06	2020-05-15 16:59:26-06	security	2020-05-15 16:59:28.578171-06	7.98833	32	15	\N
4106	2020-05-15 07:28:19-06	2020-05-15 15:50:00-06	Repair.	2020-05-16 06:42:45.547998-06	8.36139	296	3	\N
4111	2020-05-16 09:22:07-06	2020-05-16 09:31:06-06	security	2020-05-16 09:31:07.719892-06	0.14972	32	15	\N
4110	2020-05-16 06:40:00-06	2020-05-16 11:16:32-06	Repair.	2020-05-16 11:16:36.938797-06	4.60889	173	3	\N
4113	2020-05-16 11:00:00-06	2020-05-16 11:15:00-06	Cap failures	2020-05-16 11:35:10.2828-06	0.25000	81	5	11:15:00
4112	2020-05-16 09:59:06-06	2020-05-16 13:52:34-06	security	2020-05-16 13:52:35.869061-06	3.89111	32	15	\N
4114	2020-05-16 15:00:00-06	2020-05-16 18:10:28-06	Repair.	2020-05-16 18:10:30.994615-06	3.17444	173	3	\N
4115	2020-05-18 07:30:00-06	2020-05-18 07:45:00-06	Status	2020-05-18 08:05:35.704483-06	0.25000	21	5	07:45:00
4088	2020-05-13 07:30:00-06	2020-05-13 12:15:00-06	Repair.	2020-05-18 08:13:31.344713-06	4.75000	296	3	\N
4076	2020-05-12 07:30:00-06	2020-05-12 11:30:00-06	Calibrating ADAS.	2020-05-18 08:15:36.88303-06	4.00000	15	3	\N
4117	2020-05-12 11:30:00-06	2020-05-12 14:00:00-06	Repair.	2020-05-18 08:17:20.590312-06	2.50000	296	3	\N
4118	2020-05-18 07:45:00-06	2020-05-18 08:00:00-06	Cap failures	2020-05-18 08:46:05.059391-06	0.25000	81	5	08:00:00
4119	2020-05-18 09:00:00-06	2020-05-18 15:00:00-06	Installing osb on floor and begining instalation of boards on walls	2020-05-18 09:10:38.03966-06	6.00000	28	13	15:00:00
4120	2020-05-13 09:00:00-06	2020-05-13 15:00:00-06	Adding osb to floors and to walls	2020-05-18 09:13:07.876469-06	6.00000	28	13	15:00:00
4122	2020-05-18 10:30:00-06	2020-05-18 10:45:00-06	Status	2020-05-18 10:29:33.82655-06	0.25000	289	5	10:45:00
4123	2020-05-18 13:30:00-06	2020-05-18 13:45:00-06	Ordered thermocouples, Analyzer justification	2020-05-18 13:50:26.763195-06	0.25000	185	5	13:45:00
4124	2020-05-18 10:45:00-06	2020-05-18 11:30:00-06	Progeny IPT	2020-05-18 13:50:58.422868-06	0.75000	21	5	11:30:00
4116	2020-05-18 07:35:00-06	2020-05-18 11:00:00-06	Repair docking PWB's.	2020-05-18 15:46:33.794437-06	3.41667	173	3	\N
4121	2020-05-18 09:24:11-06	2020-05-18 16:28:12-06	security	2020-05-18 17:29:53.787401-06	7.06694	32	15	\N
4125	2020-05-18 13:30:00-06	2020-05-18 19:40:00-06	Repair.	2020-05-19 07:25:44.932288-06	6.16667	173	3	\N
4127	2020-05-18 09:00:00-06	2020-05-18 15:45:00-06	Coming to the finish of the plywood and cleaning	2020-05-19 08:17:38.289957-06	6.75000	28	11	15:45:00
4131	2020-05-18 17:30:00-06	2020-05-18 19:30:00-06	Cap failures	2020-05-19 09:16:57.062761-06	2.00000	81	5	19:30:00
4130	2020-05-18 16:00:00-06	2020-05-18 17:30:00-06	APx555 setup issues	2020-05-19 09:16:01.065271-06	1.50000	15	5	17:30:00
4129	2020-05-19 09:00:00-06	2020-05-19 09:45:00-06	NUWC IPT	2020-05-19 09:40:21.187497-06	0.75000	21	5	10:00:00
4132	2020-05-19 09:28:01-06	2020-05-19 11:41:30-06	security	2020-05-19 11:41:32.42796-06	2.22472	32	15	\N
4133	2020-05-19 11:00:00-06	2020-05-19 11:45:00-06	Analyzer justification	2020-05-19 11:42:12.112376-06	0.75000	185	5	11:45:00
4134	2020-05-19 11:58:31-06	2020-05-19 13:16:49-06	aws files	2020-05-19 13:16:50.914588-06	1.30500	32	15	\N
4126	2020-05-19 07:15:00-06	2020-05-19 14:03:01-06	Repair.	2020-05-19 14:03:47.791595-06	6.80028	173	3	\N
4135	2020-05-19 12:15:00-06	2020-05-19 14:30:00-06	Cap failures	2020-05-19 14:43:56.369955-06	2.25000	81	5	13:45:00
4137	2020-05-19 08:10:00-06	2020-05-19 15:00:00-06	Adding osb and then sheetrock	2020-05-19 14:55:30.067667-06	6.83333	28	13	15:00:00
4128	2020-05-19 08:17:47-06	2020-05-19 16:03:06-06	Attic work	2020-05-19 16:03:09.855609-06	7.75528	28	11	\N
4138	2020-05-19 15:15:00-06	2020-05-19 17:00:00-06	Cap failures	2020-05-19 17:49:52.373141-06	1.75000	81	5	17:00:00
4139	2020-05-19 17:00:00-06	2020-05-19 17:45:00-06	Capacitance csv files	2020-05-19 17:50:32.61678-06	0.75000	226	5	17:45:00
4136	2020-05-19 14:03:02-06	2020-05-19 15:29:59-06	installing computer & monitor.	2020-05-20 07:48:58.272544-06	1.44917	289	3	\N
4141	2020-05-19 15:30:00-06	2020-05-19 17:45:00-06	Repair.	2020-05-20 07:49:29.874974-06	2.25000	173	3	\N
4140	2020-05-20 07:30:00-06	2020-05-20 08:00:00-06	Status	2020-05-20 09:33:48.691205-06	0.50000	21	5	08:00:00
4144	2020-05-20 09:30:00-06	2020-05-20 10:00:00-06	Run chart data for Tanner	2020-05-20 10:09:14.852176-06	0.50000	226	5	10:00:00
4143	2020-05-20 09:08:59-06	2020-05-20 12:06:07-06	vps	2020-05-20 12:06:09.324433-06	2.95222	32	15	\N
4145	2020-05-20 13:30:00-06	2020-05-20 14:00:00-06	Cap failures	2020-05-20 14:06:52.477295-06	0.50000	81	5	14:00:00
4146	2020-05-20 14:00:00-06	2020-05-20 14:15:00-06	Status email	2020-05-20 14:21:48.451845-06	0.25000	289	5	14:15:00
4147	2020-05-20 08:40:00-06	2020-05-20 16:40:00-06	Attic, drywall, wiring, cleaning, and stuff	2020-05-20 16:37:45.034597-06	8.00000	28	11	16:40:00
4148	2020-05-20 15:15:00-06	2020-05-20 17:00:00-06	Run chart data for Tanner	2020-05-20 17:06:45.211493-06	1.75000	226	5	17:00:00
4142	2020-05-20 07:40:00-06	2020-05-20 09:59:59-06	Repair.	2020-05-21 07:42:46.959784-06	2.33306	284	3	\N
4149	2020-05-20 10:00:00-06	2020-05-20 16:20:00-06	Repair.	2020-05-21 07:43:27.005981-06	6.33333	173	3	\N
4151	2020-05-21 08:00:00-06	2020-05-21 08:30:00-06	Cap failures	2020-05-21 08:55:52.6106-06	0.50000	81	5	08:15:00
4152	2020-05-21 09:15:00-06	2020-05-21 12:00:00-06	Run charts	2020-05-21 12:04:25.670771-06	2.75000	226	5	12:00:00
4153	2020-05-20 09:30:00-06	2020-05-20 15:50:00-06	Putting up sheetrock	2020-05-21 12:36:26.069769-06	6.33333	28	13	15:50:00
4154	2020-05-21 10:30:00-06	2020-05-21 14:00:00-06	Putting up sheetrock	2020-05-21 12:37:09.378166-06	3.50000	28	13	14:00:00
4155	2020-05-21 13:00:00-06	2020-05-21 13:30:00-06	Test meeting	2020-05-21 14:21:42.975614-06	0.50000	234	5	13:30:00
4156	2020-05-21 13:30:00-06	2020-05-21 14:00:00-06	Run charts	2020-05-21 14:22:39.487083-06	0.50000	226	5	14:00:00
4157	2020-05-21 14:00:00-06	2020-05-21 14:15:00-06	Input form	2020-05-21 14:23:23.55198-06	0.25000	289	5	14:15:00
4150	2020-05-21 07:30:00-06	2020-05-21 15:45:29-06	Calibrating RVS.	2020-05-21 15:45:32.590157-06	8.25806	295	3	\N
4158	2020-05-21 15:45:00-06	2020-05-21 17:15:00-06	Run charts	2020-05-21 17:19:48.43137-06	1.50000	226	5	17:15:00
4159	2020-05-21 08:30:00-06	2020-05-21 17:30:00-06	Drywall in the bathroom, stripping window, installing air vent, and cleaning everywhere	2020-05-21 17:31:16.243491-06	9.00000	28	11	17:30:00
4192	2020-05-22 11:00:00-06	2020-05-22 12:00:00-06	BP1136,BP1140,BP1141	2020-05-22 14:23:55.725903-06	1.00000	41	5	12:00:00
4193	2020-05-22 12:00:00-06	2020-05-22 13:00:00-06	APx555 research	2020-05-22 14:24:35.942948-06	1.00000	15	5	13:00:00
4194	2020-05-23 09:04:24-06	2020-05-23 10:00:25-06	copy of vps	2020-05-23 10:00:27.348362-06	0.93361	32	15	\N
4195	2020-05-23 16:09:16-06	2020-05-23 16:49:47-06	ssl certs	2020-05-23 16:49:49.133386-06	0.67528	32	15	\N
4196	2020-05-25 08:30:00-06	2020-05-25 10:15:00-06	ADAS E03 Calibration	2020-05-25 10:12:04.085069-06	1.75000	15	5	10:15:00
4197	2020-05-25 09:10:18-06	2020-05-25 17:12:26-06	ssl	2020-05-25 17:12:28.497067-06	8.03556	32	15	\N
4199	2020-05-26 09:24:06-06	2020-05-26 10:44:19-06	copying vps to vm	2020-05-26 10:44:28.985867-06	1.33694	32	15	\N
4200	2020-05-26 10:30:00-06	2020-05-26 10:45:00-06	Status	2020-05-26 10:47:46.106145-06	0.25000	21	5	10:45:00
4201	2020-05-26 10:45:00-06	2020-05-26 11:00:00-06	Run chart test files	2020-05-26 11:37:53.470671-06	0.25000	226	5	11:00:00
4202	2020-05-26 11:00:00-06	2020-05-26 11:45:00-06	Revision meeting	2020-05-26 11:39:26.670964-06	0.75000	331	5	11:45:00
4204	2020-05-26 11:45:00-06	2020-05-26 12:15:00-06	Run chart test files	2020-05-26 12:15:50.1007-06	0.50000	226	5	12:15:00
4203	2020-05-26 11:50:24-06	2020-05-26 12:44:30-06	setting up vm	2020-05-26 12:44:31.942541-06	0.90167	32	15	\N
4205	2020-05-26 13:45:11-06	2020-05-26 16:44:02-06	set up vm	2020-05-26 16:44:03.784335-06	2.98083	32	15	\N
4206	2020-05-26 09:00:00-06	2020-05-26 17:00:00-06	Attic, finishing sheetrock and plywood. Attempting to drill out pipes but there are nails. I'll talk to you about that tomorrow	2020-05-26 16:58:54.927119-06	8.00000	28	11	17:00:00
4207	2020-05-26 13:00:00-06	2020-05-26 18:15:00-06	Calibration	2020-05-26 19:08:55.749679-06	5.25000	15	5	17:45:00
4208	2020-05-26 18:15:00-06	2020-05-26 18:30:00-06	BP1136, BP1141	2020-05-26 19:09:39.723199-06	0.25000	42	5	18:30:00
4209	2020-05-26 11:00:00-06	2020-05-26 11:59:59-06	Replacing J078 connector.	2020-05-27 07:44:32.950014-06	0.99972	87	3	\N
4210	2020-05-26 12:00:00-06	2020-05-26 17:00:00-06	Calibration environmental chamber.	2020-05-27 07:45:08.80382-06	5.00000	298	3	\N
4211	2020-05-26 07:30:00-06	2020-05-26 07:45:00-06	Status	2020-05-27 08:05:39.826245-06	0.25000	21	5	07:45:00
4212	2020-05-27 08:41:00-06	2020-05-27 09:24:13-06	Travel	2020-05-27 09:24:28.277076-06	0.72028	39	15	\N
4215	2020-05-26 09:40:00-06	2020-05-26 13:25:00-06	Putting up sheetrock	2020-05-27 10:21:42.578297-06	3.75000	28	13	13:25:00
4214	2020-05-27 09:24:14-06	2020-05-27 13:04:06-06	Testing	2020-05-27 13:04:28.899676-06	3.66444	289	15	\N
4217	2020-05-27 09:00:00-06	2020-05-27 13:30:00-06	Dry run	2020-05-27 13:53:09.343649-06	4.50000	289	5	13:30:00
4216	2020-05-27 13:04:07-06	2020-05-27 13:56:26-06	Travel	2020-05-27 13:56:31.66084-06	0.87194	39	15	\N
4218	2020-05-27 13:30:00-06	2020-05-27 14:00:00-06	Capacitance DOE	2020-05-27 14:06:01.931331-06	0.50000	185	5	14:00:00
4219	2020-05-27 09:00:00-06	2020-05-27 15:00:00-06	Attic	2020-05-27 14:52:14.788361-06	6.00000	28	11	15:00:00
4220	2020-05-27 16:30:00-06	2020-05-27 17:00:00-06	AP2700 research	2020-05-27 18:41:48.521895-06	0.50000	15	5	17:00:00
4221	2020-05-27 17:00:00-06	2020-05-27 18:45:00-06	BP1136, BP1140, BP1141, BP1142	2020-05-27 18:42:26.816494-06	1.75000	41	5	18:45:00
4213	2020-05-27 07:30:00-06	2020-05-27 14:00:00-06	Calibration environmental chamber. Getting parts and printing procedures.	2020-05-28 07:30:24.889536-06	6.50000	298	3	\N
4223	2020-05-28 08:30:00-06	2020-05-28 08:45:00-06	BP1142	2020-05-28 09:35:38.901014-06	0.25000	42	5	08:45:00
4224	2020-05-27 09:30:00-06	2020-05-27 14:20:00-06	Cleaned up outside fence and installed sheetrock	2020-05-28 12:02:57.930251-06	4.83333	28	13	14:20:00
4222	2020-05-28 07:30:29-06	2020-05-28 13:59:59-06	Compiling data for environmental chamber>	2020-05-28 15:32:31.744706-06	6.49167	298	3	\N
4198	2020-05-26 07:40:00-06	2020-05-26 10:59:59-06	Going over requirements for C of C'c and ovens that Sandy was asking if we can calibrate.	2020-05-28 15:34:50.004043-06	3.33306	298	3	\N
4225	2020-05-28 14:00:00-06	2020-05-28 15:36:23-06	Removing power switch O scope for Wayne L.	2020-05-28 15:36:25.880333-06	1.60639	296	3	\N
4226	2020-05-28 08:45:00-06	2020-05-28 17:50:00-06	Attic drywall, framing, and dragging wiring.	2020-05-28 18:21:40.691499-06	9.08333	28	11	17:50:00
4229	2020-05-29 10:30:00-06	2020-05-29 12:30:00-06	Run chart test files	2020-05-29 12:45:06.138835-06	2.00000	226	5	12:30:00
4227	2020-05-29 07:30:00-06	2020-05-29 09:29:59-06	Switch replacement on O scope.	2020-05-29 13:21:11.334671-06	1.99972	296	3	\N
4228	2020-05-29 09:38:52-06	2020-05-29 15:26:45-06	security for vm	2020-05-29 15:26:48.113518-06	5.79806	32	15	\N
4230	2020-05-29 09:30:00-06	2020-05-29 15:52:13-06	Wiring lights back of house.	2020-05-29 15:52:15.645601-06	6.37028	28	3	\N
4232	2020-05-29 09:00:00-06	2020-05-29 16:45:00-06	Buying stuff, filling cracks, and cutting drywall and OSB to fit	2020-05-29 16:57:34.722866-06	7.75000	28	11	16:45:00
4231	2020-05-29 15:45:00-06	2020-05-29 17:00:00-06	Run chart test files	2020-05-29 17:09:20.180224-06	1.25000	226	5	17:00:00
4233	2020-06-01 07:30:00-06	2020-06-01 07:45:00-06	Status	2020-06-01 08:01:34.789421-06	0.25000	21	5	07:45:00
4234	2020-05-28 10:30:00-06	2020-05-28 12:30:00-06	Framing upstairs doorway	2020-06-01 09:27:30.173017-06	2.00000	28	13	12:30:00
4235	2020-05-29 11:00:00-06	2020-05-29 13:00:00-06	Trip to Lowes to pick up materials and then lugging them up the stairs	2020-06-01 09:29:58.20278-06	2.00000	28	13	13:00:00
4267	2020-06-03 09:00:00-06	2020-06-03 16:42:00-06	Paint stripping, plumbing, and cleaning	2020-06-03 16:42:06.462427-06	7.70000	28	11	16:42:00
4237	2020-06-01 10:45:00-06	2020-06-01 11:30:00-06	Progeny IPT	2020-06-01 11:44:56.812142-06	0.75000	21	5	11:30:00
4238	2020-06-01 13:30:00-06	2020-06-01 14:30:00-06	Calibration	2020-06-01 14:34:54.73353-06	1.00000	15	5	14:30:00
4245	2020-06-02 08:48:34-06	2020-06-02 09:33:27-06	Travel	2020-06-02 09:33:43.686721-06	0.74806	39	15	\N
4247	2020-06-02 09:00:00-06	2020-06-02 09:45:00-06	NUWC IPT	2020-06-02 10:08:29.378363-06	0.75000	21	5	09:45:00
4240	2020-06-01 08:45:00-06	2020-06-01 16:00:00-06	Finishing the drywall and	2020-06-01 15:58:38.248335-06	7.25000	28	11	16:00:00
4248	2020-06-02 10:00:00-06	2020-06-02 12:00:00-06	Array Sweep	2020-06-02 12:19:48.532261-06	2.00000	81	5	12:00:00
4241	2020-06-01 15:00:00-06	2020-06-01 16:45:00-06	Connector shell RCCA	2020-06-01 16:49:58.701815-06	1.75000	185	5	16:45:00
4236	2020-06-01 10:36:06-06	2020-06-01 17:36:00-06	ssl on vm	2020-06-01 17:36:01.805126-06	6.99833	32	15	\N
4239	2020-06-01 13:30:00-06	2020-06-01 14:45:00-06	Setting up Login to L3 computer.	2020-06-02 07:42:31.281922-06	1.25000	289	3	\N
4242	2020-06-01 14:45:00-06	2020-06-01 16:10:00-06	Cap testing with Ryan.	2020-06-02 08:07:34.169246-06	1.41667	173	3	\N
4253	2020-06-03 07:30:00-06	2020-06-03 07:45:00-06	Status	2020-06-03 09:36:26.786819-06	0.25000	21	5	07:45:00
4268	2020-06-03 14:30:00-06	2020-06-03 17:00:00-06	Make it easier	2020-06-03 16:56:53.524616-06	2.50000	8	5	17:00:00
4244	2020-06-02 08:00:00-06	2020-06-02 08:30:00-06	Calibration	2020-06-02 08:44:07.017085-06	0.50000	15	5	08:30:00
4246	2020-06-02 09:33:28-06	2020-06-02 15:32:38-06	Testing	2020-06-02 15:32:51.838345-06	5.98611	289	15	\N
4252	2020-06-03 07:40:00-06	2020-06-03 09:09:59-06	Replacing power switch.	2020-06-03 15:42:27.690534-06	1.49972	296	3	\N
4243	2020-06-02 07:30:00-06	2020-06-02 08:59:59-06	Replacing Switch on O scope for Wayne Lee.	2020-06-02 16:00:09.583366-06	1.49972	296	3	\N
4250	2020-06-02 09:00:00-06	2020-06-02 16:00:26-06	Scale testing.	2020-06-02 16:00:29.140403-06	7.00722	289	3	\N
4249	2020-06-02 15:32:39-06	2020-06-02 16:20:49-06	Travel	2020-06-02 16:20:53.596004-06	0.80278	39	15	\N
4251	2020-06-02 08:35:00-06	2020-06-02 16:30:00-06	Plumbing, paint stripping, and cleaning	2020-06-02 16:31:46.630994-06	7.91667	28	11	16:30:00
4255	2020-06-02 08:40:00-06	2020-06-02 12:30:00-06	Working on the window and adding some filler to sheetrock	2020-06-03 10:02:49.225075-06	3.83333	28	13	12:30:00
4256	2020-06-01 09:25:00-06	2020-06-01 14:30:00-06	Adding filler to sheetrock and cutting and adding pieces for west wall	2020-06-03 10:04:14.131764-06	5.08333	28	13	14:30:00
4257	2020-06-03 11:00:00-06	2020-06-03 11:30:00-06	Array Sweep	2020-06-03 11:23:49.267457-06	0.50000	81	5	11:30:00
4254	2020-06-03 09:43:14-06	2020-06-03 12:03:23-06	fixes	2020-06-03 12:03:26.146171-06	2.33583	289	15	\N
4258	2020-06-03 11:30:00-06	2020-06-03 11:45:00-06	Reviewed capacitance measurement validation	2020-06-03 12:04:51.052409-06	0.25000	185	5	11:45:00
4259	2020-06-03 11:45:00-06	2020-06-03 12:00:00-06	Reviewed test results	2020-06-03 12:05:25.27412-06	0.25000	289	5	12:00:00
4275	2020-06-04 09:00:00-06	2020-06-04 15:15:00-06	Wiring, stripping, cleaning and more	2020-06-04 15:15:18.242241-06	6.25000	28	11	15:15:00
4261	2020-06-03 13:15:00-06	2020-06-03 13:30:00-06	Status	2020-06-03 14:15:58.774612-06	0.25000	21	5	13:30:00
4262	2020-06-03 13:30:00-06	2020-06-03 14:30:00-06	Cap failures	2020-06-03 14:42:24.720091-06	1.00000	185	5	14:30:00
4263	2020-06-03 10:00:00-06	2020-06-03 14:46:00-06	Plumbing drilling and a little yelling	2020-06-03 14:46:41.530449-06	4.76667	28	13	14:46:00
4260	2020-06-03 12:39:08-06	2020-06-03 15:30:44-06	fixes	2020-06-03 15:30:46.059507-06	2.86000	289	15	\N
4270	2020-06-04 08:45:00-06	2020-06-04 09:45:00-06	Make it easier	2020-06-04 09:39:30.293294-06	1.00000	8	5	09:45:00
4271	2020-06-04 09:57:14-06	2020-06-04 13:00:24-06	data	2020-06-06 09:46:57.821424-06	3.05278	32	15	\N
4264	2020-06-03 09:10:00-06	2020-06-03 09:59:59-06	Measuring capacitors on test board.	2020-06-03 15:43:50.195783-06	0.83306	173	3	\N
4265	2020-06-03 10:00:00-06	2020-06-03 11:29:59-06	Running ramp test on Thermotron.	2020-06-03 15:45:28.021584-06	1.49972	298	3	\N
4266	2020-06-03 11:30:00-06	2020-06-03 15:45:45-06	Changing motor on tape cast machine.	2020-06-03 15:45:49.317015-06	4.26250	296	3	\N
4269	2020-06-04 07:45:00-06	2020-06-04 11:41:04-06	Replacing motor.	2020-06-04 11:41:32.968937-06	3.93444	296	3	\N
4282	2020-06-05 10:30:00-06	2020-06-05 15:44:31-06	Wiring house.	2020-06-05 15:44:34.285465-06	5.24194	28	3	\N
4273	2020-06-04 11:41:05-06	2020-06-04 13:25:15-06	Working on switches in house.	2020-06-04 13:26:12.922735-06	1.73611	28	3	\N
4283	2020-06-05 13:30:00-06	2020-06-05 16:45:00-06	User Interface	2020-06-05 16:57:25.651818-06	3.25000	226	5	16:45:00
4274	2020-06-04 13:25:16-06	2020-06-04 13:59:59-06	Replacing motor on tape cast machine.	2020-06-04 15:47:18.923129-06	0.57861	296	3	\N
4272	2020-06-04 11:00:00-06	2020-06-04 13:00:00-06	test	2020-06-05 09:28:00.842172-06	2.00000	226	5	12:30:00
4276	2020-06-04 14:00:00-06	2020-06-04 14:19:59-06	Shaker table pm.	2020-06-04 15:48:16.243162-06	0.33306	15	3	\N
4277	2020-06-04 14:20:00-06	2020-06-04 15:48:29-06	Installing Motor.	2020-06-04 15:48:31.690873-06	1.47472	296	3	\N
4284	2020-06-06 10:36:39-06	2020-06-06 12:31:55-06	data and mod security	2020-06-06 12:31:57.95272-06	1.92111	32	15	\N
4279	2020-06-05 09:30:00-06	2020-06-05 11:15:00-06	User Interface	2020-06-05 11:16:20.615453-06	1.75000	226	5	11:15:00
4280	2020-06-05 08:35:00-06	2020-06-05 11:30:00-06	wiring lights	2020-06-05 11:31:27.714042-06	2.91667	28	11	11:30:00
4278	2020-06-05 07:40:00-06	2020-06-05 10:29:59-06	Replacing Motor.	2020-06-05 12:10:45.728921-06	2.83306	296	3	\N
4281	2020-06-05 12:00:00-06	2020-06-05 13:00:00-06	User Interface	2020-06-05 12:55:49.855807-06	1.00000	226	5	13:00:00
4285	2020-06-06 20:27:35-06	2020-06-06 21:09:10-06	vps	2020-06-06 21:09:11.66375-06	0.69306	32	15	\N
4286	2020-06-08 07:30:00-06	2020-06-08 07:45:00-06	Status	2020-06-08 08:35:23.687407-06	0.25000	21	5	07:45:00
4287	2020-06-08 07:40:00-06	2020-06-08 10:37:16-06	Compiling data from thermotron calibration.	2020-06-08 10:37:53.015298-06	2.95444	298	3	\N
4289	2020-06-08 10:45:00-06	2020-06-08 11:45:00-06	Progeny IPT	2020-06-08 11:54:46.369053-06	1.00000	21	5	11:45:00
4290	2020-06-08 12:45:00-06	2020-06-08 13:15:00-06	document review	2020-06-08 13:07:58.736639-06	0.50000	175	5	13:15:00
4291	2020-06-08 13:15:00-06	2020-06-08 14:00:00-06	HVIR test training	2020-06-08 14:15:27.736077-06	0.75000	226	5	14:00:00
4288	2020-06-08 10:37:17-06	2020-06-08 15:45:53-06	Installing motor.	2020-06-08 15:45:58.181519-06	5.14333	296	3	\N
4292	2020-06-08 14:30:00-06	2020-06-08 16:30:00-06	User Interface	2020-06-08 16:35:31.231697-06	2.00000	226	5	16:30:00
4294	2020-06-04 09:00:00-06	2020-06-04 14:30:00-06	Wiring light fixtures and pulling wire through rafters	2020-06-09 08:49:34.19838-06	5.50000	28	13	14:30:00
4295	2020-06-09 09:30:00-06	2020-06-09 09:45:00-06	Crystal training	2020-06-09 09:44:59.008249-06	0.25000	81	5	09:45:00
4297	2020-06-09 10:11:36-06	2020-06-09 11:42:53-06	few more changes	2020-06-09 11:42:59.544115-06	1.52139	32	15	\N
4296	2020-06-09 09:45:00-06	2020-06-09 10:45:00-06	User Interface	2020-06-09 11:46:10.271017-06	1.00000	226	5	10:45:00
4298	2020-06-09 11:00:00-06	2020-06-09 11:30:00-06	Connector shell procedure	2020-06-09 11:46:55.417509-06	0.50000	185	5	11:30:00
4293	2020-06-09 07:05:00-06	2020-06-09 09:59:59-06	Installing new controller.	2020-06-09 13:15:45.793663-06	2.91639	296	3	\N
4299	2020-06-09 12:48:55-06	2020-06-09 13:36:56-06	Travel	2020-06-09 13:37:07.822089-06	0.80028	39	15	\N
4300	2020-06-09 12:45:00-06	2020-06-09 14:30:00-06	Connector shell procedure	2020-06-09 14:38:41.946675-06	1.75000	185	5	14:30:00
4301	2020-06-09 10:00:00-06	2020-06-09 15:25:17-06	Trouble shooting &repair IR tester.	2020-06-09 15:25:21.83833-06	5.42139	173	3	\N
4303	2020-06-09 14:45:00-06	2020-06-09 16:30:00-06	User Interface	2020-06-09 16:30:31.570562-06	1.75000	226	5	16:30:00
4302	2020-06-09 13:36:57-06	2020-06-09 16:47:57-06	Testing	2020-06-09 16:48:06.307543-06	3.18333	289	15	\N
4304	2020-06-09 16:47:58-06	2020-06-09 17:44:29-06	Travel	2020-06-09 17:44:33.035297-06	0.94194	39	15	\N
4315	2020-06-10 15:23:12-06	2020-06-10 16:13:56-06	Travel	2020-06-10 16:14:06.302953-06	0.84556	39	15	\N
4329	2020-06-13 09:45:00-06	2020-06-13 11:30:00-06	Security training	2020-06-13 11:35:24.72466-06	1.75000	21	5	11:30:00
4306	2020-06-10 07:30:00-06	2020-06-10 08:00:00-06	Status	2020-06-10 08:05:16.72251-06	0.50000	21	5	08:00:00
4308	2020-06-10 09:00:00-06	2020-06-10 09:15:00-06	document review	2020-06-10 09:19:39.516053-06	0.25000	297	5	09:15:00
4309	2020-06-09 08:45:00-06	2020-06-09 15:45:00-06	Laying down floorboards and cleaning	2020-06-10 09:23:06.329952-06	7.00000	28	13	15:45:00
4307	2020-06-10 08:50:48-06	2020-06-10 10:24:51-06	fixes	2020-06-10 10:24:52.77303-06	1.56750	289	15	\N
4310	2020-06-10 09:30:00-06	2020-06-10 10:15:00-06	User Interface	2020-06-10 10:34:26.986777-06	0.75000	226	5	10:15:00
4312	2020-06-10 12:39:24-06	2020-06-10 13:23:54-06	Travel	2020-06-10 13:24:03.19603-06	0.74167	39	15	\N
4311	2020-06-10 12:15:00-06	2020-06-10 13:30:00-06	User Interface	2020-06-10 14:02:07.500639-06	1.25000	226	5	13:30:00
4314	2020-06-10 13:30:00-06	2020-06-10 14:30:00-06	Cap failures	2020-06-10 14:29:31.690045-06	1.00000	185	5	14:30:00
4313	2020-06-10 13:23:55-06	2020-06-10 15:23:11-06	Testing	2020-06-10 15:23:24.520094-06	1.98778	289	15	\N
4316	2020-06-10 09:20:00-06	2020-06-10 15:28:00-06	Laying down floorboards, moving boards and cleaning	2020-06-10 15:27:06.367903-06	6.13333	28	13	15:28:00
4317	2020-06-10 16:13:57-06	2020-06-10 16:52:32-06	Fixes	2020-06-10 16:52:34.504194-06	0.64306	289	15	\N
4318	2020-06-11 05:54:00-06	2020-06-11 08:00:00-06	User Interface	2020-06-11 08:15:59.043223-06	2.10000	226	5	08:00:00
4319	2020-06-11 10:25:00-06	2020-06-11 11:05:00-06	HVIR Array	2020-06-11 11:05:15.266823-06	0.66667	81	5	11:05:00
4320	2020-06-11 13:45:00-06	2020-06-11 14:30:00-06	User Interface	2020-06-11 14:27:18.272006-06	0.75000	226	5	14:30:00
4305	2020-06-10 07:15:00-06	2020-06-10 15:40:00-06	Paper work.	2020-06-12 07:30:45.508334-06	8.41667	298	3	\N
4321	2020-06-11 07:20:00-06	2020-06-11 15:40:00-06	Working on tape cast machinr error codes.	2020-06-12 07:33:29.432212-06	8.33333	296	3	\N
4330	2020-06-15 07:30:00-06	2020-06-15 08:00:00-06	Status	2020-06-15 10:48:27.344924-06	0.50000	21	5	08:00:00
4331	2020-06-15 10:00:00-06	2020-06-15 10:45:00-06	Test issue	2020-06-15 10:49:25.023234-06	0.75000	21	5	10:45:00
4323	2020-06-08 08:30:00-06	2020-06-08 16:00:00-06	Attic	2020-06-12 08:15:55.094237-06	7.50000	28	11	16:00:00
4324	2020-06-09 08:45:00-06	2020-06-09 17:00:00-06	Attic Plumbing	2020-06-12 08:16:25.193908-06	8.25000	28	11	17:00:00
4325	2020-06-10 09:00:00-06	2020-06-10 17:00:00-06	Attic	2020-06-12 08:17:23.667562-06	8.00000	28	11	17:00:00
4326	2020-06-11 09:05:00-06	2020-06-11 15:15:00-06	Flooring in attic	2020-06-12 08:18:53.708983-06	6.16667	28	11	15:15:00
4327	2020-06-12 09:30:00-06	2020-06-12 13:00:00-06	BP1123, BP1145	2020-06-12 12:52:17.715086-06	3.50000	41	5	13:00:00
4328	2020-06-12 08:12:00-06	2020-06-12 16:10:00-06	Attic reorganization, OSB Storage flooring, and preparing the sides for OSB	2020-06-12 16:09:26.376772-06	7.96667	28	11	16:10:00
4322	2020-06-12 07:20:00-06	2020-06-12 15:20:00-06	Setting up new servo controller.	2020-06-13 08:17:00.784252-06	8.00000	296	3	\N
4332	2020-06-15 10:45:00-06	2020-06-15 11:30:00-06	Progeny IPT	2020-06-15 15:04:20.353593-06	0.75000	21	5	11:30:00
4333	2020-06-15 15:00:00-06	2020-06-15 15:30:00-06	Cap failures	2020-06-15 15:33:12.561567-06	0.50000	21	5	15:30:00
4334	2020-06-15 15:30:00-06	2020-06-15 22:15:00-06	Test issue, Element inventory	2020-06-15 22:05:58.031809-06	6.75000	185	5	22:15:00
4335	2020-06-15 07:35:00-06	2020-06-15 15:45:00-06	Working on controler.	2020-06-16 07:45:52.384074-06	8.16667	296	3	\N
4337	2020-06-16 09:00:00-06	2020-06-16 10:00:00-06	NUWC IPT	2020-06-16 10:03:00.459702-06	1.00000	21	5	10:00:00
4338	2020-06-16 10:00:00-06	2020-06-16 10:15:00-06	Status	2020-06-16 10:12:52.722406-06	0.25000	289	5	10:15:00
4336	2020-06-16 07:30:00-06	2020-06-16 15:47:29-06	Programing controler.	2020-06-16 15:47:33.593093-06	8.29139	296	3	\N
4340	2020-06-17 07:30:00-06	2020-06-17 07:45:00-06	Status	2020-06-17 09:07:01.384773-06	0.25000	21	5	07:45:00
4341	2020-06-17 08:30:00-06	2020-06-17 09:00:00-06	Cap failures	2020-06-17 09:07:51.236292-06	0.50000	185	5	09:00:00
4342	2020-06-17 09:45:00-06	2020-06-17 11:30:00-06	Element consolidation	2020-06-17 11:36:24.775387-06	1.75000	185	5	11:15:00
4343	2020-06-17 12:45:00-06	2020-06-17 14:00:00-06	Element test issues	2020-06-17 14:23:11.19095-06	1.25000	185	5	13:45:00
4344	2020-06-17 15:00:00-06	2020-06-17 15:45:00-06	Capacitance meeting	2020-06-17 15:40:46.459247-06	0.75000	185	5	15:45:00
4345	2020-06-18 08:30:00-06	2020-06-18 09:00:00-06	Capacitance meeting	2020-06-18 09:21:05.618364-06	0.50000	185	5	09:00:00
4346	2020-06-18 09:00:00-06	2020-06-18 09:15:00-06	Supported Alan Conn	2020-06-18 09:21:44.831628-06	0.25000	15	5	09:15:00
4347	2020-06-18 13:00:00-06	2020-06-18 13:30:00-06	Test meeting	2020-06-18 13:34:45.587083-06	0.50000	234	5	13:30:00
4348	2020-06-18 13:30:00-06	2020-06-18 13:45:00-06	BP1144 review	2020-06-18 13:47:24.188745-06	0.25000	42	5	13:45:00
4349	2020-06-18 14:45:00-06	2020-06-18 17:45:00-06	Sync files	2020-06-18 17:48:55.219465-06	3.00000	8	5	17:45:00
4350	2020-06-19 09:30:00-06	2020-06-19 13:00:00-06	Unmappable Elements, Test issue, ESS BP1144, Cap/Power, FAT?	2020-06-19 12:52:03.085914-06	3.50000	185	5	13:00:00
4382	2020-06-23 14:51:27-06	2020-06-23 18:18:59-06	Database switch	2020-06-23 18:19:09.836841-06	3.45889	289	15	\N
4351	2020-06-19 14:30:00-06	2020-06-19 15:15:00-06	Clean up	2020-06-19 15:13:44.225304-06	0.75000	8	5	15:15:00
4352	2020-06-19 16:00:00-06	2020-06-19 17:15:00-06	Clean up	2020-06-19 21:22:12.588013-06	1.25000	8	5	17:15:00
4339	2020-06-17 07:30:00-06	2020-06-17 13:15:00-06	Makeing test cable.	2020-06-19 22:29:43.553122-06	5.75000	296	3	\N
4386	2020-06-23 18:19:00-06	2020-06-23 18:58:47-06	Travel	2020-06-23 18:58:50.564458-06	0.66306	39	15	\N
4353	2020-06-20 07:45:00-06	2020-06-20 14:45:00-06	Unmappable Elements, Test issue, ESS BP1144, Cap/Power, FAT?	2020-06-20 15:03:22.55246-06	7.00000	185	5	14:45:00
4354	2020-06-15 09:00:00-06	2020-06-15 16:17:00-06	Insulation	2020-06-21 21:50:25.427494-06	7.28333	28	11	16:17:00
4355	2020-06-16 08:45:00-06	2020-06-16 17:00:00-06	Insulation	2020-06-21 21:51:09.913602-06	8.25000	28	11	17:00:00
4356	2020-06-17 09:15:00-06	2020-06-17 16:00:00-06	Insulation and cleaning	2020-06-21 21:51:40.177989-06	6.75000	28	11	16:00:00
4357	2020-06-18 09:00:00-06	2020-06-18 16:45:00-06	Insulation and attic cleaning	2020-06-21 21:52:31.179643-06	7.75000	28	11	16:45:00
4358	2020-06-19 09:00:00-06	2020-06-19 16:00:00-06	Cleaning shop, edging, and etc.	2020-06-21 21:54:33.83175-06	7.00000	28	11	16:00:00
4359	2020-06-11 09:10:00-06	2020-06-11 15:20:00-06	Laying down floorboards	2020-06-21 22:19:20.526658-06	6.16667	28	13	15:20:00
4360	2020-06-16 08:45:00-06	2020-06-16 13:00:00-06	Installing insulation and picking up more from lowes	2020-06-21 22:21:33.916384-06	4.25000	28	13	13:00:00
4361	2020-06-17 09:10:00-06	2020-06-17 14:10:00-06	Installing insulation	2020-06-21 22:23:02.003415-06	5.00000	28	13	14:10:00
4362	2020-06-18 09:10:00-06	2020-06-18 14:30:00-06	More installation of insulation	2020-06-21 22:24:13.217761-06	5.33333	28	13	14:30:00
4363	2020-06-22 07:30:00-06	2020-06-22 08:15:00-06	Status	2020-06-22 08:14:26.850044-06	0.75000	21	5	08:15:00
4364	2020-06-22 08:30:00-06	2020-06-22 09:00:00-06	Capacitance meeting	2020-06-22 08:59:06.66995-06	0.50000	185	5	09:00:00
4365	2020-06-22 09:00:00-06	2020-06-22 09:15:00-06	TVR plots	2020-06-22 09:42:04.16776-06	0.25000	185	5	09:30:00
4366	2020-06-22 09:15:00-06	2020-06-22 09:45:00-06	Test schedule	2020-06-22 09:42:37.056214-06	0.50000	21	5	09:45:00
4367	2020-06-22 09:45:00-06	2020-06-22 11:30:00-06	Progeny IPT	2020-06-22 11:29:45.184328-06	1.75000	21	5	11:30:00
4368	2020-06-22 11:30:00-06	2020-06-22 11:45:00-06	AITS repair	2020-06-22 11:41:55.466272-06	0.25000	87	5	11:45:00
4369	2020-06-22 13:30:00-06	2020-06-22 14:00:00-06	Element testing	2020-06-22 13:58:24.192571-06	0.50000	185	5	14:00:00
4370	2020-06-22 07:40:00-06	2020-06-22 09:29:59-06	Makeing test cable.	2020-06-22 14:13:38.385671-06	1.83306	296	3	\N
4385	2020-06-23 15:15:00-06	2020-06-23 17:45:00-06	Test issue	2020-06-23 22:01:02.256062-06	2.50000	185	5	17:45:00
4373	2020-06-22 15:00:00-06	2020-06-22 15:15:00-06	Capacitance meeting	2020-06-22 15:15:03.968324-06	0.25000	185	5	15:15:00
4374	2020-06-22 08:40:00-06	2020-06-22 16:00:00-06	Organizing shop, cleaning basement, and running ethernet wires in the house in the crawl space.	2020-06-22 15:49:50.504782-06	7.33333	28	11	16:00:00
4372	2020-06-22 14:00:00-06	2020-06-22 16:00:00-06	Troubleshooting tape casting machine.	2020-06-22 18:02:48.445476-06	2.00000	296	3	\N
4375	2020-06-22 16:00:00-06	2020-06-22 19:30:00-06	Unmappable Elements, Test issue, ESS Review, Cap/Power, FAT?	2020-06-22 20:36:04.690951-06	3.50000	185	5	19:15:00
4376	2020-06-23 07:00:00-06	2020-06-23 08:00:00-06	Test issue	2020-06-23 08:16:04.345912-06	1.00000	185	5	08:00:00
4380	2020-06-22 12:45:00-06	2020-06-22 14:05:00-06	Running wifi line	2020-06-23 10:02:15.172314-06	1.33333	28	13	14:05:00
4379	2020-06-23 09:48:52-06	2020-06-23 10:37:07-06	database	2020-06-23 10:37:10.04843-06	0.80417	289	15	\N
4378	2020-06-23 08:15:00-06	2020-06-23 10:45:00-06	Test issue	2020-06-23 10:49:51.439936-06	2.50000	185	5	10:45:00
4381	2020-06-23 14:00:07-06	2020-06-23 14:51:26-06	Travel	2020-06-23 14:51:43.155808-06	0.85528	39	15	\N
4377	2020-06-23 07:30:00-06	2020-06-23 08:30:00-06	Repair.	2020-06-23 15:22:59.038055-06	1.00000	296	3	\N
4384	2020-06-23 09:30:00-06	2020-06-23 16:00:05-06	Mod1 PM	2020-06-23 16:00:08.183735-06	6.50139	15	3	\N
4383	2020-06-23 14:45:00-06	2020-06-23 15:15:00-06	Database connection	2020-06-23 18:09:45.362938-06	0.50000	289	5	15:15:00
4388	2020-06-23 08:45:00-06	2020-06-23 17:15:00-06	Buying wood, hauling it up, cleaning and organizing.	2020-06-24 09:12:21.633201-06	8.50000	28	11	17:15:00
4389	2020-06-24 07:30:00-06	2020-06-24 07:45:00-06	Status	2020-06-24 09:50:33.683955-06	0.25000	21	5	07:45:00
4387	2020-06-24 07:20:00-06	2020-06-24 10:30:00-06	Replacing thermocouple on connectors.	2020-06-24 11:04:54.006665-06	3.16667	174	3	\N
4390	2020-06-24 11:00:00-06	2020-06-24 11:30:00-06	Capacitance meeting	2020-06-24 11:26:49.472008-06	0.50000	185	5	11:30:00
4394	2020-06-23 09:45:00-06	2020-06-23 17:20:00-06	Measuring and then going and getting countless pieces of wood	2020-06-24 12:39:08.596238-06	7.58333	28	13	17:20:00
4393	2020-06-24 12:33:18-06	2020-06-24 13:19:01-06	Travel	2020-06-24 13:19:14.173435-06	0.76194	39	15	\N
4392	2020-06-24 12:00:00-06	2020-06-24 13:30:00-06	Test issue	2020-06-24 14:04:11.58695-06	1.50000	185	5	13:30:00
4391	2020-06-24 11:00:00-06	2020-06-24 12:29:59-06	Removing Vicore from reg C.	2020-06-24 14:13:22.07327-06	1.49972	277	3	\N
4395	2020-06-24 13:19:02-06	2020-06-24 15:00:20-06	Testing	2020-06-24 15:00:33.900393-06	1.68833	289	15	\N
4399	2020-06-24 08:45:00-06	2020-06-24 16:00:00-06	Framing walls and cleaning/mopping in shop	2020-06-24 15:57:22.881562-06	7.25000	28	11	16:00:00
4398	2020-06-24 15:00:21-06	2020-06-24 16:00:35-06	Travel	2020-06-24 16:00:37.73145-06	1.00389	39	15	\N
4397	2020-06-24 12:30:00-06	2020-06-24 16:01:06-06	Repair stacker machine.	2020-06-24 16:01:09.68067-06	3.51833	296	3	\N
4396	2020-06-24 13:45:00-06	2020-06-24 16:00:00-06	Testing	2020-06-24 16:02:50.348108-06	2.25000	289	5	16:00:00
4400	2020-06-24 16:00:00-06	2020-06-24 19:00:00-06	Unmappable Elements, Test issue, ESS Review, Cap/Power, FAT?	2020-06-24 19:15:09.554115-06	3.00000	185	5	19:00:00
4401	2020-06-24 12:30:00-06	2020-06-24 14:45:00-06	Building stud wall upstairs	2020-06-25 10:02:33.131102-06	2.25000	28	13	14:45:00
4402	2020-06-25 07:40:00-06	2020-06-25 08:44:59-06	Repairing shop door.	2020-06-25 10:16:17.007644-06	1.08306	28	3	\N
4403	2020-06-25 08:45:00-06	2020-06-25 09:59:59-06	Reaching LCR meters for Novacure.	2020-06-25 10:17:41.623479-06	1.24972	28	3	\N
4404	2020-06-25 10:00:00-06	2020-06-25 10:30:00-06	Programming controller.	2020-06-25 14:24:58.678763-06	0.50000	296	3	\N
4410	2020-06-25 10:00:00-06	2020-06-25 13:20:00-06	Working on stud wall	2020-06-26 09:23:28.251006-06	3.33333	28	13	13:20:00
4407	2020-06-25 08:20:00-06	2020-06-25 15:15:00-06	Fixing framed East wall, framing west wall 8ft and part of 2nd west wall. and subtracted time for long lunch.	2020-06-25 15:26:42.083228-06	6.91667	28	11	15:15:00
4408	2020-06-25 15:45:00-06	2020-06-25 16:15:00-06	ESS: BP1023, BP1043, BP1044, BP1045, BP1046	2020-06-25 16:09:49.941613-06	0.50000	185	5	16:15:00
4409	2020-06-25 16:15:00-06	2020-06-25 18:00:00-06	BP1023, BP1043, BP1044, BP1045, BP1046	2020-06-25 17:52:27.866531-06	1.75000	185	5	18:00:00
4406	2020-06-25 11:00:00-06	2020-06-25 14:40:00-06	PM's on ADAS.	2020-06-26 08:24:46.457979-06	3.66667	15	3	\N
4411	2020-06-26 09:29:19-06	2020-06-26 10:15:46-06	Travel	2020-06-26 10:15:51.155162-06	0.77417	39	15	\N
4412	2020-06-26 10:49:02-06	2020-06-26 12:36:37-06	Database updating	2020-06-26 12:36:47.175676-06	1.79306	289	15	\N
4371	2020-06-22 09:30:00-06	2020-06-22 13:59:59-06	Testing SOUAU T/R board.	2020-06-29 13:54:53.717136-06	4.49972	284	3	\N
4413	2020-06-26 07:40:00-06	2020-06-26 10:00:00-06	Changing connectors & clean.	2020-06-26 11:08:47.904832-06	2.33333	173	3	\N
4415	2020-06-26 12:36:38-06	2020-06-26 14:10:37-06	Travel	2020-06-26 14:10:39.122013-06	1.56639	39	15	\N
4416	2020-06-26 08:45:00-06	2020-06-26 15:15:00-06	Framing up the angled west wall and cleaning. I only have the small wall to finish framing	2020-06-26 15:13:38.355974-06	6.50000	28	11	15:15:00
4414	2020-06-26 11:00:00-06	2020-06-26 15:40:14-06	Replacing connectors.	2020-06-26 15:40:17.155604-06	4.67056	173	3	\N
4417	2020-06-26 14:45:00-06	2020-06-26 18:00:00-06	Unmappable Elements, Test issue, ESS Review, Cap/Power, FAT?	2020-06-26 18:34:40.747239-06	3.25000	185	5	18:00:00
4418	2020-06-27 11:45:00-06	2020-06-27 17:30:00-06	Unmappable Elements, Test issue, ESS Review, Cap/Power, FAT?	2020-06-27 17:22:15.604708-06	5.75000	185	5	17:30:00
4692	2020-08-11 09:00:00-06	2020-08-11 09:45:00-06	NUWC IPT	2020-08-11 09:48:23.314657-06	0.75000	21	5	09:45:00
4419	2020-06-27 13:30:00-06	2020-06-27 15:30:00-06	Working on rejected Elements.	2020-06-29 06:21:28.803667-06	2.00000	173	3	\N
4420	2020-06-29 07:30:00-06	2020-06-29 07:45:00-06	Status	2020-06-29 08:13:11.839179-06	0.25000	21	5	08:00:00
4422	2020-06-29 08:45:00-06	2020-06-29 10:15:00-06	Test issue	2020-06-29 10:16:52.845325-06	1.50000	185	5	10:15:00
4424	2020-06-29 11:00:00-06	2020-06-29 11:30:00-06	Progeny IPT	2020-06-29 11:25:15.994627-06	0.50000	21	5	11:30:00
4425	2020-06-29 11:30:00-06	2020-06-29 11:45:00-06	Test issue	2020-06-29 11:42:24.850937-06	0.25000	185	5	11:45:00
4426	2020-06-29 11:45:00-06	2020-06-29 12:00:00-06	ADAS calibration	2020-06-29 11:59:35.455782-06	0.25000	15	5	12:00:00
4421	2020-06-29 08:15:00-06	2020-06-29 08:45:00-06	Capacitance issue	2020-06-29 15:10:41.126227-06	0.50000	185	5	08:45:00
4427	2020-06-29 15:00:00-06	2020-06-29 15:45:00-06	Capacitance meeting	2020-06-29 15:48:49.570914-06	0.75000	21	5	15:45:00
4429	2020-06-29 09:15:00-06	2020-06-29 16:45:00-06	straightening east wall, cleaning, and framing middle wall	2020-06-29 16:42:19.774558-06	7.50000	28	11	16:45:00
4428	2020-06-29 16:00:00-06	2020-06-29 18:00:00-06	Capacitance issue	2020-06-29 17:48:35.416909-06	2.00000	185	5	18:00:00
4446	2020-07-01 08:15:00-06	2020-07-01 10:11:49-06	Testing Rev X7 docking board.	2020-07-01 10:12:53.214517-06	1.94694	228	3	\N
4431	2020-06-30 08:45:00-06	2020-06-30 09:00:00-06	Capacitance issue	2020-06-30 09:31:57.297534-06	0.25000	185	5	09:00:00
4432	2020-06-30 09:00:00-06	2020-06-30 10:00:00-06	NUWC IPT	2020-06-30 10:49:49.172807-06	1.00000	21	5	10:00:00
4430	2020-06-30 07:52:17-06	2020-06-30 09:29:59-06	Finishing PM's.	2020-06-30 12:38:14.684235-06	1.62833	15	3	\N
4423	2020-06-29 09:00:00-06	2020-06-29 14:00:00-06	Cleaning up PCB .	2020-06-30 12:39:13.187461-06	5.00000	173	3	\N
4435	2020-06-29 14:00:01-06	2020-06-29 15:30:01-06	Inspecting 2nd set of standoffs.	2020-06-30 12:41:40.849274-06	1.50000	15	3	\N
4433	2020-06-30 10:45:00-06	2020-06-30 13:00:00-06	Cap power plots	2020-06-30 12:56:42.427407-06	2.25000	185	5	13:00:00
4436	2020-06-30 13:00:00-06	2020-06-30 13:30:00-06	Test meeting	2020-06-30 13:31:16.960738-06	0.50000	234	5	13:30:00
4434	2020-06-30 09:30:00-06	2020-06-30 13:00:00-06	Installing new controller.	2020-06-30 13:49:31.52381-06	3.50000	296	3	\N
4437	2020-06-30 13:30:00-06	2020-06-30 14:00:00-06	Cap power plots	2020-06-30 14:05:29.568478-06	0.50000	185	5	13:45:00
4439	2020-06-30 09:00:00-06	2020-06-30 16:00:00-06	Framing the west wall, and two of the filler walls inbetween the west and easet	2020-06-30 16:02:08.734439-06	7.00000	28	11	16:00:00
4440	2020-06-29 09:00:00-06	2020-06-29 12:30:00-06	Putting up stud walls. These are hours from last week I forgot to add	2020-06-30 16:03:38.459572-06	3.50000	28	13	12:30:00
4441	2020-06-30 10:00:00-06	2020-06-30 16:00:00-06	Installing stud walls upstairs	2020-06-30 16:04:30.168879-06	6.00000	28	13	16:00:00
4438	2020-06-30 13:30:00-06	2020-06-30 16:05:19-06	Installing new motor.	2020-06-30 16:05:34.555812-06	2.58861	296	3	\N
4442	2020-06-30 14:45:00-06	2020-06-30 17:30:00-06	Thermotron issue	2020-06-30 19:50:51.933297-06	2.75000	87	5	17:30:00
4443	2020-06-30 17:30:00-06	2020-06-30 18:30:00-06	Capacitance issue	2020-06-30 19:51:40.400102-06	1.00000	185	5	18:30:00
4445	2020-07-01 07:30:00-06	2020-07-01 08:00:00-06	Status	2020-07-01 07:55:25.259496-06	0.50000	21	5	08:00:00
4444	2020-07-01 07:30:00-06	2020-07-01 08:14:59-06	Returning wrong controller & installing motor on stacker.	2020-07-01 08:56:57.853441-06	0.74972	296	3	\N
4447	2020-07-01 09:45:00-06	2020-07-01 10:15:00-06	Thermotron issue	2020-07-01 10:09:20.593803-06	0.50000	87	5	10:15:00
4448	2020-07-01 10:15:00-06	2020-07-01 11:45:00-06	Carrier Consolidation bug	2020-07-01 11:45:52.446183-06	1.50000	181	5	10:45:00
4450	2020-07-01 11:45:00-06	2020-07-01 12:00:00-06	ADAS calibration	2020-07-01 12:03:23.811312-06	0.25000	15	5	12:00:00
4451	2020-07-01 12:15:00-06	2020-07-01 13:30:00-06	Firmware	2020-07-01 14:10:10.974502-06	1.25000	228	5	13:30:00
4452	2020-07-01 09:17:33-06	2020-07-01 15:25:00-06	Plumbing walls, cleaning, blocking walls, and finalizing framing.	2020-07-01 15:23:34.967669-06	6.12417	28	11	15:25:00
4453	2020-07-01 14:15:00-06	2020-07-01 16:00:00-06	ADAS calibration	2020-07-01 15:59:45.101573-06	1.75000	87	5	16:00:00
4454	2020-07-01 16:00:00-06	2020-07-01 19:30:00-06	Thermotron issue	2020-07-01 19:24:47.574139-06	3.50000	87	5	19:30:00
4449	2020-07-01 10:11:50-06	2020-07-01 14:30:00-06	Assembling controller interface.	2020-07-02 07:48:05.949472-06	4.30278	15	3	\N
4455	2020-07-01 14:30:00-06	2020-07-01 15:50:00-06	Replacing connectors	2020-07-02 07:49:47.620241-06	1.33333	173	3	\N
4457	2020-07-02 10:15:00-06	2020-07-02 10:30:00-06	ADAS calibration	2020-07-02 10:23:30.035334-06	0.25000	15	5	10:30:00
4456	2020-07-02 07:35:00-06	2020-07-02 15:53:14-06	Clean & inspect.	2020-07-02 15:53:18.113766-06	8.30389	87	3	\N
4458	2020-07-02 12:45:00-06	2020-07-02 14:00:00-06	ADAS calibration	2020-07-02 17:34:36.622793-06	1.25000	15	5	14:00:00
4459	2020-07-02 14:00:00-06	2020-07-02 14:30:00-06	Thermotron issue	2020-07-02 17:35:19.370174-06	0.50000	87	5	14:30:00
4460	2020-07-02 14:30:00-06	2020-07-02 17:45:00-06	Element testing	2020-07-02 17:35:58.454343-06	3.25000	185	5	17:45:00
4461	2020-07-03 09:00:00-06	2020-07-03 14:15:00-06	Element testing	2020-07-03 15:02:50.79945-06	5.25000	185	5	14:15:00
4463	2020-07-03 14:00:01-06	2020-07-03 15:00:01-06	Working on alarme codes on stacker.	2020-07-04 09:31:20.141598-06	1.00000	296	3	\N
4464	2020-07-04 08:30:00-06	2020-07-04 09:00:00-06	Thermotron issue	2020-07-04 14:20:37.301031-06	0.50000	87	5	09:00:00
4465	2020-07-04 09:00:00-06	2020-07-04 14:00:00-06	Mapping low capacitance	2020-07-04 14:21:41.036445-06	5.00000	185	5	14:00:00
4466	2020-07-06 07:15:00-06	2020-07-06 08:00:00-06	Status	2020-07-06 08:05:04.773036-06	0.75000	21	5	08:00:00
4462	2020-07-03 10:20:00-06	2020-07-03 14:00:00-06	Helping Joe with element testing.	2020-07-06 08:05:21.374666-06	3.66667	81	3	\N
4468	2020-07-06 08:00:00-06	2020-07-06 09:45:00-06	Carrier Consolidation bug	2020-07-06 09:46:28.813182-06	1.75000	181	5	09:45:00
4469	2020-07-06 10:15:00-06	2020-07-06 10:45:00-06	Carrier Consolidation bug	2020-07-06 10:43:08.876101-06	0.50000	181	5	10:45:00
4470	2020-07-06 10:45:00-06	2020-07-06 11:30:00-06	Progeny IPT	2020-07-06 11:26:46.516457-06	0.75000	21	5	11:30:00
4467	2020-07-06 07:35:00-06	2020-07-06 12:00:21-06	Cleaning up PCB .	2020-07-06 12:00:38.370668-06	4.42250	173	3	\N
4472	2020-07-06 13:00:00-06	2020-07-06 15:00:00-06	Carrier Consolidation bug	2020-07-06 15:36:00.355934-06	2.00000	181	5	15:00:00
4471	2020-07-06 12:00:22-06	2020-07-06 13:59:59-06	Troubleshooting problems on ADAS EA04.	2020-07-06 15:51:41.345542-06	1.99361	87	3	\N
4473	2020-07-06 15:00:00-06	2020-07-06 16:00:00-06	Capacitance meeting	2020-07-06 15:57:21.93237-06	1.00000	185	5	16:00:00
4476	2020-07-06 09:00:00-06	2020-07-06 16:55:00-06	Framing up ceilings, installing suport beam, and taking down old support beam.	2020-07-06 16:54:44.902434-06	7.91667	28	11	16:55:00
4475	2020-07-06 16:15:00-06	2020-07-06 20:45:00-06	Cap failures	2020-07-06 20:33:09.360327-06	4.50000	185	5	20:45:00
4474	2020-07-06 14:00:00-06	2020-07-06 15:54:03-06	Repairing PCMH test chamber.	2020-07-07 09:19:36.123493-06	1.90083	332	3	\N
4478	2020-07-07 10:15:00-06	2020-07-07 10:30:00-06	Cap failures	2020-07-07 10:31:42.560832-06	0.25000	185	5	10:30:00
4479	2020-07-07 10:30:00-06	2020-07-07 11:30:00-06	Thermotron run analysis	2020-07-07 11:36:30.248721-06	1.00000	87	5	11:30:00
4480	2020-07-07 13:00:00-06	2020-07-07 15:15:00-06	Carrier Consolidation bug	2020-07-07 15:11:16.342441-06	2.25000	181	5	15:15:00
4477	2020-07-07 07:45:00-06	2020-07-07 10:59:59-06	Cleaning up PCB .	2020-07-07 14:10:57.418396-06	3.24972	173	3	\N
4481	2020-07-07 11:00:00-06	2020-07-07 13:59:59-06	Checking inventory for Rev X7 docking board assy.	2020-07-07 14:12:31.771956-06	2.99972	8	3	\N
4483	2020-07-06 11:20:00-06	2020-07-06 15:00:00-06	Building stud walls	2020-07-07 15:22:22.674731-06	3.66667	28	13	15:00:00
4484	2020-07-06 06:00:00-06	2020-07-06 09:00:00-06	3 hours I forgot to add for last week. Building stud walls upstairs	2020-07-07 15:23:27.464978-06	3.00000	28	13	09:00:00
4485	2020-07-07 09:30:00-06	2020-07-07 15:25:00-06	Work on stud walls and trip to lowes to buy wood	2020-07-07 15:24:30.352231-06	5.91667	28	13	15:25:00
4482	2020-07-07 14:00:00-06	2020-07-07 16:00:31-06	Tracking down parts to rebuild PCMH tester.	2020-07-07 16:00:34.282915-06	2.00861	332	3	\N
4487	2020-07-07 09:00:00-06	2020-07-07 17:00:00-06	Attic	2020-07-07 16:56:44.216331-06	8.00000	28	11	17:00:00
4486	2020-07-07 15:30:00-06	2020-07-07 18:45:00-06	Element analysis	2020-07-07 18:27:46.796409-06	3.25000	185	5	18:45:00
4489	2020-07-08 07:30:00-06	2020-07-08 07:45:00-06	Status	2020-07-08 07:44:21.691461-06	0.25000	21	5	07:45:00
4488	2020-07-08 07:30:00-06	2020-07-08 13:10:39-06	Ordering new cables.	2020-07-08 13:11:15.379348-06	5.67750	332	3	\N
4491	2020-07-08 09:20:00-06	2020-07-08 16:45:00-06	Attic framing	2020-07-08 16:45:29.727431-06	7.41667	28	11	16:45:00
4492	2020-07-08 15:00:00-06	2020-07-08 16:00:00-06	Capacitance meeting	2020-07-08 20:17:04.796606-06	1.00000	185	5	16:00:00
4490	2020-07-08 13:10:40-06	2020-07-08 15:45:00-06	Installing new controller.	2020-07-09 07:51:35.160099-06	2.57222	277	3	\N
4494	2020-07-09 10:00:00-06	2020-07-09 10:30:00-06	Connector shell call	2020-07-09 11:06:43.408219-06	0.50000	21	5	10:30:00
4493	2020-07-09 07:45:00-06	2020-07-09 11:06:59-06	Refurbish air cal chamber.	2020-07-09 11:08:15.083511-06	3.36639	332	3	\N
4496	2020-07-09 08:44:01-06	2020-07-09 16:00:00-06	Attic blocking, covid shop cleaning, and hanging a joist	2020-07-09 16:00:03.932432-06	7.26639	28	11	16:00:00
4495	2020-07-09 11:07:00-06	2020-07-09 15:45:30-06	installing controller on tape cast machine.	2020-07-10 07:41:50.76806-06	4.64167	296	3	\N
4497	2020-07-10 07:30:00-06	2020-07-10 15:45:00-06	Installing motor on stacking machine.	2020-07-12 17:52:12.154058-06	8.25000	296	3	\N
4498	2020-07-13 08:45:00-06	2020-07-13 09:00:00-06	Status	2020-07-13 08:57:18.602199-06	0.25000	21	5	09:00:00
4499	2020-07-10 08:44:40-06	2020-07-10 12:15:00-06	Attic blocking the roof slant	2020-07-13 09:02:13.259101-06	3.50556	28	11	12:15:00
4501	2020-07-13 10:45:00-06	2020-07-13 11:30:00-06	Progeny IPT	2020-07-13 11:40:08.845216-06	0.75000	21	5	11:30:00
4502	2020-07-13 12:00:00-06	2020-07-13 14:45:00-06	OPS30 test setup	2020-07-13 14:42:17.235563-06	2.75000	185	5	14:45:00
4500	2020-07-13 09:30:00-06	2020-07-13 11:30:00-06	Repair.	2020-07-13 14:52:41.490406-06	2.00000	277	3	\N
4519	2020-07-14 09:45:00-06	2020-07-14 12:30:00-06	Put up blocking upstairs	2020-07-15 11:16:10.145492-06	2.75000	28	13	12:30:00
4504	2020-07-13 15:00:00-06	2020-07-13 15:30:00-06	Capacitance meeting	2020-07-13 15:36:54.681252-06	0.50000	185	5	15:30:00
4505	2020-07-13 09:00:00-06	2020-07-13 16:35:00-06	Blocking in attic, cleaning shop, taking out trash, etc	2020-07-13 16:35:37.123406-06	7.58333	28	11	16:35:00
4503	2020-07-13 11:30:00-06	2020-07-13 15:30:00-06	Rebuilding test fixture.	2020-07-14 07:47:52.356672-06	4.00000	332	3	\N
4506	2020-07-13 16:15:00-06	2020-07-13 18:00:00-06	Replacing connectors on test chamber.	2020-07-14 07:50:06.603991-06	1.75000	332	3	\N
4508	2020-07-14 09:00:00-06	2020-07-14 09:45:00-06	NUWC IPT	2020-07-14 09:40:00.758222-06	0.75000	21	5	09:45:00
4507	2020-07-14 07:35:00-06	2020-07-14 12:58:34-06	Replacing connectors.	2020-07-14 12:59:12.150639-06	5.39278	332	3	\N
4510	2020-07-14 12:58:35-06	2020-07-14 13:41:17-06	Changing parts.	2020-07-14 13:41:56.238267-06	0.71167	277	3	\N
4509	2020-07-14 10:00:00-06	2020-07-14 15:30:00-06	OPS30 test	2020-07-14 15:31:02.100298-06	5.50000	185	5	15:30:00
4512	2020-07-14 09:07:37-06	2020-07-14 16:56:00-06	Car tow, blocking, cleaning and attempted car repair	2020-07-14 16:57:19.950046-06	7.80639	28	11	16:56:00
4513	2020-07-15 06:45:00-06	2020-07-15 07:30:00-06	Element analysis	2020-07-15 07:31:15.046892-06	0.75000	185	5	07:30:00
4514	2020-07-15 07:30:00-06	2020-07-15 08:00:00-06	Status	2020-07-15 07:59:28.178186-06	0.50000	21	5	08:00:00
4511	2020-07-14 13:41:18-06	2020-07-14 15:50:00-06	Repairing test fixture.	2020-07-15 10:46:35.47715-06	2.14500	332	3	\N
4516	2020-07-14 17:10:00-06	2020-07-14 19:00:00-06	Removing connector from 2nd end cap.	2020-07-15 10:48:34.606202-06	1.83333	332	3	\N
4518	2020-07-13 10:00:00-06	2020-07-13 15:30:00-06	Putting up blocking upstairs	2020-07-15 11:15:04.812962-06	5.50000	28	13	15:30:00
4520	2020-07-15 09:00:00-06	2020-07-15 15:00:00-06	These are hours from last Wednesday that I foolishly forgot to add. Spent adding ceiling supports upstairs	2020-07-15 11:19:49.990862-06	6.00000	28	13	15:00:00
4515	2020-07-15 08:00:00-06	2020-07-15 11:45:00-06	Element analysis	2020-07-15 11:34:02.458332-06	3.75000	185	5	11:45:00
4517	2020-07-15 10:35:00-06	2020-07-15 12:33:12-06	Rebuilding end cap.	2020-07-15 12:35:53.322221-06	1.97000	332	3	\N
4521	2020-07-15 12:33:13-06	2020-07-15 13:53:40-06	Installing connector and moving cap to back side.	2020-07-15 13:54:28.950672-06	1.34083	228	3	\N
4523	2020-07-15 09:20:00-06	2020-07-15 17:30:00-06	Attic wiring, cleaning, etc	2020-07-15 17:30:11.988658-06	8.16667	28	11	17:30:00
4522	2020-07-15 13:53:41-06	2020-07-15 16:00:00-06	Replacing connectors.	2020-07-15 22:40:09.61363-06	2.10528	332	3	\N
4525	2020-07-16 08:30:00-06	2020-07-16 09:00:00-06	Database transfer issue	2020-07-16 09:13:53.272034-06	0.50000	289	5	09:00:00
4527	2020-07-12 10:00:00-06	2020-07-12 15:00:00-06	Installed electrical boxes and ran wire, hours for this weeks Wednesday	2020-07-16 10:54:48.706336-06	5.00000	28	13	15:00:00
4524	2020-07-16 07:40:00-06	2020-07-16 09:29:59-06	Rebuilding test fixture.	2020-07-16 12:23:32.918226-06	1.83306	332	3	\N
4526	2020-07-16 09:00:00-06	2020-07-16 12:45:00-06	Mapping old elements	2020-07-16 12:38:22.653773-06	3.75000	185	5	12:45:00
4528	2020-07-16 09:30:00-06	2020-07-16 15:00:21-06	Repairing AMP board.	2020-07-16 15:00:25.016847-06	5.50583	277	3	\N
4529	2020-07-16 09:40:00-06	2020-07-16 16:40:00-06	Demolition	2020-07-16 16:39:59.093982-06	7.00000	28	13	16:40:00
4530	2020-07-16 09:00:00-06	2020-07-16 16:45:00-06	Attic and mudroom	2020-07-16 16:40:49.253209-06	7.75000	28	11	16:45:00
4531	2020-07-17 09:00:00-06	2020-07-17 11:25:00-06	Mudroom	2020-07-17 11:17:24.42507-06	2.41667	28	11	11:25:00
4532	2020-07-20 07:30:00-06	2020-07-20 07:45:00-06	Status	2020-07-20 07:44:18.140458-06	0.25000	21	5	07:45:00
4534	2020-07-20 10:45:00-06	2020-07-20 11:30:00-06	Progeny IPT	2020-07-20 12:15:01.513988-06	0.75000	21	5	11:30:00
4533	2020-07-20 10:20:31-06	2020-07-20 14:42:10-06	setting up server	2020-07-20 14:42:18.626174-06	4.36083	230	17	\N
4535	2020-07-20 10:05:00-06	2020-07-20 15:50:00-06	Demolition and clean up	2020-07-20 15:49:41.619028-06	5.75000	28	13	15:50:00
4537	2020-07-20 09:30:00-06	2020-07-20 17:15:00-06	Demolition, cleaning up, removing nails, and then mopping the shop	2020-07-20 17:11:30.374603-06	7.75000	28	11	17:15:00
4536	2020-07-20 15:54:19-06	2020-07-20 19:41:37-06	getting familiar w/ codebase	2020-07-20 19:41:41.678634-06	3.78833	230	17	\N
4538	2020-07-20 19:41:57-06	2020-07-20 19:45:51-06	end of day report	2020-07-20 19:45:53.245311-06	0.06500	230	17	\N
4539	2020-07-20 14:15:00-06	2020-07-20 16:15:00-06	Debug	2020-07-20 20:35:46.648831-06	2.00000	289	5	16:15:00
4540	2020-07-20 16:15:00-06	2020-07-20 19:15:00-06	Element age study	2020-07-20 20:36:30.13166-06	3.00000	185	5	19:15:00
4542	2020-07-21 10:00:00-06	2020-07-21 10:30:00-06	Specification	2020-07-21 10:30:12.799271-06	0.50000	333	5	10:30:00
4541	2020-07-21 09:54:00-06	2020-07-21 10:46:46-06	updating payroll & invoice hour download button location	2020-07-21 10:46:52.196175-06	0.87944	230	17	\N
4543	2020-07-21 10:46:55-06	2020-07-21 14:43:00-06	building - 1) Button and box for a file dialog to open a Progeny_BPxxxx_THERMAL.csv file	2020-07-21 14:43:04.442136-06	3.93472	333	17	\N
4546	2020-07-21 09:15:00-06	2020-07-21 17:00:00-06	Demolition	2020-07-21 16:55:18.057179-06	7.75000	28	13	17:00:00
4544	2020-07-21 10:45:00-06	2020-07-21 18:35:00-06	Rebuilding fixture.	2020-07-22 10:51:37.78287-06	7.83333	332	3	\N
4547	2020-07-21 08:45:00-06	2020-07-21 17:00:00-06	Demolition and clean up	2020-07-21 16:55:51.760142-06	8.25000	28	11	17:00:00
4545	2020-07-21 15:28:10-06	2020-07-21 18:55:47-06	calculate ramp rate & verify pass/fail	2020-07-21 18:55:50.164062-06	3.46028	333	17	\N
4548	2020-07-21 14:15:00-06	2020-07-21 15:30:00-06	batch training	2020-07-21 20:11:30.509724-06	1.25000	289	5	15:30:00
4549	2020-07-21 13:00:00-06	2020-07-21 13:30:00-06	Sync files	2020-07-21 20:12:12.278919-06	0.50000	289	5	13:30:00
4550	2020-07-21 15:30:00-06	2020-07-21 18:45:00-06	autotorque elements	2020-07-21 20:12:56.862556-06	3.25000	185	5	18:45:00
4551	2020-07-21 20:00:00-06	2020-07-21 20:30:00-06	BP1150 issue, HVIR element failures	2020-07-21 20:32:02.491236-06	0.50000	185	5	20:30:00
4553	2020-07-22 09:45:00-06	2020-07-22 10:00:00-06	Debug	2020-07-22 09:58:02.127569-06	0.25000	333	5	10:00:00
4552	2020-07-22 07:30:00-06	2020-07-22 08:00:00-06	Status	2020-07-22 10:09:42.686746-06	0.50000	21	5	08:00:00
4554	2020-07-22 09:00:00-06	2020-07-22 09:30:00-06	Test issue meeting	2020-07-22 10:10:38.688828-06	0.50000	21	5	09:30:00
4557	2020-07-22 11:15:00-06	2020-07-22 12:15:00-06	Software Specification	2020-07-22 12:15:05.05578-06	1.00000	334	5	12:15:00
4558	2020-07-22 12:30:00-06	2020-07-22 13:30:00-06	Comment resolution	2020-07-22 13:32:56.164592-06	1.00000	335	5	13:30:00
4555	2020-07-22 10:14:52-06	2020-07-22 14:49:29-06	get rid of extra buttons, check math again, account for non unicode vals in csv, line color to match test result	2020-07-22 14:49:32.876763-06	4.57694	333	17	\N
4559	2020-07-22 09:40:00-06	2020-07-22 15:15:00-06	Demolition til it rained then we went home	2020-07-22 15:15:15.389732-06	5.58333	28	11	15:15:00
4560	2020-07-22 10:30:00-06	2020-07-22 15:15:00-06	Demilition til it rained and we went home	2020-07-22 15:16:00.981394-06	4.75000	28	13	15:15:00
4561	2020-07-22 15:49:22-06	2020-07-22 19:21:38-06	fix data cleaning	2020-07-22 19:21:45.498883-06	3.53778	333	17	\N
4556	2020-07-22 10:40:00-06	2020-07-22 14:59:59-06	Rebuilding test fixture.	2020-07-22 21:47:23.459851-06	4.33306	332	3	\N
4562	2020-07-22 15:00:00-06	2020-07-22 15:59:59-06	REER 94411	2020-07-22 21:49:09.115403-06	0.99972	284	3	\N
4563	2020-07-22 16:00:00-06	2020-07-22 18:45:00-06	Trouble shoot & repair.	2020-07-22 21:49:44.169663-06	2.75000	292	3	\N
4564	2020-07-23 10:21:39-06	2020-07-23 13:33:43-06	setting up other server logins	2020-07-23 13:33:45.027981-06	3.20111	230	17	\N
4566	2020-07-23 15:57:34-06	2020-07-23 19:54:57-06	setting up rest of test server	2020-07-23 19:55:00.119225-06	3.95639	230	17	\N
4567	2020-07-23 21:09:10-06	2020-07-23 22:00:44-06	set up virtual env locally	2020-07-23 22:00:49.455213-06	0.85944	230	17	\N
4571	2020-07-24 08:00:00-06	2020-07-24 15:10:00-06	Demolition and clean up	2020-07-24 15:07:29.692692-06	7.16667	28	11	15:10:00
4570	2020-07-24 11:00:32-06	2020-07-24 15:54:09-06	fix apache config files, fix local host login	2020-07-24 15:54:11.367712-06	4.89361	230	17	\N
4568	2020-07-23 14:15:00-06	2020-07-23 16:15:00-06	OPS45 sweep, autotorque elements	2020-07-24 16:18:29.678633-06	2.00000	185	5	16:15:00
4583	2020-07-27 09:00:00-06	2020-07-27 12:30:00-06	remodel :)	2020-07-27 15:05:00.17289-06	3.50000	28	19	12:30:00
4573	2020-07-24 15:15:00-06	2020-07-24 18:00:00-06	BP1147, BP1096, BP1131, BP1148, BP1149 , BP1150	2020-07-24 18:19:21.473337-06	2.75000	41	5	18:00:00
4572	2020-07-24 16:18:19-06	2020-07-24 18:36:16-06	requested fixes/edits	2020-07-24 18:36:19.08968-06	2.29917	333	17	\N
4574	2020-07-24 18:36:37-06	2020-07-24 19:25:52-06	use peaks/troughs to find rate of temp change	2020-07-24 19:25:54.654921-06	0.82083	333	17	\N
4575	2020-07-25 14:09:49-06	2020-07-25 14:53:35-06	get ramp rates from peaks & troughs, then add as plot labels or adjacent table	2020-07-25 14:53:37.15649-06	0.72944	333	17	\N
4576	2020-07-25 08:15:00-06	2020-07-25 16:15:00-06	Automatic FAT analysis app	2020-07-25 18:09:06.936407-06	8.00000	185	5	16:15:00
4569	2020-07-24 11:00:00-06	2020-07-24 12:30:00-06	Sweep Standard Software Specification	2020-07-26 14:25:52.930626-06	1.50000	185	5	12:30:00
4577	2020-07-26 16:36:07-06	2020-07-26 17:42:33-06	include ramp rates in plot	2020-07-26 17:42:35.537155-06	1.10722	333	17	\N
4565	2020-07-23 12:00:00-06	2020-07-23 13:59:59-06	Repair.	2020-07-27 07:13:30.580862-06	1.99972	332	3	\N
4578	2020-07-23 14:00:00-06	2020-07-23 18:40:00-06	Getting TEMP controllers working.	2020-07-27 07:14:30.177169-06	4.66667	296	3	\N
4580	2020-07-27 07:30:00-06	2020-07-27 07:45:00-06	Status	2020-07-27 07:55:27.951379-06	0.25000	21	5	07:45:00
4581	2020-07-27 10:45:00-06	2020-07-27 11:30:00-06	Progeny IPT	2020-07-27 11:27:13.235516-06	0.75000	21	5	11:30:00
4586	2020-07-27 09:00:00-06	2020-07-27 12:30:00-06	remodel :D	2020-07-27 15:09:24.250341-06	3.50000	28	18	12:30:00
4587	2020-07-27 13:00:00-06	2020-07-27 15:18:25-06	remodel :D	2020-07-27 15:18:27.674231-06	2.30694	28	18	\N
4584	2020-07-27 13:00:00-06	2020-07-27 15:19:24-06	remodel :)	2020-07-27 15:19:25.688117-06	2.32333	28	19	\N
4585	2020-07-27 15:00:00-06	2020-07-27 15:45:00-06	Capacitance meeting	2020-07-27 15:40:38.980686-06	0.75000	185	5	15:45:00
4588	2020-07-27 09:00:00-06	2020-07-27 17:05:00-06	Demolition, clean up, and dumpster loading	2020-07-27 17:05:05.738143-06	8.08333	28	11	17:05:00
4589	2020-07-27 10:30:00-06	2020-07-27 17:05:00-06	Buying materials, demolition, and clean  up	2020-07-27 17:05:41.014306-06	6.58333	28	13	17:05:00
4582	2020-07-27 12:03:03-06	2020-07-27 17:05:51-06	account for false peaks	2020-07-27 17:05:52.808895-06	5.04667	333	17	\N
4590	2020-07-27 18:44:58-06	2020-07-27 21:44:32-06	error handling for csvs w/ weird vals	2020-07-27 21:44:33.853226-06	2.99278	333	17	\N
4592	2020-07-27 16:00:00-06	2020-07-27 18:00:00-06	Capacitance issue	2020-07-28 07:28:39.001831-06	2.00000	185	5	18:00:00
4591	2020-07-28 07:01:08-06	2020-07-28 07:51:53-06	reading spec, getting started	2020-07-28 07:51:55.694384-06	0.84583	334	17	\N
4593	2020-07-28 08:00:00-06	2020-07-28 10:30:00-06	PMR	2020-07-28 11:07:09.786744-06	2.50000	21	5	10:30:00
4579	2020-07-27 07:05:00-06	2020-07-27 09:29:59-06	Replacing belts.	2020-07-28 11:50:35.347112-06	2.41639	296	3	\N
4596	2020-07-27 09:30:00-06	2020-07-27 15:15:00-06	Changing the foam out and testing.	2020-07-28 11:51:12.762439-06	5.75000	332	3	\N
4597	2020-07-28 10:10:00-06	2020-07-28 11:53:56-06	REER 91079, Trouble shoot over current problem.	2020-07-28 11:54:50.850326-06	1.73222	284	3	\N
4594	2020-07-28 11:00:00-06	2020-07-28 13:15:00-06	PMR	2020-07-28 13:17:08.256643-06	2.25000	21	5	13:15:00
4599	2020-07-28 14:15:00-06	2020-07-28 15:30:00-06	Installation	2020-07-28 15:36:00.092802-06	1.25000	333	5	15:30:00
4598	2020-07-28 11:53:57-06	2020-07-28 13:59:59-06	Installing new motor and cutting blades on stacker.	2020-07-28 15:46:20.962287-06	2.10056	296	3	\N
4602	2020-07-28 08:18:51-06	2020-07-28 16:00:00-06	Demolition, removal of tub and plumbing, fixing internet, and cleaning	2020-07-28 15:53:54.991601-06	7.68583	28	11	16:00:00
4603	2020-07-28 09:30:00-06	2020-07-28 16:00:00-06	Demolition, removal of tub and plumbing, and buying stuff	2020-07-28 15:54:31.094426-06	6.50000	28	13	16:00:00
4595	2020-07-28 11:30:41-06	2020-07-28 16:02:26-06	fixing error	2020-07-28 16:02:29.423825-06	4.52917	333	17	\N
4600	2020-07-28 15:30:00-06	2020-07-28 18:00:00-06	Fix remap files, consolidate carriers, Test Scott's elements, Map	2020-07-28 17:44:48.506031-06	2.50000	185	5	18:00:00
4604	2020-07-28 16:18:49-06	2020-07-28 18:03:28-06	gen sn file & writing actual test	2020-07-28 18:03:30.365216-06	1.74417	334	17	\N
4605	2020-07-28 22:38:59-06	2020-07-28 23:35:12-06	writing actual cap diss tolerance test	2020-07-28 23:35:15.86634-06	0.93694	334	17	\N
4601	2020-07-28 14:00:00-06	2020-07-28 16:30:00-06	Meeting.	2020-07-29 06:53:29.121466-06	2.50000	332	3	\N
4608	2020-07-29 07:30:00-06	2020-07-29 08:00:00-06	Status	2020-07-29 08:08:51.690115-06	0.50000	21	5	08:00:00
4607	2020-07-29 08:06:37-06	2020-07-29 09:15:06-06	writing actual cap diss tolerance test	2020-07-29 09:15:08.820765-06	1.14139	334	17	\N
4609	2020-07-29 10:30:00-06	2020-07-29 10:45:00-06	Remap test	2020-07-29 10:43:38.231227-06	0.25000	181	5	10:45:00
4611	2020-07-29 10:49:53-06	2020-07-29 15:01:00-06	changing colors based on pass/fail	2020-07-29 15:01:02.749559-06	4.18528	334	17	\N
4606	2020-07-29 06:45:00-06	2020-07-29 15:15:00-06	Replacing the THETA motor and controller.	2020-07-30 07:01:28.771663-06	8.50000	296	3	\N
4610	2020-07-29 10:45:00-06	2020-07-29 11:00:00-06	Fix carriers damaged by IR	2020-07-29 10:58:14.574615-06	0.25000	185	5	11:00:00
4612	2020-07-29 11:00:00-06	2020-07-29 12:00:00-06	Fix utility search function	2020-07-29 12:03:37.331616-06	1.00000	181	5	12:00:00
4615	2020-07-29 09:30:00-06	2020-07-29 17:00:00-06	Removal of pipes, fixing sazsall, caping some pipes, cleaning, removing base plaster, and groceries.	2020-07-29 17:00:54.817077-06	7.50000	28	11	17:00:00
4613	2020-07-29 15:00:00-06	2020-07-29 16:00:00-06	Capacitance meeting	2020-07-29 17:20:29.203226-06	1.00000	185	5	16:00:00
4614	2020-07-29 15:38:43-06	2020-07-29 18:27:10-06	align columns	2020-07-29 18:27:12.384988-06	2.80750	334	17	\N
4617	2020-07-30 07:10:01-06	2020-07-30 08:04:01-06	trying to figure out an error	2020-07-30 08:04:03.608706-06	0.90000	230	17	\N
4619	2020-07-30 11:47:07-06	2020-07-30 12:59:58-06	same error, different hour	2020-07-30 13:00:00.489573-06	1.21417	230	17	\N
4620	2020-07-30 08:45:00-06	2020-07-30 14:47:00-06	Demolition and clean up	2020-07-30 14:46:35.546912-06	6.03333	28	11	14:47:00
4618	2020-07-30 11:00:00-06	2020-07-30 15:15:00-06	Fix remap files, Test Scott's elements	2020-07-30 15:09:05.454996-06	4.25000	185	5	15:15:00
4622	2020-07-30 09:45:00-06	2020-07-30 16:40:00-06	removal of floor and upstairs celing tiles and wallboard	2020-07-30 16:34:09.740885-06	6.91667	28	13	16:40:00
4621	2020-07-30 15:03:15-06	2020-07-30 19:01:57-06	NoReverseMatch found error	2020-07-30 19:02:00.798616-06	3.97833	230	17	\N
4616	2020-07-30 06:50:00-06	2020-07-30 08:59:59-06	Replacing blades & motor on stacker machine.	2020-07-31 06:59:58.478289-06	2.16639	296	3	\N
4623	2020-07-30 09:00:00-06	2020-07-30 10:29:59-06	Repairing test cable for analyzer.	2020-07-31 07:01:41.398499-06	1.49972	173	3	\N
4761	2020-08-20 15:00:00-06	2020-08-20 18:30:00-06	Testing	2020-08-20 18:34:18.213836-06	3.50000	185	5	18:30:00
4624	2020-07-30 10:30:00-06	2020-07-30 10:59:59-06	PM in the secure room for Crystal.	2020-07-31 07:03:10.35236-06	0.49972	15	3	\N
4625	2020-07-30 11:00:00-06	2020-07-30 15:30:00-06	Working on the tracking problem on the Tape cast machine.	2020-07-31 07:05:18.740985-06	4.50000	296	3	\N
4626	2020-07-31 06:45:00-06	2020-07-31 15:30:00-06	Working on the tracking problem on the Tape cast machine.	2020-07-31 07:09:03.454378-06	8.75000	296	3	\N
4627	2020-07-31 09:00:00-06	2020-07-31 11:45:00-06	Fix remap files, Test Scott's elements	2020-07-31 11:30:54.798436-06	2.75000	185	5	11:45:00
4628	2020-07-31 09:30:00-06	2020-07-31 15:55:00-06	Removal of tiles and making a mess of the house	2020-07-31 15:46:49.610781-06	6.41667	28	13	15:55:00
4629	2020-07-31 08:50:00-06	2020-07-31 15:50:00-06	removing tiles and making joe cough a lot	2020-07-31 15:47:40.861801-06	7.00000	28	11	15:50:00
4630	2020-08-01 09:00:00-06	2020-08-01 11:15:00-06	Consolidation, Map, ESS automation	2020-08-01 11:09:18.597348-06	2.25000	185	5	11:15:00
4631	2020-08-01 11:30:00-06	2020-08-01 13:15:00-06	ESS automation	2020-08-01 13:48:13.40935-06	1.75000	185	5	13:15:00
4633	2020-08-03 07:30:00-06	2020-08-03 08:00:00-06	Status	2020-08-03 11:30:00.106699-06	0.50000	21	5	08:00:00
4634	2020-08-03 07:35:00-06	2020-08-03 11:14:59-06	Repairing IR tester.	2020-08-03 13:05:29.069971-06	3.66639	173	3	\N
4632	2020-08-03 10:08:38-06	2020-08-03 13:08:34-06	checking failed test	2020-08-03 13:08:35.753831-06	2.99889	334	17	\N
4637	2020-08-03 15:00:00-06	2020-08-03 15:30:00-06	Capacitance meeting	2020-08-03 15:32:20.672278-06	0.50000	21	5	15:30:00
4638	2020-07-31 09:00:00-06	2020-07-31 17:00:00-06	driving to Utah	2020-08-03 16:04:26.399759-06	8.00000	336	17	\N
4639	2020-08-03 08:32:00-06	2020-08-03 17:00:00-06	Restacking dump, taking out pipes, and cleaning up shop	2020-08-03 16:56:23.620369-06	8.46667	28	11	17:00:00
4640	2020-08-03 10:00:00-06	2020-08-03 17:00:00-06	Taking out pipes, restacking dump so the doors would close, and cleaning up.	2020-08-03 16:57:02.318867-06	7.00000	28	13	17:00:00
4636	2020-08-03 14:11:06-06	2020-08-03 18:20:33-06	redo w/ less changes	2020-08-03 18:20:34.711076-06	4.15750	334	17	\N
4641	2020-08-03 17:30:00-06	2020-08-03 18:00:00-06	Sweep Standard	2020-08-03 18:27:22.000631-06	0.50000	185	5	18:00:00
4642	2020-08-03 21:01:20-06	2020-08-03 21:16:43-06	new features	2020-08-03 21:16:44.887639-06	0.25639	334	17	\N
4635	2020-08-03 11:15:00-06	2020-08-03 17:30:00-06	Installing new controller.	2020-08-04 07:21:59.561199-06	6.25000	296	3	\N
4644	2020-08-04 08:53:24-06	2020-08-04 10:04:12-06	new features	2020-08-04 10:04:13.950745-06	1.18000	334	17	\N
4645	2020-08-04 09:00:00-06	2020-08-04 10:00:00-06	Run charts	2020-08-04 10:10:00.199713-06	1.00000	226	5	10:00:00
4647	2020-08-04 11:45:00-06	2020-08-04 12:15:00-06	Run charts	2020-08-04 12:19:19.459746-06	0.50000	226	5	12:15:00
4646	2020-08-04 10:04:15-06	2020-08-04 12:24:24-06	payroll hours no inactive employees	2020-08-04 12:24:27.028039-06	2.33583	230	17	\N
4648	2020-08-04 13:00:00-06	2020-08-04 13:30:00-06	Additional Element Carriers	2020-08-04 13:21:08.269906-06	0.50000	21	5	13:30:00
4649	2020-08-04 13:39:01-06	2020-08-04 16:54:33-06	payroll name field for user data	2020-08-04 16:54:35.572616-06	3.25889	230	17	\N
4652	2020-08-04 10:00:00-06	2020-08-04 17:05:00-06	Removal of last pipe and trimming floor	2020-08-04 17:00:24.382355-06	7.08333	28	13	17:05:00
4653	2020-08-04 09:10:34-06	2020-08-04 17:00:00-06	Removing big tube base, triming floor for new OSB, buying stuff at Lowes and Home Depot, and cleaning	2020-08-04 17:01:07.959474-06	7.82389	28	11	17:00:00
4651	2020-08-04 15:30:00-06	2020-08-04 17:00:00-06	Sweep Standard	2020-08-04 17:04:42.133037-06	1.50000	185	5	17:00:00
4650	2020-08-04 14:15:00-06	2020-08-04 15:30:00-06	Installation	2020-08-04 17:05:18.889256-06	1.25000	333	5	15:30:00
4654	2020-08-04 22:54:41-06	2020-08-04 23:38:36-06	payroll name for payroll report	2020-08-04 23:38:39.281787-06	0.73194	230	17	\N
4643	2020-08-04 07:15:00-06	2020-08-04 17:20:00-06	Changing motor on stacking machine.	2020-08-05 06:54:35.461267-06	10.08333	296	3	\N
4656	2020-08-05 07:30:00-06	2020-08-05 08:00:00-06	Status	2020-08-05 08:01:34.075771-06	0.50000	21	5	08:00:00
4658	2020-08-05 08:30:00-06	2020-08-05 10:30:00-06	OSB flooring	2020-08-05 11:12:13.782334-06	2.00000	28	11	10:30:00
4655	2020-08-05 06:45:00-06	2020-08-05 07:44:59-06	Tracking down a switch for saws-all..	2020-08-05 11:46:53.429071-06	0.99972	28	3	\N
4659	2020-08-05 07:45:00-06	2020-08-05 11:47:05-06	Repairing dock PWB and USB to RS232 converter PWB.	2020-08-05 11:48:10.275818-06	4.03472	173	3	\N
4661	2020-08-05 11:00:00-06	2020-08-05 11:15:00-06	Test support	2020-08-05 12:17:41.730688-06	0.25000	185	5	11:15:00
4657	2020-08-05 09:19:52-06	2020-08-05 12:27:35-06	research errors	2020-08-05 12:27:37.140987-06	3.12861	230	17	\N
4663	2020-08-05 14:00:00-06	2020-08-05 14:45:00-06	Specification	2020-08-05 14:50:09.177736-06	0.75000	337	5	14:45:00
4664	2020-08-05 15:00:00-06	2020-08-05 15:45:00-06	Capacitance meeting	2020-08-05 15:44:31.340968-06	0.75000	185	5	15:45:00
4666	2020-08-05 11:10:00-06	2020-08-05 16:30:00-06	Adding floor, cleaning up, removing nails, and planning new bathroom	2020-08-05 16:27:03.332512-06	5.33333	28	11	16:30:00
4667	2020-08-05 09:00:00-06	2020-08-05 10:30:00-06	Cutting osb for floors	2020-08-05 16:27:49.383002-06	1.50000	28	13	10:30:00
4668	2020-08-05 11:10:00-06	2020-08-05 16:30:00-06	Cutting osb and fitting boards, clean up outside	2020-08-05 16:28:39.332712-06	5.33333	28	13	16:30:00
4662	2020-08-05 13:03:01-06	2020-08-05 17:55:48-06	small changes	2020-08-05 17:55:50.286616-06	4.87972	230	17	\N
4665	2020-08-05 15:45:00-06	2020-08-05 20:00:00-06	Sweep Standard, Testing	2020-08-05 19:41:59.724473-06	4.25000	185	5	20:00:00
4660	2020-08-05 11:47:06-06	2020-08-05 15:59:59-06	Changing motor on sacker machine.	2020-08-06 07:09:45.986381-06	4.21472	296	3	\N
4669	2020-08-05 16:00:00-06	2020-08-05 17:15:00-06	Helping Joe with IR tester.	2020-08-06 07:10:20.563946-06	1.25000	173	3	\N
4670	2020-08-06 08:15:00-06	2020-08-06 08:30:00-06	Document review	2020-08-06 08:39:08.354566-06	0.25000	339	5	08:30:00
4671	2020-08-06 08:53:20-06	2020-08-06 12:49:09-06	figuring out what the current code is doing	2020-08-06 12:49:11.215091-06	3.93028	337	17	\N
4673	2020-08-06 07:00:00-06	2020-08-06 08:29:59-06	Installing new controller.	2020-08-06 15:30:10.440951-06	1.49972	296	3	\N
4674	2020-08-06 08:30:00-06	2020-08-06 12:14:59-06	Changing connectors.	2020-08-06 15:31:03.186134-06	3.74972	332	3	\N
4672	2020-08-06 14:20:03-06	2020-08-06 18:56:47-06	making cap check faster	2020-08-06 18:56:49.676618-06	4.61222	337	17	\N
5135	2020-10-26 07:30:00-06	2020-10-26 07:45:00-06	Status	2020-10-26 11:21:07.128379-06	0.25000	21	5	07:45:00
4676	2020-08-07 08:48:56-06	2020-08-07 11:09:59-06	create new link for csv downloads	2020-08-07 11:10:01.655508-06	2.35083	230	17	\N
4677	2020-08-07 11:10:03-06	2020-08-07 12:49:50-06	research migration errors	2020-08-07 12:49:52.645397-06	1.66306	230	17	\N
4679	2020-08-07 09:00:00-06	2020-08-07 17:10:00-06	Home depot run, cleaning, figuring out bathroom floor plan, installing floor, and installing plumbing	2020-08-07 17:08:25.728078-06	8.16667	28	11	17:10:00
4678	2020-08-07 14:45:27-06	2020-08-07 18:45:40-06	getting familiar with this part of the site	2020-08-07 18:45:42.508091-06	4.00361	32	17	\N
4680	2020-08-08 08:30:00-06	2020-08-08 12:15:00-06	Sweep Standard, Testing	2020-08-08 12:03:23.913936-06	3.75000	185	5	12:15:00
4681	2020-08-08 23:20:39-06	2020-08-08 23:54:43-06	mouser error	2020-08-08 23:54:45.043212-06	0.56778	230	17	\N
4682	2020-08-10 07:30:00-06	2020-08-10 07:45:00-06	Status	2020-08-10 09:14:28.563674-06	0.25000	21	5	07:45:00
4684	2020-08-10 10:45:00-06	2020-08-10 11:45:00-06	Progeny IPT	2020-08-10 12:11:37.746801-06	1.00000	21	5	11:45:00
4683	2020-08-10 11:10:41-06	2020-08-10 12:50:57-06	set up database search	2020-08-10 12:50:59.110988-06	1.67111	32	17	\N
4685	2020-08-10 12:51:00-06	2020-08-10 15:18:42-06	mouser lookup error	2020-08-10 15:18:44.29978-06	2.46167	32	17	\N
4687	2020-08-10 08:30:00-06	2020-08-10 16:30:00-06	2nd floor sheet rock. Its being a pain.	2020-08-10 16:30:32.527435-06	8.00000	28	11	16:30:00
4688	2020-08-10 09:20:00-06	2020-08-10 16:30:00-06	2nd floor drywall, it is being a huge pain. 3 sheets installed	2020-08-10 16:31:06.331993-06	7.16667	28	13	16:30:00
4686	2020-08-10 13:30:00-06	2020-08-10 19:00:00-06	Testing	2020-08-10 18:43:20.729527-06	5.50000	185	5	19:00:00
4689	2020-08-10 16:42:18-06	2020-08-10 20:35:37-06	django logging	2020-08-10 20:35:38.930526-06	3.88861	32	17	\N
4675	2020-08-06 12:15:00-06	2020-08-06 17:20:00-06	Adjusting stops on high stacker.	2020-08-11 07:11:34.370849-06	5.08333	296	3	\N
4690	2020-08-10 07:00:00-06	2020-08-10 15:20:00-06	Making new test cable.	2020-08-11 07:13:15.504423-06	8.33333	332	3	\N
4693	2020-08-11 10:00:00-06	2020-08-11 10:30:00-06	Bug description for Dan	2020-08-11 10:33:55.952922-06	0.50000	87	5	10:30:00
4695	2020-08-11 10:30:00-06	2020-08-11 12:00:00-06	Carrier Consolidation	2020-08-11 12:08:19.944323-06	1.50000	181	5	12:00:00
4694	2020-08-11 10:13:32-06	2020-08-11 14:55:50-06	fix default week, add overtime to ot col	2020-08-11 14:55:53.218828-06	4.70500	31	17	\N
4697	2020-08-11 09:20:00-06	2020-08-11 17:00:00-06	Finishing ceiling sheetrock, cleaning, and then sealing bricks	2020-08-11 16:58:00.602931-06	7.66667	28	13	17:00:00
4698	2020-08-11 08:25:00-06	2020-08-11 17:00:00-06	Cleaning upstairs, taking out trash, finishing sheetrock, sealing bricks, and cleaning up that	2020-08-11 16:58:38.866715-06	8.58333	28	11	17:00:00
4699	2020-08-11 17:00:04-06	2020-08-11 18:00:11-06	working on new buttons	2020-08-11 18:00:13.686012-06	1.00194	32	17	\N
4696	2020-08-11 13:00:00-06	2020-08-11 19:45:00-06	Testing	2020-08-11 19:29:26.117173-06	6.75000	185	5	19:45:00
4700	2020-08-11 18:00:21-06	2020-08-11 20:25:26-06	research on database search	2020-08-11 20:25:28.849584-06	2.41806	32	17	\N
4691	2020-08-11 07:00:00-06	2020-08-11 13:29:59-06	Reassembling Test chamber.	2020-08-12 07:34:49.713293-06	6.49972	332	3	\N
4702	2020-08-12 07:30:00-06	2020-08-12 08:29:59-06	Trouble shooting.	2020-08-12 10:41:13.65906-06	0.99972	332	3	\N
4705	2020-08-12 08:30:00-06	2020-08-12 10:41:16-06	REER 91145 Changing out IC chips.	2020-08-12 10:41:39.684057-06	2.18778	284	3	\N
4704	2020-08-12 09:02:31-06	2020-08-12 11:16:24-06	search bar for db	2020-08-12 11:16:27.084771-06	2.23139	32	17	\N
4703	2020-08-12 07:30:00-06	2020-08-12 08:00:00-06	Status	2020-08-12 14:09:29.92724-06	0.50000	21	5	08:00:00
4707	2020-08-12 12:10:55-06	2020-08-12 14:26:36-06	search bar for db	2020-08-12 14:26:38.38146-06	2.26139	32	17	\N
4710	2020-08-12 09:00:00-06	2020-08-12 17:00:00-06	Plumbing, flooring, and cleaning	2020-08-12 16:54:16.765135-06	8.00000	28	13	17:00:00
4711	2020-08-12 08:20:00-06	2020-08-12 17:00:00-06	Plumbing, setting pipes, installing floor, cleaning, etc	2020-08-12 16:55:11.344325-06	8.66667	28	11	17:00:00
4708	2020-08-12 14:00:00-06	2020-08-12 17:30:00-06	Testing	2020-08-12 17:25:22.72322-06	3.50000	185	5	17:30:00
4709	2020-08-12 16:41:18-06	2020-08-12 20:08:02-06	mrp search bar	2020-08-12 20:08:05.164026-06	3.44556	32	17	\N
4706	2020-08-12 10:41:17-06	2020-08-12 14:29:59-06	Trouble shoot & repair.	2020-08-13 07:16:05.351923-06	3.81167	332	3	\N
4712	2020-08-12 14:30:00-06	2020-08-12 17:15:00-06	Hooking up wires on Mod1 elements.	2020-08-13 07:16:34.922992-06	2.75000	340	3	\N
4701	2020-08-11 13:30:00-06	2020-08-11 15:20:00-06	Moving MOD0 racks to MOD1.	2020-08-13 07:53:39.85819-06	1.83333	340	3	\N
4715	2020-08-13 13:00:00-06	2020-08-13 13:30:00-06	Test meeting	2020-08-13 13:35:58.823748-06	0.50000	234	5	13:30:00
4716	2020-08-13 13:30:00-06	2020-08-13 15:00:00-06	Testing	2020-08-13 15:23:01.676617-06	1.50000	185	5	15:00:00
4714	2020-08-13 12:54:36-06	2020-08-13 16:53:15-06	search bar for mrp db	2020-08-13 16:53:21.629678-06	3.97750	32	17	\N
4718	2020-08-13 10:10:00-06	2020-08-13 17:00:00-06	Stripping brick paint, installing floor, cleaning, etc	2020-08-13 16:56:44.998788-06	6.83333	28	13	17:00:00
4719	2020-08-13 08:00:00-06	2020-08-13 17:00:00-06	Installing floor, installing another layer of OSB, removing platform upstairs, cleaning, and taking out trash	2020-08-13 16:57:52.168178-06	9.00000	28	11	17:00:00
4717	2020-08-13 15:30:00-06	2020-08-13 18:00:00-06	Testing	2020-08-13 17:43:42.74497-06	2.50000	185	5	18:00:00
4720	2020-08-13 17:05:34-06	2020-08-13 21:09:35-06	search filters	2020-08-13 21:09:37.83467-06	4.06694	32	17	\N
4713	2020-08-13 07:00:00-06	2020-08-13 11:59:59-06	Trouble shooting &repair.	2020-08-14 07:03:11.096566-06	4.99972	332	3	\N
4721	2020-08-13 12:00:00-06	2020-08-13 12:59:59-06	Changeing out select at test resistors for Mike M.	2020-08-14 07:04:36.491263-06	0.99972	284	3	\N
4722	2020-08-13 13:00:00-06	2020-08-13 15:20:00-06	Rebuilding connectors on caps.	2020-08-14 07:05:52.112637-06	2.33333	332	3	\N
4733	2020-08-17 07:30:00-06	2020-08-17 08:15:00-06	Status	2020-08-17 11:16:30.941297-06	0.75000	21	5	08:15:00
4724	2020-08-14 07:16:53-06	2020-08-14 11:11:58-06	search bar for mrp db	2020-08-14 11:12:00.906908-06	3.91806	32	17	\N
4725	2020-08-13 15:00:00-06	2020-08-13 15:29:59-06	Array cost reduction meeting	2020-08-14 11:44:21.185161-06	0.49972	21	5	15:29:59
4728	2020-08-14 08:05:00-06	2020-08-14 16:35:00-06	Plumbing, buying hole saw, cleaning, making corn thing for barbara, cleaning basement, woodshop, and entry way.	2020-08-14 16:36:23.076965-06	8.50000	28	11	16:35:00
4727	2020-08-14 14:30:00-06	2020-08-14 17:30:00-06	Testing	2020-08-14 17:24:01.862317-06	3.00000	185	5	17:30:00
4726	2020-08-14 13:52:48-06	2020-08-14 17:24:03-06	search results for Product, MO, PO, Vendors, and Locations	2020-08-14 17:24:05.147948-06	3.52083	32	17	\N
4729	2020-08-15 11:12:21-06	2020-08-15 11:49:11-06	search bar	2020-08-15 11:49:14.059266-06	0.61389	32	17	\N
4730	2020-08-15 11:30:00-06	2020-08-15 14:30:00-06	Array cap analysis, FAT analysis	2020-08-15 14:24:45.508869-06	3.00000	185	5	14:30:00
4731	2020-08-16 19:26:58-06	2020-08-16 19:30:17-06	search results for MO & PO	2020-08-16 19:30:19.943507-06	0.05528	32	17	\N
4723	2020-08-14 06:50:00-06	2020-08-14 15:10:00-06	Rebuilding connectors on caps	2020-08-17 07:16:19.47834-06	8.33333	332	3	\N
4734	2020-08-17 10:45:00-06	2020-08-17 11:30:00-06	Progeny IPT	2020-08-17 11:30:23.179861-06	0.75000	21	5	11:30:00
4732	2020-08-17 07:10:00-06	2020-08-17 07:59:59-06	Replacing cutting blades on stacker.	2020-08-17 13:17:06.021508-06	0.83306	296	3	\N
4735	2020-08-17 12:13:44-06	2020-08-17 16:27:29-06	search results for MO & PO	2020-08-17 16:27:31.702403-06	4.22917	32	17	\N
4737	2020-08-17 08:45:00-06	2020-08-17 16:32:00-06	Buying pipe, preparing for plumbing to upstairs bathrooms, and cleaning.	2020-08-17 16:29:59.447801-06	7.78333	28	11	16:32:00
4738	2020-08-17 09:05:00-06	2020-08-17 16:32:00-06	Buying pipe, preparing for plumbing to upstairs bathrooms, and cleaning.	2020-08-17 16:30:18.833178-06	7.45000	28	13	16:32:00
4739	2020-08-17 12:15:00-06	2020-08-17 17:15:00-06	OPS30 cap issue	2020-08-17 17:08:23.978755-06	5.00000	185	5	17:15:00
4736	2020-08-17 08:00:00-06	2020-08-17 17:11:38-06	Replaceing gaskets.	2020-08-17 17:11:43.251618-06	9.19389	332	3	\N
4740	2020-08-17 19:59:11-06	2020-08-17 23:51:00-06	search results	2020-08-17 23:51:03.130472-06	3.86361	32	17	\N
4742	2020-08-18 09:04:46-06	2020-08-18 13:10:32-06	search results	2020-08-18 13:10:33.852677-06	4.09611	32	17	\N
4745	2020-08-18 08:30:00-06	2020-08-18 16:09:00-06	Cleaning out area for pipes, buying pipes, and starting to install	2020-08-18 16:10:07.120464-06	7.65000	28	11	16:09:00
4746	2020-08-18 10:20:00-06	2020-08-18 16:10:00-06	Celaning out area for pipes, buing pipes, and beginning to install	2020-08-18 16:10:43.250403-06	5.83333	28	13	16:10:00
4743	2020-08-18 13:30:00-06	2020-08-18 18:00:00-06	Testing	2020-08-18 18:03:50.011134-06	4.50000	185	5	18:00:00
4744	2020-08-18 15:08:01-06	2020-08-18 19:04:10-06	MO & PO search results	2020-08-18 19:04:12.379247-06	3.93583	32	17	\N
4741	2020-08-18 07:00:00-06	2020-08-18 17:00:01-06	Rebuilding test fixture.	2020-08-19 08:09:15.037578-06	10.00028	332	3	\N
4747	2020-08-19 07:10:00-06	2020-08-19 08:17:18-06	Ordering new cables.	2020-08-19 08:17:33.00337-06	1.12167	296	3	\N
4749	2020-08-19 07:30:00-06	2020-08-19 08:15:00-06	Status	2020-08-19 08:47:01.30828-06	0.75000	21	5	08:15:00
4751	2020-08-19 12:00:00-06	2020-08-19 12:15:00-06	Use-ability Enhancement	2020-08-19 12:18:14.035806-06	0.25000	334	5	12:15:00
4750	2020-08-19 09:38:53-06	2020-08-19 12:53:37-06	prettify search results	2020-08-19 12:53:41.50054-06	3.24556	32	17	\N
4755	2020-08-19 10:45:00-06	2020-08-19 12:45:00-06	Figuring out plumbing	2020-08-19 17:02:22.675528-06	2.00000	28	13	12:45:00
4756	2020-08-19 13:00:00-06	2020-08-19 17:05:00-06	Continued to try and figure out plumbing	2020-08-19 17:03:39.091278-06	4.08333	28	13	17:05:00
4757	2020-08-19 10:00:00-06	2020-08-19 17:06:00-06	figuring out plumbing	2020-08-19 17:04:29.670411-06	7.10000	28	11	17:06:00
4752	2020-08-19 13:00:00-06	2020-08-19 14:00:00-06	Bug fixes	2020-08-19 18:56:55.457954-06	1.00000	338	5	16:00:00
4758	2020-08-19 14:00:00-06	2020-08-19 15:00:00-06	Thermotron setup	2020-08-19 18:57:25.570392-06	1.00000	15	5	15:00:00
4759	2020-08-19 15:00:00-06	2020-08-19 18:00:00-06	Testing, ATF2 setup	2020-08-19 18:58:24.795275-06	3.00000	185	5	18:00:00
4753	2020-08-19 14:34:21-06	2020-08-19 19:42:14-06	fixes, changes, debugging	2020-08-19 19:42:16.01476-06	5.13139	334	17	\N
4748	2020-08-19 08:17:19-06	2020-08-19 17:15:00-06	Repair.	2020-08-20 07:21:28.574525-06	8.96139	332	3	\N
4763	2020-08-20 09:00:00-06	2020-08-20 16:30:00-06	plumbing n fiesta	2020-08-21 09:19:59.732238-06	7.50000	28	11	16:30:00
4762	2020-08-21 08:32:20-06	2020-08-21 13:13:14-06	debugging	2020-08-21 13:13:16.363223-06	4.68167	334	17	\N
4764	2020-08-21 14:25:01-06	2020-08-21 15:03:20-06	getting familiar, looking for errors in steps	2020-08-21 15:03:22.574564-06	0.63861	338	17	\N
4766	2020-08-20 10:05:00-06	2020-08-20 16:36:00-06	Plumbing	2020-08-21 15:46:49.389147-06	6.51667	28	13	16:36:00
4767	2020-08-21 10:00:00-06	2020-08-21 15:50:00-06	Plumbing	2020-08-21 15:47:57.786729-06	5.83333	28	13	15:50:00
4768	2020-08-21 09:10:00-06	2020-08-21 15:50:00-06	Plumbing	2020-08-21 15:48:16.632185-06	6.66667	28	11	15:50:00
4769	2020-08-21 16:37:25-06	2020-08-21 17:08:32-06	going through help messages	2020-08-21 17:08:33.879196-06	0.51861	338	17	\N
4777	2020-08-24 17:02:33-06	2020-08-24 17:39:30-06	no delete files button, move files to temp folder & back	2020-08-24 17:39:31.971585-06	0.61583	334	17	\N
4765	2020-08-21 14:30:00-06	2020-08-21 17:45:00-06	BP1159 remap	2020-08-22 13:58:25.311563-06	3.25000	185	5	17:45:00
4770	2020-08-22 09:00:00-06	2020-08-22 14:15:00-06	Testing	2020-08-22 13:58:44.952208-06	5.25000	185	5	13:15:00
4772	2020-08-24 07:30:00-06	2020-08-24 08:00:00-06	Status	2020-08-24 12:50:23.871565-06	0.50000	21	5	08:00:00
4773	2020-08-24 10:15:00-06	2020-08-24 12:00:00-06	ATF2 Matlab issue	2020-08-24 12:51:13.852129-06	1.75000	185	5	12:00:00
4771	2020-08-24 08:37:18-06	2020-08-24 13:25:30-06	debug help messages	2020-08-24 13:25:53.405043-06	4.80333	338	17	\N
4775	2020-08-24 15:00:00-06	2020-08-24 15:30:00-06	Capacitance meeting	2020-08-24 16:08:13.102527-06	0.50000	21	5	15:30:00
4776	2020-08-24 15:30:00-06	2020-08-24 16:15:00-06	Software change specification	2020-08-24 16:11:34.906728-06	0.75000	338	5	16:15:00
4774	2020-08-24 14:17:38-06	2020-08-24 17:01:43-06	fixing file search	2020-08-24 17:02:19.760979-06	2.73472	334	17	\N
4778	2020-08-24 08:50:02-06	2020-08-24 17:30:00-06	plumbing, almost the last hoora	2020-08-24 17:28:54.831464-06	8.66611	28	11	17:30:00
4779	2020-08-24 09:20:00-06	2020-08-24 17:30:00-06	Almost the last hoora of plumbing, tomorrow is the last day of it	2020-08-24 17:29:29.787098-06	8.16667	28	13	17:30:00
4780	2020-08-24 18:00:00-06	2020-08-24 20:30:00-06	BP1159 remap	2020-08-24 21:51:10.250616-06	2.50000	185	5	20:30:00
4760	2020-08-20 07:15:00-06	2020-08-20 08:29:59-06	Getting programing code for the high stacker.	2020-08-25 07:44:04.756916-06	1.24972	296	3	\N
4781	2020-08-20 08:30:00-06	2020-08-20 17:30:00-06	Repair.	2020-08-25 07:44:28.983592-06	9.00000	332	3	\N
4783	2020-08-25 08:19:53-06	2020-08-25 12:12:28-06	fix help messages, change buttons, better error messages	2020-08-25 12:12:30.341973-06	3.87639	338	17	\N
4784	2020-08-25 09:00:00-06	2020-08-25 10:00:00-06	NUWC IPT	2020-08-25 12:38:26.69875-06	1.00000	21	5	10:00:00
4782	2020-08-25 07:30:00-06	2020-08-25 14:23:40-06	Finishing certs.	2020-08-25 14:24:53.872427-06	6.89444	279	3	\N
4785	2020-08-25 13:04:43-06	2020-08-25 16:18:55-06	new check plot buttons, error message for too many files	2020-08-25 16:18:57.927437-06	3.23667	338	17	\N
4786	2020-08-25 14:23:41-06	2020-08-25 16:30:00-06	Building up cables.	2020-08-26 07:19:36.314789-06	2.10528	340	3	\N
4787	2020-08-25 14:15:00-06	2020-08-25 14:30:00-06	E05 failure	2020-08-26 08:45:29.764138-06	0.25000	87	5	14:30:00
4789	2020-08-26 07:30:00-06	2020-08-26 08:00:00-06	Status	2020-08-26 08:46:25.312254-06	0.50000	21	5	08:00:00
4792	2020-08-26 09:30:00-06	2020-08-26 12:07:00-06	finishing plumbing and cleaning	2020-08-26 12:06:31.676831-06	2.61667	28	11	12:07:00
4793	2020-08-26 10:00:00-06	2020-08-26 12:08:00-06	finishing plumbing	2020-08-26 12:07:09.975753-06	2.13333	28	13	12:08:00
4791	2020-08-26 10:11:17-06	2020-08-26 14:26:31-06	account for too many files, set up git-remote-dropbox	2020-08-26 14:26:33.838149-06	4.25389	338	17	\N
4790	2020-08-26 08:45:00-06	2020-08-26 10:15:00-06	Testing	2020-08-26 14:27:25.524793-06	1.50000	338	5	12:15:00
4795	2020-08-26 10:15:00-06	2020-08-26 11:15:00-06	BP1152-BP1154	2020-08-26 14:28:41.629738-06	1.00000	41	5	11:15:00
4796	2020-08-26 11:15:00-06	2020-08-26 11:30:00-06	BP1152-BP1154	2020-08-26 14:29:36.89523-06	0.25000	42	5	11:30:00
4797	2020-08-26 11:30:00-06	2020-08-26 12:15:00-06	Testing	2020-08-26 14:30:17.778569-06	0.75000	185	5	12:15:00
4794	2020-08-26 14:26:39-06	2020-08-26 16:52:09-06	getting badge	2020-08-26 16:52:11.562054-06	2.42500	338	17	\N
4798	2020-08-26 15:15:00-06	2020-08-26 16:30:00-06	BP1152-BP1154	2020-08-26 16:54:38.27482-06	1.25000	41	5	16:30:00
4788	2020-08-26 07:10:00-06	2020-08-26 12:59:59-06	Printing out certs.	2020-08-27 07:17:48.878648-06	5.83306	279	3	\N
4800	2020-08-26 13:15:00-06	2020-08-26 15:40:00-06	Repair.	2020-08-27 07:23:50.824399-06	2.41667	332	3	\N
4799	2020-08-26 13:00:00-06	2020-08-26 13:14:59-06	Monthly & weekly PM's Shaker and Environmental chamber..	2020-08-27 07:21:45.833034-06	0.24972	15	3	\N
4802	2020-08-27 09:00:18-06	2020-08-27 10:15:54-06	clear up help messages, see if plots shown match check plot buttons	2020-08-27 10:15:56.295177-06	1.26000	338	17	\N
4803	2020-08-27 10:15:58-06	2020-08-27 11:13:26-06	more JS research	2020-08-27 11:13:28.487773-06	0.95778	230	17	\N
4804	2020-08-27 11:13:34-06	2020-08-27 12:02:24-06	transducer retest	2020-08-27 12:02:25.571495-06	0.81389	338	17	\N
4805	2020-08-27 12:02:27-06	2020-08-27 15:45:06-06	meeting at L3Harris	2020-08-27 15:45:08.268207-06	3.71083	338	17	\N
4806	2020-08-27 15:45:14-06	2020-08-27 16:38:03-06	generate new sn file from bad channels	2020-08-27 16:38:05.988679-06	0.88028	338	17	\N
4807	2020-08-27 13:00:00-06	2020-08-27 15:00:00-06	Test meeting	2020-08-27 17:56:45.004129-06	2.00000	234	5	15:00:00
4808	2020-08-27 15:00:00-06	2020-08-27 16:00:00-06	Testing	2020-08-27 17:57:56.81782-06	1.00000	338	5	16:00:00
4801	2020-08-27 07:05:00-06	2020-08-27 09:00:00-06	Completing Certs.	2020-08-28 07:23:16.23536-06	1.91667	279	3	\N
4811	2020-08-27 09:00:01-06	2020-08-27 15:45:00-06	Repair.	2020-08-28 07:24:10.202138-06	6.74972	332	3	\N
4812	2020-08-28 13:37:38-06	2020-08-28 16:47:52-06	error when generating SN file	2020-08-28 16:47:54.014698-06	3.17056	338	17	\N
4813	2020-08-28 16:47:59-06	2020-08-28 20:16:18-06	transducer input button	2020-08-28 20:16:21.2045-06	3.47194	338	17	\N
4809	2020-08-28 16:00:00-06	2020-08-28 18:00:00-06	BP1159 remap	2020-08-29 13:55:26.347043-06	2.00000	185	5	18:00:00
4814	2020-08-29 11:15:00-06	2020-08-29 13:30:00-06	BP1159 remap	2020-08-29 13:56:53.583552-06	2.25000	185	5	13:30:00
4810	2020-08-28 07:10:00-06	2020-08-28 08:59:59-06	Repair.	2020-08-31 07:17:47.118397-06	1.83306	332	3	\N
4815	2020-08-28 09:00:00-06	2020-08-28 09:29:59-06	Checking scale before moving.	2020-08-31 07:18:12.469491-06	0.49972	298	3	\N
4816	2020-08-28 09:30:00-06	2020-08-28 15:40:00-06	Repair.	2020-08-31 07:18:36.951147-06	6.16667	332	3	\N
4818	2020-08-29 07:30:00-06	2020-08-29 08:15:00-06	Status	2020-08-31 08:23:55.250847-06	0.75000	21	5	08:15:00
4817	2020-08-31 07:10:00-06	2020-08-31 09:15:32-06	repairing Cordy.	2020-08-31 09:15:46.444094-06	2.09222	28	3	\N
4819	2020-08-31 08:56:01-06	2020-08-31 12:23:57-06	transducer lookups	2020-08-31 12:24:00.449305-06	3.46556	338	17	\N
4821	2020-08-31 12:24:07-06	2020-08-31 13:41:42-06	write test for time-wave average and first two peaks	2020-08-31 13:41:44.877815-06	1.29306	338	17	\N
4822	2020-08-31 07:30:00-06	2020-08-31 08:15:00-06	Status	2020-08-31 14:04:37.027522-06	0.75000	21	5	08:15:00
4820	2020-08-31 09:15:33-06	2020-08-31 10:29:59-06	Setting up Laptop for remote programming of stacker.	2020-08-31 16:43:48.435583-06	1.24056	296	3	\N
4824	2020-08-31 14:10:08-06	2020-08-31 16:58:57-06	writing tests for average g_data & first two peaks within ave freq	2020-08-31 16:58:59.651418-06	2.81361	338	17	\N
4823	2020-08-31 11:00:00-06	2020-08-31 18:15:00-06	ATF2 Noise issue	2020-08-31 19:04:09.293571-06	7.25000	185	5	18:15:00
4825	2020-08-31 10:30:00-06	2020-08-31 17:40:00-06	Repair.	2020-09-01 07:22:05.463663-06	7.16667	332	3	\N
4829	2020-09-01 09:00:00-06	2020-09-01 10:15:00-06	ATF2 Noise issue	2020-09-01 11:41:55.098103-06	1.25000	185	5	12:15:00
4828	2020-09-01 09:46:12-06	2020-09-01 14:44:18-06	new tests to identify bad data	2020-09-01 14:44:20.430659-06	4.96833	338	17	\N
4830	2020-09-01 11:30:00-06	2020-09-01 15:45:00-06	ATF2 Noise issue	2020-09-01 15:30:27.37305-06	4.25000	185	5	15:45:00
4832	2020-09-01 15:45:00-06	2020-09-01 16:00:00-06	Transfer to hopper change	2020-09-01 15:57:58.274176-06	0.25000	289	5	16:00:00
4831	2020-09-01 15:14:56-06	2020-09-01 16:40:42-06	checking 1st part of new test	2020-09-01 16:40:43.833872-06	1.42944	338	17	\N
4833	2020-09-01 16:40:58-06	2020-09-01 17:01:21-06	new test for anomalies	2020-09-01 17:01:24.295918-06	0.33972	338	17	\N
4834	2020-09-01 17:01:47-06	2020-09-01 19:15:34-06	check part 1 of new test for anomalies	2020-09-01 19:15:36.097198-06	2.22972	338	17	\N
4826	2020-09-01 07:10:00-06	2020-09-01 09:20:19-06	Calibration Training.	2020-09-02 07:12:47.181435-06	2.17194	28	3	\N
4827	2020-09-01 09:20:20-06	2020-09-01 17:20:00-06	Repair.	2020-09-02 07:13:28.910743-06	7.99444	332	3	\N
4836	2020-09-02 07:30:00-06	2020-09-02 08:00:00-06	Status	2020-09-02 08:25:45.279348-06	0.50000	21	5	08:00:00
4835	2020-09-02 07:00:00-06	2020-09-02 08:58:33-06	Calibration Training.	2020-09-02 08:58:45.77298-06	1.97583	28	3	\N
4838	2020-09-02 10:10:50-06	2020-09-02 10:58:24-06	2nd part of new test	2020-09-02 10:58:26.202617-06	0.79278	338	17	\N
4840	2020-09-02 11:30:00-06	2020-09-02 11:45:00-06	Test support	2020-09-02 11:50:31.462513-06	0.25000	185	5	11:45:00
4839	2020-09-02 10:58:27-06	2020-09-02 12:19:44-06	git-remote-docker research	2020-09-02 12:19:45.903438-06	1.35472	338	17	\N
4841	2020-09-02 12:15:00-06	2020-09-02 12:45:00-06	KQI specification	2020-09-02 12:43:40.198152-06	0.50000	226	5	12:45:00
4842	2020-09-02 12:45:27-06	2020-09-02 13:40:45-06	git-remote-dropbox setup attempt	2020-09-02 13:45:22.849182-06	0.92167	226	17	\N
4843	2020-09-02 13:41:18-06	2020-09-02 15:14:41-06	figure out how charts are generated	2020-09-02 15:14:48.556332-06	1.55639	226	17	\N
4844	2020-09-02 15:15:02-06	2020-09-02 15:15:42-06	rewrite plot generator	2020-09-02 15:16:06.090423-06	0.01111	338	17	\N
4845	2020-09-02 15:15:43-06	2020-09-02 16:04:27-06	rewrite plot generator	2020-09-02 16:04:29.682252-06	0.81222	226	17	\N
4846	2020-09-02 16:04:57-06	2020-09-02 16:19:09-06	plot generator gui	2020-09-02 16:19:11.841197-06	0.23667	226	17	\N
4847	2020-09-02 14:15:00-06	2020-09-02 17:45:00-06	ATF2 Noise issue	2020-09-02 17:32:46.961073-06	3.50000	185	5	17:45:00
4837	2020-09-02 08:58:34-06	2020-09-02 17:20:00-06	Repair.	2020-09-03 07:10:06.182538-06	8.35722	332	3	\N
4848	2020-09-03 07:00:00-06	2020-09-03 08:29:59-06	Calibration Training.	2020-09-03 08:28:38.05127-06	1.49972	28	3	\N
4851	2020-09-03 11:00:00-06	2020-09-03 12:30:00-06	ATF2 Noise issue	2020-09-03 14:08:21.387647-06	1.50000	185	5	12:30:00
4850	2020-09-03 11:47:39-06	2020-09-03 18:48:52-06	generate plot from pickle	2020-09-03 18:48:54.528572-06	7.02028	226	17	\N
4849	2020-09-03 08:30:00-06	2020-09-03 17:40:00-06	Testing standers.	2020-09-04 09:55:40.414915-06	9.16667	332	3	\N
4853	2020-09-04 15:00:00-06	2020-09-04 15:30:00-06	ATF2 Noise issue	2020-09-04 15:34:31.056567-06	0.50000	185	5	15:30:00
4854	2020-09-04 15:45:00-06	2020-09-04 16:15:00-06	KQI specification	2020-09-04 16:13:10.117135-06	0.50000	226	5	16:15:00
4855	2020-09-04 14:30:00-06	2020-09-04 17:00:00-06	Testing Standers.	2020-09-05 11:05:09.405526-06	2.50000	332	3	\N
4852	2020-09-04 09:57:54-06	2020-09-04 18:00:00-06	splitting plots based on text input	2020-09-05 13:54:26.470931-06	8.03500	226	17	\N
4857	2020-09-05 14:03:34-06	2020-09-05 15:40:12-06	fix file locations, histograms,	2020-09-05 15:40:26.466808-06	1.61056	226	17	\N
4858	2020-09-08 08:49:20-06	2020-09-08 12:06:54-06	setup megans logins	2020-09-08 12:06:55.560591-06	3.29278	230	17	\N
4859	2020-09-08 12:06:57-06	2020-09-08 16:44:53-06	error generating viz	2020-09-08 16:44:56.585238-06	4.63222	226	17	\N
4860	2020-09-08 09:00:00-06	2020-09-08 10:00:00-06	NUWC IPT	2020-09-08 17:33:33.177556-06	1.00000	21	5	10:00:00
4861	2020-09-08 12:15:00-06	2020-09-08 16:00:00-06	Consolidation	2020-09-08 17:34:03.79617-06	3.75000	185	5	16:00:00
4864	2020-09-08 05:50:00-06	2020-09-08 14:30:00-06	Programming stacker machine.	2020-09-09 07:29:03.588985-06	8.66667	296	3	\N
4862	2020-09-09 06:01:14-06	2020-09-09 07:52:23-06	new plots for other values	2020-09-09 07:52:25.250608-06	1.85250	226	17	\N
4865	2020-09-09 07:30:00-06	2020-09-09 08:00:00-06	Status	2020-09-09 08:07:19.645399-06	0.50000	21	5	08:00:00
4868	2020-09-09 11:30:00-06	2020-09-09 12:00:00-06	ATF2 Noise issue	2020-09-09 12:08:05.207827-06	0.50000	185	5	12:00:00
4867	2020-09-09 10:18:31-06	2020-09-09 14:50:05-06	new plots	2020-09-09 14:50:08.371622-06	4.52611	226	17	\N
4866	2020-09-09 08:13:38-06	2020-09-09 13:08:20-06	Watch Stock Videos, Get familiar with tda-api code and documentation, and move code to github and modify it where necessary	2020-09-09 13:08:27.36534-06	4.91167	342	20	\N
4869	2020-09-09 12:45:00-06	2020-09-09 13:30:00-06	Review	2020-09-09 13:33:58.135521-06	0.75000	226	5	13:30:00
4872	2020-09-09 14:00:00-06	2020-09-09 15:00:00-06	ATF2 Noise issue	2020-09-09 14:54:57.104585-06	1.00000	185	5	15:00:00
4870	2020-09-09 13:08:27-06	2020-09-09 17:14:32-06	Familiarizing myself with the codebase, and working on minor changes	2020-09-09 17:14:44.347285-06	4.10139	31	20	\N
4871	2020-09-09 14:50:10-06	2020-09-09 17:45:47-06	plot tweaks, fix save location, calendar widget	2020-09-09 18:15:41.230289-06	2.92694	226	17	\N
4874	2020-09-10 06:00:53-06	2020-09-10 07:12:15-06	tweaks to plot styling	2020-09-10 07:12:17.649041-06	1.18944	226	17	\N
4863	2020-09-09 07:15:00-06	2020-09-09 08:44:59-06	Calibration Training.	2020-09-10 07:20:46.546728-06	1.49972	28	3	\N
4876	2020-09-09 10:15:00-06	2020-09-09 15:30:00-06	Running test data.	2020-09-10 07:22:28.723239-06	5.25000	332	3	\N
4873	2020-09-10 05:13:25-06	2020-09-10 12:45:17-06	Working on modifications	2020-09-10 12:45:24.495269-06	7.53111	342	20	\N
4875	2020-09-09 08:45:00-06	2020-09-09 10:14:59-06	Reer 91130. Changing transformers on Doppler PWB.	2020-09-10 07:21:42.655938-06	1.49972	284	3	\N
4879	2020-09-10 12:45:24-06	2020-09-10 13:45:45-06	Going over the codebase	2020-09-10 13:45:49.376394-06	1.00583	31	20	\N
4878	2020-09-10 12:14:28-06	2020-09-10 14:43:47-06	text for good element stats	2020-09-10 14:43:49.324398-06	2.48861	226	17	\N
4881	2020-09-10 10:00:00-06	2020-09-10 14:00:00-06	ATF2 Noise issue	2020-09-10 15:05:33.713357-06	4.00000	185	5	14:00:00
4882	2020-09-08 08:00:00-06	2020-09-08 13:00:00-06	Watching stock videos	2020-09-10 18:15:00.408951-06	5.00000	342	20	\N
4883	2020-09-08 14:00:00-06	2020-09-08 17:00:00-06	Watching stock videos	2020-09-10 18:16:20.100434-06	3.00000	342	20	\N
4880	2020-09-10 14:44:09-06	2020-09-10 18:40:58-06	stock RL research	2020-09-10 18:41:00.111561-06	3.94694	341	17	\N
4877	2020-09-10 07:05:00-06	2020-09-10 15:35:00-06	Repair.	2020-09-11 07:34:53.0558-06	8.50000	332	3	\N
4884	2020-09-11 06:02:52-06	2020-09-11 08:05:19-06	stock RL research	2020-09-11 08:05:21.653583-06	2.04083	341	17	\N
4886	2020-09-11 07:25:00-06	2020-09-11 08:08:27-06	Calibration Training.	2020-09-11 08:08:46.574269-06	0.72417	28	3	\N
4885	2020-09-11 06:45:00-06	2020-09-11 07:30:00-06	Testing	2020-09-11 08:37:07.175812-06	0.75000	226	5	07:30:00
4887	2020-09-11 07:55:20-06	2020-09-11 13:04:40-06	Modifying the stock program	2020-09-11 13:04:54.893823-06	5.15556	342	20	\N
4889	2020-09-11 09:44:37-06	2020-09-11 13:30:21-06	folder for example plots, record bin width in constants.py, plots for stacks & arrays, radio buttons instead of dropdown	2020-09-11 13:30:23.332258-06	3.76222	226	17	\N
4910	2020-09-15 13:39:25-06	2020-09-15 13:49:52-06	getting corresponding file names for transducer test	2020-09-15 13:49:54.047871-06	0.17417	338	17	\N
4892	2020-09-11 15:00:00-06	2020-09-11 15:30:00-06	Testing	2020-09-11 15:38:18.119408-06	0.50000	338	5	15:30:00
4890	2020-09-11 14:00:54-06	2020-09-11 17:01:01-06	Modifying the stock program	2020-09-11 17:01:07.446025-06	3.00194	342	20	\N
4891	2020-09-11 15:24:49-06	2020-09-11 17:11:07-06	switch radio buttons to checkboxes, adjustable bin width, save folder for generated files	2020-09-11 17:11:09.488851-06	1.77167	226	17	\N
4893	2020-09-11 17:11:32-06	2020-09-11 17:16:03-06	adjustable bin width	2020-09-11 17:16:05.059458-06	0.07528	226	17	\N
4888	2020-09-11 08:08:28-06	2020-09-11 14:30:00-06	Testing.	2020-09-12 08:31:57.954959-06	6.35889	332	3	\N
4894	2020-09-14 07:10:00-06	2020-09-14 08:34:03-06	Calibration Training.	2020-09-14 08:34:19.25025-06	1.40083	28	3	\N
4897	2020-09-14 07:30:00-06	2020-09-14 08:00:00-06	Status	2020-09-14 08:53:07.34475-06	0.50000	21	5	08:00:00
4899	2020-09-14 10:45:00-06	2020-09-14 11:15:00-06	Status	2020-09-14 11:22:45.188533-06	0.50000	21	5	11:15:00
4898	2020-09-14 09:10:29-06	2020-09-14 14:04:11-06	saving folder, bin width constants, gen plots for stacks & arrays	2020-09-14 14:04:13.384599-06	4.89500	226	17	\N
4895	2020-09-14 07:51:27-06	2020-09-14 14:15:48-06	Modifying the stock program	2020-09-14 14:15:51.727067-06	6.40583	342	20	\N
4901	2020-09-14 12:15:00-06	2020-09-14 14:30:00-06	Testing	2020-09-14 14:45:17.896561-06	2.25000	185	5	14:30:00
4896	2020-09-14 08:34:04-06	2020-09-14 13:29:59-06	Testing.	2020-09-14 14:50:57.329454-06	4.93194	332	3	\N
4903	2020-09-14 15:00:00-06	2020-09-14 15:30:00-06	Capacitance meeting	2020-09-14 15:30:15.429408-06	0.50000	185	5	15:30:00
4900	2020-09-14 14:04:15-06	2020-09-14 15:35:16-06	redo test transducers, figure out check plot pass/fail error	2020-09-14 15:35:18.795959-06	1.51694	338	17	\N
4904	2020-09-14 15:15:51-06	2020-09-14 17:16:24-06	Modifying the stock program	2020-09-14 17:16:27.589297-06	2.00917	342	20	\N
4912	2020-09-15 12:00:00-06	2020-09-15 12:30:00-06	Fixed files and checked BP1112 & BP1113	2020-09-15 14:14:19.171249-06	0.50000	42	5	12:30:00
4905	2020-09-14 19:08:10-06	2020-09-14 21:11:07-06	Modifying the stock program	2020-09-14 21:11:10.992818-06	2.04917	342	20	\N
4902	2020-09-14 13:30:00-06	2020-09-14 17:40:00-06	Setting up distance sensors.	2020-09-15 07:38:56.365965-06	4.16667	296	3	\N
4907	2020-09-15 08:02:22-06	2020-09-15 12:47:13-06	Modifying the stock program	2020-09-15 12:47:21.104572-06	4.74750	342	20	\N
4908	2020-09-15 12:47:43-06	2020-09-15 13:25:17-06	transducer test error	2020-09-15 13:25:19.282139-06	0.62611	338	17	\N
4909	2020-09-15 13:25:20-06	2020-09-15 13:39:16-06	adding board lookup for surrounding transducers	2020-09-15 13:39:17.783258-06	0.23222	338	17	\N
4913	2020-09-15 14:20:07-06	2020-09-15 14:29:07-06	Switching while I wait for the market to close for the day so we can safely test the stock orders!	2020-09-15 14:30:11.6674-06	0.15000	342	20	\N
4911	2020-09-15 13:49:55-06	2020-09-15 17:10:41-06	rewrite transducer lookup dict	2020-09-15 17:10:43.212969-06	3.34611	338	17	\N
4915	2020-09-15 18:02:06-06	2020-09-15 18:47:08-06	transducer dict 81-112	2020-09-15 18:47:10.286182-06	0.75056	338	17	\N
4914	2020-09-15 14:29:08-06	2020-09-15 18:58:08-06	Getting familiar with the codebase	2020-09-15 18:58:11.940168-06	4.48333	31	20	\N
4916	2020-09-15 18:47:11-06	2020-09-15 19:13:24-06	list comprehensions for channels and board numbers for adjacent transducers	2020-09-15 19:13:26.315488-06	0.43694	338	17	\N
4917	2020-09-15 19:13:34-06	2020-09-15 19:51:36-06	get file names for plots and txt files for surrounding transducers	2020-09-15 19:51:38.343801-06	0.63389	338	17	\N
4906	2020-09-15 07:15:00-06	2020-09-15 17:30:00-06	Ordering parts & building RVS station.	2020-09-16 07:18:38.955703-06	10.25000	332	3	\N
4918	2020-09-16 00:00:00-06	2020-09-16 00:00:10-06	Ordering parts & building RVS station.	2020-09-16 07:24:53.053928-06	0.00278	332	3	\N
4919	2020-09-16 07:10:00-06	2020-09-16 08:08:28-06	Calibration Training.	2020-09-16 08:10:02.953495-06	0.97444	28	3	\N
4921	2020-09-15 07:30:00-06	2020-09-15 08:00:00-06	Status	2020-09-16 08:38:24.779479-06	0.50000	21	5	08:00:00
4920	2020-09-16 08:08:29-06	2020-09-16 10:18:09-06	00173.00.00.009 (Grotto Sensor Assembly NRE DVT2)	2020-09-16 10:18:34.899836-06	2.16111	332	3	\N
4925	2020-09-16 10:00:00-06	2020-09-16 10:30:00-06	Test support	2020-09-16 10:55:11.917697-06	0.50000	185	5	10:30:00
4922	2020-09-16 09:53:21-06	2020-09-16 12:10:22-06	error handling for searching for files during transducer test	2020-09-16 12:10:24.371388-06	2.28361	338	17	\N
4926	2020-09-16 12:10:26-06	2020-09-16 12:33:29-06	check plot pass/fail error	2020-09-16 12:33:31.855886-06	0.38417	338	17	\N
4927	2020-09-16 12:33:33-06	2020-09-16 12:44:23-06	email summary of test transducer	2020-09-16 12:44:25.560414-06	0.18056	338	17	\N
4928	2020-09-16 13:16:00-06	2020-09-16 13:51:00-06	helping megan, answering questions	2020-09-16 13:51:01.802255-06	0.58333	31	17	\N
4923	2020-09-16 10:03:16-06	2020-09-16 14:09:52-06	Modifying the stock program	2020-09-16 14:09:54.645178-06	4.11000	342	20	\N
4929	2020-09-16 13:51:03-06	2020-09-16 14:32:10-06	investigate Create Plots button failure	2020-09-16 14:32:11.986802-06	0.68528	338	17	\N
4931	2020-09-16 14:00:00-06	2020-09-16 14:30:00-06	Discussions	2020-09-16 14:36:49.780925-06	0.50000	344	5	14:30:00
4932	2020-09-16 14:30:00-06	2020-09-16 15:00:00-06	Testing	2020-09-16 15:02:27.174489-06	0.50000	338	5	15:00:00
4930	2020-09-16 14:32:13-06	2020-09-16 15:49:30-06	fix transducer button	2020-09-16 15:49:32.270883-06	1.28806	338	17	\N
4933	2020-09-16 15:00:00-06	2020-09-16 19:21:43-06	Modifying the stock program	2020-09-16 19:21:47.249223-06	4.36194	342	20	\N
4924	2020-09-16 10:18:10-06	2020-09-16 17:30:00-06	Troubleshooting tape casting machine.	2020-09-17 07:13:18.852228-06	7.19722	296	3	\N
4935	2020-09-17 09:56:52-06	2020-09-17 11:12:46-06	change button active order	2020-09-17 11:12:47.552761-06	1.26500	338	17	\N
4937	2020-09-17 11:12:49-06	2020-09-17 13:50:42-06	rewrite sweeps complete deletes old files & replaces	2020-09-17 13:50:59.015525-06	2.63139	338	17	\N
4936	2020-09-17 10:28:02-06	2020-09-17 14:51:34-06	Modifying the stock program	2020-09-17 14:51:36.156322-06	4.39222	343	20	\N
4934	2020-09-17 07:00:00-06	2020-09-17 17:20:00-06	Ordering new Mitutoyo interface fro tape cast machine..	2020-09-18 10:51:07.214125-06	10.33333	296	3	\N
4939	2020-09-17 15:15:12-06	2020-09-17 15:38:21-06	Modifying the stock program	2020-09-17 15:38:23.671305-06	0.38583	342	20	\N
4938	2020-09-17 13:51:14-06	2020-09-17 16:12:46-06	rewriting sweeps complete to delete old channel files and replace with new ones	2020-09-17 16:12:48.393465-06	2.35889	338	17	\N
4941	2020-09-17 16:12:50-06	2020-09-17 17:07:05-06	error detecting replaced files	2020-09-17 17:07:08.354317-06	0.90417	338	17	\N
4940	2020-09-17 15:57:48-06	2020-09-17 19:58:08-06	Modifying the stock program	2020-09-17 19:58:14.099552-06	4.00556	342	20	\N
4942	2020-09-18 07:40:23-06	2020-09-18 09:45:31-06	Reading the codebase while I wait to see if there's anything wrong with the stock program.	2020-09-18 09:46:45.000189-06	2.08556	342	20	\N
4943	2020-09-18 09:10:18-06	2020-09-18 12:41:52-06	debugging error replacing files for sweeps complete function	2020-09-18 12:41:54.268153-06	3.52611	338	17	\N
4944	2020-09-18 09:45:32-06	2020-09-18 12:47:55-06	Familiarizing myself with the codebase	2020-09-18 12:47:57.479747-06	3.03972	31	20	\N
4945	2020-09-18 13:45:23-06	2020-09-18 16:50:24-06	Getting familiar with the codebase	2020-09-18 16:50:27.534409-06	3.08361	31	20	\N
4946	2020-09-18 08:30:00-06	2020-09-18 10:00:00-06	Mapping fixes	2020-09-19 11:57:56.277289-06	1.50000	185	5	10:00:00
4948	2020-09-21 07:30:00-06	2020-09-21 08:00:00-06	Status	2020-09-21 07:52:44.083115-06	0.50000	21	5	08:00:00
4947	2020-09-21 07:44:08-06	2020-09-21 09:01:29-06	sweeps complete and create plots buttons	2020-09-21 09:01:31.320167-06	1.28917	338	17	\N
4950	2020-09-21 09:01:33-06	2020-09-21 11:26:17-06	fix silent breaking changes in generate sn row button	2020-09-21 11:26:20.420483-06	2.41222	338	17	\N
4952	2020-09-21 10:45:00-06	2020-09-21 11:15:00-06	Progeny IPT	2020-09-21 11:49:18.324114-06	0.50000	21	5	11:15:00
4953	2020-09-21 11:30:00-06	2020-09-21 11:45:00-06	Discussions	2020-09-21 11:49:43.64972-06	0.25000	344	5	11:45:00
4951	2020-09-21 11:26:28-06	2020-09-21 12:02:57-06	figuring out why single transducer tests work but not multiple	2020-09-21 12:02:59.221194-06	0.60806	338	17	\N
4949	2020-09-21 08:30:00-06	2020-09-21 13:02:26-06	Modifying the stock program	2020-09-21 13:02:29.440322-06	4.54056	342	20	\N
4954	2020-09-21 12:03:04-06	2020-09-21 16:12:04-06	commenting code, trimming excess code so faster to make changes in the future	2020-09-21 16:12:05.82477-06	4.15000	338	17	\N
4955	2020-09-21 14:00:53-06	2020-09-21 18:01:04-06	Modifying the stock program	2020-09-21 18:01:06.428123-06	4.00306	342	20	\N
4956	2020-09-21 10:00:00-06	2020-09-21 15:59:59-06	Testing & assembling test fixture.	2020-09-22 07:56:21.465869-06	5.99972	332	3	\N
4957	2020-09-21 16:00:00-06	2020-09-21 18:00:00-06	Calibration Training.	2020-09-22 08:05:33.259969-06	2.00000	28	3	\N
4958	2020-09-22 07:00:00-06	2020-09-22 08:34:27-06	Ordering parts for the tape cast machine.	2020-09-22 08:35:03.871091-06	1.57417	296	3	\N
4962	2020-09-22 10:45:00-06	2020-09-22 11:45:00-06	Testing	2020-09-22 11:37:31.98885-06	1.00000	338	5	11:45:00
4961	2020-09-22 09:35:15-06	2020-09-22 11:39:32-06	more comments and docstrings	2020-09-22 11:39:35.536136-06	2.07139	338	17	\N
4959	2020-09-22 08:00:00-06	2020-09-22 12:00:21-06	Modifying the stock program	2020-09-22 12:00:23.368306-06	4.00583	342	20	\N
4963	2020-09-22 11:40:04-06	2020-09-22 12:27:16-06	trying to reproduce joe's errors	2020-09-22 12:27:40.482953-06	0.78667	338	17	\N
4964	2020-09-22 13:00:00-06	2020-09-22 17:00:29-06	Modifying the stock program	2020-09-22 17:00:31.634072-06	4.00806	342	20	\N
4965	2020-09-22 12:15:00-06	2020-09-22 14:00:00-06	Mapping	2020-09-22 17:30:27.675707-06	1.75000	185	5	14:00:00
4960	2020-09-22 08:34:28-06	2020-09-22 15:30:00-06	Ordering parts & building RVS station.	2020-09-23 07:28:08.525567-06	6.92556	332	3	\N
4967	2020-09-23 08:40:28-06	2020-09-23 09:40:31-06	cast snn as string	2020-09-23 09:40:33.476136-06	1.00083	31	17	\N
4969	2020-09-23 09:40:35-06	2020-09-23 11:25:58-06	looking into new field for healthcare	2020-09-23 11:26:58.915772-06	1.75639	31	17	\N
4970	2020-09-23 11:25:59-06	2020-09-23 12:51:27-06	check plot buttons not active	2020-09-23 12:51:29.040491-06	1.42444	338	17	\N
4971	2020-09-23 12:51:30-06	2020-09-23 13:03:14-06	watching the options trading vids	2020-09-23 13:03:16.450158-06	0.19556	341	17	\N
4968	2020-09-23 09:00:00-06	2020-09-23 13:36:11-06	Modifying the stock program	2020-09-23 13:36:12.778033-06	4.60306	342	20	\N
4972	2020-09-23 13:03:18-06	2020-09-23 13:58:26-06	helping joe debug on windows	2020-09-23 13:58:56.701701-06	0.91889	338	17	\N
4973	2020-09-23 13:58:31-06	2020-09-23 15:12:39-06	watching options trading vids	2020-09-23 15:13:02.117153-06	1.23556	341	17	\N
4975	2020-09-23 15:13:18-06	2020-09-23 16:44:31-06	change location of file_locations	2020-09-23 16:44:32.791875-06	1.52028	338	17	\N
4976	2020-09-23 07:30:00-06	2020-09-23 08:00:00-06	Status	2020-09-23 17:29:17.630276-06	0.50000	21	5	08:00:00
4977	2020-09-23 10:30:00-06	2020-09-23 12:00:00-06	ATF2 Noise issue	2020-09-23 17:29:49.530309-06	1.50000	344	5	12:00:00
4978	2020-09-23 14:00:00-06	2020-09-23 16:00:00-06	Testing	2020-09-23 17:30:18.27864-06	2.00000	8	5	16:00:00
4974	2020-09-23 14:20:14-06	2020-09-23 17:57:26-06	Modifying the stock program	2020-09-23 17:57:27.957712-06	3.62000	342	20	\N
4966	2020-09-23 07:15:00-06	2020-09-23 13:29:59-06	Ordering parts & building RVS station.	2020-09-24 07:16:29.623486-06	6.24972	332	3	\N
4979	2020-09-23 13:30:00-06	2020-09-23 15:15:00-06	Calibrating Boeing fuel sensor test fixture.	2020-09-24 07:16:53.392109-06	1.75000	298	3	\N
4981	2020-09-24 07:58:48-06	2020-09-24 11:16:22-06	testing with new file location	2020-09-24 11:16:24.414855-06	3.29278	338	17	\N
4983	2020-09-24 11:19:08-06	2020-09-24 12:16:07-06	getting oriented with the code	2020-09-24 12:16:09.860075-06	0.94972	342	17	\N
4982	2020-09-24 10:25:32-06	2020-09-24 14:32:52-06	starting skeleton	2020-09-24 14:32:53.850052-06	4.12222	343	20	\N
4984	2020-09-24 14:03:36-06	2020-09-24 16:38:10-06	look for all tickers	2020-09-24 16:38:12.610799-06	2.57611	342	17	\N
4985	2020-09-24 15:31:56-06	2020-09-24 19:40:13-06	starting skeleton	2020-09-24 19:40:16.42653-06	4.13806	343	20	\N
4986	2020-09-24 11:30:00-06	2020-09-24 13:00:00-06	FAT analysis BP1155, BP1156	2020-09-24 20:32:21.653526-06	1.50000	41	5	13:00:00
4987	2020-09-24 13:00:00-06	2020-09-24 14:00:00-06	Test meeting	2020-09-24 20:33:11.42281-06	1.00000	234	5	14:00:00
4980	2020-09-24 07:05:00-06	2020-09-24 11:59:59-06	Calibrating Boeing fuel sensor test fixture. Updating procedure.	2020-09-25 07:18:37.106286-06	4.91639	298	3	\N
4988	2020-09-24 12:00:00-06	2020-09-24 15:30:00-06	Building RVS test fixture.	2020-09-25 07:18:58.897155-06	3.50000	332	3	\N
4991	2020-09-25 09:12:36-06	2020-09-25 10:11:41-06	get_status function	2020-09-25 10:11:48.98258-06	0.98472	342	17	\N
4989	2020-09-25 08:00:30-06	2020-09-25 12:04:44-06	Modifying the stock program	2020-09-25 12:04:46.135102-06	4.07056	342	20	\N
4992	2020-09-25 10:12:05-06	2020-09-25 12:05:30-06	refactoring get_status file	2020-09-25 12:05:31.835363-06	1.89028	342	17	\N
4990	2020-09-25 08:45:00-06	2020-09-25 12:30:00-06	Testing	2020-09-25 16:12:36.787866-06	3.75000	338	5	10:00:00
4994	2020-09-25 13:18:54-06	2020-09-25 16:21:10-06	refactoring get_status_test.py	2020-09-25 16:21:13.396699-06	3.03778	342	17	\N
4995	2020-09-25 16:21:15-06	2020-09-25 17:50:55-06	array_sweep fixes	2020-09-25 17:50:56.944174-06	1.49444	338	17	\N
4993	2020-09-25 13:02:07-06	2020-09-25 17:54:25-06	Modifying the stock program	2020-09-25 17:54:26.875475-06	4.87167	342	20	\N
4996	2020-09-26 08:37:48-06	2020-09-26 09:17:38-06	watching options vids	2020-09-26 09:17:41.119573-06	0.66389	342	17	\N
4997	2020-09-26 10:00:22-06	2020-09-26 11:44:34-06	multiple fixes	2020-09-26 11:44:37.346028-06	1.73667	338	17	\N
4998	2020-09-26 09:30:00-06	2020-09-26 13:30:00-06	Mapping, Age Elements	2020-09-26 15:58:29.378086-06	4.00000	185	5	13:30:00
4999	2020-09-25 07:00:00-06	2020-09-25 08:29:59-06	Calibrating Boeing fuel sensor test fixture.	2020-09-28 07:19:37.328498-06	1.49972	298	3	\N
5001	2020-09-25 10:30:00-06	2020-09-25 15:30:00-06	Testing & assembling test fixture.	2020-09-28 07:21:44.198146-06	5.00000	332	3	\N
5136	2020-10-26 10:45:00-06	2020-10-26 11:30:00-06	Progeny IPT	2020-10-26 11:21:33.153197-06	0.75000	21	5	11:30:00
5000	2020-09-25 08:30:00-06	2020-09-25 10:29:59-06	Tracking down noise in test lab.	2020-09-28 07:21:14.444879-06	1.99972	344	3	\N
5034	2020-10-01 14:04:23-06	2020-10-01 16:52:03-06	fix errors for flask app	2020-10-01 16:52:06.081969-06	2.79444	342	17	\N
5003	2020-09-28 08:30:00-06	2020-09-28 08:57:31-06	Clocked into the wrong thing	2020-09-28 08:57:52.957378-06	0.45861	342	20	\N
5005	2020-09-28 07:30:00-06	2020-09-28 07:45:00-06	Status	2020-09-28 10:08:01.477189-06	0.25000	21	5	07:45:00
5006	2020-09-28 12:08:53-06	2020-09-28 13:17:46-06	check for missing/excess files when create plots is clicked	2020-09-28 13:17:48.001649-06	1.14806	338	17	\N
5004	2020-09-28 08:57:32-06	2020-09-28 14:40:03-06	starting skeleton	2020-09-28 14:40:04.669558-06	5.70861	343	20	\N
5008	2020-09-28 14:45:00-06	2020-09-28 15:15:00-06	Boeing calibration document	2020-09-28 15:08:01.813324-06	0.50000	298	5	15:15:00
5007	2020-09-28 13:17:49-06	2020-09-28 17:23:58-06	refactoring, watching options vids	2020-09-28 17:24:00.481174-06	4.10250	342	17	\N
5009	2020-09-28 15:35:56-06	2020-09-28 17:35:59-06	starting skeleton	2020-09-28 17:36:01.366554-06	2.00083	343	20	\N
5002	2020-09-28 07:00:00-06	2020-09-28 17:30:00-06	ordering parts for RVS test fixture	2020-09-29 07:25:11.460256-06	10.50000	332	3	\N
5012	2020-09-29 09:00:00-06	2020-09-29 10:00:00-06	ATF2 Noise issue	2020-09-29 10:04:22.868501-06	1.00000	21	5	10:00:00
5013	2020-09-29 11:46:36-06	2020-09-29 14:31:17-06	fitting the pieces together (get_status & top_trader)	2020-09-29 14:31:19.067327-06	2.74472	342	17	\N
5011	2020-09-29 08:30:00-06	2020-09-29 14:31:39-06	starting skeleton	2020-09-29 14:31:40.737528-06	6.02750	343	20	\N
5014	2020-09-29 15:31:58-06	2020-09-29 18:00:07-06	starting skeleton	2020-09-29 18:00:08.891379-06	2.46917	343	20	\N
5015	2020-09-29 10:30:00-06	2020-09-29 14:00:00-06	Testing	2020-09-29 19:40:14.217639-06	3.50000	185	5	14:00:00
5016	2020-09-29 19:46:12-06	2020-09-29 21:03:02-06	linking get_status_test w/ top_trader	2020-09-29 21:03:04.942992-06	1.28056	342	17	\N
5017	2020-09-30 06:30:56-06	2020-09-30 07:01:50-06	refactoring	2020-09-30 07:01:52.134856-06	0.51500	342	17	\N
5010	2020-09-29 07:15:00-06	2020-09-29 08:29:59-06	Ordering parts & building RVS station.	2020-09-30 07:27:44.387909-06	1.24972	332	3	\N
5018	2020-09-29 08:30:00-06	2020-09-29 15:29:59-06	quarterly & monthly PM's.	2020-09-30 07:29:21.442573-06	6.99972	15	3	\N
5019	2020-09-29 15:30:00-06	2020-09-29 17:30:00-06	Trouble shooting noise in large tank.	2020-09-30 07:29:52.181216-06	2.00000	344	3	\N
5020	2020-09-30 07:10:00-06	2020-09-30 09:24:05-06	Calibration Training.	2020-09-30 09:24:33.163185-06	2.23472	345	3	\N
5021	2020-09-30 08:09:24-06	2020-09-30 11:12:00-06	getting get_status working w/ everything else w/ megan	2020-09-30 11:12:01.62759-06	3.04333	342	17	\N
5024	2020-09-30 11:24:56-06	2020-09-30 12:26:31-06	making flask app for running get_status	2020-09-30 12:27:26.998355-06	1.02639	342	17	\N
5022	2020-09-30 08:00:00-06	2020-09-30 13:04:03-06	Modifying the stock program	2020-09-30 13:04:05.149743-06	5.06750	342	20	\N
5025	2020-09-30 14:01:00-06	2020-09-30 17:01:06-06	starting skeleton	2020-09-30 17:01:07.817135-06	3.00167	343	20	\N
5027	2020-09-30 07:30:00-06	2020-09-30 07:45:00-06	Status	2020-09-30 17:04:31.89881-06	0.25000	21	5	07:45:00
5028	2020-09-30 09:30:00-06	2020-09-30 15:30:00-06	Consolidation, Remaps	2020-09-30 17:05:34.101731-06	6.00000	185	5	15:30:00
5029	2020-09-30 17:45:00-06	2020-09-30 18:30:00-06	Control cable open investigation	2020-09-30 18:29:02.678069-06	0.75000	15	5	18:30:00
5026	2020-09-30 15:04:48-06	2020-09-30 18:41:18-06	get_status flask app	2020-09-30 18:41:20.31552-06	3.60833	342	17	\N
5023	2020-09-30 09:24:06-06	2020-09-30 17:30:00-06	Ordering parts & building RVS station.	2020-10-01 07:15:31.553181-06	8.09833	332	3	\N
5032	2020-10-01 08:52:54-06	2020-10-01 12:28:17-06	pretty print statuses for get_status, fixing errors running get_client	2020-10-01 12:28:45.285044-06	3.58972	342	17	\N
5033	2020-10-01 12:28:47-06	2020-10-01 14:04:07-06	send status data to megan's database	2020-10-01 14:04:09.601546-06	1.58889	342	17	\N
5031	2020-10-01 08:30:00-06	2020-10-01 14:37:08-06	starting skeleton	2020-10-01 14:37:11.391253-06	6.11889	343	20	\N
5035	2020-10-01 09:30:00-06	2020-10-01 14:15:00-06	Training	2020-10-02 07:31:15.329827-06	4.75000	185	5	14:15:00
5036	2020-10-02 07:45:00-06	2020-10-02 09:15:18-06	Switching to work on top_trader	2020-10-02 09:15:43.826684-06	1.50500	343	20	\N
5037	2020-10-02 09:15:19-06	2020-10-02 16:55:00-06	Modifying the stock program	2020-10-02 16:56:21.706776-06	7.66139	342	20	\N
5038	2020-10-02 09:45:40-06	2020-10-02 18:27:31-06	updating get_status & top_trader	2020-10-02 18:27:33.488775-06	8.69750	342	17	\N
5040	2020-10-02 16:56:21-06	2020-10-02 18:27:38-06	Modifying the stock program	2020-10-02 18:27:39.919598-06	1.52139	342	20	\N
5030	2020-10-01 07:05:00-06	2020-10-01 17:30:00-06	Designing test fixture.	2020-10-02 22:13:30.219711-06	10.41667	332	3	\N
5041	2020-10-02 11:00:00-06	2020-10-02 16:30:00-06	Testing PCMH Standers in the shield room.  00173.00.00.EQP	2020-10-02 22:24:33.104348-06	5.50000	332	3	\N
5042	2020-10-03 08:00:00-06	2020-10-03 12:45:00-06	Run chart data compilation	2020-10-03 13:02:04.424885-06	4.75000	226	5	12:45:00
5043	2020-10-03 17:22:06-06	2020-10-03 20:06:00-06	top_trader & get_status	2020-10-03 20:06:02.39139-06	2.73167	342	17	\N
5044	2020-10-04 12:00:00-06	2020-10-04 15:00:00-06	Testing PCMH Standers in the shield room. 00173.00.00.EQP	2020-10-04 21:55:11.23195-06	3.00000	332	3	\N
5045	2020-10-03 11:00:00-06	2020-10-03 15:30:00-06	Testing PCMH Standers in the shield room. 00173.00.00.EQP	2020-10-04 21:56:32.982489-06	4.50000	332	3	\N
5048	2020-10-05 08:32:51-06	2020-10-05 09:39:37-06	check to see if joe's changes work for me	2020-10-05 09:39:39.385528-06	1.11278	342	17	\N
5050	2020-10-05 07:30:00-06	2020-10-05 08:00:00-06	Status	2020-10-05 10:18:26.573439-06	0.50000	21	5	08:00:00
5051	2020-10-05 10:45:00-06	2020-10-05 11:30:00-06	Progeny IPT	2020-10-05 11:22:53.404141-06	0.75000	21	5	11:30:00
5049	2020-10-05 09:39:41-06	2020-10-05 13:15:04-06	testing different scenarios w/ pickle files	2020-10-05 13:15:06.698571-06	3.58972	342	17	\N
5052	2020-10-05 13:15:17-06	2020-10-05 15:32:05-06	writing test code for get_status	2020-10-05 15:32:07.745106-06	2.28000	342	17	\N
5047	2020-10-05 08:00:00-06	2020-10-05 16:06:39-06	Modifying the stock program	2020-10-05 16:06:41.267744-06	8.11083	342	20	\N
5053	2020-10-05 14:15:00-06	2020-10-05 15:00:00-06	Sweep dock firmware	2020-10-05 16:53:27.716755-06	0.75000	228	5	15:00:00
5054	2020-10-05 15:00:00-06	2020-10-05 15:15:00-06	Capacitance meeting	2020-10-05 16:54:02.040744-06	0.25000	21	5	15:15:00
5046	2020-10-05 07:10:00-06	2020-10-05 15:30:00-06	Testing.	2020-10-06 07:09:01.908071-06	8.33333	332	3	\N
5057	2020-10-06 11:00:39-06	2020-10-06 15:14:59-06	Modifying the stock program	2020-10-06 15:15:02.016271-06	4.23889	342	20	\N
5055	2020-10-06 06:50:00-06	2020-10-06 15:30:00-06	00170.00.00.001.EQP      VAS Equipment Repair	2020-10-07 07:18:53.832938-06	8.66667	332	3	\N
5056	2020-10-06 09:00:00-06	2020-10-06 09:45:00-06	NUWC IPT	2020-10-06 10:51:00.80038-06	0.75000	21	5	09:45:00
5058	2020-10-06 11:00:00-06	2020-10-06 11:45:00-06	Meeting	2020-10-06 11:40:12.787273-06	0.75000	344	5	11:45:00
5061	2020-10-07 11:00:00-06	2020-10-07 14:00:00-06	Carrier Consolidation	2020-10-07 14:04:18.744035-06	3.00000	181	5	14:00:00
5062	2020-10-07 07:30:00-06	2020-10-07 08:00:00-06	Status	2020-10-07 14:45:14.660637-06	0.50000	21	5	08:00:00
5060	2020-10-07 08:00:00-06	2020-10-07 16:05:18-06	Modifying the stock program	2020-10-07 16:05:20.460393-06	8.08833	342	20	\N
5063	2020-10-07 17:00:01-06	2020-10-07 17:00:15-06	clocked into the wrong project	2020-10-07 17:00:33.607122-06	0.00389	343	20	\N
5064	2020-10-07 17:00:16-06	2020-10-07 19:00:20-06	Modifying the stock program	2020-10-07 19:00:21.938624-06	2.00111	342	20	\N
5059	2020-10-07 07:10:00-06	2020-10-07 08:59:59-06	Testing.	2020-10-08 07:21:10.33936-06	1.83306	332	3	\N
5066	2020-10-07 10:30:00-06	2020-10-07 15:30:00-06	Troubleshooting problems on the RVS stations.	2020-10-08 07:27:27.522175-06	5.00000	292	3	\N
5065	2020-10-07 09:00:00-06	2020-10-07 10:30:00-06	Replace weather seal on temp chamber, Shacker PM's.	2020-10-08 07:24:59.018748-06	1.50000	15	3	\N
5100	2020-10-15 07:00:00-06	2020-10-15 12:59:59-06	Ordering parts & building RVS station.	2020-10-19 07:45:13.288988-06	5.99972	332	3	\N
5067	2020-10-08 07:10:00-06	2020-10-08 09:26:44-06	Troubleshooting problems on the RVS stations.	2020-10-08 09:29:07.819048-06	2.27889	292	3	\N
5069	2020-10-08 12:09:13-06	2020-10-08 20:44:52-06	Modifying the stock program	2020-10-08 20:44:53.939518-06	8.59417	342	20	\N
5068	2020-10-08 09:26:45-06	2020-10-08 15:30:00-06	Calibrating model 453 preamps used on air cal chamber.	2020-10-09 07:14:02.833146-06	6.05417	298	3	\N
5071	2020-10-09 07:30:00-06	2020-10-09 16:30:15-06	Modifying the stock program	2020-10-09 16:30:17.126853-06	9.00417	342	20	\N
5072	2020-10-09 14:30:00-06	2020-10-09 17:30:00-06	Carrier Consolidation	2020-10-09 17:38:51.711464-06	3.00000	181	5	17:30:00
5070	2020-10-09 07:10:00-06	2020-10-09 11:29:59-06	Replaceing connector on pressure tank.	2020-10-10 19:29:40.83484-06	4.33306	15	3	\N
5073	2020-10-09 11:30:00-06	2020-10-09 15:30:00-06	working on test fixture.	2020-10-10 19:30:04.536378-06	4.00000	332	3	\N
5075	2020-10-12 07:30:00-06	2020-10-12 07:45:00-06	Status	2020-10-12 15:14:56.75685-06	0.25000	21	5	07:45:00
5076	2020-10-12 15:00:00-06	2020-10-12 15:15:00-06	Capacitance meeting	2020-10-12 15:15:20.486034-06	0.25000	21	5	15:15:00
5074	2020-10-12 08:00:00-06	2020-10-12 16:01:51-06	Modifying the stock program	2020-10-12 16:01:54.040166-06	8.03083	342	20	\N
5077	2020-10-12 08:00:00-06	2020-10-12 11:29:59-06	Calibration Training.	2020-10-13 07:15:15.833204-06	3.49972	345	3	\N
5078	2020-10-12 11:30:00-06	2020-10-12 18:00:00-06	Ordering parts. designing fixtures.	2020-10-13 07:15:41.796561-06	6.50000	332	3	\N
5080	2020-10-13 09:45:00-06	2020-10-13 10:00:00-06	Phase check	2020-10-13 11:22:48.8966-06	0.25000	87	5	10:00:00
5079	2020-10-13 07:15:41-06	2020-10-13 12:52:27-06	Fixture design.	2020-10-13 12:53:33.276768-06	5.61278	332	3	\N
5081	2020-10-13 11:00:00-06	2020-10-13 19:15:36-06	Modifying the stock program	2020-10-13 19:15:39.672552-06	8.26000	342	20	\N
5082	2020-10-13 12:52:28-06	2020-10-13 17:30:00-06	Installing RS232 controller into tape cast machine.	2020-10-14 07:21:17.536447-06	4.62556	296	3	\N
5085	2020-10-14 09:45:00-06	2020-10-14 12:45:00-06	Carrier Consolidation	2020-10-14 13:05:36.639611-06	3.00000	185	5	12:45:00
5086	2020-10-14 14:15:00-06	2020-10-14 15:45:00-06	Carrier Consolidation	2020-10-14 15:42:03.256673-06	1.50000	185	5	15:45:00
5084	2020-10-14 08:00:00-06	2020-10-14 16:02:44-06	Modifying the stock program	2020-10-14 16:02:46.070318-06	8.04556	342	20	\N
5083	2020-10-14 07:10:00-06	2020-10-14 11:30:00-06	Working on test fixture.	2020-10-15 07:28:34.567957-06	4.33333	332	3	\N
5087	2020-10-14 12:30:00-06	2020-10-14 17:30:00-06	Rebuilding test cap for the AIR Cal chamber.	2020-10-15 07:30:13.837444-06	5.00000	332	3	\N
5089	2020-10-15 07:30:00-06	2020-10-15 08:00:00-06	Test support	2020-10-15 08:19:35.221211-06	0.50000	185	5	08:00:00
5091	2020-10-15 10:45:00-06	2020-10-15 11:00:00-06	PMR slide review	2020-10-15 11:05:26.915922-06	0.25000	185	5	11:00:00
5092	2020-10-15 11:00:00-06	2020-10-15 13:45:00-06	Carrier Consolidation	2020-10-15 14:03:25.105923-06	2.75000	185	5	13:45:00
5090	2020-10-15 08:00:00-06	2020-10-15 16:01:15-06	Modifying the stock program	2020-10-15 16:01:17.179646-06	8.02083	342	20	\N
5094	2020-10-16 11:00:00-06	2020-10-16 11:15:00-06	Sync files	2020-10-16 11:13:07.513319-06	0.25000	185	5	11:15:00
5093	2020-10-16 07:30:00-06	2020-10-16 16:02:56-06	Modifying the stock program	2020-10-16 16:02:58.18525-06	8.54889	342	20	\N
5095	2020-10-16 18:30:00-06	2020-10-16 19:00:24-06	Working on modifications	2020-10-16 19:00:25.781314-06	0.50667	343	20	\N
5096	2020-10-17 10:45:00-06	2020-10-17 11:45:00-06	Sync files	2020-10-17 15:53:24.819941-06	1.00000	185	5	11:45:00
5097	2020-10-17 11:45:00-06	2020-10-17 12:45:00-06	BP1157, BP1158	2020-10-17 15:53:48.869898-06	1.00000	41	5	12:45:00
5098	2020-10-17 12:45:00-06	2020-10-17 15:30:00-06	Ageing Study	2020-10-17 16:16:48.214996-06	2.75000	185	5	15:15:00
5088	2020-10-15 13:00:00-06	2020-10-15 17:30:00-06	Running test run on the tape cast machine..	2020-10-19 07:43:25.766434-06	4.50000	332	3	\N
5101	2020-10-19 07:59:29-06	2020-10-19 09:20:34-06	getting oriented	2020-10-19 09:20:36.153871-06	1.35139	342	17	\N
5103	2020-10-19 07:30:00-06	2020-10-19 07:45:00-06	Status	2020-10-19 09:22:42.624715-06	0.25000	21	5	07:45:00
5104	2020-10-19 10:00:00-06	2020-10-19 10:45:00-06	Sync files	2020-10-19 10:44:00.998625-06	0.75000	185	5	10:45:00
5105	2020-10-19 10:45:00-06	2020-10-19 11:30:00-06	Progeny IPT	2020-10-19 11:30:06.233431-06	0.75000	21	5	11:30:00
5102	2020-10-19 09:20:38-06	2020-10-19 15:09:01-06	fixing get_status.py	2020-10-19 15:09:03.831261-06	5.80639	342	17	\N
5106	2020-10-19 13:00:00-06	2020-10-19 14:45:00-06	Ageing Study	2020-10-19 16:44:42.809036-06	1.75000	185	5	13:15:00
5107	2020-10-19 15:00:00-06	2020-10-19 15:30:00-06	Capacitance meeting	2020-10-19 16:45:16.783603-06	0.50000	185	5	15:30:00
5108	2020-10-19 16:45:00-06	2020-10-19 19:15:00-06	Downloaded Libraries	2020-10-19 19:06:37.774948-06	2.50000	226	5	19:15:00
5099	2020-10-19 07:15:00-06	2020-10-19 16:30:00-06	Working on test fixture.	2020-10-20 07:18:50.831539-06	9.25000	332	3	\N
5110	2020-10-20 08:30:00-06	2020-10-20 09:45:00-06	NUWC IPT	2020-10-20 10:24:41.237737-06	1.25000	21	5	09:45:00
5111	2020-10-20 10:25:00-06	2020-10-20 11:00:00-06	Sync files	2020-10-20 11:16:56.491348-06	0.58333	185	5	11:00:00
5112	2020-10-20 11:00:00-06	2020-10-20 12:00:00-06	Ageing Study	2020-10-20 12:17:53.905689-06	1.00000	185	5	12:00:00
5114	2020-10-20 17:30:00-06	2020-10-20 18:30:00-06	Mapping	2020-10-20 19:03:01.182263-06	1.00000	185	5	18:30:00
5113	2020-10-20 13:12:52-06	2020-10-20 19:56:04-06	debugging get_status.py	2020-10-20 19:56:06.000007-06	6.72000	342	17	\N
5109	2020-10-20 07:00:00-06	2020-10-20 15:30:00-06	Building test fixtures.	2020-10-21 07:33:56.165448-06	8.50000	332	3	\N
5117	2020-10-21 07:30:00-06	2020-10-21 08:00:00-06	Status	2020-10-21 11:00:46.954585-06	0.50000	21	5	08:00:00
5116	2020-10-21 08:59:55-06	2020-10-21 12:46:37-06	debugging get_status.py	2020-10-21 12:46:39.669624-06	3.77833	342	17	\N
5118	2020-10-21 11:00:00-06	2020-10-21 15:45:00-06	PCB design	2020-10-21 15:38:17.394404-06	4.75000	332	5	15:45:00
5119	2020-10-21 14:10:22-06	2020-10-21 18:17:58-06	more get_status.py	2020-10-21 18:18:00.2306-06	4.12667	342	17	\N
5115	2020-10-21 07:20:00-06	2020-10-21 15:30:00-06	Building & repair test fixtures.	2020-10-22 07:23:10.331679-06	8.16667	332	3	\N
5123	2020-10-22 13:00:00-06	2020-10-22 14:00:00-06	Test meeting	2020-10-22 16:15:31.98733-06	1.00000	234	5	14:00:00
5120	2020-10-21 19:45:00-06	2020-10-21 21:00:00-06	Library parts	2020-10-22 16:16:17.488867-06	1.25000	347	5	21:00:00
5122	2020-10-22 10:38:29-06	2020-10-22 14:30:39-06	debugging errors in get_status.py	2020-10-22 18:18:37.004419-06	3.86944	342	17	\N
5121	2020-10-22 07:10:00-06	2020-10-22 15:40:00-06	Designing relay board for test fixture.	2020-10-23 07:43:45.474017-06	8.50000	332	3	\N
5125	2020-10-23 12:45:00-06	2020-10-23 18:00:00-06	Sweep Standard	2020-10-23 18:03:42.692951-06	5.25000	185	5	18:00:00
5126	2020-10-24 11:30:00-06	2020-10-24 12:15:00-06	Sweep Standard	2020-10-24 14:18:05.637905-06	0.75000	185	5	12:15:00
5127	2020-10-24 14:15:00-06	2020-10-24 15:45:00-06	Sweep Standard	2020-10-24 15:48:58.852195-06	1.50000	185	5	15:45:00
5128	2020-10-24 16:00:00-06	2020-10-24 18:30:00-06	FAT, ESS analysis BP1157,BP1158, BP1161, BP1162	2020-10-24 19:15:30.485568-06	2.50000	185	5	18:30:00
5124	2020-10-23 07:30:00-06	2020-10-23 14:00:00-06	Building test fixtures.	2020-10-26 07:22:46.946285-06	6.50000	332	3	\N
5130	2020-10-26 08:00:00-06	2020-10-26 08:55:19-06	Modifying the stock program	2020-10-26 08:55:54.485427-06	0.92194	342	20	\N
5132	2020-10-26 09:29:30-06	2020-10-26 10:44:33-06	investigate exp date not found in get_status	2020-10-26 10:44:35.360265-06	1.25083	342	17	\N
5133	2020-10-26 10:44:36-06	2020-10-26 11:02:53-06	helping megan w/ task 2	2020-10-26 11:02:54.570507-06	0.30472	31	17	\N
5131	2020-10-26 08:55:20-06	2020-10-26 16:02:39-06	Working on task 2	2020-10-26 16:02:41.968972-06	7.12194	31	20	\N
5129	2020-10-26 07:15:00-06	2020-10-26 17:30:00-06	Test fixtures.	2020-10-27 12:26:46.567356-06	10.25000	332	3	\N
5134	2020-10-26 11:02:56-06	2020-10-26 12:03:00-06	working on task 3, changing management -> users tab to only show active employees	2020-10-26 12:03:02.614846-06	1.00111	230	17	\N
5137	2020-10-26 12:03:04-06	2020-10-26 12:11:37-06	working on task 4: Change the invoice report to separate things into projects and then by person	2020-10-26 12:11:38.537555-06	0.14250	230	17	\N
5139	2020-10-26 11:30:00-06	2020-10-26 12:00:00-06	Training	2020-10-26 12:16:34.403385-06	0.50000	185	5	12:00:00
5138	2020-10-26 12:11:39-06	2020-10-26 13:00:32-06	get new pickle files working with get_status	2020-10-26 13:00:33.909611-06	0.81472	342	17	\N
5140	2020-10-26 14:23:15-06	2020-10-26 14:30:56-06	helping megan w postgres stuff	2020-10-26 14:30:57.537314-06	0.12806	230	17	\N
5141	2020-10-26 14:30:59-06	2020-10-26 16:31:59-06	rearranging get_status & populate_db	2020-10-26 16:32:01.423444-06	2.01667	342	17	\N
5142	2020-10-27 08:00:00-06	2020-10-27 11:30:00-06	PMR	2020-10-27 11:21:53.095932-06	3.50000	21	5	11:30:00
5145	2020-10-27 07:10:00-06	\N	Ordering parts.	2020-10-27 12:27:50.126563-06	5.29722	332	3	\N
5146	2020-10-27 13:37:50-06	\N	get_status.py & populate_database.py	2020-10-27 13:38:09.01927-06	0.00528	342	17	\N
5144	2020-10-27 11:03:26-06	2020-10-27 13:37:46-06	get_status.py & populate_database.py, helping megan w postgres stuff	2020-10-27 13:38:34.415683-06	2.57222	342	17	\N
5143	2020-10-27 08:00:00-06	2020-10-27 23:59:59.999999-06	Working on task 2	2020-10-28 10:07:39.600518-06	15.99972	31	20	\N
5147	2020-10-28 00:00:00-06	2020-10-28 23:59:59.999999-06	Working on task 2	2020-10-28 10:08:14.139136-06	23.99972	31	20	\N
5148	2020-10-29 00:00:00-06	2020-10-29 10:07:34-06	Working on task 2	2020-10-28 10:08:14.141382-06	10.12611	31	20	\N
\.


--
-- Data for Name: timepiece_project; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.timepiece_project (id, name, inactive) FROM stdin;
25	CCE QC Instrument Shorting Switches	t
76	CCE MOD1 Stack tester	t
184	CCE ATF2 Upgrade	f
173	CCE MOD1 Repair	f
22	CCE MOD0 Trusted Download	t
86	EMUS Arduino Software	f
165	CCE Doppler	t
83	CCE MK48 Impedance Experiment	t
79	CCE MOD1 Array Map - legacy	t
82	CCE MOD1 Throughput and Sparing Analysis	t
174	CCE MOD1 Thermocouple Assembly	f
232	CCE MOD1 Array Improvements 2	t
42	CCE MOD1 ESS Data Review	f
180	CCE MOD0 KQI issue	t
88	CCE MOD1 TI-18 CY19 Proposal	t
23	CCE MOD0 Element Software Documentation	t
78	CCE HBX Project Charters & 2 second Improvements	t
38	CCE MOD0 Torque Controller	t
89	CCE MOD1 ADAS redesign	t
1	CCE MOD1 Element Tester Shelves	t
20	CCE MOD1 Housing/Unit Label EA	t
19	CCE MOD1 Match machining	t
91	CCE MOD1 IR Failures	t
18	CCE MOD1 Laser S/N and bar codes	t
13	CCE MOD1 Rotater Automation	t
90	CCE MOD1 RVS Bug analysis	t
10	CCE MOD1 Stack Testing Method	t
126	CCE MOD1 TI-18 AITS Repair	t
92	CCE MOD1 TI-23 Corprene Replacement	t
41	CCE MOD1 FAT Analysis	f
6	CCE MOD1 Phase Tester Firmware	f
21	CCE MOD1 Status/IPT/Misc meetings	f
27	EMUS Air Conditioner Controls	f
26	EMUS Lighting Controls	f
30	EMUS Motor Control	f
29	EMUS Product Assembly	f
37	CCE MK48 Proposal	t
35	CCE MOD0 Database Migration	t
127	CCE OH Tank Noise Debug	t
130	EMUS Arduino Tutorials	f
16	CCE MOD1 Trusted Download Automation	t
84	CCE MOD0 Engineering Support	t
85	CCE MOD0 Current Sensor modification	t
11	CCE MOD1 TI-18 ADAS Calibration & Procedure	t
280	CCE MK48 Proposal	t
24	CCE TB29 Trim Spreadsheet Fix	t
234	CCE Test meeting	f
36	EMUS EFM64 Display	t
185	CCE MOD1 Engineering Support	f
40	Emus Admin	t
4	CCE MOD1 TI-16 Pressure Vessel	t
177	CCE Common Sounder Repair	t
9	CCE MOD1 Secure Room Layout	t
164	CCE MOD1 Improvement Initiatives Meeting	t
14	CCE MOD1 ESS Automation and Organization	t
2	CCE MOD1 Element Tester Carriers	t
17	CCE MOD1 Corner Element Milling	t
187	CCE MOD0 -5 & -6 Tuning Mod	t
131	CCE MOD0 MRR Unit Testing	t
170	CCE Automation Initiative	t
176	CCE MOD1 Pressure Bulkhead Panel Modification	t
229	CCE MOD0 parallel paths	t
181	CCE MOD1 Element Test Software	f
34	CCE MOD1 TI-08	t
225	CCE TB29 QA report fix	t
39	EMUS Admin	f
77	CCE MOD1 Secure Computers	t
12	CCE MOD1 Map Rack Display/Button	f
167	EMUS 3D Printer	t
8	CCE MOD1 Array Sweep Multiplexer	f
227	CCE MOD1 Array Improvements 00156.BY.07.017	t
222	CCE MOD0 test	t
231	CCE MOD0 Unmap update	t
75	CCE MOD0 Tuning	t
129	CCE MOD1 HP/IR Test System	t
182	CCE MOD1 HPT	t
3	CCE MOD1 Mapping Software	t
7	CCE MOD1 Phase Tester Hardware	t
179	CCE MOD1 Software Training	t
223	CCE MOD1 TI-19 Relay Life Test	t
169	EMUS Welder Evaluation & Purchase	t
128	EMUS MRP Part Input	t
166	EMUS Fusion 360 Tutorials	t
188	CCE Precision Clock Mux	t
186	CCE NUWC-NPT Rapid Prototype Dev Initiative	t
224	CCE MOD1 TO-10 Housing FAP	t
233	CCE MOD1 Element Cover	f
238	CCE MOD1 Sweep Dock	f
274	CCE Electronics REER - CS TR Switch 91134	t
279	CCE ESD Calibration	f
273	CCE MOD0 40308.17.01.001	t
125	CCE MOD0 Repair	t
276	CCE Electronics REER - CS Transmit Ctlr 91111	t
80	CCE MOD0 Test Support	t
281	CCE MOD1 Array Sweep Connector Boards	f
275	CCE Electronics REER - CS TR Switch 91135	t
235	CCE MOD1 Array Sweep Automation	t
236	CCE MOD1 Array Sweep IR App	t
237	CCE MOD1 Array Sweep MUX	t
172	CCE TB29 Trim Automation	t
239	CCE MOD1 TI-17 Proposal Preparation 00156.BY.07.017	t
5	CCE MOD1 TI-16 Automatic Impedance Analysis	t
87	CCE MOD1 TI-04 ADAS Repairs	f
292	CCE TB29 Test System Repair	f
289	CCE CER Scale Automation	f
286	CCE Electronics REER - CS Receiver 91138	t
81	CCE MOD1 Test Support	f
284	CCE Electronics REER	f
277	CCE Electronics REER - HFMPA	t
183	CCE MOD1 ESS organization	t
189	CCE MOD1 Stack testing EA	t
272	CCE MOD1 TI-25 Damaged Array Evaluation	t
175	CCE MOD1 TO-01 Connector Replacement	t
278	CCE MOD1 Test Cables	t
291	CCE Product Test Hi-Pot Tester	t
178	CCE TB29 Test support	t
168	EMUS Milling Machine Stand & Enclosure	t
293	EMUS Tutorials	t
32	EMUS MRP System Development	f
33	EMUS URL Shortener Development	t
28	EMUS Shop organization	f
230	EMUS Website Maintenance	f
31	EMUS Time System Development	f
287	CCE Electronics REER - CS Receiver 91139	t
285	CCE Electronics REER - CS Transmit Ctlr 91120	t
282	CCE Electronics REER - CS T/R Switch 91141	t
283	CCE Electronics REER - CS T/R Switch 91142	t
288	CCE MOD1 DOE 00163.BP.08.001	t
295	CCE TB29 RVS Station Calibration	f
290	CCE MOD1 TI-18 ADAS Calibration	t
15	CCE MOD1 TI-04 Equipment PMs and Calibrations	f
296	CCE TexCer Lab Upgrade	f
298	CCE QA Calibrations	f
331	CCE MOD1 TO-02 00164.BY.01.002	f
228	CCE MOD1 Sweep Multiplexer upgrade	f
332	CCE Grotto	f
294	CCE MOD1 Accelerometer Installation 00164.BY.D4.001.002	t
297	CCE MOD1 TI23 Polyfill	t
333	CCE MOD1 ESS Thermal Automatic Analysis	f
334	CCE MOD1 Sweep Standard	f
335	CCE MOD1 TI-23 00156.BY.07.023	f
226	CCE MOD1 KQI report, Run Charts, Array Plots	f
337	CCE MOD1 Map Optimization	f
338	CCE MOD1 Array Sweep Software	f
339	CCE MOD1 TO-01 Connector Replacement 00163.BP.16.048	f
340	CCE MOD1 Test Support	f
341	ClearCore Overhead	f
336	PTO	f
342	STK Trading Program	f
343	STK SaaS Trading Website	f
344	CCE ATF2 Noise Issue	f
345	Calibration Class	f
346	CCE VAS Equipment Repair	f
347	CCE TB29 Test Board Design & Layout	f
\.


--
-- Data for Name: timepiece_projecthours; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.timepiece_projecthours (id, week_start, hours, published, project_id, user_id) FROM stdin;
\.


--
-- Data for Name: timepiece_projectrelationship; Type: TABLE DATA; Schema: public; Owner: mrp
--

COPY public.timepiece_projectrelationship (id, project_id, user_id) FROM stdin;
253	183	3
5	2	7
6	2	3
7	2	5
8	3	5
9	4	5
10	5	5
11	6	5
15	8	3
16	8	5
17	9	5
24	14	5
26	16	5
27	17	5
31	21	5
34	24	5
37	26	3
38	26	5
39	26	6
40	27	3
41	27	5
42	27	6
46	29	7
47	29	3
48	30	3
49	30	5
50	30	6
53	33	4
54	34	3
55	34	5
56	35	5
57	36	3
58	36	5
59	36	6
60	37	5
254	183	5
71	41	5
106	76	3
107	76	5
108	77	5
109	29	8
110	8	8
111	2	8
115	76	8
117	27	8
118	36	8
255	184	5
256	185	5
257	186	5
258	187	5
259	188	3
260	188	5
123	80	5
182	129	3
183	129	5
67	40	5
13	7	3
116	25	8
35	25	3
36	25	5
184	130	3
131	85	3
132	85	5
185	131	5
218	164	5
219	165	5
32	22	5
127	22	4
133	86	3
134	86	5
135	86	4
136	86	6
105	75	5
128	83	3
129	83	5
126	82	5
220	165	9
130	84	5
72	42	5
176	125	3
19	11	5
139	88	5
33	23	5
61	38	3
62	38	5
140	89	5
2	1	7
112	1	8
3	1	3
4	1	5
30	20	5
29	19	5
142	91	5
28	18	5
23	13	5
141	90	5
18	10	5
177	126	3
143	92	5
178	127	5
295	222	10
179	128	7
180	128	8
181	128	3
261	189	5
226	167	11
227	167	5
224	166	11
225	166	5
242	175	5
231	169	11
232	169	3
233	169	5
234	170	3
235	170	5
66	40	7
237	172	5
238	173	11
239	173	3
240	174	11
241	174	3
243	176	3
244	176	5
245	177	5
247	168	13
228	168	11
229	168	3
230	168	5
248	178	5
138	87	5
294	15	3
249	179	5
250	180	5
251	181	5
252	182	5
14	7	5
20	12	3
21	12	5
298	224	5
296	223	3
297	223	5
299	225	5
301	227	5
303	229	5
305	231	5
64	39	5
306	232	5
307	233	3
308	233	5
309	234	5
310	235	5
311	236	5
312	237	8
313	237	3
314	238	8
315	238	3
316	239	5
349	272	5
350	273	5
137	87	3
25	15	5
63	39	7
351	274	3
352	274	5
353	275	3
354	275	5
355	276	3
356	276	5
357	277	3
358	277	5
359	278	3
360	278	5
124	81	5
121	32	5
69	31	5
223	28	11
44	28	3
45	28	5
246	28	13
43	28	7
119	28	8
361	279	3
362	280	5
363	281	7
364	281	3
368	285	3
369	285	5
365	282	3
370	282	5
371	286	3
372	286	5
373	287	3
374	287	5
366	283	3
375	283	5
376	288	5
379	290	3
380	290	5
381	291	3
382	292	3
383	292	5
385	289	15
377	289	3
378	289	5
384	293	15
388	294	5
389	295	3
390	296	3
391	296	5
392	39	15
393	297	5
394	298	3
395	298	5
427	331	5
428	228	3
302	228	5
429	81	3
430	332	3
431	332	5
367	284	3
432	333	5
433	333	17
437	334	5
438	334	17
439	335	5
441	28	19
440	28	18
300	226	5
443	226	17
444	337	5
445	337	17
446	338	5
447	338	17
448	339	5
449	340	3
450	341	20
451	341	5
452	341	17
453	230	20
436	230	17
454	31	20
435	31	17
455	32	20
434	32	17
458	336	20
442	336	17
456	342	20
460	342	17
457	343	20
461	343	17
462	344	3
459	344	5
463	345	3
464	346	3
465	347	3
466	347	5
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 7, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 229, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 249, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 42, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 20, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 2151, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 692, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 34, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 151, true);


--
-- Name: django_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.django_redirect_id_seq', 130, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: entries_todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.entries_todo_id_seq', 214, true);


--
-- Name: manager_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.manager_profile_id_seq', 18, true);


--
-- Name: timepiece_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.timepiece_entry_id_seq', 5148, true);


--
-- Name: timepiece_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.timepiece_project_id_seq', 347, true);


--
-- Name: timepiece_projecthours_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.timepiece_projecthours_id_seq', 1, false);


--
-- Name: timepiece_projectrelationship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mrp
--

SELECT pg_catalog.setval('public.timepiece_projectrelationship_id_seq', 466, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_redirect django_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);


--
-- Name: django_redirect django_redirect_site_id_old_path_ac5dd16b_uniq; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_site_id_old_path_ac5dd16b_uniq UNIQUE (site_id, old_path);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: entries_todo entries_todo_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.entries_todo
    ADD CONSTRAINT entries_todo_pkey PRIMARY KEY (id);


--
-- Name: manager_profile manager_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.manager_profile
    ADD CONSTRAINT manager_profile_pkey PRIMARY KEY (id);


--
-- Name: manager_profile manager_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.manager_profile
    ADD CONSTRAINT manager_profile_user_id_key UNIQUE (user_id);


--
-- Name: timepiece_entry timepiece_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_entry
    ADD CONSTRAINT timepiece_entry_pkey PRIMARY KEY (id);


--
-- Name: timepiece_project timepiece_project_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_project
    ADD CONSTRAINT timepiece_project_pkey PRIMARY KEY (id);


--
-- Name: timepiece_projecthours timepiece_projecthours_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projecthours
    ADD CONSTRAINT timepiece_projecthours_pkey PRIMARY KEY (id);


--
-- Name: timepiece_projecthours timepiece_projecthours_week_start_project_id_us_4cfca258_uniq; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projecthours
    ADD CONSTRAINT timepiece_projecthours_week_start_project_id_us_4cfca258_uniq UNIQUE (week_start, project_id, user_id);


--
-- Name: timepiece_projectrelationship timepiece_projectrelationship_pkey; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projectrelationship
    ADD CONSTRAINT timepiece_projectrelationship_pkey PRIMARY KEY (id);


--
-- Name: timepiece_projectrelationship timepiece_projectrelationship_user_id_project_id_cd4c6a0f_uniq; Type: CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projectrelationship
    ADD CONSTRAINT timepiece_projectrelationship_user_id_project_id_cd4c6a0f_uniq UNIQUE (user_id, project_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_redirect_old_path_c6cc94d3; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX django_redirect_old_path_c6cc94d3 ON public.django_redirect USING btree (old_path);


--
-- Name: django_redirect_old_path_c6cc94d3_like; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX django_redirect_old_path_c6cc94d3_like ON public.django_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: django_redirect_site_id_c3e37341; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX django_redirect_site_id_c3e37341 ON public.django_redirect USING btree (site_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: entries_todo_user_id_ade4a5b0; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX entries_todo_user_id_ade4a5b0 ON public.entries_todo USING btree (user_id);


--
-- Name: timepiece_entry_end_time_f862d290; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX timepiece_entry_end_time_f862d290 ON public.timepiece_entry USING btree (end_time);


--
-- Name: timepiece_entry_project_id_52aab62d; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX timepiece_entry_project_id_52aab62d ON public.timepiece_entry USING btree (project_id);


--
-- Name: timepiece_entry_user_id_e0870acd; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX timepiece_entry_user_id_e0870acd ON public.timepiece_entry USING btree (user_id);


--
-- Name: timepiece_projecthours_project_id_676402fd; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX timepiece_projecthours_project_id_676402fd ON public.timepiece_projecthours USING btree (project_id);


--
-- Name: timepiece_projecthours_user_id_2151eece; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX timepiece_projecthours_user_id_2151eece ON public.timepiece_projecthours USING btree (user_id);


--
-- Name: timepiece_projectrelationship_project_id_1e1bd7b1; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX timepiece_projectrelationship_project_id_1e1bd7b1 ON public.timepiece_projectrelationship USING btree (project_id);


--
-- Name: timepiece_projectrelationship_user_id_beed0b47; Type: INDEX; Schema: public; Owner: mrp
--

CREATE INDEX timepiece_projectrelationship_user_id_beed0b47 ON public.timepiece_projectrelationship USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_redirect django_redirect_site_id_c3e37341_fk_django_site_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_site_id_c3e37341_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: entries_todo entries_todo_user_id_ade4a5b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.entries_todo
    ADD CONSTRAINT entries_todo_user_id_ade4a5b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manager_profile manager_profile_user_id_662f2fe3_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.manager_profile
    ADD CONSTRAINT manager_profile_user_id_662f2fe3_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: timepiece_entry timepiece_entry_project_id_52aab62d_fk_timepiece_project_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_entry
    ADD CONSTRAINT timepiece_entry_project_id_52aab62d_fk_timepiece_project_id FOREIGN KEY (project_id) REFERENCES public.timepiece_project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: timepiece_entry timepiece_entry_user_id_e0870acd_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_entry
    ADD CONSTRAINT timepiece_entry_user_id_e0870acd_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: timepiece_projecthours timepiece_projecthou_project_id_676402fd_fk_timepiece; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projecthours
    ADD CONSTRAINT timepiece_projecthou_project_id_676402fd_fk_timepiece FOREIGN KEY (project_id) REFERENCES public.timepiece_project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: timepiece_projecthours timepiece_projecthours_user_id_2151eece_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projecthours
    ADD CONSTRAINT timepiece_projecthours_user_id_2151eece_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: timepiece_projectrelationship timepiece_projectrel_project_id_1e1bd7b1_fk_timepiece; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projectrelationship
    ADD CONSTRAINT timepiece_projectrel_project_id_1e1bd7b1_fk_timepiece FOREIGN KEY (project_id) REFERENCES public.timepiece_project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: timepiece_projectrelationship timepiece_projectrelationship_user_id_beed0b47_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: mrp
--

ALTER TABLE ONLY public.timepiece_projectrelationship
    ADD CONSTRAINT timepiece_projectrelationship_user_id_beed0b47_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: smoldev
--

GRANT ALL ON LANGUAGE plpgsql TO mrp;


--
-- PostgreSQL database dump complete
--

