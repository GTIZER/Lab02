--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    lname character varying(50),
    fname character varying(50),
    mname character varying(50)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: installs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installs (
    pc_id integer NOT NULL,
    soft_id integer
);


ALTER TABLE public.installs OWNER TO postgres;

--
-- Name: pcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs (
    id integer NOT NULL,
    room_id integer,
    note character varying(200),
    ip_addr character varying,
    mac_addr character varying
);


ALTER TABLE public.pcs OWNER TO postgres;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    num integer,
    emp_id integer
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: soft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soft (
    id integer NOT NULL,
    sname character varying(50),
    ver character varying(100),
    quant integer
);


ALTER TABLE public.soft OWNER TO postgres;

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, lname, fname, mname) FROM stdin;
1	Timofeev	Nikita	Olegovich
2	Miterin	Dmitriy	Sergeevich
3	Yaroslavlev	Nikita	Sergeevich
4	Trofimov	Grigoriy	Andreevich
5	Gladkov	Artem	Alekseevich
6	Tortyshev	Nikita	Dmitrievich
7	Novskiy	Nikita	Alekseevich
8	Tarabukina	Valeria	Ivanovna
9	Kiselev	Sergey	Konstantinovich
10	Rudkovskaya	Olga	Viktorovna
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.installs (pc_id, soft_id) FROM stdin;
1	2101
2	2102
3	2103
4	2104
5	2105
6	2106
7	2107
8	2108
9	2109
10	2110
11	2111
12	2112
13	2113
14	2114
15	2115
16	2116
17	2117
18	2118
19	2119
20	2120
21	2121
22	2122
23	2123
24	2124
25	2125
26	2126
27	2127
28	2128
29	2129
30	2130
31	2131
32	2132
33	2133
34	2134
35	2135
36	2136
37	2137
38	2138
39	2139
40	2140
41	2141
42	2142
43	2143
44	2144
45	2145
46	2146
47	2147
48	2148
49	2149
50	2150
51	2151
52	2152
53	2153
54	2154
55	2155
56	2156
57	2157
58	2158
59	2159
60	2160
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs (id, room_id, note, ip_addr, mac_addr) FROM stdin;
1	101	good	255.0.255	16:17:ff:dd:cc:aa
2	102	good	255.0.254	17:17:ff:dd:cc:aa
3	103	good	255.0.253	18:17:ff:dd:bb:bb
4	104	good	255.0.252	18:17:ff:dd:dd:bb
5	105	good	255.0.251	ff:ff:ff:ff:ff:ff
6	106	good	255.0.250	cc:cc:cc:cc:cc:cc
7	107	good	255.0.249	aa:aa:aa:aa:aa:aa
8	108	good	255.0.248	bb:bb:bb:bb:bb:bb
9	101	good	255.0.247	ee:ee:ee:ee:ee:ee
10	102	good	255.0.246	10:10:10:10:10:10
11	103	good	255.0.245	98:56:45:34:56:33
12	104	good	255.0.244	12:21:34:43:54:65
13	105	good	255.0.243	43:54:67:87:43:43
15	107	good	255.0.241	ea:ae:ff:bb:dd:45
17	108	good	255.0.240	45:ff:cc:bb:34:65
18	201	good	255.0.239	56:ef:fe:bc:cb:1f
19	202	good	255.0.238	43:45:e4:45:fe:ec
20	203	good	255.0.237	45:21:ee:32:fe:ea
21	204	good	255.0.236	ae:ae:ae:ae:ae:ae
22	205	good	255.0.235	ea:ea:ea:ea:ea:ea
23	206	good	255.0.234	ab:ab:ab:ab:ab:ab
24	207	good	255.0.233	ba:ba:ba:ba:ba:ba
25	201	good	255.0.232	ac:ca:ac:ca:ac:ca
26	202	good	255.0.231	ca:ac:ca:ac:ca:ac
27	203	good	255.0.230	fe:fe:fe:fe:fe:fe
28	204	good	255.0.229	ef:ef:ef:ef:ef:ef
29	205	good	255.0.228	11:11:11:1f:1e:11
30	206	good	255.0.227	22:22:f2:22:e2:22
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, num, emp_id) FROM stdin;
1	101	21
2	102	11
3	103	9
4	104	3
5	105	1
6	106	2
7	107	8
8	108	5
9	201	6
10	202	7
11	203	13
12	204	17
13	205	19
14	206	4
15	207	22
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soft (id, sname, ver, quant) FROM stdin;
101	Chrome	5.29.87	1
102	Chrome	5.29.87	2
103	Chrome	5.29.87	3
104	Chrome	5.29.87	4
105	Chrome	5.29.87	5
\.


--
-- Name: employees emp; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT emp PRIMARY KEY (id);


--
-- Name: installs inst; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT inst PRIMARY KEY (pc_id);


--
-- Name: pcs peka; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT peka PRIMARY KEY (id);


--
-- Name: soft program; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft
    ADD CONSTRAINT program PRIMARY KEY (id);


--
-- Name: rooms square; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT square PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

