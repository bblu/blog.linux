--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';

--
-- Name: mdb_datasource; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mdb_datasource (
    mdb_id integer NOT NULL,
    mdb_datasourcename character varying(80),
    mdb_datasourcetype integer,
    mdb_connectioninfo character varying(255),
);

ALTER TABLE mdb_datasource OWNER TO postgres;

--
-- Name: mdb_dictionary; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mdb_dictionary (
    id integer NOT NULL,
    cnname character varying(255),
    name character varying(255)
);

ALTER TABLE mdb_dictionary OWNER TO postgres;

COMMENT ON TABLE t_tx_dysb_dydlfzx_update IS '电缆分支箱';
COMMENT ON COLUMN t_tx_dysb_dydlfzx_update.shape IS '空间信息';
COMMENT ON TABLE t_tx_dysb_dydlfzx_update IS '运行编号';
COMMENT ON COLUMN t_tx_dysb_dydlfzx_update.sbzlx IS '设备子类型';
