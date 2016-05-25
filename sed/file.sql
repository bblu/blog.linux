--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: mdb_datasource; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mdb_datasource (
    mdb_id integer NOT NULL,
    mdb_datasourcename character varying(80),
    mdb_datasourcetype integer,
    mdb_connectioninfo character varying(255),
    mdb_isedit smallint,
    mdb_ordinal smallint,
    mdb_isdefault smallint
);


ALTER TABLE mdb_datasource OWNER TO postgres;

--
-- Name: mdb_datasource_mdb_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE mdb_datasource_mdb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mdb_datasource_mdb_id_seq OWNER TO postgres;

--
-- Name: mdb_datasource_mdb_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE mdb_datasource_mdb_id_seq OWNED BY mdb_datasource.mdb_id;


--
-- Name: mdb_dictionary; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mdb_dictionary (
    id integer NOT NULL,
    cnname character varying(255),
    description character varying(255),
    name character varying(255)
);


ALTER TABLE mdb_dictionary OWNER TO postgres;

COPY sys_symbolobject (sys_guid, sys_symbol, sys_classid, sys_remark, sys_schemaid, sys_editdate, sys_terminaloffset, sys_terminalnum) FROM stdin;
40	2050010	3104000	\N	-1	2015-09-17 02:06:34.032986	0.9,0;-0.9,0	2
41	420	3430000	\N	-1	2015-09-17 02:06:34.032986	-1.0,0;1.0,0	2
42	4030010	305000	\N	-1	2015-09-17 02:06:34.032986	0.9,0;-0.9,0	2
43	4050020	3460000	\N	-1	2015-09-17 02:06:34.032986	0.9,0;-0.9,0;	2
44	4290250	2102000	\N	-1	2015-09-17 02:06:34.032986	0.9,0;-0.9,0;	2
45	4020110	302000	\N	-1	2015-09-17 02:06:34.032986	-0.9,0;0.9,0	2

COMMENT ON TABLE t_tx_dysb_dydlfzx_update IS '电缆分支箱';
COMMENT ON COLUMN t_tx_dysb_dydlfzx_update.shape IS '空间信息';
COMMENT ON TABLE t_tx_dysb_dydlfzx_update IS '运行编号';
COMMENT ON COLUMN t_tx_dysb_dydlfzx_update.sbzlx IS '设备子类型';
