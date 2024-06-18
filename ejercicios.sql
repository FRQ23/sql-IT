--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19 (Postgres.app)
-- Dumped by pg_dump version 14.12 (Homebrew)

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
-- Name: clientes; Type: TABLE; Schema: public; Owner: fernandorosales
--

CREATE TABLE public.clientes (
    cliclave integer NOT NULL,
    clinombre character varying(100) NOT NULL,
    clidireccion character varying(20) NOT NULL,
    clitelefono character varying(20) NOT NULL
);


ALTER TABLE public.clientes OWNER TO fernandorosales;

--
-- Name: clientes_cliclave_seq; Type: SEQUENCE; Schema: public; Owner: fernandorosales
--

CREATE SEQUENCE public.clientes_cliclave_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_cliclave_seq OWNER TO fernandorosales;

--
-- Name: clientes_cliclave_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fernandorosales
--

ALTER SEQUENCE public.clientes_cliclave_seq OWNED BY public.clientes.cliclave;


--
-- Name: departamentos; Type: TABLE; Schema: public; Owner: fernandorosales
--

CREATE TABLE public.departamentos (
    depclave integer NOT NULL,
    depdescripcion character varying(100) NOT NULL
);


ALTER TABLE public.departamentos OWNER TO fernandorosales;

--
-- Name: departamentos_depclave_seq; Type: SEQUENCE; Schema: public; Owner: fernandorosales
--

CREATE SEQUENCE public.departamentos_depclave_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departamentos_depclave_seq OWNER TO fernandorosales;

--
-- Name: departamentos_depclave_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fernandorosales
--

ALTER SEQUENCE public.departamentos_depclave_seq OWNED BY public.departamentos.depclave;


--
-- Name: movimiento_producto; Type: TABLE; Schema: public; Owner: fernandorosales
--

CREATE TABLE public.movimiento_producto (
    movfolio integer NOT NULL,
    proclave character varying(10) NOT NULL,
    mpcantidad numeric NOT NULL,
    mpprecio numeric NOT NULL,
    mpimporte numeric NOT NULL
);


ALTER TABLE public.movimiento_producto OWNER TO fernandorosales;

--
-- Name: movimientos; Type: TABLE; Schema: public; Owner: fernandorosales
--

CREATE TABLE public.movimientos (
    movfolio integer NOT NULL,
    movtipo integer NOT NULL,
    movfecha timestamp without time zone NOT NULL,
    movclipprov integer NOT NULL,
    movtotal numeric NOT NULL
);


ALTER TABLE public.movimientos OWNER TO fernandorosales;

--
-- Name: movimientos_movfolio_seq; Type: SEQUENCE; Schema: public; Owner: fernandorosales
--

CREATE SEQUENCE public.movimientos_movfolio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movimientos_movfolio_seq OWNER TO fernandorosales;

--
-- Name: movimientos_movfolio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fernandorosales
--

ALTER SEQUENCE public.movimientos_movfolio_seq OWNED BY public.movimientos.movfolio;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: fernandorosales
--

CREATE TABLE public.productos (
    proclave character varying(10) NOT NULL,
    prodescripcion character varying(100) NOT NULL,
    proprecio numeric NOT NULL,
    depclave integer NOT NULL
);


ALTER TABLE public.productos OWNER TO fernandorosales;

--
-- Name: proveedores; Type: TABLE; Schema: public; Owner: fernandorosales
--

CREATE TABLE public.proveedores (
    provclave integer NOT NULL,
    provnombre character varying(100) NOT NULL,
    provdireccion character varying(20) NOT NULL,
    provtelefono character varying(20) NOT NULL
);


ALTER TABLE public.proveedores OWNER TO fernandorosales;

--
-- Name: proveedores_provclave_seq; Type: SEQUENCE; Schema: public; Owner: fernandorosales
--

CREATE SEQUENCE public.proveedores_provclave_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.proveedores_provclave_seq OWNER TO fernandorosales;

--
-- Name: proveedores_provclave_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fernandorosales
--

ALTER SEQUENCE public.proveedores_provclave_seq OWNED BY public.proveedores.provclave;


