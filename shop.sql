--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.21
-- Dumped by pg_dump version 9.6.21

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
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
-- Name: coupons_coupon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coupons_coupon (
    id integer NOT NULL,
    code character varying(50) NOT NULL,
    valid_from timestamp with time zone NOT NULL,
    valid_to timestamp with time zone NOT NULL,
    discount integer NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.coupons_coupon OWNER TO postgres;

--
-- Name: coupons_coupon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coupons_coupon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupons_coupon_id_seq OWNER TO postgres;

--
-- Name: coupons_coupon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coupons_coupon_id_seq OWNED BY public.coupons_coupon.id;


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
-- Name: orders_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_order (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    address character varying(250) NOT NULL,
    postal_code character varying(20) NOT NULL,
    city character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    paid boolean NOT NULL,
    braintree_id character varying(150) NOT NULL,
    coupon_id integer,
    discount integer NOT NULL
);


ALTER TABLE public.orders_order OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders_order.id;


--
-- Name: orders_orderitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders_orderitem (
    id integer NOT NULL,
    price numeric(10,2) NOT NULL,
    quantity integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    CONSTRAINT orders_orderitem_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.orders_orderitem OWNER TO postgres;

--
-- Name: orders_orderitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_orderitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_orderitem_id_seq OWNER TO postgres;

--
-- Name: orders_orderitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_orderitem_id_seq OWNED BY public.orders_orderitem.id;


--
-- Name: shop_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_category (
    id integer NOT NULL
);


ALTER TABLE public.shop_category OWNER TO postgres;

--
-- Name: shop_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shop_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_category_id_seq OWNER TO postgres;

--
-- Name: shop_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shop_category_id_seq OWNED BY public.shop_category.id;


--
-- Name: shop_category_translation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_category_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    master_id integer
);


ALTER TABLE public.shop_category_translation OWNER TO postgres;

--
-- Name: shop_category_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shop_category_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_category_translation_id_seq OWNER TO postgres;

--
-- Name: shop_category_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shop_category_translation_id_seq OWNED BY public.shop_category_translation.id;


--
-- Name: shop_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_product (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    available boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.shop_product OWNER TO postgres;

--
-- Name: shop_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shop_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_product_id_seq OWNER TO postgres;

--
-- Name: shop_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shop_product_id_seq OWNED BY public.shop_product.id;


--
-- Name: shop_product_translation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_product_translation (
    id integer NOT NULL,
    language_code character varying(15) NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL,
    description text NOT NULL,
    price numeric(10,2) NOT NULL,
    dollar boolean NOT NULL,
    master_id integer
);


ALTER TABLE public.shop_product_translation OWNER TO postgres;

--
-- Name: shop_product_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shop_product_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_product_translation_id_seq OWNER TO postgres;

--
-- Name: shop_product_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shop_product_translation_id_seq OWNED BY public.shop_product_translation.id;


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
-- Name: coupons_coupon id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupons_coupon ALTER COLUMN id SET DEFAULT nextval('public.coupons_coupon_id_seq'::regclass);


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
-- Name: orders_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_order ALTER COLUMN id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: orders_orderitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_orderitem ALTER COLUMN id SET DEFAULT nextval('public.orders_orderitem_id_seq'::regclass);


--
-- Name: shop_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_category ALTER COLUMN id SET DEFAULT nextval('public.shop_category_id_seq'::regclass);


--
-- Name: shop_category_translation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_category_translation ALTER COLUMN id SET DEFAULT nextval('public.shop_category_translation_id_seq'::regclass);


--
-- Name: shop_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_product ALTER COLUMN id SET DEFAULT nextval('public.shop_product_id_seq'::regclass);


--
-- Name: shop_product_translation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_product_translation ALTER COLUMN id SET DEFAULT nextval('public.shop_product_translation_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add категория	7	add_category
20	Can change категория	7	change_category
21	Can delete категория	7	delete_category
22	Can add product	8	add_product
23	Can change product	8	change_product
24	Can delete product	8	delete_product
25	Can add order item	9	add_orderitem
26	Can change order item	9	change_orderitem
27	Can delete order item	9	delete_orderitem
28	Can add order	10	add_order
29	Can change order	10	change_order
30	Can delete order	10	delete_order
31	Can add coupon	13	add_coupon
32	Can change coupon	13	change_coupon
33	Can delete coupon	13	delete_coupon
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 33, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$100000$Ok9p681s840V$flFr8I4Y9gyiVW7kIkluHNYIvYx4K9tRteoffuI3eW4=	2021-03-27 13:50:18.035285+05	t	Shop			shop@shop.com	t	t	2021-03-27 13:49:39.824575+05
2	pbkdf2_sha256$100000$uBATAEjyPcVL$tA6KXG6FCmpvDa9qcbpxXksTfGHamUuwwyLbd15kzb0=	2021-04-04 13:42:33.403889+05	t	Test			test@test.com	t	t	2021-04-04 13:42:01.446608+05
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: coupons_coupon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coupons_coupon (id, code, valid_from, valid_to, discount, active) FROM stdin;
\.


--
-- Name: coupons_coupon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coupons_coupon_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-03-27 14:18:38.052655+05	1	Веган ♻	1	[{"added": {}}]	7	1
2	2021-03-27 14:21:57.458816+05	1	Тараллини	1	[{"added": {}}]	8	1
3	2021-03-27 14:25:55.626813+05	2	Укроп	1	[{"added": {}}]	8	1
4	2021-03-27 14:27:22.663888+05	3	Перец	1	[{"added": {}}]	8	1
5	2021-03-27 14:36:56.078183+05	2	Презервативы 🔞	1	[{"added": {}}]	7	1
6	2021-03-27 14:39:04.459647+05	4	Durex Classic 3шт.	1	[{"added": {}}]	8	1
7	2021-03-27 14:39:43.023315+05	4	Durex Classic 3шт.	2	[]	8	1
8	2021-03-27 14:40:21.790885+05	5	Durex Invisible	1	[{"added": {}}]	8	1
9	2021-03-27 14:41:36.705048+05	6	Durex Real Feel 3шт.	1	[{"added": {}}]	8	1
10	2021-03-27 14:41:45.189747+05	5	Durex Invisible 3шт.	2	[{"changed": {"fields": ["name"]}}]	8	1
11	2021-03-27 18:58:02.689288+05	2	Заказ 2	3		10	1
12	2021-03-29 21:29:50.125837+05	9	Заказ 9	3		10	1
13	2021-03-29 21:29:50.151987+05	8	Заказ 8	3		10	1
14	2021-03-29 21:29:50.162792+05	7	Заказ 7	3		10	1
15	2021-03-29 21:29:50.174106+05	6	Заказ 6	3		10	1
16	2021-03-29 21:29:50.185017+05	5	Заказ 5	3		10	1
17	2021-03-29 21:29:50.196011+05	4	Заказ 4	3		10	1
18	2021-03-29 21:29:50.207042+05	3	Заказ 3	3		10	1
19	2021-03-29 21:29:50.218756+05	1	Заказ 1	3		10	1
20	2021-04-04 13:46:28.168364+05	1	Веган ♻	2	[{"changed": {"fields": ["name", "slug"]}}]	7	2
21	2021-04-04 13:47:20.084204+05	1	Eco ♻	2	[{"changed": {"fields": ["name", "slug"]}}]	7	2
22	2021-04-04 13:47:47.687648+05	2	Презервативы 🔞	2	[{"changed": {"fields": ["name", "slug"]}}]	7	2
23	2021-04-04 13:48:22.365479+05	2	Condom 🔞	2	[{"changed": {"fields": ["name", "slug"]}}]	7	2
24	2021-04-04 13:52:27.529602+05	1	Тараллини	2	[{"changed": {"fields": ["name", "slug", "description", "price"]}}]	8	2
25	2021-04-04 13:54:12.617027+05	1	tarralini classic	2	[{"changed": {"fields": ["name", "slug", "description", "price", "dollar"]}}]	8	2
26	2021-04-04 13:56:52.628431+05	2	Укоп	2	[{"changed": {"fields": ["name", "slug", "description", "price"]}}]	8	2
27	2021-04-04 13:57:29.522716+05	2	dill	2	[{"changed": {"fields": ["name", "slug", "description", "price", "dollar"]}}]	8	2
28	2021-04-04 13:59:18.247786+05	3	Перец	2	[{"changed": {"fields": ["name", "slug", "description", "price"]}}]	8	2
29	2021-04-04 14:00:07.071877+05	3	Pepper	2	[{"changed": {"fields": ["name", "slug", "description", "price", "dollar"]}}]	8	2
30	2021-04-04 14:01:08.425285+05	4	Durex Classic 3шт.	2	[{"changed": {"fields": ["name", "slug", "description", "price"]}}]	8	2
31	2021-04-04 14:01:51.795768+05	4	Durex Classic 3pie	2	[{"changed": {"fields": ["name", "slug", "description", "price", "dollar"]}}]	8	2
32	2021-04-04 14:03:39.092541+05	5	Durex Invisible 3шт.	2	[{"changed": {"fields": ["name", "slug", "description", "price"]}}]	8	2
33	2021-04-04 14:04:09.63243+05	5	Durex Classic 3pie	2	[{"changed": {"fields": ["name", "slug", "description", "price", "dollar"]}}]	8	2
34	2021-04-04 14:05:08.202079+05	6	Durex Real Feel 3шт.	2	[{"changed": {"fields": ["name", "slug", "description", "price"]}}]	8	2
35	2021-04-04 14:05:42.080341+05	6	Durex Real Feel 3pie	2	[{"changed": {"fields": ["name", "slug", "description", "price", "dollar"]}}]	8	2
36	2021-04-04 14:08:54.872082+05	6	Durex Real Feel 3pie	2	[{"changed": {"fields": ["price"]}}]	8	2
37	2021-04-04 14:09:19.843421+05	6	Durex Real Feel 3pie	2	[{"changed": {"fields": ["price"]}}]	8	2
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 37, true);


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
7	shop	category
8	shop	product
9	orders	orderitem
10	orders	order
11	shop	categorytranslation
12	shop	producttranslation
13	coupons	coupon
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-03-27 13:46:45.903178+05
2	auth	0001_initial	2021-03-27 13:46:46.828311+05
3	admin	0001_initial	2021-03-27 13:46:47.00393+05
4	admin	0002_logentry_remove_auto_add	2021-03-27 13:46:47.037129+05
5	contenttypes	0002_remove_content_type_name	2021-03-27 13:46:47.14814+05
6	auth	0002_alter_permission_name_max_length	2021-03-27 13:46:47.181262+05
7	auth	0003_alter_user_email_max_length	2021-03-27 13:46:47.226543+05
8	auth	0004_alter_user_username_opts	2021-03-27 13:46:47.256128+05
9	auth	0005_alter_user_last_login_null	2021-03-27 13:46:47.30312+05
10	auth	0006_require_contenttypes_0002	2021-03-27 13:46:47.314598+05
11	auth	0007_alter_validators_add_error_messages	2021-03-27 13:46:47.347413+05
12	auth	0008_alter_user_username_max_length	2021-03-27 13:46:47.447128+05
13	auth	0009_alter_user_last_name_max_length	2021-03-27 13:46:47.490673+05
14	sessions	0001_initial	2021-03-27 13:46:47.64745+05
15	shop	0001_initial	2021-03-27 13:46:48.179334+05
16	orders	0001_initial	2021-03-27 18:38:13.68342+05
17	orders	0002_auto_20210329_1434	2021-03-29 19:34:32.416382+05
18	shop	0002_translations	2021-04-04 13:36:50.130986+05
19	coupons	0001_initial	2021-04-04 13:37:48.912148+05
20	orders	0003_auto_20210402_1622	2021-04-04 13:37:49.169487+05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5kc90bbqkw4irmvdg50t47skp83vidri	Njc2NmZmYzE5NjY1NzhlZGRkNWI1MTM3MWM0MzE2MjM4YWI5MjZkOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMDQ0NDZiNzdlMTk0ODY0MmM4NmRlZDk1NTZmM2I0YWY4NDQ5NDIxIiwib3JkZXJfaWQiOjEwLCJjYXJ0Ijp7fX0=	2021-04-14 21:17:49.306704+05
178s8xguux7f7msm0sluxt6vcvxnjfex	MWQ0ZGU5ZjYxOTU1YzUyYjY2NDFmZjA0YTBkMWM3NzA0OTRiYzU4Yjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlMmEzMmFlNTY1ODNlNDYwNDVlZWZiZWJjYjUxNWRiNWI0ZWMwNzVkIiwiY291cG9uX2lkIjpudWxsLCJvcmRlcl9pZCI6MTEsImNhcnQiOnt9fQ==	2021-04-18 14:39:09.712673+05
\.


--
-- Data for Name: orders_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_order (id, first_name, last_name, email, address, postal_code, city, created, updated, paid, braintree_id, coupon_id, discount) FROM stdin;
10	Ринат	Каримов	rin-k@yandex.ru	улица Агиделя 2	12345	Кумертау	2021-03-31 21:16:19.062784+05	2021-03-31 21:16:40.257237+05	t	hpb4hn7c	\N	0
11	Emil	Khaziev	emilkhazioff@yandex.com	October 17A	45326	Салават	2021-04-04 14:29:14.6523+05	2021-04-04 14:29:46.487182+05	t	357havmp	\N	0
\.


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 11, true);


--
-- Data for Name: orders_orderitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders_orderitem (id, price, quantity, order_id, product_id) FROM stdin;
9	276.00	1	10	6
10	2.63	1	11	1
\.


--
-- Name: orders_orderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_orderitem_id_seq', 10, true);


--
-- Data for Name: shop_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_category (id) FROM stdin;
1
2
\.


--
-- Name: shop_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shop_category_id_seq', 2, true);


--
-- Data for Name: shop_category_translation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_category_translation (id, language_code, name, slug, master_id) FROM stdin;
1	ru	Веган ♻	vegan	1
2	en	Eco ♻	eco	1
3	ru	Презервативы 🔞	prezervativy	2
4	en	Condom 🔞	condom	2
\.


--
-- Name: shop_category_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shop_category_translation_id_seq', 4, true);


--
-- Data for Name: shop_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_product (id, image, available, created, updated, category_id) FROM stdin;
6	products/2021/03/27/1440__Real_Feel_12_new_mPEwizG.png	t	2021-03-27 14:41:36.700829+05	2021-04-04 14:09:19.835784+05	2
1	products/2021/03/27/orig.jpeg	t	2021-03-27 14:21:57.454763+05	2021-04-04 13:54:12.60937+05	1
2	products/2021/03/27/kisspng-montreal-style-smoked-meat-dill-clip-art-parsley-5abc76dcb82_WbY9qSu.jpg	t	2021-03-27 14:25:55.623654+05	2021-04-04 13:57:29.515433+05	1
3		t	2021-03-27 14:27:22.661292+05	2021-04-04 14:00:07.065908+05	1
4	products/2021/03/27/100002564559b0.png	t	2021-03-27 14:39:04.456166+05	2021-04-04 14:01:51.788879+05	2
5	products/2021/03/27/1440__Invisible_18_SDFVX14.png	t	2021-03-27 14:40:21.787494+05	2021-04-04 14:04:09.625833+05	2
\.


--
-- Name: shop_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shop_product_id_seq', 6, true);


--
-- Data for Name: shop_product_translation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_product_translation (id, language_code, name, slug, description, price, dollar, master_id) FROM stdin;
1	ru	Тараллини	tarallini	Очень полезный продукт для всей семьи	200.00	f	1
2	en	tarralini classic	tarralini-classic	For Family	2.63	t	1
3	ru	Укоп	ukop	Свежий укроп	19.99	f	2
4	en	dill	dill	Fresh dill	0.26	t	2
5	ru	Перец	perec	Свежий перец	49.99	f	3
6	en	Pepper	pepper	Fresh peper	0.66	t	3
7	ru	Durex Classic 3шт.	durex-classic-3sht	Наши классические презервативы Durex предоставляют вам неизменную прочность, надежность и безупречность с 1929 года. Оставаясь простыми, презервативы Durex Classic с силиконовой смазкой дают вам ту защиту, которую вы ожидаете от Durex.\r\n\r\nПомните, что ни один из методов контрацепции не может гарантировать 100% защиты от нежелательной беременности, ВИЧ или других заболеваний, передающихся половым путем. Пожалуйста, перед использованием внимательно прочитайте инструкцию на внутренней стороне упаковки.	237.00	f	4
8	en	Durex Classic 3pie	durex-classic-3pie	Our classic Durex condoms have been providing you with consistent durability, reliability and perfection since 1929. Keeping it simple, Durex Classic silicone-lubricated condoms give you the protection you'd expect from Durex.\r\n\r\nRemember that none of the methods of contraception can guarantee 100% protection against unwanted pregnancy, HIV or other sexually transmitted diseases. Please read the instructions on the inside of the package carefully before using.	3.12	t	4
9	ru	Durex Invisible 3шт.	durex-invisible-3sht	Презервативы Durex Invisible созданы для максимальной чувствительности, в то же время предоставляя высокий уровень безопасности и защиты.\r\n\r\nПомните, что ни один из методов контрацепции не может гарантировать 100% защиты от нежелательной беременности, ВИЧ или других заболеваний, передающихся половым путем. Пожалуйста, перед использованием внимательно прочитайте инструкцию на внутренней стороне упаковки.	292.00	f	5
10	en	Durex Classic 3pie	durex-classic-3pie	Durex Invisible condoms are designed for maximum sensitivity, while at the same time providing a high level of safety and protection.\r\n\r\nRemember that none of the methods of contraception can guarantee 100% protection against unwanted pregnancy, HIV or other sexually transmitted diseases. Please read the instructions on the inside of the package carefully before using.	3.84	t	5
11	ru	Durex Real Feel 3шт.	durex-real-feel-3sht	Презервативы Durex Real Feel – новое поколение презервативов из безлатексного материала для естественных ощущений с эффектом "кожа-к-коже". С Durex Real Feel вы можете почувствовать каждое движение, каждое прикосновение так, словно вас ничто не разделяет! Эти презервативы подходят тем, у кого аллергия на натуральный латекс.\r\n\r\nПомните, что ни один из методов контрацепции не может гарантировать 100% защиты от нежелательной беременности, ВИЧ или других заболеваний, передающихся половым путем. Пожалуйста, перед использованием внимательно прочитайте инструкцию на внутренней стороне упаковки.	237.00	f	6
12	en	Durex Real Feel 3pie	durex-real-feel-3pie	Durex Real Feel condoms – a new generation of latex-free condoms for natural sensations with a skin-to-skin effect. With Durex Real Feel, you can feel every movement, every touch, as if nothing separates you! These condoms are suitable for those who are allergic to natural latex.\r\n\r\nRemember that none of the methods of contraception can guarantee 100% protection against unwanted pregnancy, HIV or other sexually transmitted diseases. Please read the instructions on the inside of the package carefully before using.	3.12	t	6
\.


--
-- Name: shop_product_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shop_product_translation_id_seq', 12, true);


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
-- Name: coupons_coupon coupons_coupon_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupons_coupon
    ADD CONSTRAINT coupons_coupon_code_key UNIQUE (code);


--
-- Name: coupons_coupon coupons_coupon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coupons_coupon
    ADD CONSTRAINT coupons_coupon_pkey PRIMARY KEY (id);


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
-- Name: orders_order orders_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_pkey PRIMARY KEY (id);


--
-- Name: orders_orderitem orders_orderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_orderitem
    ADD CONSTRAINT orders_orderitem_pkey PRIMARY KEY (id);


--
-- Name: shop_category shop_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_category
    ADD CONSTRAINT shop_category_pkey PRIMARY KEY (id);


--
-- Name: shop_category_translation shop_category_translation_language_code_master_id_0de880c9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_category_translation
    ADD CONSTRAINT shop_category_translation_language_code_master_id_0de880c9_uniq UNIQUE (language_code, master_id);


--
-- Name: shop_category_translation shop_category_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_category_translation
    ADD CONSTRAINT shop_category_translation_pkey PRIMARY KEY (id);


--
-- Name: shop_category_translation shop_category_translation_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_category_translation
    ADD CONSTRAINT shop_category_translation_slug_key UNIQUE (slug);


--
-- Name: shop_product shop_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_pkey PRIMARY KEY (id);


--
-- Name: shop_product_translation shop_product_translation_language_code_master_id_c0738031_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_product_translation
    ADD CONSTRAINT shop_product_translation_language_code_master_id_c0738031_uniq UNIQUE (language_code, master_id);


--
-- Name: shop_product_translation shop_product_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_product_translation
    ADD CONSTRAINT shop_product_translation_pkey PRIMARY KEY (id);


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
-- Name: coupons_coupon_code_40174643_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX coupons_coupon_code_40174643_like ON public.coupons_coupon USING btree (code varchar_pattern_ops);


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
-- Name: orders_order_coupon_id_5bddb887; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX orders_order_coupon_id_5bddb887 ON public.orders_order USING btree (coupon_id);


--
-- Name: orders_orderitem_order_id_fe61a34d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX orders_orderitem_order_id_fe61a34d ON public.orders_orderitem USING btree (order_id);


--
-- Name: orders_orderitem_product_id_afe4254a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX orders_orderitem_product_id_afe4254a ON public.orders_orderitem USING btree (product_id);


--
-- Name: shop_category_translation_language_code_1a720d6b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_category_translation_language_code_1a720d6b ON public.shop_category_translation USING btree (language_code);


--
-- Name: shop_category_translation_language_code_1a720d6b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_category_translation_language_code_1a720d6b_like ON public.shop_category_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: shop_category_translation_master_id_dcd6e0df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_category_translation_master_id_dcd6e0df ON public.shop_category_translation USING btree (master_id);


--
-- Name: shop_category_translation_name_c90d9d9e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_category_translation_name_c90d9d9e ON public.shop_category_translation USING btree (name);


--
-- Name: shop_category_translation_name_c90d9d9e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_category_translation_name_c90d9d9e_like ON public.shop_category_translation USING btree (name varchar_pattern_ops);


--
-- Name: shop_category_translation_slug_93bea54f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_category_translation_slug_93bea54f_like ON public.shop_category_translation USING btree (slug varchar_pattern_ops);


--
-- Name: shop_product_category_id_14d7eea8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_product_category_id_14d7eea8 ON public.shop_product USING btree (category_id);


--
-- Name: shop_product_translation_language_code_1438e7c7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_product_translation_language_code_1438e7c7 ON public.shop_product_translation USING btree (language_code);


--
-- Name: shop_product_translation_language_code_1438e7c7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_product_translation_language_code_1438e7c7_like ON public.shop_product_translation USING btree (language_code varchar_pattern_ops);


--
-- Name: shop_product_translation_master_id_46d8ce6f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_product_translation_master_id_46d8ce6f ON public.shop_product_translation USING btree (master_id);


--
-- Name: shop_product_translation_name_a03b4a75; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_product_translation_name_a03b4a75 ON public.shop_product_translation USING btree (name);


--
-- Name: shop_product_translation_name_a03b4a75_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_product_translation_name_a03b4a75_like ON public.shop_product_translation USING btree (name varchar_pattern_ops);


--
-- Name: shop_product_translation_slug_bcd9f328; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_product_translation_slug_bcd9f328 ON public.shop_product_translation USING btree (slug);


--
-- Name: shop_product_translation_slug_bcd9f328_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shop_product_translation_slug_bcd9f328_like ON public.shop_product_translation USING btree (slug varchar_pattern_ops);


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
-- Name: orders_order orders_order_coupon_id_5bddb887_fk_coupons_coupon_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_order
    ADD CONSTRAINT orders_order_coupon_id_5bddb887_fk_coupons_coupon_id FOREIGN KEY (coupon_id) REFERENCES public.coupons_coupon(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_orderitem orders_orderitem_order_id_fe61a34d_fk_orders_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_orderitem
    ADD CONSTRAINT orders_orderitem_order_id_fe61a34d_fk_orders_order_id FOREIGN KEY (order_id) REFERENCES public.orders_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: orders_orderitem orders_orderitem_product_id_afe4254a_fk_shop_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders_orderitem
    ADD CONSTRAINT orders_orderitem_product_id_afe4254a_fk_shop_product_id FOREIGN KEY (product_id) REFERENCES public.shop_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_category_translation shop_category_transl_master_id_dcd6e0df_fk_shop_cate; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_category_translation
    ADD CONSTRAINT shop_category_transl_master_id_dcd6e0df_fk_shop_cate FOREIGN KEY (master_id) REFERENCES public.shop_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_product shop_product_category_id_14d7eea8_fk_shop_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_category_id_14d7eea8_fk_shop_category_id FOREIGN KEY (category_id) REFERENCES public.shop_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_product_translation shop_product_translation_master_id_46d8ce6f_fk_shop_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_product_translation
    ADD CONSTRAINT shop_product_translation_master_id_46d8ce6f_fk_shop_product_id FOREIGN KEY (master_id) REFERENCES public.shop_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