--
-- Name: clientes cliclave; Type: DEFAULT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.clientes ALTER COLUMN cliclave SET DEFAULT nextval('public.clientes_cliclave_seq'::regclass);


--
-- Name: departamentos depclave; Type: DEFAULT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.departamentos ALTER COLUMN depclave SET DEFAULT nextval('public.departamentos_depclave_seq'::regclass);


--
-- Name: movimientos movfolio; Type: DEFAULT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.movimientos ALTER COLUMN movfolio SET DEFAULT nextval('public.movimientos_movfolio_seq'::regclass);


--
-- Name: proveedores provclave; Type: DEFAULT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.proveedores ALTER COLUMN provclave SET DEFAULT nextval('public.proveedores_provclave_seq'::regclass);


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: fernandorosales
--

COPY public.clientes (cliclave, clinombre, clidireccion, clitelefono) FROM stdin;
1	Cliente 1	Direccion 1	6645568800
2	Cliente 2	Direccion 2	6645648395
3	Cliente 3	Direccion 3	6649504578
4	Cliente 4	Direccion 4	6648405849
5	Cliente 5	Direccion 5	6649850485
6	Cliente 6	Direccion 6	6648940359
7	Cliente 7	Direccion 7	6649456845
8	Cliente 8	Direccion 8	6648594034
9	Cliente 9	Direccion 9	6649405738
10	Cliente 10	Direccion 10	6641589406
\.


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: fernandorosales
--

COPY public.departamentos (depclave, depdescripcion) FROM stdin;
1	Recursos humanos
2	Finanzas
3	Tecnologia de la informacion
4	Marketing
5	Ventas
\.


--
-- Data for Name: movimiento_producto; Type: TABLE DATA; Schema: public; Owner: fernandorosales
--

COPY public.movimiento_producto (movfolio, proclave, mpcantidad, mpprecio, mpimporte) FROM stdin;
1	P001	2	80.00	160.00
1	P004	3	90.00	270.00
2	P007	4	70.00	280.00
2	P010	2	70.00	140.00
3	P013	3	100.00	300.00
4	P002	1	150.00	150.00
4	P005	2	100.00	300.00
5	P009	3	100.00	300.00
5	P012	2	165.00	330.00
6	P001	3	75.00	225.00
6	P004	2	85.00	170.00
7	P014	3	130.00	390.00
8	P006	3	110.00	330.00
9	P011	2	105.00	210.00
10	P008	4	120.00	480.00
10	P015	1	10.00	10.00
11	P001	2	100.00	200.00
11	P004	3	150.00	450.00
11	P007	1	120.00	120.00
12	P002	2	200.00	400.00
12	P005	1	250.00	250.00
12	P010	1	110.00	110.00
13	P003	1	350.00	350.00
13	P009	1	320.00	320.00
14	P006	2	350.00	700.00
14	P011	1	105.00	105.00
14	P014	1	130.00	130.00
15	P008	2	120.00	240.00
15	P012	1	165.00	165.00
16	P001	1	100.00	100.00
16	P004	2	150.00	300.00
17	P005	2	250.00	500.00
17	P010	1	110.00	50.00
18	P007	2	120.00	240.00
18	P013	1	130.00	130.00
19	P009	2	320.00	640.00
19	P012	1	165.00	165.00
20	P002	1	200.00	200.00
20	P015	2	10.00	20.00
\.


--
-- Data for Name: movimientos; Type: TABLE DATA; Schema: public; Owner: fernandorosales
--

COPY public.movimientos (movfolio, movtipo, movfecha, movclipprov, movtotal) FROM stdin;
1	1	2024-06-15 10:00:00	1	540.00
2	1	2024-06-15 12:00:00	3	420.00
3	1	2024-06-15 10:00:00	5	300.00
4	1	2024-06-16 11:00:00	2	250.00
5	1	2024-06-15 09:00:00	4	630.00
6	1	2024-06-15 10:00:00	1	450.00
7	1	2024-06-16 15:00:00	6	390.00
8	1	2024-06-17 11:00:00	8	560.00
9	1	2024-06-15 12:00:00	10	210.00
10	1	2024-06-16 09:00:00	7	490.00
11	2	2024-06-15 11:30:00	2	660.00
12	2	2024-06-16 14:00:00	4	440.00
13	2	2024-06-15 10:00:00	6	380.00
14	2	2024-06-17 12:30:00	8	590.00
15	2	2024-06-16 10:00:00	10	260.00
16	2	2024-06-15 12:00:00	2	310.00
17	2	2024-06-17 08:00:00	5	550.00
18	2	2024-06-16 15:30:00	3	290.00
19	2	2024-06-15 11:00:00	1	460.00
20	2	2024-06-17 10:30:00	7	350.00
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: fernandorosales
--

COPY public.productos (proclave, prodescripcion, proprecio, depclave) FROM stdin;
P001	Producto 1 RH	100.00	1
P002	Producto 2 RH	200.00	1
P003	Producto 3 RH	300.00	1
P004	Producto 1 Finanzas	150.00	2
P005	Producto 2 Finanzas	250.00	2
P006	Producto 3 Finanzas	350.00	2
P007	Producto 1 TI	120.00	3
P008	Producto 2 TI	220.00	3
P009	Producto 3 TI	320.00	3
P010	Producto 1 Marketing	110.00	4
P011	Producto 2 Marketing	210.00	4
P012	Producto 3 Marketing	310.00	4
P013	Producto 1 Ventas	130.00	5
P014	Producto 2 Ventas	230.00	5
P015	Producto 3 Ventas	330.00	5
\.


--
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: fernandorosales
--

COPY public.proveedores (provclave, provnombre, provdireccion, provtelefono) FROM stdin;
1	Proveedor 1	Direccion 1	758493045894
2	Proveedor 2	Direccion 2	8495048573
3	Proveedor 3	Direccion 3	6640493046
4	Proveedor 4	Direccion 4	5437890267
5	Proveedor 5	Direccion 5	6647532145
6	Proveedor 6	 Direccion 6	4563789041
7	Proveedor 7	Direccion 7	1234567890
8	Proveedor 8	Direccion 8	0987654321
9	Proveedor 9	Direccion 9	4563890371
10	Proveedor 10	Direccion 10	7854768903
\.


--
-- Name: clientes_cliclave_seq; Type: SEQUENCE SET; Schema: public; Owner: fernandorosales
--

SELECT pg_catalog.setval('public.clientes_cliclave_seq', 10, true);


--
-- Name: departamentos_depclave_seq; Type: SEQUENCE SET; Schema: public; Owner: fernandorosales
--

SELECT pg_catalog.setval('public.departamentos_depclave_seq', 5, true);


--
-- Name: movimientos_movfolio_seq; Type: SEQUENCE SET; Schema: public; Owner: fernandorosales
--

SELECT pg_catalog.setval('public.movimientos_movfolio_seq', 1, false);


--
-- Name: proveedores_provclave_seq; Type: SEQUENCE SET; Schema: public; Owner: fernandorosales
--

SELECT pg_catalog.setval('public.proveedores_provclave_seq', 10, true);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (cliclave);


--
-- Name: departamentos departamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (depclave);


--
-- Name: movimiento_producto movimiento_producto_pkey; Type: CONSTRAINT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.movimiento_producto
    ADD CONSTRAINT movimiento_producto_pkey PRIMARY KEY (movfolio, proclave);


--
-- Name: movimientos movimientos_pkey; Type: CONSTRAINT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.movimientos
    ADD CONSTRAINT movimientos_pkey PRIMARY KEY (movfolio);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (proclave);


--
-- Name: proveedores proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (provclave);


--
-- Name: movimiento_producto movimiento_producto_movfolio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.movimiento_producto
    ADD CONSTRAINT movimiento_producto_movfolio_fkey FOREIGN KEY (movfolio) REFERENCES public.movimientos(movfolio);


--
-- Name: movimiento_producto movimiento_producto_proclave_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.movimiento_producto
    ADD CONSTRAINT movimiento_producto_proclave_fkey FOREIGN KEY (proclave) REFERENCES public.productos(proclave);


--
-- Name: productos productos_depclave_fkey; Type: FK CONSTRAINT; Schema: public; Owner: fernandorosales
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_depclave_fkey FOREIGN KEY (depclave) REFERENCES public.departamentos(depclave);


--
-- PostgreSQL database dump complete
--

