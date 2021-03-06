--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY micadoapp.user_types_translation DROP CONSTRAINT IF EXISTS user_types_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.user_types_translation DROP CONSTRAINT IF EXISTS user_types_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.topic_translation DROP CONSTRAINT IF EXISTS topic_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.topic_translation DROP CONSTRAINT IF EXISTS topic_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step_translation DROP CONSTRAINT IF EXISTS step_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step_translation DROP CONSTRAINT IF EXISTS step_translation_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.step_link_translation DROP CONSTRAINT IF EXISTS step_link_translation_step_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.step_link_translation DROP CONSTRAINT IF EXISTS step_link_translation_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.step_link DROP CONSTRAINT IF EXISTS step_link_to_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.step_link DROP CONSTRAINT IF EXISTS step_link_from_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.step_link DROP CONSTRAINT IF EXISTS step_link_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.step DROP CONSTRAINT IF EXISTS step_id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step_document DROP CONSTRAINT IF EXISTS step_document_id_document_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step_document DROP CONSTRAINT IF EXISTS step_document_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.ratings DROP CONSTRAINT IF EXISTS ratings_um_user_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_users DROP CONSTRAINT IF EXISTS process_users_id_user_types_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_users DROP CONSTRAINT IF EXISTS process_users_id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_translation DROP CONSTRAINT IF EXISTS process_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_translation DROP CONSTRAINT IF EXISTS process_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_topic DROP CONSTRAINT IF EXISTS process_topic_id_topic_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_topic DROP CONSTRAINT IF EXISTS process_topic_id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.picture_hotspot_translation DROP CONSTRAINT IF EXISTS picture_hotspot_translation_fk_1;
ALTER TABLE IF EXISTS ONLY micadoapp.picture_hotspot_translation DROP CONSTRAINT IF EXISTS picture_hotspot_translation_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.picture_hotspot DROP CONSTRAINT IF EXISTS picture_hotspot_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_types_translation DROP CONSTRAINT IF EXISTS intervention_types_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_types_translation DROP CONSTRAINT IF EXISTS intervention_types_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_types DROP CONSTRAINT IF EXISTS intervention_types_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_type_validator DROP CONSTRAINT IF EXISTS intervention_type_validator_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_processes DROP CONSTRAINT IF EXISTS intervention_processes_process_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_processes DROP CONSTRAINT IF EXISTS intervention_processes_intervention_type_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_category_translation DROP CONSTRAINT IF EXISTS intervention_category_translation_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_category_translation DROP CONSTRAINT IF EXISTS intervention_category_id_translation_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan DROP CONSTRAINT IF EXISTS individual_intervention_plan_um_user_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan_interventions DROP CONSTRAINT IF EXISTS individual_intervention_plan_interventions_um_user_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan_interventions DROP CONSTRAINT IF EXISTS individual_intervention_plan_interventions_list_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan_interventions DROP CONSTRAINT IF EXISTS individual_intervention_plan_interventions_intervention_type_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.process_comments DROP CONSTRAINT IF EXISTS id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_comments DROP CONSTRAINT IF EXISTS id_comment_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.glossary_translation DROP CONSTRAINT IF EXISTS glossary_translation_fk_1;
ALTER TABLE IF EXISTS ONLY micadoapp.glossary_translation DROP CONSTRAINT IF EXISTS glossary_translation_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.features_flags_translation DROP CONSTRAINT IF EXISTS features_flags_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.features_flags_translation DROP CONSTRAINT IF EXISTS features_flags_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_translation DROP CONSTRAINT IF EXISTS event_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_translation DROP CONSTRAINT IF EXISTS event_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_topic DROP CONSTRAINT IF EXISTS event_topic_id_topic_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_topic DROP CONSTRAINT IF EXISTS event_topic_id_process_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_tags_translation DROP CONSTRAINT IF EXISTS event_tags_translation_fk_1;
ALTER TABLE IF EXISTS ONLY micadoapp.event_tags_translation DROP CONSTRAINT IF EXISTS event_tags_translation_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.event_tags DROP CONSTRAINT IF EXISTS event_tags_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.event DROP CONSTRAINT IF EXISTS event_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.event_category_translation DROP CONSTRAINT IF EXISTS event_category_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_category_translation DROP CONSTRAINT IF EXISTS event_category_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_validated_um_user_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_um_user_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_validator DROP CONSTRAINT IF EXISTS document_type_validator_validable_by_tenant_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_validator DROP CONSTRAINT IF EXISTS document_type_validator_document_type_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_translation DROP CONSTRAINT IF EXISTS document_type_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_translation DROP CONSTRAINT IF EXISTS document_type_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_picture DROP CONSTRAINT IF EXISTS document_type_picture_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.document_pictures DROP CONSTRAINT IF EXISTS document_pictures_fk;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_document_type_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_ask_validate_by_tenant_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.comments_translation DROP CONSTRAINT IF EXISTS comment_translation_lang_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.comments_translation DROP CONSTRAINT IF EXISTS comment_translation_id_fkey;
ALTER TABLE IF EXISTS ONLY micadoapp.user_types_translation DROP CONSTRAINT IF EXISTS user_types_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.user_types DROP CONSTRAINT IF EXISTS user_types_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.topic_translation DROP CONSTRAINT IF EXISTS topic_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.topic DROP CONSTRAINT IF EXISTS topic_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.step_translation DROP CONSTRAINT IF EXISTS step_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.step DROP CONSTRAINT IF EXISTS step_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.step_link_translation DROP CONSTRAINT IF EXISTS step_link_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.step_link DROP CONSTRAINT IF EXISTS step_link_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.step_document DROP CONSTRAINT IF EXISTS step_document_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.settings DROP CONSTRAINT IF EXISTS settings_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.process_users DROP CONSTRAINT IF EXISTS process_users_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.process_translation DROP CONSTRAINT IF EXISTS process_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.process_topic DROP CONSTRAINT IF EXISTS process_topic_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.process DROP CONSTRAINT IF EXISTS process_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.process_comments DROP CONSTRAINT IF EXISTS process_comment_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.picture_hotspot_translation DROP CONSTRAINT IF EXISTS picture_hotspot_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.picture_hotspot DROP CONSTRAINT IF EXISTS picture_hotspot_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.migrant_app_config DROP CONSTRAINT IF EXISTS migrant_app_config_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.languages DROP CONSTRAINT IF EXISTS languages_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_types_translation DROP CONSTRAINT IF EXISTS intervention_types_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_types DROP CONSTRAINT IF EXISTS intervention_types_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_type_validator DROP CONSTRAINT IF EXISTS intervention_type_validator_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_category_translation DROP CONSTRAINT IF EXISTS intervention_category_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.intervention_category DROP CONSTRAINT IF EXISTS intervention_category_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan DROP CONSTRAINT IF EXISTS individual_intervention_plan_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.individual_intervention_plan_interventions DROP CONSTRAINT IF EXISTS individual_intervention_plan_interventions_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.glossary_translation DROP CONSTRAINT IF EXISTS glossary_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.glossary DROP CONSTRAINT IF EXISTS glossary_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.features_flags_translation DROP CONSTRAINT IF EXISTS features_flags_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.features_flags DROP CONSTRAINT IF EXISTS features_flag_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_tags_translation DROP CONSTRAINT IF EXISTS event_tags_translation_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.event_tags DROP CONSTRAINT IF EXISTS event_tags_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.event DROP CONSTRAINT IF EXISTS event_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.event_category DROP CONSTRAINT IF EXISTS event_category_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_translation DROP CONSTRAINT IF EXISTS document_type_translation_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type DROP CONSTRAINT IF EXISTS document_type_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.document_type_picture DROP CONSTRAINT IF EXISTS document_type_picture_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.document DROP CONSTRAINT IF EXISTS document_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.document_pictures DROP CONSTRAINT IF EXISTS document_pictures_pk;
ALTER TABLE IF EXISTS ONLY micadoapp.comments_translation DROP CONSTRAINT IF EXISTS comments_translation_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.comments DROP CONSTRAINT IF EXISTS comments_pkey;
ALTER TABLE IF EXISTS ONLY micadoapp.charts DROP CONSTRAINT IF EXISTS charts_pkey;
ALTER TABLE IF EXISTS micadoapp.user_types_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.user_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.topic_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.topic ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.ratings ALTER COLUMN content_id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_users ALTER COLUMN id_user_types DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_users ALTER COLUMN id_process DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_translation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_topic ALTER COLUMN id_topic DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process_topic ALTER COLUMN id_process DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.process ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.picture_hotspot ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.intervention_types ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.intervention_processes ALTER COLUMN process_id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.intervention_processes ALTER COLUMN intervention_type DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.intervention_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.individual_intervention_plan_interventions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.individual_intervention_plan_interventions ALTER COLUMN intervention_type DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.individual_intervention_plan_interventions ALTER COLUMN list_id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.individual_intervention_plan ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.glossary ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.features_flags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_topic ALTER COLUMN id_topic DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_topic ALTER COLUMN id_event DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_tags ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.event ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.document_type_picture ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.document_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.document ALTER COLUMN document_type DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.document ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS micadoapp.comments ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS micadoapp.user_types_translation_id_seq;
DROP TABLE IF EXISTS micadoapp.user_types_translation;
DROP SEQUENCE IF EXISTS micadoapp.user_types_id_seq;
DROP TABLE IF EXISTS micadoapp.user_types;
DROP SEQUENCE IF EXISTS micadoapp.topic_translation_id_seq;
DROP VIEW IF EXISTS micadoapp.topic_translated;
DROP TABLE IF EXISTS micadoapp.topic_translation;
DROP SEQUENCE IF EXISTS micadoapp.topic_id_seq;
DROP TABLE IF EXISTS micadoapp.topic;
DROP TABLE IF EXISTS micadoapp.step_translation;
DROP TABLE IF EXISTS micadoapp.step_link_translation;
DROP TABLE IF EXISTS micadoapp.step_link;
DROP TABLE IF EXISTS micadoapp.step_document;
DROP TABLE IF EXISTS micadoapp.step;
DROP TABLE IF EXISTS micadoapp.settings;
DROP SEQUENCE IF EXISTS micadoapp.ratings_content_id_seq;
DROP TABLE IF EXISTS micadoapp.ratings;
DROP SEQUENCE IF EXISTS micadoapp.process_users_id_user_types_seq;
DROP SEQUENCE IF EXISTS micadoapp.process_users_id_process_seq;
DROP TABLE IF EXISTS micadoapp.process_users;
DROP SEQUENCE IF EXISTS micadoapp.process_translation_id_seq;
DROP VIEW IF EXISTS micadoapp.process_translated;
DROP TABLE IF EXISTS micadoapp.process_translation;
DROP SEQUENCE IF EXISTS micadoapp.process_topic_id_topic_seq;
DROP SEQUENCE IF EXISTS micadoapp.process_topic_id_process_seq;
DROP TABLE IF EXISTS micadoapp.process_topic;
DROP SEQUENCE IF EXISTS micadoapp.process_id_seq;
DROP TABLE IF EXISTS micadoapp.process_comments;
DROP TABLE IF EXISTS micadoapp.process;
DROP VIEW IF EXISTS micadoapp.picture_hotspot_translated;
DROP TABLE IF EXISTS micadoapp.picture_hotspot_translation;
DROP SEQUENCE IF EXISTS micadoapp.picture_hotspot_id_seq;
DROP TABLE IF EXISTS micadoapp.picture_hotspot;
DROP TABLE IF EXISTS micadoapp.migrant_app_config;
DROP TABLE IF EXISTS micadoapp.languages;
DROP TABLE IF EXISTS micadoapp.intervention_types_translation;
DROP SEQUENCE IF EXISTS micadoapp.intervention_types_id_seq;
DROP TABLE IF EXISTS micadoapp.intervention_types;
DROP TABLE IF EXISTS micadoapp.intervention_type_validator;
DROP SEQUENCE IF EXISTS micadoapp.intervention_processes_process_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.intervention_processes_intervention_type_seq;
DROP TABLE IF EXISTS micadoapp.intervention_processes;
DROP TABLE IF EXISTS micadoapp.intervention_category_translation;
DROP SEQUENCE IF EXISTS micadoapp.intervention_category_id_seq;
DROP TABLE IF EXISTS micadoapp.intervention_category;
DROP SEQUENCE IF EXISTS micadoapp.individual_intervention_plan_interventions_list_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.individual_intervention_plan_interventions_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.individual_intervention_plan_intervention_intervention_type_seq;
DROP TABLE IF EXISTS micadoapp.individual_intervention_plan_interventions;
DROP SEQUENCE IF EXISTS micadoapp.individual_intervention_plan_id_seq;
DROP TABLE IF EXISTS micadoapp.individual_intervention_plan;
DROP TABLE IF EXISTS micadoapp.glossary_translation;
DROP SEQUENCE IF EXISTS micadoapp.glossary_id_seq;
DROP TABLE IF EXISTS micadoapp.glossary;
DROP VIEW IF EXISTS micadoapp.features_flags_translated;
DROP TABLE IF EXISTS micadoapp.features_flags_translation;
DROP SEQUENCE IF EXISTS micadoapp.features_flags_id_seq;
DROP TABLE IF EXISTS micadoapp.event_translation;
DROP SEQUENCE IF EXISTS micadoapp.event_topic_id_topic_seq;
DROP SEQUENCE IF EXISTS micadoapp.event_topic_id_event_seq;
DROP TABLE IF EXISTS micadoapp.event_topic;
DROP TABLE IF EXISTS micadoapp.event_tags_translation;
DROP SEQUENCE IF EXISTS micadoapp.event_tags_id_seq1;
DROP SEQUENCE IF EXISTS micadoapp.event_tags_id_seq;
DROP TABLE IF EXISTS micadoapp.event_tags;
DROP SEQUENCE IF EXISTS micadoapp.event_id_seq;
DROP TABLE IF EXISTS micadoapp.event_category_translation;
DROP SEQUENCE IF EXISTS micadoapp.event_category_id_seq;
DROP TABLE IF EXISTS micadoapp.event_category;
DROP TABLE IF EXISTS micadoapp.event;
DROP TABLE IF EXISTS micadoapp.document_type_validator;
DROP VIEW IF EXISTS micadoapp.document_type_translated;
DROP TABLE IF EXISTS micadoapp.document_type_translation;
DROP SEQUENCE IF EXISTS micadoapp.document_type_picture_id_seq;
DROP TABLE IF EXISTS micadoapp.document_type_picture;
DROP SEQUENCE IF EXISTS micadoapp.document_type_id_seq;
DROP TABLE IF EXISTS micadoapp.document_type;
DROP TABLE IF EXISTS micadoapp.document_pictures;
DROP SEQUENCE IF EXISTS micadoapp.document_pictures_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.document_id_seq;
DROP SEQUENCE IF EXISTS micadoapp.document_document_type_seq;
DROP TABLE IF EXISTS micadoapp.document;
DROP TABLE IF EXISTS micadoapp.comments_translation;
DROP SEQUENCE IF EXISTS micadoapp.comments_id_seq;
DROP TABLE IF EXISTS micadoapp.comments;
DROP TABLE IF EXISTS micadoapp.charts;
DROP SEQUENCE IF EXISTS micadoapp.charts_id_seq;
DROP VIEW IF EXISTS micadoapp.active_features;
DROP TABLE IF EXISTS micadoapp.features_flags;
DROP SCHEMA IF EXISTS micadoapp;
--
-- Name: micadoapp; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA micadoapp;


SET default_with_oids = false;

--
-- Name: features_flags; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.features_flags (
    id smallint NOT NULL,
    flag_key text,
    enabled boolean DEFAULT false NOT NULL
);


--
-- Name: active_features; Type: VIEW; Schema: micadoapp; Owner: -
--

CREATE VIEW micadoapp.active_features AS
 SELECT json_agg(features_flags.flag_key) AS features
   FROM micadoapp.features_flags
  WHERE (features_flags.enabled = true);


--
-- Name: charts_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.charts_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: charts; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.charts (
    id smallint DEFAULT nextval('micadoapp.charts_id_seq'::regclass) NOT NULL,
    title character(255) NOT NULL,
    content character varying NOT NULL,
    description character varying,
    category character(255),
    format character(255),
    type character(255),
    xistime boolean,
    x character(255),
    y character(255),
    board character(255)
);


--
-- Name: comments; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.comments (
    published boolean,
    publicationdate date,
    id smallint NOT NULL
);


--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.comments_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.comments_id_seq OWNED BY micadoapp.comments.id;


--
-- Name: comments_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.comments_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    comment text,
    translationdate date
);


--
-- Name: document; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document (
    id smallint NOT NULL,
    document_type smallint NOT NULL,
    user_id integer,
    user_tenant integer,
    ask_validate_by_tenant smallint,
    validated boolean DEFAULT false NOT NULL,
    validation_date timestamp without time zone,
    validated_by_tenant integer,
    validated_by_user integer,
    uploaded_by_me boolean DEFAULT false NOT NULL,
    expiration_date timestamp without time zone
);


--
-- Name: COLUMN document.user_id; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document.user_id IS 'id of the user owner of the document';


--
-- Name: COLUMN document.ask_validate_by_tenant; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document.ask_validate_by_tenant IS 'if the document is of a type that is validable here is where the owner can ask a potential validator to validate it';


--
-- Name: COLUMN document.uploaded_by_me; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document.uploaded_by_me IS 'this is used to uinderstand if is uploaded by the owner so that he can edit';


--
-- Name: COLUMN document.expiration_date; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document.expiration_date IS 'this will be inserted by hand';


--
-- Name: document_document_type_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.document_document_type_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: document_document_type_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.document_document_type_seq OWNED BY micadoapp.document.document_type;


--
-- Name: document_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.document_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: document_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.document_id_seq OWNED BY micadoapp.document.id;


--
-- Name: document_pictures_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.document_pictures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 32767
    CACHE 1;


--
-- Name: document_pictures; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document_pictures (
    id smallint DEFAULT nextval('micadoapp.document_pictures_id_seq'::regclass) NOT NULL,
    picture text,
    doc_id smallint NOT NULL,
    "order" smallint
);


--
-- Name: document_type; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document_type (
    id smallint NOT NULL,
    icon text,
    issuer character varying(20),
    model text,
    validable boolean DEFAULT false NOT NULL,
    validity_duration smallint,
    published boolean DEFAULT false NOT NULL,
    publication_date date
);


--
-- Name: COLUMN document_type.issuer; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document_type.issuer IS 'free text since not all issuers will have a tenant in MICADO';


--
-- Name: COLUMN document_type.validable; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document_type.validable IS 'if trhis document can be validated';


--
-- Name: COLUMN document_type.validity_duration; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON COLUMN micadoapp.document_type.validity_duration IS 'the duration of the document in days';


--
-- Name: document_type_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.document_type_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: document_type_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.document_type_id_seq OWNED BY micadoapp.document_type.id;


--
-- Name: document_type_picture; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document_type_picture (
    id smallint NOT NULL,
    image text,
    document_type_id smallint NOT NULL,
    "order" integer
);


--
-- Name: document_type_picture_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.document_type_picture_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: document_type_picture_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.document_type_picture_id_seq OWNED BY micadoapp.document_type_picture.id;


--
-- Name: document_type_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document_type_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    document character varying(50),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: document_type_translated; Type: VIEW; Schema: micadoapp; Owner: -
--

CREATE VIEW micadoapp.document_type_translated AS
 SELECT dt.id,
    dt.icon,
    dt.issuer,
    dt.model,
    dt.validable,
    dt.validity_duration,
    dtt.lang,
    dtt.document,
    dtt.description
   FROM micadoapp.document_type dt,
    micadoapp.document_type_translation dtt
  WHERE (dt.id = dtt.id);


--
-- Name: document_type_validator; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.document_type_validator (
    document_type_id smallint NOT NULL,
    validable_by_tenant integer
);


--
-- Name: TABLE document_type_validator; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON TABLE micadoapp.document_type_validator IS 'this table map all the organizations that are eligible to validate that tenant';


--
-- Name: event; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event (
    id smallint NOT NULL,
    link character varying(70),
    published boolean DEFAULT false NOT NULL,
    publication_date timestamp without time zone,
    category smallint
);


--
-- Name: TABLE event; Type: COMMENT; Schema: micadoapp; Owner: -
--

COMMENT ON TABLE micadoapp.event IS 'this is the generic event table for courses, news,  etc that each organization wants to publish';


--
-- Name: event_category; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_category (
    id smallint NOT NULL,
    icon text,
    link_integration_plan boolean
);


--
-- Name: event_category_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_category_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_category_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_category_id_seq OWNED BY micadoapp.event_category.id;


--
-- Name: event_category_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_category_translation (
    id smallint NOT NULL,
    lang character varying(10),
    event_category character varying(20),
    translation_date timestamp without time zone
);


--
-- Name: event_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_id_seq OWNED BY micadoapp.event.id;


--
-- Name: event_tags; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_tags (
    id smallint NOT NULL,
    event_id smallint NOT NULL
);


--
-- Name: event_tags_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_tags_id_seq1; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_tags_id_seq1
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_tags_id_seq1; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_tags_id_seq1 OWNED BY micadoapp.event_tags.id;


--
-- Name: event_tags_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_tags_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    tag character varying NOT NULL,
    translation_date timestamp without time zone
);


--
-- Name: event_topic; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_topic (
    id_event smallint NOT NULL,
    id_topic smallint NOT NULL
);


--
-- Name: event_topic_id_event_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_topic_id_event_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_topic_id_event_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_topic_id_event_seq OWNED BY micadoapp.event_topic.id_event;


--
-- Name: event_topic_id_topic_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.event_topic_id_topic_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: event_topic_id_topic_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.event_topic_id_topic_seq OWNED BY micadoapp.event_topic.id_topic;


--
-- Name: event_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.event_translation (
    id smallint NOT NULL,
    lang character varying(10),
    event character varying(20),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: features_flags_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.features_flags_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: features_flags_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.features_flags_id_seq OWNED BY micadoapp.features_flags.id;


--
-- Name: features_flags_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.features_flags_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    feature character varying(30),
    translation_date timestamp without time zone
);


--
-- Name: features_flags_translated; Type: VIEW; Schema: micadoapp; Owner: -
--

CREATE VIEW micadoapp.features_flags_translated AS
 SELECT f.id,
    f.flag_key,
    f.enabled,
    ft.lang,
    ft.feature
   FROM micadoapp.features_flags f,
    micadoapp.features_flags_translation ft
  WHERE (f.id = ft.id);


--
-- Name: glossary; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.glossary (
    id smallint NOT NULL,
    published boolean DEFAULT false NOT NULL,
    publication_date date
);


--
-- Name: glossary_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.glossary_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: glossary_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.glossary_id_seq OWNED BY micadoapp.glossary.id;


--
-- Name: glossary_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.glossary_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    title character varying(25),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: individual_intervention_plan; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.individual_intervention_plan (
    id smallint NOT NULL,
    title character varying(30),
    creation_date timestamp without time zone,
    end_date timestamp without time zone,
    case_manager character varying(30),
    user_id integer,
    user_tenant integer,
    completed boolean DEFAULT false NOT NULL
);


--
-- Name: individual_intervention_plan_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.individual_intervention_plan_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: individual_intervention_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.individual_intervention_plan_id_seq OWNED BY micadoapp.individual_intervention_plan.id;


--
-- Name: individual_intervention_plan_interventions; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.individual_intervention_plan_interventions (
    list_id smallint NOT NULL,
    intervention_type smallint NOT NULL,
    validation_date timestamp without time zone,
    completed boolean,
    validating_user_id integer,
    validating_user_tenant integer,
    assignment_date timestamp without time zone,
    id smallint NOT NULL,
    validationrequestdate date
);


--
-- Name: individual_intervention_plan_intervention_intervention_type_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.individual_intervention_plan_intervention_intervention_type_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: individual_intervention_plan_intervention_intervention_type_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.individual_intervention_plan_intervention_intervention_type_seq OWNED BY micadoapp.individual_intervention_plan_interventions.intervention_type;


--
-- Name: individual_intervention_plan_interventions_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.individual_intervention_plan_interventions_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: individual_intervention_plan_interventions_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.individual_intervention_plan_interventions_id_seq OWNED BY micadoapp.individual_intervention_plan_interventions.id;


--
-- Name: individual_intervention_plan_interventions_list_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.individual_intervention_plan_interventions_list_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: individual_intervention_plan_interventions_list_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.individual_intervention_plan_interventions_list_id_seq OWNED BY micadoapp.individual_intervention_plan_interventions.list_id;


--
-- Name: intervention_category; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_category (
    id smallint NOT NULL,
    published boolean DEFAULT false NOT NULL,
    publication_date date
);


--
-- Name: intervention_category_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.intervention_category_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: intervention_category_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.intervention_category_id_seq OWNED BY micadoapp.intervention_category.id;


--
-- Name: intervention_category_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_category_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    title character varying(30),
    translation_date timestamp without time zone
);


--
-- Name: intervention_processes; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_processes (
    intervention_type smallint NOT NULL,
    process_id smallint NOT NULL
);


--
-- Name: intervention_processes_intervention_type_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.intervention_processes_intervention_type_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: intervention_processes_intervention_type_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.intervention_processes_intervention_type_seq OWNED BY micadoapp.intervention_processes.intervention_type;


--
-- Name: intervention_processes_process_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.intervention_processes_process_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: intervention_processes_process_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.intervention_processes_process_id_seq OWNED BY micadoapp.intervention_processes.process_id;


--
-- Name: intervention_type_validator; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_type_validator (
    tenant_id integer NOT NULL,
    intervention_type_id smallint NOT NULL
);


--
-- Name: intervention_types; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_types (
    id smallint NOT NULL,
    published boolean DEFAULT false NOT NULL,
    publication_date date,
    category_type smallint
);


--
-- Name: intervention_types_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.intervention_types_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: intervention_types_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.intervention_types_id_seq OWNED BY micadoapp.intervention_types.id;


--
-- Name: intervention_types_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.intervention_types_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    intervention_title character varying(20),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: languages; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.languages (
    lang character varying(10) NOT NULL,
    iso_code character varying(10),
    name character varying(25),
    active boolean DEFAULT false NOT NULL,
    is_default boolean DEFAULT false NOT NULL
);


--
-- Name: migrant_app_config; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.migrant_app_config (
    id integer NOT NULL,
    features json
);


--
-- Name: picture_hotspot; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.picture_hotspot (
    id smallint NOT NULL,
    x smallint,
    y smallint,
    picture_id smallint
);


--
-- Name: picture_hotspot_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.picture_hotspot_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: picture_hotspot_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.picture_hotspot_id_seq OWNED BY micadoapp.picture_hotspot.id;


--
-- Name: picture_hotspot_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.picture_hotspot_translation (
    pht_id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    title character varying(20),
    message text
);


--
-- Name: picture_hotspot_translated; Type: VIEW; Schema: micadoapp; Owner: -
--

CREATE VIEW micadoapp.picture_hotspot_translated AS
 SELECT ph.id,
    ph.x,
    ph.y,
    ph.picture_id,
    pht.lang,
    pht.title,
    pht.message
   FROM micadoapp.picture_hotspot ph,
    micadoapp.picture_hotspot_translation pht
  WHERE (ph.id = pht.pht_id);


--
-- Name: process; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.process (
    id smallint NOT NULL,
    link character varying(70),
    published boolean DEFAULT false NOT NULL,
    publication_date timestamp without time zone
);


--
-- Name: process_comments; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.process_comments (
    idcomment smallint NOT NULL,
    idprocess smallint NOT NULL
);


--
-- Name: process_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_id_seq OWNED BY micadoapp.process.id;


--
-- Name: process_topic; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.process_topic (
    id_process smallint NOT NULL,
    id_topic smallint NOT NULL
);


--
-- Name: process_topic_id_process_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_topic_id_process_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_topic_id_process_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_topic_id_process_seq OWNED BY micadoapp.process_topic.id_process;


--
-- Name: process_topic_id_topic_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_topic_id_topic_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_topic_id_topic_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_topic_id_topic_seq OWNED BY micadoapp.process_topic.id_topic;


--
-- Name: process_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.process_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    process character varying(30),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: process_translated; Type: VIEW; Schema: micadoapp; Owner: -
--

CREATE VIEW micadoapp.process_translated AS
 SELECT p.id,
    p.link,
    p.published,
    p.publication_date,
    pt.lang,
    pt.process,
    pt.description
   FROM micadoapp.process p,
    micadoapp.process_translation pt
  WHERE (p.id = pt.id);


--
-- Name: process_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_translation_id_seq OWNED BY micadoapp.process_translation.id;


--
-- Name: process_users; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.process_users (
    id_process smallint NOT NULL,
    id_user_types smallint NOT NULL
);


--
-- Name: process_users_id_process_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_users_id_process_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_users_id_process_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_users_id_process_seq OWNED BY micadoapp.process_users.id_process;


--
-- Name: process_users_id_user_types_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.process_users_id_user_types_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: process_users_id_user_types_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.process_users_id_user_types_seq OWNED BY micadoapp.process_users.id_user_types;


--
-- Name: ratings; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.ratings (
    user_id integer,
    user_tenant integer,
    content_id smallint NOT NULL,
    content_type integer,
    value integer
);


--
-- Name: ratings_content_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.ratings_content_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ratings_content_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.ratings_content_id_seq OWNED BY micadoapp.ratings.content_id;


--
-- Name: settings; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.settings (
    key character varying NOT NULL,
    value character varying(1500)
);


--
-- Name: step; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.step (
    id uuid NOT NULL,
    cost real,
    location_specific boolean,
    location character varying(100),
    location_lon real,
    location_lat real,
    id_process smallint NOT NULL
);


--
-- Name: step_document; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.step_document (
    id_document smallint NOT NULL,
    is_out boolean NOT NULL,
    cost money,
    id_step uuid NOT NULL
);


--
-- Name: step_link; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.step_link (
    id uuid NOT NULL,
    from_step uuid NOT NULL,
    to_step uuid NOT NULL,
    id_process smallint NOT NULL
);


--
-- Name: step_link_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.step_link_translation (
    lang character varying(10) NOT NULL,
    description character varying(25),
    id uuid NOT NULL
);


--
-- Name: step_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.step_translation (
    lang character varying(10) NOT NULL,
    step character varying(25),
    description text,
    translation_date timestamp without time zone,
    id uuid NOT NULL
);


--
-- Name: topic; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.topic (
    id smallint NOT NULL,
    icon text,
    published boolean DEFAULT false NOT NULL,
    publication_date date
);


--
-- Name: topic_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.topic_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: topic_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.topic_id_seq OWNED BY micadoapp.topic.id;


--
-- Name: topic_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.topic_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    topic character varying(20),
    translation_date timestamp without time zone
);


--
-- Name: topic_translated; Type: VIEW; Schema: micadoapp; Owner: -
--

CREATE VIEW micadoapp.topic_translated AS
 SELECT t.id,
    t.icon,
    tt.lang,
    tt.topic
   FROM micadoapp.topic t,
    micadoapp.topic_translation tt
  WHERE (t.id = tt.id);


--
-- Name: topic_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.topic_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: topic_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.topic_translation_id_seq OWNED BY micadoapp.topic_translation.id;


--
-- Name: user_types; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.user_types (
    id smallint NOT NULL,
    icon text,
    published boolean DEFAULT false NOT NULL,
    publication_date date
);


--
-- Name: user_types_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.user_types_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_types_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.user_types_id_seq OWNED BY micadoapp.user_types.id;


--
-- Name: user_types_translation; Type: TABLE; Schema: micadoapp; Owner: -
--

CREATE TABLE micadoapp.user_types_translation (
    id smallint NOT NULL,
    lang character varying(10) NOT NULL,
    user_type character varying(20),
    description text,
    translation_date timestamp without time zone
);


--
-- Name: user_types_translation_id_seq; Type: SEQUENCE; Schema: micadoapp; Owner: -
--

CREATE SEQUENCE micadoapp.user_types_translation_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_types_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: micadoapp; Owner: -
--

ALTER SEQUENCE micadoapp.user_types_translation_id_seq OWNED BY micadoapp.user_types_translation.id;


--
-- Name: comments id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.comments ALTER COLUMN id SET DEFAULT nextval('micadoapp.comments_id_seq'::regclass);


--
-- Name: document id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document ALTER COLUMN id SET DEFAULT nextval('micadoapp.document_id_seq'::regclass);


--
-- Name: document document_type; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document ALTER COLUMN document_type SET DEFAULT nextval('micadoapp.document_document_type_seq'::regclass);


--
-- Name: document_type id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type ALTER COLUMN id SET DEFAULT nextval('micadoapp.document_type_id_seq'::regclass);


--
-- Name: document_type_picture id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_picture ALTER COLUMN id SET DEFAULT nextval('micadoapp.document_type_picture_id_seq'::regclass);


--
-- Name: event id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event ALTER COLUMN id SET DEFAULT nextval('micadoapp.event_id_seq'::regclass);


--
-- Name: event_category id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_category ALTER COLUMN id SET DEFAULT nextval('micadoapp.event_category_id_seq'::regclass);


--
-- Name: event_tags id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_tags ALTER COLUMN id SET DEFAULT nextval('micadoapp.event_tags_id_seq1'::regclass);


--
-- Name: event_topic id_event; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_topic ALTER COLUMN id_event SET DEFAULT nextval('micadoapp.event_topic_id_event_seq'::regclass);


--
-- Name: event_topic id_topic; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_topic ALTER COLUMN id_topic SET DEFAULT nextval('micadoapp.event_topic_id_topic_seq'::regclass);


--
-- Name: features_flags id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags ALTER COLUMN id SET DEFAULT nextval('micadoapp.features_flags_id_seq'::regclass);


--
-- Name: glossary id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.glossary ALTER COLUMN id SET DEFAULT nextval('micadoapp.glossary_id_seq'::regclass);


--
-- Name: individual_intervention_plan id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan ALTER COLUMN id SET DEFAULT nextval('micadoapp.individual_intervention_plan_id_seq'::regclass);


--
-- Name: individual_intervention_plan_interventions list_id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions ALTER COLUMN list_id SET DEFAULT nextval('micadoapp.individual_intervention_plan_interventions_list_id_seq'::regclass);


--
-- Name: individual_intervention_plan_interventions intervention_type; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions ALTER COLUMN intervention_type SET DEFAULT nextval('micadoapp.individual_intervention_plan_intervention_intervention_type_seq'::regclass);


--
-- Name: individual_intervention_plan_interventions id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions ALTER COLUMN id SET DEFAULT nextval('micadoapp.individual_intervention_plan_interventions_id_seq'::regclass);


--
-- Name: intervention_category id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_category ALTER COLUMN id SET DEFAULT nextval('micadoapp.intervention_category_id_seq'::regclass);


--
-- Name: intervention_processes intervention_type; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_processes ALTER COLUMN intervention_type SET DEFAULT nextval('micadoapp.intervention_processes_intervention_type_seq'::regclass);


--
-- Name: intervention_processes process_id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_processes ALTER COLUMN process_id SET DEFAULT nextval('micadoapp.intervention_processes_process_id_seq'::regclass);


--
-- Name: intervention_types id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types ALTER COLUMN id SET DEFAULT nextval('micadoapp.intervention_types_id_seq'::regclass);


--
-- Name: picture_hotspot id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.picture_hotspot ALTER COLUMN id SET DEFAULT nextval('micadoapp.picture_hotspot_id_seq'::regclass);


--
-- Name: process id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process ALTER COLUMN id SET DEFAULT nextval('micadoapp.process_id_seq'::regclass);


--
-- Name: process_topic id_process; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_topic ALTER COLUMN id_process SET DEFAULT nextval('micadoapp.process_topic_id_process_seq'::regclass);


--
-- Name: process_topic id_topic; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_topic ALTER COLUMN id_topic SET DEFAULT nextval('micadoapp.process_topic_id_topic_seq'::regclass);


--
-- Name: process_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.process_translation_id_seq'::regclass);


--
-- Name: process_users id_process; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_users ALTER COLUMN id_process SET DEFAULT nextval('micadoapp.process_users_id_process_seq'::regclass);


--
-- Name: process_users id_user_types; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_users ALTER COLUMN id_user_types SET DEFAULT nextval('micadoapp.process_users_id_user_types_seq'::regclass);


--
-- Name: ratings content_id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.ratings ALTER COLUMN content_id SET DEFAULT nextval('micadoapp.ratings_content_id_seq'::regclass);


--
-- Name: topic id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic ALTER COLUMN id SET DEFAULT nextval('micadoapp.topic_id_seq'::regclass);


--
-- Name: topic_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.topic_translation_id_seq'::regclass);


--
-- Name: user_types id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types ALTER COLUMN id SET DEFAULT nextval('micadoapp.user_types_id_seq'::regclass);


--
-- Name: user_types_translation id; Type: DEFAULT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types_translation ALTER COLUMN id SET DEFAULT nextval('micadoapp.user_types_translation_id_seq'::regclass);


--
-- Data for Name: charts; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.charts VALUES (3, 'Homeless + YAP(Young Adults Project)                                                                                                                                                                                                                           ', '[{"mic:datum":["2015-06"],"mic:wert":["2543"]},{"mic:datum":["2015-07"],"mic:wert":["2586"]},{"mic:datum":["2015-08"],"mic:wert":["2634"]},{"mic:datum":["2015-09"],"mic:wert":["2649"]},{"mic:datum":["2015-10"],"mic:wert":["2709"]},{"mic:datum":["2015-11"],"mic:wert":["2791"]},{"mic:datum":["2015-12"],"mic:wert":["2982"]},{"mic:datum":["2016-01"],"mic:wert":["2908"]},{"mic:datum":["2016-02"],"mic:wert":["3003"]},{"mic:datum":["2016-03"],"mic:wert":["3010"]},{"mic:datum":["2016-04"],"mic:wert":["3095"]},{"mic:datum":["2016-05"],"mic:wert":["3114"]},{"mic:datum":["2016-06"],"mic:wert":["3151"]},{"mic:datum":["2016-07"],"mic:wert":["3226"]},{"mic:datum":["2016-08"],"mic:wert":["3269"]},{"mic:datum":["2016-09"],"mic:wert":["3251"]},{"mic:datum":["2016-10"],"mic:wert":["3282"]},{"mic:datum":["2016-11"],"mic:wert":["3303"]},{"mic:datum":["2016-12"],"mic:wert":["3319"]},{"mic:datum":["2017-01"],"mic:wert":["3366"]},{"mic:datum":["2017-02"],"mic:wert":["3405"]},{"mic:datum":["2017-03"],"mic:wert":["3580"]},{"mic:datum":["2017-04"],"mic:wert":["3660"]},{"mic:datum":["2017-05"],"mic:wert":["3716"]},{"mic:datum":["2017-06"],"mic:wert":["3897"]},{"mic:datum":["2017-07"],"mic:wert":["4027"]},{"mic:datum":["2017-08"],"mic:wert":["4173"]},{"mic:datum":["2017-09"],"mic:wert":["4294"]},{"mic:datum":["2017-10"],"mic:wert":["4321"]},{"mic:datum":["2017-11"],"mic:wert":["4442"]},{"mic:datum":["2017-12"],"mic:wert":["4505"]},{"mic:datum":["2018-01"],"mic:wert":["4625"]},{"mic:datum":["2018-02"],"mic:wert":["4652"]},{"mic:datum":["2018-03"],"mic:wert":["4649"]},{"mic:datum":["2018-04"],"mic:wert":["4612"]},{"mic:datum":["2018-05"],"mic:wert":["4676"]},{"mic:datum":["2018-06"],"mic:wert":["4716"]},{"mic:datum":["2018-07"],"mic:wert":["4762"]},{"mic:datum":["2018-08"],"mic:wert":["4810"]},{"mic:datum":["2018-09"],"mic:wert":["4926"]},{"mic:datum":["2018-10"],"mic:wert":["4966"]},{"mic:datum":["2018-11"],"mic:wert":["5008"]},{"mic:datum":["2018-12"],"mic:wert":["4954"]},{"mic:datum":["2019-01"],"mic:wert":["4991"]},{"mic:datum":["2019-02"],"mic:wert":["5007"]},{"mic:datum":["2019-03"],"mic:wert":["5051"]},{"mic:datum":["2019-04"],"mic:wert":["5164"]},{"mic:datum":["2019-05"],"mic:wert":["5210"]},{"mic:datum":["2019-06"],"mic:wert":["5276"]},{"mic:datum":["2019-07"],"mic:wert":["5289"]},{"mic:datum":["2019-08"],"mic:wert":["5274"]},{"mic:datum":["2019-09"],"mic:wert":["5257"]},{"mic:datum":["2019-10"],"mic:wert":["5310"]},{"mic:datum":["2019-11"],"mic:wert":["5358"]},{"mic:datum":["2019-12"],"mic:wert":["5436"]},{"mic:datum":["2020-01"],"mic:wert":["5466"]},{"mic:datum":["2020-02"],"mic:wert":["5474"]},{"mic:datum":["2020-03"],"mic:wert":["5506"]}]', NULL, 'integration                                                                                                                                                                                                                                                    ', NULL, 'LINE                                                                                                                                                                                                                                                           ', true, 'mic:datum                                                                                                                                                                                                                                                      ', 'mic:wert                                                                                                                                                                                                                                                       ', 'hamburg                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (1, 'Influx Hamburg                                                                                                                                                                                                                                                 ', '[{"mic:datum":"2015-06","mic:wert":56},{"mic:datum":"2015-07","mic:wert":88},{"mic:datum":"2015-08","mic:wert":101},{"mic:datum":"2015-09","mic:wert":122},{"mic:datum":"2015-10","mic:wert":"112"},{"mic:datum":"2015-11","mic:wert":"89"},{"mic:datum":"2015-12","mic:wert":"113"},{"mic:datum":"2016-01","mic:wert":"106"},{"mic:datum":"2016-02","mic:wert":"82"},{"mic:datum":"2016-03","mic:wert":"91"},{"mic:datum":"2016-04","mic:wert":"110"},{"mic:datum":"2016-05","mic:wert":"123"},{"mic:datum":"2016-06","mic:wert":"158"},{"mic:datum":"2016-07","mic:wert":"91"},{"mic:datum":"2016-08","mic:wert":"150"},{"mic:datum":"2016-09","mic:wert":"145"},{"mic:datum":"2016-10","mic:wert":"128"},{"mic:datum":"2016-11","mic:wert":"147"},{"mic:datum":"2016-12","mic:wert":"206"},{"mic:datum":"2017-01","mic:wert":"105"},{"mic:datum":"2017-02","mic:wert":"132"},{"mic:datum":"2017-03","mic:wert":"157"},{"mic:datum":"2017-04","mic:wert":"92"},{"mic:datum":"2017-05","mic:wert":"164"},{"mic:datum":"2017-06","mic:wert":"128"},{"mic:datum":"2017-07","mic:wert":"162"},{"mic:datum":"2017-08","mic:wert":"129"},{"mic:datum":"2017-09","mic:wert":"142"},{"mic:datum":"2017-10","mic:wert":"146"},{"mic:datum":"2017-11","mic:wert":"102"},{"mic:datum":"2017-12","mic:wert":"90"},{"mic:datum":"2018-01","mic:wert":"76"},{"mic:datum":"2018-02","mic:wert":"64"},{"mic:datum":"2018-03","mic:wert":"125"},{"mic:datum":"2018-04","mic:wert":"67"},{"mic:datum":"2018-05","mic:wert":"83"},{"mic:datum":"2018-06","mic:wert":"83"},{"mic:datum":"2018-07","mic:wert":"64"},{"mic:datum":"2018-08","mic:wert":"54"},{"mic:datum":"2018-09","mic:wert":"48"},{"mic:datum":"2018-10","mic:wert":"46"},{"mic:datum":"2018-11","mic:wert":"91"},{"mic:datum":"2018-12","mic:wert":"67"},{"mic:datum":"2019-01","mic:wert":"46"},{"mic:datum":"2019-02","mic:wert":"62"},{"mic:datum":"2019-03","mic:wert":"41"},{"mic:datum":"2019-04","mic:wert":"58"},{"mic:datum":"2019-05","mic:wert":"79"},{"mic:datum":"2019-06","mic:wert":"34"},{"mic:datum":"2019-07","mic:wert":"74"},{"mic:datum":"2019-08","mic:wert":"60"},{"mic:datum":"2019-09","mic:wert":"79"},{"mic:datum":"2019-10","mic:wert":"82"},{"mic:datum":"2019-11","mic:wert":"74"},{"mic:datum":"2019-12","mic:wert":"109"},{"mic:datum":"2020-01","mic:wert":"26"},{"mic:datum":"2020-02","mic:wert":"76"},{"mic:datum":"2020-03","mic:wert":"25"}]', NULL, 'incoming                                                                                                                                                                                                                                                       ', NULL, 'BAR                                                                                                                                                                                                                                                            ', true, 'mic:datum                                                                                                                                                                                                                                                      ', 'mic:wert                                                                                                                                                                                                                                                       ', 'hamburg                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (2, 'influx_for_family_reunion                                                                                                                                                                                                                                      ', '[{"mic:datum":"2015-06","mic:wert":25},{"mic:datum":"2015-07","mic:wert":54},{"mic:datum":"2015-08","mic:wert":47},{"mic:datum":"2015-09","mic:wert":44},{"mic:datum":"2015-10","mic:wert":43},{"mic:datum":"2015-11","mic:wert":29},{"mic:datum":"2015-12","mic:wert":66},{"mic:datum":"2016-01","mic:wert":22},{"mic:datum":"2016-02","mic:wert":34},{"mic:datum":"2016-03","mic:wert":56},{"mic:datum":"2016-04","mic:wert":51},{"mic:datum":"2016-05","mic:wert":68},{"mic:datum":"2016-06","mic:wert":73},{"mic:datum":"2016-07","mic:wert":29},{"mic:datum":"2016-08","mic:wert":70},{"mic:datum":"2016-09","mic:wert":76},{"mic:datum":"2016-10","mic:wert":65},{"mic:datum":"2016-11","mic:wert":95},{"mic:datum":"2016-12","mic:wert":151},{"mic:datum":"2017-01","mic:wert":75},{"mic:datum":"2017-02","mic:wert":77},{"mic:datum":"2017-03","mic:wert":84},{"mic:datum":"2017-04","mic:wert":70},{"mic:datum":"2017-05","mic:wert":81},{"mic:datum":"2017-06","mic:wert":76},{"mic:datum":"2017-07","mic:wert":114},{"mic:datum":"2017-08","mic:wert":76},{"mic:datum":"2017-09","mic:wert":85},{"mic:datum":"2017-10","mic:wert":68},{"mic:datum":"2017-11","mic:wert":57},{"mic:datum":"2017-12","mic:wert":60},{"mic:datum":"2018-01","mic:wert":33},{"mic:datum":"2018-02","mic:wert":23},{"mic:datum":"2018-03","mic:wert":74},{"mic:datum":"2018-04","mic:wert":36},{"mic:datum":"2018-05","mic:wert":51},{"mic:datum":"2018-06","mic:wert":37},{"mic:datum":"2018-07","mic:wert":29},{"mic:datum":"2018-08","mic:wert":21},{"mic:datum":"2018-09","mic:wert":14},{"mic:datum":"2018-10","mic:wert":6},{"mic:datum":"2018-11","mic:wert":31},{"mic:datum":"2018-12","mic:wert":17},{"mic:datum":"2019-01","mic:wert":23},{"mic:datum":"2019-02","mic:wert":29},{"mic:datum":"2019-03","mic:wert":26},{"mic:datum":"2019-04","mic:wert":26},{"mic:datum":"2019-05","mic:wert":32},{"mic:datum":"2019-06","mic:wert":15},{"mic:datum":"2019-07","mic:wert":34},{"mic:datum":"2019-08","mic:wert":19},{"mic:datum":"2019-09","mic:wert":20},{"mic:datum":"2019-10","mic:wert":28},{"mic:datum":"2019-11","mic:wert":20},{"mic:datum":"2019-12","mic:wert":55},{"mic:datum":"2020-01","mic:wert":6},{"mic:datum":"2020-02","mic:wert":15},{"mic:datum":"2020-03","mic:wert":4}]', NULL, 'incoming                                                                                                                                                                                                                                                       ', NULL, 'LINE                                                                                                                                                                                                                                                           ', true, 'mic:datum                                                                                                                                                                                                                                                      ', 'mic:wert                                                                                                                                                                                                                                                       ', 'hamburg                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (6, 'Total immigrants and homeless                                                                                                                                                                                                                                  ', '[{"mic:datum":["2018-04"],"mic:wert":["29725"]},{"mic:datum":["2018-05"],"mic:wert":["30137"]},{"mic:datum":["2018-06"],"mic:wert":["30313"]},{"mic:datum":["2018-07"],"mic:wert":["30686"]},{"mic:datum":["2015-06"],"mic:wert":["13424"]},{"mic:datum":["2015-07"],"mic:wert":["13740"]},{"mic:datum":["2015-08"],"mic:wert":["13832"]},{"mic:datum":["2015-09"],"mic:wert":["14094"]},{"mic:datum":["2015-10"],"mic:wert":["14719"]},{"mic:datum":["2015-11"],"mic:wert":["15511"]},{"mic:datum":["2015-12"],"mic:wert":["16242"]},{"mic:datum":["2016-01"],"mic:wert":["16642"]},{"mic:datum":["2016-02"],"mic:wert":["17226"]},{"mic:datum":["2016-03"],"mic:wert":["18144"]},{"mic:datum":["2016-04"],"mic:wert":["18260"]},{"mic:datum":["2016-05"],"mic:wert":["19565"]},{"mic:datum":["2016-06"],"mic:wert":["20279"]},{"mic:datum":["2016-07"],"mic:wert":["21253"]},{"mic:datum":["2016-08"],"mic:wert":["22338"]},{"mic:datum":["2016-09"],"mic:wert":["22757"]},{"mic:datum":["2016-10"],"mic:wert":["22917"]},{"mic:datum":["2016-11"],"mic:wert":["23259"]},{"mic:datum":["2016-12"],"mic:wert":["23816"]},{"mic:datum":["2017-01"],"mic:wert":["24409"]},{"mic:datum":["2017-02"],"mic:wert":["25228"]},{"mic:datum":["2017-03"],"mic:wert":["26104"]},{"mic:datum":["2017-04"],"mic:wert":["26422"]},{"mic:datum":["2017-05"],"mic:wert":["26717"]},{"mic:datum":["2017-06"],"mic:wert":["27078"]},{"mic:datum":["2017-07"],"mic:wert":["27279"]},{"mic:datum":["2017-08"],"mic:wert":["27490"]},{"mic:datum":["2017-09"],"mic:wert":["28095"]},{"mic:datum":["2017-10"],"mic:wert":["28442"]},{"mic:datum":["2017-11"],"mic:wert":["28957"]},{"mic:datum":["2017-12"],"mic:wert":["29243"]},{"mic:datum":["2018-01"],"mic:wert":["29436"]},{"mic:datum":["2018-02"],"mic:wert":["29479"]},{"mic:datum":["2018-03"],"mic:wert":["29627"]},{"mic:datum":["2018-08"],"mic:wert":["30987"]},{"mic:datum":["2018-09"],"mic:wert":["31159"]},{"mic:datum":["2018-10"],"mic:wert":["31342"]},{"mic:datum":["2018-11"],"mic:wert":["31732"]},{"mic:datum":["2018-12"],"mic:wert":["31529"]},{"mic:datum":["2019-01"],"mic:wert":["31598"]},{"mic:datum":["2019-02"],"mic:wert":["31678"]},{"mic:datum":["2019-03"],"mic:wert":["31475"]},{"mic:datum":["2019-04"],"mic:wert":["31384"]},{"mic:datum":["2019-05"],"mic:wert":["31345"]},{"mic:datum":["2019-06"],"mic:wert":["31222"]},{"mic:datum":["2019-07"],"mic:wert":["31071"]},{"mic:datum":["2019-08"],"mic:wert":["30833"]},{"mic:datum":["2019-09"],"mic:wert":["30752"]},{"mic:datum":["2019-10"],"mic:wert":["30741"]},{"mic:datum":["2019-11"],"mic:wert":["30631"]},{"mic:datum":["2019-12"],"mic:wert":["30601"]},{"mic:datum":["2020-01"],"mic:wert":["30628"]},{"mic:datum":["2020-02"],"mic:wert":["30627"]},{"mic:datum":["2020-03"],"mic:wert":["30477"]}]', NULL, 'integration                                                                                                                                                                                                                                                    ', NULL, 'LINE                                                                                                                                                                                                                                                           ', true, 'mic:datum                                                                                                                                                                                                                                                      ', 'mic:wert                                                                                                                                                                                                                                                       ', 'hamburg                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (4, 'Immigrants entitled residence                                                                                                                                                                                                                                  ', '[{"mic:datum":["2015-06"],"mic:wert":["3395"]},{"mic:datum":["2015-07"],"mic:wert":["3420"]},{"mic:datum":["2015-08"],"mic:wert":["3478"]},{"mic:datum":["2015-09"],"mic:wert":["3533"]},{"mic:datum":["2015-10"],"mic:wert":["3563"]},{"mic:datum":["2015-11"],"mic:wert":["3632"]},{"mic:datum":["2015-12"],"mic:wert":["3635"]},{"mic:datum":["2016-01"],"mic:wert":["3886"]},{"mic:datum":["2016-02"],"mic:wert":["4021"]},{"mic:datum":["2016-03"],"mic:wert":["4103"]},{"mic:datum":["2016-04"],"mic:wert":["4069"]},{"mic:datum":["2016-05"],"mic:wert":["4499"]},{"mic:datum":["2016-06"],"mic:wert":["4592"]},{"mic:datum":["2016-07"],"mic:wert":["4779"]},{"mic:datum":["2016-08"],"mic:wert":["5101"]},{"mic:datum":["2016-09"],"mic:wert":["5678"]},{"mic:datum":["2016-10"],"mic:wert":["6190"]},{"mic:datum":["2016-11"],"mic:wert":["6976"]},{"mic:datum":["2016-12"],"mic:wert":["7344"]},{"mic:datum":["2017-01"],"mic:wert":["7904"]},{"mic:datum":["2017-02"],"mic:wert":["8493"]},{"mic:datum":["2017-03"],"mic:wert":["9475"]},{"mic:datum":["2017-04"],"mic:wert":["9949"]},{"mic:datum":["2017-05"],"mic:wert":["12128"]},{"mic:datum":["2017-06"],"mic:wert":["12314"]},{"mic:datum":["2017-07"],"mic:wert":["12828"]},{"mic:datum":["2017-08"],"mic:wert":["13317"]},{"mic:datum":["2017-09"],"mic:wert":["14014"]},{"mic:datum":["2017-10"],"mic:wert":["14693"]},{"mic:datum":["2017-11"],"mic:wert":["15112"]},{"mic:datum":["2017-12"],"mic:wert":["15218"]},{"mic:datum":["2018-01"],"mic:wert":["15302"]},{"mic:datum":["2018-02"],"mic:wert":["15282"]},{"mic:datum":["2018-03"],"mic:wert":["15459"]},{"mic:datum":["2018-04"],"mic:wert":["15461"]},{"mic:datum":["2018-05"],"mic:wert":["15522"]},{"mic:datum":["2018-06"],"mic:wert":["15616"]},{"mic:datum":["2018-07"],"mic:wert":["15562"]},{"mic:datum":["2018-08"],"mic:wert":["15493"]},{"mic:datum":["2018-09"],"mic:wert":["15450"]},{"mic:datum":["2018-10"],"mic:wert":["15406"]},{"mic:datum":["2018-11"],"mic:wert":["15524"]},{"mic:datum":["2018-12"],"mic:wert":["15439"]},{"mic:datum":["2019-01"],"mic:wert":["15397"]},{"mic:datum":["2019-02"],"mic:wert":["15399"]},{"mic:datum":["2019-03"],"mic:wert":["15369"]},{"mic:datum":["2019-04"],"mic:wert":["15267"]},{"mic:datum":["2019-05"],"mic:wert":["15338"]},{"mic:datum":["2019-06"],"mic:wert":["15275"]},{"mic:datum":["2019-07"],"mic:wert":["15090"]},{"mic:datum":["2019-08"],"mic:wert":["14953"]},{"mic:datum":["2019-09"],"mic:wert":["14842"]},{"mic:datum":["2019-10"],"mic:wert":["14877"]},{"mic:datum":["2019-11"],"mic:wert":["14756"]},{"mic:datum":["2019-12"],"mic:wert":["14631"]},{"mic:datum":["2020-01"],"mic:wert":["14590"]},{"mic:datum":["2020-02"],"mic:wert":["14721"]},{"mic:datum":["2020-03"],"mic:wert":["14535"]}]', NULL, 'integration                                                                                                                                                                                                                                                    ', NULL, 'LINE                                                                                                                                                                                                                                                           ', true, 'mic:datum                                                                                                                                                                                                                                                      ', 'mic:wert                                                                                                                                                                                                                                                       ', 'hamburg                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (5, 'Immigrants not entitled residence                                                                                                                                                                                                                              ', '[{"mic:datum":["2015-06"],"mic:wert":["7486"]},{"mic:datum":["2015-07"],"mic:wert":["7734"]},{"mic:datum":["2015-08"],"mic:wert":["7720"]},{"mic:datum":["2015-09"],"mic:wert":["7912"]},{"mic:datum":["2015-10"],"mic:wert":["8447"]},{"mic:datum":["2015-11"],"mic:wert":["9088"]},{"mic:datum":["2015-12"],"mic:wert":["9625"]},{"mic:datum":["2016-01"],"mic:wert":["9848"]},{"mic:datum":["2016-02"],"mic:wert":["10202"]},{"mic:datum":["2016-03"],"mic:wert":["11031"]},{"mic:datum":["2016-04"],"mic:wert":["11096"]},{"mic:datum":["2016-05"],"mic:wert":["11952"]},{"mic:datum":["2016-06"],"mic:wert":["12536"]},{"mic:datum":["2016-07"],"mic:wert":["13248"]},{"mic:datum":["2016-08"],"mic:wert":["13968"]},{"mic:datum":["2016-09"],"mic:wert":["13828"]},{"mic:datum":["2016-10"],"mic:wert":["13445"]},{"mic:datum":["2016-11"],"mic:wert":["12980"]},{"mic:datum":["2016-12"],"mic:wert":["13153"]},{"mic:datum":["2017-01"],"mic:wert":["13139"]},{"mic:datum":["2017-02"],"mic:wert":["13330"]},{"mic:datum":["2017-03"],"mic:wert":["13049"]},{"mic:datum":["2017-04"],"mic:wert":["12813"]},{"mic:datum":["2017-05"],"mic:wert":["10873"]},{"mic:datum":["2017-06"],"mic:wert":["10867"]},{"mic:datum":["2017-07"],"mic:wert":["10424"]},{"mic:datum":["2017-08"],"mic:wert":["10000"]},{"mic:datum":["2017-09"],"mic:wert":["9787"]},{"mic:datum":["2017-10"],"mic:wert":["9428"]},{"mic:datum":["2017-11"],"mic:wert":["9403"]},{"mic:datum":["2017-12"],"mic:wert":["9520"]},{"mic:datum":["2018-01"],"mic:wert":["9509"]},{"mic:datum":["2018-02"],"mic:wert":["9545"]},{"mic:datum":["2018-03"],"mic:wert":["9519"]},{"mic:datum":["2018-04"],"mic:wert":["9652"]},{"mic:datum":["2018-05"],"mic:wert":["9939"]},{"mic:datum":["2018-06"],"mic:wert":["9981"]},{"mic:datum":["2018-07"],"mic:wert":["10362"]},{"mic:datum":["2018-08"],"mic:wert":["10684"]},{"mic:datum":["2018-09"],"mic:wert":["10783"]},{"mic:datum":["2018-10"],"mic:wert":["10970"]},{"mic:datum":["2018-11"],"mic:wert":["11200"]},{"mic:datum":["2018-12"],"mic:wert":["11136"]},{"mic:datum":["2019-01"],"mic:wert":["11210"]},{"mic:datum":["2019-02"],"mic:wert":["11272"]},{"mic:datum":["2019-03"],"mic:wert":["11055"]},{"mic:datum":["2019-04"],"mic:wert":["10953"]},{"mic:datum":["2019-05"],"mic:wert":["10797"]},{"mic:datum":["2019-06"],"mic:wert":["10671"]},{"mic:datum":["2019-07"],"mic:wert":["10692"]},{"mic:datum":["2019-08"],"mic:wert":["10606"]},{"mic:datum":["2019-09"],"mic:wert":["10653"]},{"mic:datum":["2019-10"],"mic:wert":["10554"]},{"mic:datum":["2019-11"],"mic:wert":["10517"]},{"mic:datum":["2019-12"],"mic:wert":["10534"]},{"mic:datum":["2020-01"],"mic:wert":["10572"]},{"mic:datum":["2020-02"],"mic:wert":["10432"]},{"mic:datum":["2020-03"],"mic:wert":["10436"]}]', NULL, 'integration                                                                                                                                                                                                                                                    ', NULL, 'LINE                                                                                                                                                                                                                                                           ', true, 'mic:datum                                                                                                                                                                                                                                                      ', 'mic:wert                                                                                                                                                                                                                                                       ', 'hamburg                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (7, 'Real influx government residence                                                                                                                                                                                                                               ', '[{"mic:datum":["2015-06"],"mic:wert":["786"]},{"mic:datum":["2015-07"],"mic:wert":["617"]},{"mic:datum":["2015-08"],"mic:wert":["444"]},{"mic:datum":["2015-09"],"mic:wert":["739"]},{"mic:datum":["2015-10"],"mic:wert":["1158"]},{"mic:datum":["2015-11"],"mic:wert":["1198"]},{"mic:datum":["2015-12"],"mic:wert":["1141"]},{"mic:datum":["2016-01"],"mic:wert":["807"]},{"mic:datum":["2016-02"],"mic:wert":["1042"]},{"mic:datum":["2016-03"],"mic:wert":["1442"]},{"mic:datum":["2016-04"],"mic:wert":["759"]},{"mic:datum":["2016-05"],"mic:wert":["1478"]},{"mic:datum":["2016-06"],"mic:wert":["1367"]},{"mic:datum":["2016-07"],"mic:wert":["1130"]},{"mic:datum":["2016-08"],"mic:wert":["1588"]},{"mic:datum":["2016-09"],"mic:wert":["739"]},{"mic:datum":["2016-10"],"mic:wert":["598"]},{"mic:datum":["2016-11"],"mic:wert":["882"]},{"mic:datum":["2016-12"],"mic:wert":["868"]},{"mic:datum":["2017-01"],"mic:wert":["669"]},{"mic:datum":["2017-02"],"mic:wert":["869"]},{"mic:datum":["2017-03"],"mic:wert":["1136"]},{"mic:datum":["2017-04"],"mic:wert":["506"]},{"mic:datum":["2017-05"],"mic:wert":["502"]},{"mic:datum":["2017-06"],"mic:wert":["670"]},{"mic:datum":["2017-07"],"mic:wert":["569"]},{"mic:datum":["2017-08"],"mic:wert":["663"]},{"mic:datum":["2017-09"],"mic:wert":["986"]},{"mic:datum":["2017-10"],"mic:wert":["708"]},{"mic:datum":["2017-11"],"mic:wert":["812"]},{"mic:datum":["2017-12"],"mic:wert":["555"]},{"mic:datum":["2018-01"],"mic:wert":["626"]},{"mic:datum":["2018-02"],"mic:wert":["495"]},{"mic:datum":["2018-03"],"mic:wert":["634"]},{"mic:datum":["2018-04"],"mic:wert":["541"]},{"mic:datum":["2018-05"],"mic:wert":["791"]},{"mic:datum":["2018-06"],"mic:wert":["572"]},{"mic:datum":["2018-07"],"mic:wert":["832"]},{"mic:datum":["2018-08"],"mic:wert":["769"]},{"mic:datum":["2018-09"],"mic:wert":["563"]},{"mic:datum":["2018-10"],"mic:wert":["569"]},{"mic:datum":["2018-11"],"mic:wert":["758"]},{"mic:datum":["2018-12"],"mic:wert":["267"]},{"mic:datum":["2019-01"],"mic:wert":["479"]},{"mic:datum":["2019-02"],"mic:wert":["490"]},{"mic:datum":["2019-03"],"mic:wert":["221"]},{"mic:datum":["2019-04"],"mic:wert":["323"]},{"mic:datum":["2019-05"],"mic:wert":["326"]},{"mic:datum":["2019-06"],"mic:wert":["294"]},{"mic:datum":["2019-07"],"mic:wert":["420"]},{"mic:datum":["2019-08"],"mic:wert":["368"]},{"mic:datum":["2019-09"],"mic:wert":["416"]},{"mic:datum":["2019-10"],"mic:wert":["464"]},{"mic:datum":["2019-11"],"mic:wert":["355"]},{"mic:datum":["2019-12"],"mic:wert":["437"]},{"mic:datum":["2020-01"],"mic:wert":["443"]},{"mic:datum":["2020-02"],"mic:wert":["444"]},{"mic:datum":["2020-03"],"mic:wert":["306"]}]', NULL, 'accommodation                                                                                                                                                                                                                                                  ', NULL, 'LINE                                                                                                                                                                                                                                                           ', true, 'mic:datum                                                                                                                                                                                                                                                      ', 'mic:wert                                                                                                                                                                                                                                                       ', 'hamburg                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (8, 'Real influx government residences from CIR/CR/IR                                                                                                                                                                                                               ', '[{"mic:datum":["2015-06"],"mic:wert":["786"]},{"mic:datum":["2015-07"],"mic:wert":["617"]},{"mic:datum":["2015-08"],"mic:wert":["444"]},{"mic:datum":["2015-09"],"mic:wert":["739"]},{"mic:datum":["2015-10"],"mic:wert":["1158"]},{"mic:datum":["2015-11"],"mic:wert":["1198"]},{"mic:datum":["2015-12"],"mic:wert":["1141"]},{"mic:datum":["2016-01"],"mic:wert":["807"]},{"mic:datum":["2016-02"],"mic:wert":["1042"]},{"mic:datum":["2016-03"],"mic:wert":["1442"]},{"mic:datum":["2016-04"],"mic:wert":["759"]},{"mic:datum":["2016-05"],"mic:wert":["1478"]},{"mic:datum":["2016-06"],"mic:wert":["1367"]},{"mic:datum":["2016-07"],"mic:wert":["1130"]},{"mic:datum":["2016-08"],"mic:wert":["1588"]},{"mic:datum":["2016-09"],"mic:wert":["739"]},{"mic:datum":["2016-10"],"mic:wert":["598"]},{"mic:datum":["2016-11"],"mic:wert":["882"]},{"mic:datum":["2016-12"],"mic:wert":["868"]},{"mic:datum":["2017-01"],"mic:wert":["669"]},{"mic:datum":["2017-02"],"mic:wert":["869"]},{"mic:datum":["2017-03"],"mic:wert":["1136"]},{"mic:datum":["2017-04"],"mic:wert":["506"]},{"mic:datum":["2017-05"],"mic:wert":["502"]},{"mic:datum":["2017-06"],"mic:wert":["670"]},{"mic:datum":["2017-07"],"mic:wert":["569"]},{"mic:datum":["2017-08"],"mic:wert":["663"]},{"mic:datum":["2017-09"],"mic:wert":["986"]},{"mic:datum":["2017-10"],"mic:wert":["708"]},{"mic:datum":["2017-11"],"mic:wert":["812"]},{"mic:datum":["2017-12"],"mic:wert":["555"]},{"mic:datum":["2018-01"],"mic:wert":["626"]},{"mic:datum":["2018-02"],"mic:wert":["495"]},{"mic:datum":["2018-03"],"mic:wert":["634"]},{"mic:datum":["2018-04"],"mic:wert":["541"]},{"mic:datum":["2018-05"],"mic:wert":["791"]},{"mic:datum":["2018-06"],"mic:wert":["572"]},{"mic:datum":["2018-07"],"mic:wert":["832"]},{"mic:datum":["2018-08"],"mic:wert":["769"]},{"mic:datum":["2018-09"],"mic:wert":["563"]},{"mic:datum":["2018-10"],"mic:wert":["569"]},{"mic:datum":["2018-11"],"mic:wert":["758"]},{"mic:datum":["2018-12"],"mic:wert":["267"]},{"mic:datum":["2019-01"],"mic:wert":["479"]},{"mic:datum":["2019-02"],"mic:wert":["490"]},{"mic:datum":["2019-03"],"mic:wert":["221"]},{"mic:datum":["2019-04"],"mic:wert":["323"]},{"mic:datum":["2019-05"],"mic:wert":["326"]},{"mic:datum":["2019-06"],"mic:wert":["294"]},{"mic:datum":["2019-07"],"mic:wert":["420"]},{"mic:datum":["2019-08"],"mic:wert":["368"]},{"mic:datum":["2019-09"],"mic:wert":["416"]},{"mic:datum":["2019-10"],"mic:wert":["464"]},{"mic:datum":["2019-11"],"mic:wert":["355"]},{"mic:datum":["2019-12"],"mic:wert":["437"]},{"mic:datum":["2020-01"],"mic:wert":["443"]},{"mic:datum":["2020-02"],"mic:wert":["444"]},{"mic:datum":["2020-03"],"mic:wert":["306"]}]', NULL, 'accommodation                                                                                                                                                                                                                                                  ', NULL, 'LINE                                                                                                                                                                                                                                                           ', true, 'mic:datum                                                                                                                                                                                                                                                      ', 'mic:wert                                                                                                                                                                                                                                                       ', 'hamburg                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (9, 'Demographic composition - including parents origin                                                                                                                                                                                                             ', '[{"group":"native","percentage":48.9},{"group":"immigrant","percentage":51.1}]', NULL, 'Demographics                                                                                                                                                                                                                                                   ', NULL, 'PIE                                                                                                                                                                                                                                                            ', NULL, 'group                                                                                                                                                                                                                                                          ', 'percentage                                                                                                                                                                                                                                                     ', 'Antwerp                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (12, 'percentage of unemployed belgian nationals (18-64)                                                                                                                                                                                                             ', '[{"year":2015,"percentage":7},{"year":2016,"percentage":6.9},{"year":2017,"percentage":6.5},{"year":2018,"percentage":6.1},{"year":2019,"percentage":5.7}]', NULL, 'employment                                                                                                                                                                                                                                                     ', NULL, 'BAR                                                                                                                                                                                                                                                            ', false, 'year                                                                                                                                                                                                                                                           ', 'percentage                                                                                                                                                                                                                                                     ', 'antwerp                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (16, 'people with social replacement income - 2020 Q1                                                                                                                                                                                                                ', '[{"group":"Belgian national","percentage":37},{"group":"EU national","percentage":6},{"group":"non-EU national","percentage":57}]', NULL, 'financial aid                                                                                                                                                                                                                                                  ', NULL, 'PIE                                                                                                                                                                                                                                                            ', false, 'group                                                                                                                                                                                                                                                          ', 'percentage                                                                                                                                                                                                                                                     ', 'antwerp                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (14, 'percentage of unemployed non-EU nationals (18-64)                                                                                                                                                                                                              ', '[{"year":2015,"percentage":16.9},{"year":2016,"percentage":17},{"year":2017,"percentage":15.9},{"year":2018,"percentage":15.3},{"year":2019,"percentage":13.7}]', NULL, 'employment                                                                                                                                                                                                                                                     ', NULL, 'BAR                                                                                                                                                                                                                                                            ', false, 'year                                                                                                                                                                                                                                                           ', 'percentage                                                                                                                                                                                                                                                     ', 'antwerp                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (10, 'Percentage of migrants - including parents origin                                                                                                                                                                                                              ', '[{"year":"2015","percentage":45.8},{"year":"2016","percentage":46.9},{"year":"2017","percentage":48},{"year":"2018","percentage":49.1},{"year":"2019","percentage":50.1},{"year":"2020","percentage":50.1}]', NULL, 'Demographics                                                                                                                                                                                                                                                   ', NULL, 'BAR                                                                                                                                                                                                                                                            ', false, 'year                                                                                                                                                                                                                                                           ', 'percentage                                                                                                                                                                                                                                                     ', 'antwerp                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (11, 'Participant in integration lessons Atlas                                                                                                                                                                                                                       ', '[{"month":"2019-05","number":2070},{"month":"2019-06","number":1971},{"month":"2019-07","number":1917},{"month":"2019-08","number":1951},{"month":"2019-09","number":1975},{"month":"2019-10","number":1985},{"month":"2019-11","number":1940},{"month":"2019-12","number":1952},{"month":"2020-01","number":1900},{"month":"2020-02","number":1812},{"month":"2020-03","number":1760},{"month":"2020-04","number":1752},{"month":"2020-05","number":1743}]', NULL, 'ATLAS                                                                                                                                                                                                                                                          ', NULL, 'BAR                                                                                                                                                                                                                                                            ', false, 'month                                                                                                                                                                                                                                                          ', 'number                                                                                                                                                                                                                                                         ', 'Antwerp                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (13, 'percentage of unemployed EU nationals (18-64)                                                                                                                                                                                                                  ', '[{"year":2015,"percentage":11.1},{"year":2016,"percentage":10.7},{"year":2017,"percentage":10.1},{"year":2018,"percentage":9.2},{"year":2019,"percentage":8.4}]', NULL, 'employment                                                                                                                                                                                                                                                     ', NULL, 'BAR                                                                                                                                                                                                                                                            ', false, 'year                                                                                                                                                                                                                                                           ', 'percentage                                                                                                                                                                                                                                                     ', 'antwerp                                                                                                                                                                                                                                                        ');
INSERT INTO micadoapp.charts VALUES (17, 'test                                                                                                                                                                                                                                                           ', '[{"key":"1","value":"100"},{"key":"2","value":"100"},{"key":"3","value":"100"},{"key":"4","value":"100"},{"key":"5","value":"100"},{"key":"6","value":"100"},{"key":"7","value":"100"}]', '', 'demographics                                                                                                                                                                                                                                                   ', NULL, 'BAR                                                                                                                                                                                                                                                            ', false, 'key                                                                                                                                                                                                                                                            ', 'value                                                                                                                                                                                                                                                          ', 'test                                                                                                                                                                                                                                                           ');
INSERT INTO micadoapp.charts VALUES (18, 'test1                                                                                                                                                                                                                                                          ', '[{"key":"1","value":"100"},{"key":"2","value":"100"},{"key":"3","value":"100"},{"key":"4","value":"100"},{"key":"5","value":"100"},{"key":"6","value":"100"},{"key":"7","value":"100"}]', '', 'incoming                                                                                                                                                                                                                                                       ', NULL, 'BAR                                                                                                                                                                                                                                                            ', false, 'key                                                                                                                                                                                                                                                            ', 'value                                                                                                                                                                                                                                                          ', 'test                                                                                                                                                                                                                                                           ');
INSERT INTO micadoapp.charts VALUES (19, 'test json                                                                                                                                                                                                                                                      ', '[{"year":"2015","percentage":45.8},{"year":"2016","percentage":46.9},{"year":"2017","percentage":48},{"year":"2018","percentage":49.1},{"year":"2019","percentage":50.1},{"year":"2020","percentage":50.1}]', '', 'incoming                                                                                                                                                                                                                                                       ', 'JSON                                                                                                                                                                                                                                                           ', 'BAR                                                                                                                                                                                                                                                            ', false, 'year                                                                                                                                                                                                                                                           ', 'percentage                                                                                                                                                                                                                                                     ', 'test                                                                                                                                                                                                                                                           ');
INSERT INTO micadoapp.charts VALUES (20, 'test json                                                                                                                                                                                                                                                      ', '[{"year":"2015","percentage":45.8},{"year":"2016","percentage":46.9},{"year":"2017","percentage":48},{"year":"2018","percentage":49.1},{"year":"2019","percentage":50.1},{"year":"2020","percentage":50.1}]', '', 'incoming                                                                                                                                                                                                                                                       ', 'JSON                                                                                                                                                                                                                                                           ', 'BAR                                                                                                                                                                                                                                                            ', false, 'year                                                                                                                                                                                                                                                           ', 'percentage                                                                                                                                                                                                                                                     ', 'test                                                                                                                                                                                                                                                           ');
INSERT INTO micadoapp.charts VALUES (21, 'test json 2                                                                                                                                                                                                                                                    ', '[{"year":"2015","percentage":45.8},{"year":"2016","percentage":46.9},{"year":"2017","percentage":48},{"year":"2018","percentage":49.1},{"year":"2019","percentage":50.1},{"year":"2020","percentage":50.1}]', '', 'integration                                                                                                                                                                                                                                                    ', 'JSON                                                                                                                                                                                                                                                           ', 'BAR                                                                                                                                                                                                                                                            ', false, 'year                                                                                                                                                                                                                                                           ', 'percentage                                                                                                                                                                                                                                                     ', 'test                                                                                                                                                                                                                                                           ');
INSERT INTO micadoapp.charts VALUES (22, 'test category                                                                                                                                                                                                                                                  ', '[{"year":"2015","percentage":45.8},{"year":"2016","percentage":46.9},{"year":"2017","percentage":48},{"year":"2018","percentage":49.1},{"year":"2019","percentage":50.1},{"year":"2020","percentage":50.1}]', '', 'cat                                                                                                                                                                                                                                                            ', 'JSON                                                                                                                                                                                                                                                           ', 'LINE                                                                                                                                                                                                                                                           ', false, 'year                                                                                                                                                                                                                                                           ', 'percentage                                                                                                                                                                                                                                                     ', 'test                                                                                                                                                                                                                                                           ');


--
-- Data for Name: comments; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: comments_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: document; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.document VALUES (25, 4, NULL, NULL, NULL, false, NULL, NULL, NULL, true, NULL);
INSERT INTO micadoapp.document VALUES (26, 5, NULL, NULL, NULL, false, NULL, NULL, NULL, true, NULL);
INSERT INTO micadoapp.document VALUES (21, 2, NULL, NULL, NULL, false, NULL, NULL, NULL, true, NULL);


--
-- Data for Name: document_pictures; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.document_pictures VALUES (58, 'data:image/jpeg;base64,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', 21, 0);
INSERT INTO micadoapp.document_pictures VALUES (41, 'data:image/jpeg;base64,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AFRvcCBVbnRGI1JsdAAAAAAAAAAAAAAAAFNjbCBVbnRGI1ByY0BZAAAAAAAAAAAAEGNyb3BXaGVuUHJpbnRpbmdib29sAAAAAA5jcm9wUmVjdEJvdHRvbWxvbmcAAAAAAAAADGNyb3BSZWN0TGVmdGxvbmcAAAAAAAAADWNyb3BSZWN0UmlnaHRsb25nAAAAAAAAAAtjcm9wUmVjdFRvcGxvbmcAAAAAADhCSU0D7QAAAAAAEABkAAAAAQACAGQAAAABAAI4QklNBCYAAAAAAA4AAAAAAAAAAAAAP4AAADhCSU0EDQAAAAAABAAAAHg4QklNBBkAAAAAAAQAAAAeOEJJTQPzAAAAAAAJAAAAAAAAAAABADhCSU0nEAAAAAAACgABAAAAAAAAAAI4QklNA/UAAAAAAEgAL2ZmAAEAbGZmAAYAAAAAAAEAL2ZmAAEAoZmaAAYAAAAAAAEAMgAAAAEAWgAAAAYAAAAAAAEANQAAAAEALQAAAAYAAAAAAAE4QklNA/gAAAAAAHAAAP////////////////////////////8D6AAAAAD/////////////////////////////A+gAAAAA/////////////////////////////wPoAAAAAP////////////////////////////8D6AAAOEJJTQQAAAAAAAACAAA4QklNBAIAAAAAAAIAADhCSU0EMAAAAAAAAQEAOEJJTQQtAAAAAAAGAAEAAAACOEJJTQQIAAAAAAAQAAAAAQAAAkAAAAJAAAAAADhCSU0EHgAAAAAABAAAAAA4QklNBBoAAAAAA1sAAAAGAAAAAAAAAAAAAARMAAADUgAAABMAQQBzAHMAdQBuAHoALQBhAC0AYwBoAGkAYQBtAGEAdABhAC0AMQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAADUgAABEwAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAQAAAAAAAG51bGwAAAACAAAABmJvdW5kc09iamMAAAABAAAAAAAAUmN0MQAAAAQAAAAAVG9wIGxvbmcAAAAAAAAAAExlZnRsb25nAAAAAAAAAABCdG9tbG9uZwAABEwAAAAAUmdodGxvbmcAAANSAAAABnNsaWNlc1ZsTHMAAAABT2JqYwAA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LmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6cGRmPSJodHRwOi8vbnMuYWRvYmUuY29tL3BkZi8xLjMvIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlRXZlbnQjIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bXA6Q3JlYXRlRGF0ZT0iMjAxNS0wNC0wMlQxNjo1MDozNFoiIHhtcDpDcmVhdG9yVG9vbD0iVGV4dEVkaXQiIHhtcDpNb2RpZnlEYXRlPSIyMDE1LTA0LTAzVDE1OjEwOjMyKzAyOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDE1LTA0LTAzVDE1OjEwOjMyKzAyOjAwIiBwZGY6S2V5d29yZHM9IiIgcGRmOlByb2R1Y2VyPSJNYWMgT1MgWCAxMC45LjUgUXVhcnR6IFBERkNvbnRleHQiIGRjOmZvcm1hdD0iaW1hZ2UvanBlZyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDowNjgwMTE3NDA3MjA2ODExODIyQUZFRTAyRjcyMTdFMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDowNTgwMTE3NDA3MjA2ODExODIyQUZFRTAyRjcyMTdFMSIgeG1wTU06T3JpZ2luYWxEb2N1bWVudElEPSJ4bXAuZGlkOjA1ODAxMTc0MDcyMDY4MTE4MjJBRkVFMDJGNzIxN0UxIiBwaG90b3Nob3A6Q29sb3JNb2RlPSIzIiBwaG90b3Nob3A6SUNDUHJvZmlsZT0ic1JHQiBJRUM2MTk2Ni0yLjEiPiA8ZGM6dGl0bGU+IDxyZGY6QWx0PiA8cmRmOmxpIHhtbDpsYW5nPSJ4LWRlZmF1bHQiPkFzc3Vuei1hLWNoaWFtYXRhPC9yZGY6bGk+IDwvcmRmOkFsdD4gPC9kYzp0aXRsZT4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6MDU4MDExNzQwNzIwNjgxMTgyMkFGRUUwMkY3MjE3RTEiIHN0RXZ0OndoZW49IjIwMTUtMDQtMDNUMTU6MTA6MzIrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDUzYgKE1hY2ludG9zaCkiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249ImRlcml2ZWQiIHN0RXZ0OnBhcmFtZXRlcnM9ImNvbnZlcnRlZCBmcm9tIGFwcGxpY2F0aW9uL3ZuZC5hZG9iZS5waG90b3Nob3AgdG8gaW1hZ2UvanBlZyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6MDY4MDExNzQwNzIwNjgxMTgyMkFGRUUwMkY3MjE3RTEiIHN0RXZ0OndoZW49IjIwMTUtMDQtMDNUMTU6MTA6MzIrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDUzYgKE1hY2ludG9zaCkiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPC9yZGY6U2VxPiA8L3htcE1NOkhpc3Rvcnk+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjA1ODAxMTc0MDcyMDY4MTE4MjJBRkVFMDJGNzIxN0UxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjA1ODAxMTc0MDcyMDY4MTE4MjJBRkVFMDJGNzIxN0UxIiBzdFJlZjpvcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6MDU4MDExNzQwNzIwNjgxMTgyMkFGRUUwMkY3MjE3RTEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg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q7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//0uzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//0+zYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//1OzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//1ezYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//1uzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//1+zYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//0OzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//0ezYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//0uzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//0+zYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYqp3Fxb20LT3MqQwoKvLIwRQP8AKdqKuKrLe9s7pA9tcRzITQNG6uCacqVUn9nFVfFXYq7FXYq7FXYq7FXYq7FVOaeCBec0ixITQM7BRXwq2KrWurVXhjaZA9xX0FLAGSg5N6Qr+84r8XwYqumnggXnNIsSVpydgoqe1WxVerKyhlIKkVBG4IOKt4q7FXYq7FXYq7FXYq7FVkkscSGSV1jjXq7EKBXbqcVbjkjkQPGwdG3VlIIPyIxVZHcW8sksUcqPLCQJo1YFkLDkokUbpyX+bFVXFXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//U7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdiry+1n/xT+bF9Y6mBLpegQs1nYyDlGZgYojcvGfgd6zScGb7H7rFWdXei6SupW2vOiwXGnxzBplAUGKRKSLLx+0qceafyYqxe1/Mtnt9O1i4s0i8v6retYWsokJuEILJHcTx8PT9ORo35xo/7j+ebFW9T/MTUrXVPMGl2+lRyy6Fb/W2uGnKxvEFSU8k9LmsvpyfAi8/j/bTFUF5w876pL5R0LUdJiFuuuzwxSsZCJIyTzMMbKv2ZPTkjef/AH3/ALq/efu1U51XztqmmeYNO0B9JS4vtSt3mjENweKyp6n7nnLBHyh/df70cY+Cf7oxVdL5r16K2sIrnSfqOoXUE891LcMxs7b0eXCOe6iBVWuOP7TJ6fqf7sxVj+v/AJjajeflp/iHSoBaXFxIbOcs5ZoSSUaS3IUeo38jN6fpf5fDFUV5r8w+aLF/KmnwwwQy6ldRicLcOwf0mjKW7TtArpFNzT15PSkf/df/ABkVTLUPO98mo6jp2n2cM1xolkL3VfUlYJy4iU2dq6x/E/D/AI+JU/55YqyLQdZtdd0e01a0BFvdpzVW+0pBKujU/ajdWTFXnnnPzTL5i8p+aRaWcbaRpsiWguGf968ySxl7hIynBIY6/D8fqv8A3nwf3eKomK+0yC+/L+1vNLS6uZ7KL6hf+s6NbsIY/Vrbqvpzq37vh6jfBiqd/mwiN+X+r8lDcViZaitD68W4xVDp5mvdL0TSLS1s6hdHjvJNQuOSWi+nEoW2eZFbjNNx/a+x+7/vPUxVQuvzMnj8mWPm230r1bSeQw3kLTFTA3MwiQMsUnrReonH7Mb/ABx4qn1z5pjtDqF3MqNo+nWcd1JdxsS7PKC6W8cRUL8UfCRX9X/d0WKpXpXn24lvdEg1S0jtofMcLT6a8UjSFCoDLBc80j5NJG6cZY/92fuvT/3biqjYefdd1S71Gy03QRPcaVfLZ3bC4Aj9Mu8TTxmSONuf7tm9L9hPj54qsuvzLaODUtXt7NJvL+k3iWFzL6hFxIzFUkuLePh6XpxNInCN3/f/AM8OKs1mvo006TUIla4iWEzokI5PIoX1FWJf2nkH2FxViGm/mDczeYNK0i/sVtzrEDTQxh2FxbMod/QvYJET7aJ8Ei8P+MeKsg80+Y7Xy1olxq1yhlWKixQqaNJI54Rxhj9nk32n/YTFWP67qOt3Xl7zRp+saYsCW+nSSwXsTF7eXnC7+mnqKj+tbuP+Zn7v4MVSTyP5vu9L0/yhotzYqLHVopY7e5EtZRJG7fE8PDgsTs6cf3vP9v8A4rxVNdB1vToNb85S2+iGPUdOKyXsltI88l4QJTH6UDqvoP8AB9iP9t8VROkefLm58y2WhX1mkMmo2gvIgjt6tu3FpGs76CREZJlVG+P/AJJfHiqW3P5naslnrtzDo0TJ5euhb3jtcmkimQwcoF9Dlz5Dl8fwcP5/sYqmlj57up/M2maRc6eLe01q0N5p83q85QoRpeNzEqenGzpG3wxyy8f5/wCRVCX/AOZFzYT2k11ppgsrq/bThbzlorziDRb+OF14S2zfZ+H9v/d2Kum8w+YpvzRGhwxQmwtLMyiIzOgZZWi53MhWKTnNGPgit+Pp/wDF+Ku1n8yLrSmNzPpphsU1A6eYbgtFdSqOt/aoyenLbfs8f+Sqc8VZ9irsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVf/9Xs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KsP1HydeW/m1fN2gSRLeyJ6OoWNxySKeOiryWaJZHhm4xp/uqVHdE/wAvmqnYt9Vv2ddREVvYSQvFJZxEyu5kHBmkuGSLgqL9hIo/+en7GKsMt/y11E6dpXl67mhbRdJvnvluVLevMhZ3it2gKBImrK6zSes//FeKom98iazcaz5p1BZ7YR6/ZmzgQmTlH8EcKySfB/LGzfBiqlqP5fazceS9E0WG4tv0lotwlwjMXEEoQyfCzBPVj+GT/feKpleeVddu/OOieZJZrWmmwNFcxL6gLNKJVlMNVb4I/W/d+o/x8PjxVV8z+XNf1TzDpN7aXFu2k2Yc3FhdcyhlYMsd0sMY9O4lh5fufWZPSdPg/vMVY7F+WWuH8vLnyrNdWwuxdG4tJkMhjZeQbjOWTmjN8f8AdpJiqb+YvKnmTVovLt9FLZLrGiz+vJC3qi2avD4UkCvP8Hor9pP3n/FeKrb/AMl6vHqus6jpj28ja/Y/VLxZi8Qin4CL61EFWf1ImXk3ofb5/wC7MVZL5Z0KHy9oNlo8LmVbROLSkcebsTJK/HfjzkdvhxVhU35da9BpnmPQtOuLX9F6zMLq3lmMgliYuryQPGkbIy8UVUm9T9j+5+P4FUdL5J1t9Q8pXZmtePlyFYZ1rIDKeKRMYvgbj+7jVvj/AG8VT7ztod55g8tXmj2bxxTXfBTJNy4qqyJKx+AM3L93irH7zyZ5muLvRB9btW07TtP+qTWspkZFuRG9v9fgiCqs0vB19P1vT9HFUX5Y8k3Vn5Em8qa00MokE8Ye3LMvCVjIj/vVj/exyNz+z/JiqI07yRDD5GPlW7mLvNAY7m6WrH1W+zInP9mHjGsS/wC+okTFUt0zyLqbX/lyXVngW38sQNFbegzO1xJRUjlcOkfoIiRxvw5S/vf8jFUw8m+VtT0LUteu7ySCSPV7o3cYhLkoS0jem/NE5fDJ9rFUkufy11D9Har5etJoV0XVr5L5rli3rwoCjy26wcOErcok9GT1k/4sxVnN3YTjRZdP0yb6rOLZoLOc7+mwT04X/wBh8OKsC0n8vfM1pqnlvUriexabSmn/AEgVaZnm9csZLkzOnO4upFk+L1fT/wBnirLfOvlhPNPl640ky+hK5WSCYioWRDyXkv8AI32GxVArpHnG+8sXuk6vNY/WprNrOJ4DKyszr6TXU8kiKytw/wB1RRfb/b/kVSa2/LzW4X8ok3FqR5bMnr0Mn70SSB/3f7v4aRr+1+3iqMtPJvmK0v8AzZfW97Bbz68tbKWMuXgdPUEXOqDqsvxSR/3b/YxVA6J5B8x6frvl7VpZbH/cbbyW+oJGZeUjSerzuVd0/f3M/rc5nl9L4/58Vc35d642l+a7I3FqJPMV0tzEwMnGICZp3V/3fxfB9njiqPi8l6yvmLy1q7S23paHZLZzxhpOUjenJDJJF+7px/eKyK+KpHe/lt5wvLab6xe2NxfjVV1CO8lMxkliQMkcE0nD9zFCp/dWsPOJf8jFWSy+VtZj8/xeaLSW2NrNaraXsUvqCRQGVma2CDg/Ph/u104f5eKsc1n8t/NuqQaqJr2ynurm/S7tLqYymQwR8xHZyMEIt4IfU5xwwrL+8xV6hF6vpJ63H1eI9ThXjyp8XHlvxriq/FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FX//W7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir//X7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirs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Zrd7ad7eWK4T03DJQ8wtTyilRklif9uN8VR+KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/0uzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYqpw28MCFIUCKWLsB3ZjVmbxZsVVMVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVf/T7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir//U7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir//V7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdiqFl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7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir//S7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir//T7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir//U7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdiqXahr+k6bdW9neT8Lu6V2toQju8giHKQRrGr8n/wCK/tviqEt/OXly5eySG75fX3MVsxjlC+qOX+jSyNGEt7n92/8Ao87Rzf5GKq0PmbRZtQGnRzlrhnkhjPB/TeWAcriCKfj6Mk0Cj95Gr/8AEHxVSs/OHl2+mtorW79Q3jyRWz+nIsbSRcvUh9Z0WJZvgb907+o/7GKq0HmPSLiV4opmPBJZVl9N/TdICEuJIJuPpTLE7cG9NsVQ2na/YxaLp082oPqcl4hNtOkBWa54gu8kdlAnNeCfb4x/BiqqfNvl70rGYXitHqXMWJRHYyNF/exqqoWEsdODRP8AvfU/d/3mKoe58x6Xd2umXNnqptI7y+S3jPolmmdWZZdPkjmTnavJwZHd1jkixVNtS1Sy0yBJryTgskiwwqAWeSV9o4YY05PJK/8AIuKu03U7LU7UXVlJ6kXJo2qrIyvGxjlikjkCyRyRuvF0dcVQp8y6MNQTT/rH76SVrZH4P6RuFX1HtfrHH0PrCp/un1Of+zxVZa+a9Bu5WjgueQ9OWaOQo4jljgbhcyW0xX07hYX+GT0WfFVKDzn5duLX63BctJAxiWFxFKPVecskEVtzjX6xM7Rv+6h5vH/u3hiqy686aPDFp0sZknXUro2UYSOTkkichOs8fD1I5Imj4eiy+r/sMVVLLzbpV3NqkdZIU0qb0J5JI3UFqJ9iqfa9SX0o4/72X9iP7GKtv5v8vxQNNPcmAR3C2kscsciSJPIOUUUkLJ6ieqnxxvx9ORMVbl826HDbLdSSypAVDyO0Ey+ihZolku0aMPaxs6N8dwsf+/P7v48VTS5u7W1tZLy4lWK1iQySTMQFVAORct/LTFWIf4qeXX9WjN89ro9vpKXavJblHt5GeRGnMcsfrTfu0SdVb4MVTlfMmlWNjZm7vXume1ine6SFzyjcBFvJ44EP1aO4k/yf+TeKq9z5l0a1vRZTz8ZfVS3dgjtGk0o5QQTTqpiillB+BJH/AOJpirVx5m0a3u/qss5VhKtu8oRzCk7gGO3luFX0Ypn5L8Ej/wAn86Yqo3HnLy3bTTwzXnF7WdLW6IjlKxSy0EfryLHwijZmVfXdvR5/7sxVSn82aa1zrenetJZy6RAJLi9aJmSPnG0nqqCjK/orxf4v77/dfPFXJ5u0KztoYLrUGurtLKK8kdIJDJLCwA+uehBG3wv/AHjxxr+5/wBTFUwi1/SJpY4YbgSSTWv16EKrHnbfD+/jIXjIPjT4U+PFVI+Z9GNpa3cU7XEV8jS2iwRySySRpvJIkEaNNwjr8fwYqjrG+s9Rs4b2xmW4tJ1DxTIaqwP+fxLirGLnzHqFz5V1jzLp8qxQW6TtpilQ6ulozo00teLf6VJFJw/33D6eKrdO17WY/MGk6ZNPHqVvqlm91OY4xHLaFER0kkMbsjW1w7+jFzT1PU/3ZiqYedtT1HStFF7p0qxTi4t4TzQSKVnlS3b4SV+JPV5r8WKobUtV1zy5d2EuoTxaho17cJZzSiL0Z7eWY8YJvgZoZrYv8Eq+nHLH/wAWYqyrFWJ+YdU816UW1WP6s+mx3MNuulcGa4njmkjt/WS6EgVLgyScorf0OHpfbfniq7VfNsMetSaRFdw2MNoIv0hqFxuEkuKtbWsKnjH6jqPUlmmb0YucafHJL+7VU/M/mC6tNVtNKh1FdHEqA/pG5tHuIJZZCUjtVmDQW8EiqjSt6kv7cSYqiPMb+Z7WC51C21O2srCyt+ZV7b6xJM6qzyNX17dYebcIoo19TFUQ15rKWmk270fV5o/XvEQBFYwxc5ovi9T0UluXhg5/sJiqE0/UfM9r5hTSNVktb5bqzkvI5LaN4DA8bpG0Egd5+du7S/uJ/wC9+B/3eKr9M1DXG8x3Wk3d1bXkAtfrEr2yiOS0lZgkVq6mSYyrKnqSxSSIj/usVR+harLdyX+n3ZU6jpU4guCooHR0We2ueG/D14JPjT/fqS4qm+KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv//V7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirHNb0zULnzV5c1C3g9S005rs3cnJRx9eH0IuKMwd/j+1xxVIF8t68dNsoTZESw+Y/0rIvqRbWvryXHPlz3k4Sf3eKtpovmV9b0y/urBnex1S6kmkSaJYBazpLHDJZ2yuvw8ZEe49ZPrss/+/P91qrrTy7rsenaFbvZ8ZLHW5dQuf3kdBbyPdOrij/E3G7T92v8mKovQ9K1ix1czW1pNY6cyXLX2myyxzW3rM/O3k0g8mkt/rDGWW5jb0bf95/d+piqE0HQde0SDy3eSWbTyafZz6dqFnG8bSIsrpMl1b1dYZPjgRZU9X1PTfFV9n5Z1i2v9Kuzb8lOrX2qXkQdKW6XcckMUK1Yeqy+oskvpft+piqkPLmvfU4U+pfvE8zHV2X1Iv8AeQzPPzrz4+pxf+6xVkfmyDVprWyGmwmdUu4nvEiaNJ/q4DiQ2ks5RIpuRT41kjm9H1fRkSTFVDyRpeoaXZaha3tt9WD6hcz2/wC8EoaGZ/VjIerSfDy4fvv3mKoXy9Z+YtKkbQ5dPSawju57i31hpUK+lNJJdUe3r9Z+tq8zQ/Z9P9v1f51Uq0jRfM0eraLqN9pz+vaxX0GoMJofTDTcGtzZ26OIorP93wiVESf4/wDSU/3c6qJtNH8x2PkzQdNSzJurKeJdRhikh9b0FMnN7Od2EUcjco/jWSKf0vV9KRJMVQlp5d8wWlrbcdOJay8wzagsCzxsXtZlnVZEllff0vrC8/W/ffA+Koi/8ta5Ouv20VsG9XU4NXsZHlVYrn01tuVi/BvXhb/R5E9R1RP7vFXXGhajcaastn5fGnXT39jcTwG4ikmkjtJBM8k0/NouKr+6tk9V3/1MVVNZ0DUB5iv7z9DLren6tFCpU3CwfV5IVMDJcRyMqzWsqN6n7v1ZP7z919jFU681aJean5Vm0yw9NLtVgeGM1ETNbyRz+h/kxSej6WKpLc6f5i1PVNT1F9Ka0jvdCbT44pJoWcXPOZ+Dek7pwb1/7zn9j/kXiqhdaBra6fpS2llPba3Zabb2sOoW80Xp+tGOEljqMDv6dzp/JfX5+nL/AMV/vcVTHT7PzHpOq6jYx6cl5p2o3pv4tSaVAkPrBGuI57diLh2gkj/0b0ufP93+8ixVA3flzWZNK13y0bX1YdWvJLm21PknpJFcyrcS/WELev8AWLQ8/T4x/vv3P+XwVW6/5c12+tPOMMFnV9YltDYVkjAdYI4IZGer/u/7hm+PFUXPo+tfpXzY8dkXt9csYhay+pGAJY7eS1NtIhbl6nqOrc/7n0/92YqoaboGt299Zzy2ZCQeXF0p6SRk/WlZXMY+P+7+D+9xV2kaJr+lyeXbg2Bme00mTS7uJZYh6UvKB0mdmfi8D+g39z6ki/77xVR8t6Dr+gnQr+eyadrfTpNLv7OKSNpIv331mC6h5OkUqyU9OdPU5p+7/vOGKsn8qaRcaXpLQXVEnuLi4unhQ8ki+syvOIEbavoq/H/XxVjel6bft+Wl75Zhh9XVrWO6014aqnxs8noy8pCq+lLBLFcK37SviqO0/RNU0O8tNQ0qzBgvYoYNc0sPGnGSJOCahbNyEPqKv7ueNX/0hPTk/vcVV/N1rrOs6HNZ2unOLhL6ExK8sQEkNvLFc/WFbn8Cy8GjSN/3v+RirtW03WPMl3Y211ajT9Gs7iK8uDJIkk87wnnDbpHAZI4oPU+KaRpfU/33irIrae4lkuFmtmgSKThC7MjCVOKt6qCNmZF5Fk4y/H8GKsX1afzZJrQkj8ui9srN/wDcez3sMUfMjgb6aEq8nNAzein+605/7u+wqp6h5e1hJPMdpbW0d1aeY4wVmZwn1eZoVs5vXV6ySQqq/WIPQ5yf7p+D++xVG3mnalc6XceV2sRLp7WcdpFqksqMHrH6Usktv/fJNDT1I+PP1JP92RYqjtV0u4urbTtNj/eWSTRNfSSEEtDbj1kRh+209xFCr/5HPFV5hvE1DUNS+r+s8cKwWEIZVMgUGaT4mPCP1Z2WLk/++cVSbQZfNf6Qnn1DQVgmuELXF615FJX0wfq1lbwxLyji5P8Abf8A4tmk5ySYqrWejXN75gsfMVxpy6PdW8Esd2ivHJJO0wRVilkt/hkht/T9RJJG58/91pirflm3eXzH5m1lf95L2e3trZuz/UofRnlX+ZPrEksPL/inFWUYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//1uzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYqsllihieaZ1jijBaSRyFVVG7MzN8KqMVW2t1b3dvHdWsizW8yh4pUNVZTurK3dTiqrirsVdirsVdirsVdirsVUJr20gube1mmRLm7Li2iY0aQxr6knpr+1wT4mxVXxV2KuxV2KuxV2Koe5v7K1kgiuZ44Zbp/StkdgGkfrwjU7u3+rirdre2l2ZhazJMbeVoJ+BrwlQAvE/8rryXFWr2/srCH172eO3hLKgeVgoLMeKIOXV3P2VxVuK9tJrqe0imR7q1CG4hU1ZBKC0XNf2fUVW4Yqr4q7FXYqpiCETNOEAmdQjSAblRuobx41xVUxV2KuxVQmvbSC5t7WaZEubsuLaJjRpDGvqSemv7XBPibFVfFXYq7FXYq7FXYqtZVdSrCqsCCPY4q1FFHDGsUShI0AVEUUAA7AYqvxV2KuxV2Koe+v7HT7Zrq+uI7a2QgNLKwRQWPFRyb9pm+ziraXlrJdS2aSq11CqySwg/GqSchGzL4PwfFWrm/sbRolu7mK3aduECyuqF2/kj5lebf5K4q68vrKwh+sX1xFawVC+rM6xpU/ZXnIVWrYqqQTwXMKT28iTQSANHLGwZGU9GR1qrLiqpirsVdiqhZXtpf2yXVlMlxbOWCSxnkpKMY3ow/ldWXFWrq/sbMwrd3EcDXMiw26yMFMkjfYijB+27fyriq+3ura6QyW0yTRhmQvGwcB0JSRKrX443Xg64qq4qo295a3LTLbzJK1vIYZwjBikgAYxyAfYfiytxbFVbFXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//X7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirGfMeqa1Brui6Rps0ECast2rzyxNK0bwRetG6KJYkf/jG3/B4qgU8w+Zry9lbTLf6xBYX/ANQuouEapIkXppeXHryXCSW8qeo8sEfpvHwTh+99T4FVr+br+zv9U/SDrC1hFeXA0uWFo2lt7Yc7a50+8HKO6SWNeVz/ALsh/wB9R+l8aqYeX9Q8z3GoAahb8tMuLYTLcFY4jFOeP+jxqk873Fu8bc45ePNOH7zFVmsanqN7qeo6LYSRQR2FiLi6eVPUMr3AlWG3VeScIQkLPNJ9v40TFWNQeYNX0nybpLafNCv1XREvRb+m088jRKK+vGDGltp3BfjuvV9T1f7r7HB1WeT396+gNqFhbie+e19e3tSaBpGT1Ej5Hj+1irGLXzdfSWsMUV1HcXd7fw6cnr27W09o8kTz3Av7NyP3sYhl+rKj+nL8Hxvwd8VVLrzRrWmRa3Z3AjubvSns2S+CFUNrfP6f1ie3Rm+Oy4TtN6benIiep+6+PFW7vzNr9lbeY5lhS8ttIaFLK5WNv3nqiN7iST024SLpySt6/oR/Hw/3XirrrzVq+ntrTMIryysfqcdhchCvqz3zJEEaRW+rutrzV5PT4fBLF+8jxVB67qfnGDRNR9d2tFjurFbO/aONZZY7idILm3eCGeX0vRZ/hn/3dD+7/vP3uKq15r+raVrnmW8urkXNlpGnW08dmsfAM8gnPwv6j+nzli/eO3q/u/8AjHiqZ2+razY69pmm6nNFdw6zDNJDJDH6fozW6pLLF9t/VtpI5P3Tt+95J8f28VRGr6peWvmjQNPjWI2uofWxKzoTKrQw+tGYn5cVVv8AdnwYqkOneavMciaLfXj2zW+oancaVPaxRMp+FrlYrlJnlcpw+qf3XF+aYqnvm3VtQ0uC2mtw8dkZG/SF9FCblreNVLJI1qnxvCzj9/Iv91HiqUrq+r3HmTSfT1C3ksm0ea9lWIUt5ZEeGNpVmLco439T4OfqfV05/wB5iqH03zXrtxeXdhJcQyM+jtqdtexwMsSyq/ostqJGDXlkGPKGeVU9X/iyOTFVTQdY1u5sPL2ki8X6/qOnHUbjUHj5MsaiELEkbOUlneW4/eSN/utP7rFU+8r61c6pYXRvlVL3Trqexu2jBEbvbtx9aFWLOscqFH4cvgxVidzqWoa1H5S12eSNbK+1iNrazVPjiT07pYeVxyPqO8acrn4OPP8Au/7v41WU+VNUu9RGsC7WJXstTuLRDCpQMkQjKO4Zn/etz+NsVYr5s1O/1ny/qt4skcWmWWpw2KWvDlI/oXlvFJcmfl+7kaf+7j4f3H2/7z4FU5uNf1xL7zVb2drHcz6Wlm1mkMdZXSdGebmrSf6RNCiu0MXKP1P7r9vFVO181XVza2FvZ3sN3c6lfyWUd4YWiaBIYmuJ1u7R+PC/j9No/R/dxvzjl/u8Va/xVq8F1NoM5ifVE1C30+PUOBWIxXUD30dw0HL/AHoSKGWH0ufpvP6f+6/gxVFTan5gtbvT9Curi3+v6lcXKwX8SE0tbeIThpLd+KfXpOXDgv7jh++/4qxVw1jzBZ6zoOk6g9rLJqP11LqS3VwP9GT1raaPm37qSSNk+sQv6qc/7rFUutPNfmK9XQYY2tYptUutRtLiYxOQv1P1/Rlij9b+W35SIzfHJ/ImKqkHmTXpLVrKe4t4dRtdRm024uY4meScRxC5hksLGrr68qyw/WVkl9G2j9eX7GKrbfzhqk3k6w8xTSxW804eH6pHCZZbi79Zra3t7ZPVXg0zRfY/e8P+McWKoubW9d06/wDLdvrC2zTXsV5JqPoRtWN4IDcqlqzyP8PH93J/v3FVG18za2kGgaxdPDJp/mCWKD6nGh5WzXKPLZuk/L99x4end80/4xeniqH07zV5jkTRb68e2a3v9TuNKntYomU/A1ysVykzyvw4fVP7ri/NMVRWieY/MerXFhqNtamTRrySVJ42WNBDCrSRQ3Edz6/qyy84v38LW/8Auz93w9P41U31rU7xdW07RLKRbefUEnma7defBLcR1WKJuKySyPOn2vsRpJiqXpqvmKfUbTy7LPbW2rfUpb29vII2liISYWsCW8UzJ9uvqXPP+6/uo/t+riqX23m7zBfXWiWCC2trm+l1Gy1B/TeRUuNPDL61tWReUTsvP0pP9T1cVZD5Q1a81bQ47m+4G7SWe3meMFUdreaS29VUJbh6npc+HLFWNL5r8zehHes9qUTW30aS2ETgOrTfVIp/VMjPE0TfHw4v6mKqzebdYsX1DS7ox3eoQ6la6da3UcQjBF7Et0rNbtLwaSBPURf38aS/u8VbufMPm+wgs0uoIke41a3sIri4RVaW2uAf3jQW88noTwyL6b/sTfsJHiq+LzRrUUc2nTvDLqP6ZXR4b4IUjCyQi++sPb82rJHDzjSP1f3kvp/5eKpvoOqajJquq6JqLLPPpvoSRXka+mJYblXaP1IquqTxPDKj8Pgk+B+CYqxPztqt/rPljzRJDJHHpmmXAsDbMnKSV4pLd7idpeX7ri8nG2VU/Y5yf3n7tVl1hqd3N5s1fTZViFta29pLAyKRIfW9cOJnLNz4tD+74qmKoXzdouj3dpdPcWEeoapfQmzsY5VV2DkNw9Bn/wB5kjZ/rFxNHw4en6v+648VQ+seVNXn0vSYba6tryXSLcI1pqMHrwXcqxpF6szlw8MnwPwl4yf3uKpzompQ3flu11G1t0s4nthIlq1I44iq/wB0WVeKRRsvHnw+xirE7Xzlrwkv4HlguXTRX1e2uBC6QerG3B4rerpLdWJ/3TcN6byf3n7yN8VRVh5m8wtLa/WHtpBqWiNqlugiZRDPGsJKO3qcp4ZfrHJv7t1xVdoXmTX7m88vi9kt3h1/TpLkRRxMvozQrDLz9QyN6scy3HxR8U4f78xVOPJOq3Or+WbPULtI47iYzCRYFKRgpNLF8CEtT+7/AJsVYlqWq3+vWPl7W2kjGm3HmC1S1tAn7xI4riW3SVp+X99K0fKWPhwSN/T/AGP3iqdXcs+i3UPlzRFdZrlbvUpJ1iSZl5zhuKxSy26MvrXXx/H/AHUf+XzjVUrHUvNN15m0aHUimnu2mT3F9pqgSJ60c0UDMJkkP96jq8XxS/VvsfvHxVT8t65fz+Yxbym2l/StnLdSXltCVi9a2kS3Rbe5ZlN/bxxS8PWaP9j91L6XwIqzOzjuorWKO8mW4ulUCadE9JXbuyxcpPT/ANXniqvirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir//Q7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdiqW32h2d9qdhqczSC600ubXg/FR6o4Tc0/b9RPg+LFUJL5Q0uTWG1ZJLmB5WWS7s4ZmS1uJEACS3VsPhkdeK/8AGT/dvqYquTyppv1gTXDzXiRm4aC3uHEkUf1sMlz6a8Q/F43eJUleRI43/d4q7QvKmn6GxNtPdTxqvp2sN1O80dvF/vm0R/7qP4V/nk/y8VXan5X0/UdQTUWkntrtYjbzSW0hj9aA1P1e4FG5xqzc0/3Yn8+KoFvy/wBCMUUIkulgjsm0x4lnYLLbHkUjn7t6DSP6PHh/yL+DFU3/AENbfoUaMZJjbCEW4l9Q+txA4h/WHxer/l4qgJfJukzw3C3Lzz3Vy8MrX7yUuEe1/wB45IZIljWJ7bk/BlT4+cnq+pzxVB695dmTSLmPT4Zb+6vriGTUpDOILuWKIr/vPcL6EMcsPBPRi/cwcPV/bfFUsby9q40i+S0h1Bre4WGP9GXt+HnKrJ6k81rP6s0dpP6fwRr9Z9KX/d2KozSfKqXMN5bX8N+uj3cBhm0/U7v60zOWEgmj4S3H1Vo6fbjn5v8Ab/3XiqYDyVpp0i50u4u726W6Kcru4uGkuE9JxNbiGZv7tYJV9RPg/wCMvqYqiW8raZJeyXkrTSm4tFsbyF5C0VxEoZUe6j/3bMqyyrz/AOLMVXaX5bstOlhlEs91JbRG3tGuZPUMMLEM0UWy/a4Rq0snqT8I409XFVa90SzvdSsdTmaQXWneobUo1FBmX05eSft8k+H4sVQMXkzSYoLO3R7j0rC7a/tgZSaXDlmd2qPjVmll+Bvg/eviqYalpKX8lvKLm4tZrYuY5LdwpIdeDrIjrJHIv+un2sVS4+SdC42SIkkUNlby2YhSRgstvOP38Fz+1Kjv+9+1/eYqt07yTpOn3FvcpNdTy29o+nqZ5i4a2ZuawSLRVZIf91f8b4q3B5M0y3tNPt4Li6SXSy31C89UNPHGwCtbBnRo2tvTVI/QeLh8Cf7s+PFU207TrXTbUWtqpCcmkd2JZ3kkYySzSyN8TyyyNzdsVSSHyDocEsRikultra6F9Z2QnYQQTDkW+rxrukcjSOzxc+Hx/BwxVNtK0Wz0prxrUyE31w93ceo3IetJT1HT+TlxX4FxVKb3yFol5Nes8lzFb6jIs93ZwzNHA9wjJJ9b9Nd0uGaJObI/x/6+KoyXyrp8lxqFys1xFcan6H1iWOUqwNrT6s8J/wB1tHT/AJ6f7sxVZL5R0ua1khleZriW5W+N/wAwtwLlFEUU6OirGjRwr6KosXpel8Hp4q668n6PeWE9pc+rJJcTrdyX3qFbkXEYCw3Mc8fD0pIERUh9JUijT4PTxVTn8maZcaXFYS3F208Ev1iLUzO311ZuPp+uLr+b0v3XDh6Pp/7qxVUl8o6ZJFp4EtxHcabI00F6sp+sM0g43PrzvzaX60vwz/8AJP08VSS+8pNZ6j5ft9JjuVsLS8uru6uUkUvCbmORV4Gc7p68nxxJHJ+75+piqcHyXpFLJo3uIrqynkulvI5SJ5JJ/wDev6xLT94tyPhl/wAj4IvSxVRt/IWi2qWaW8t1GNOMzWJExPpfWGZ5vTDBl/baNX/vPTxVGL5X08XGn3Ly3EtxpjTPbyySlmLXO1wZq/3vNPg+L7Cf3eKrbDylpdi8PotM1taSPNY2bvygt5JAVZrePjX4FeT0VleVIPUf0eGKrIvJmkwwWduj3HpWF21/bAyk0uGLM7tUfGrNLL8DfB+9fFW7LyfpVjqb39tJcpGztMNO9ZvqaTOeT3Edp9hZWZmb/ff8keKojXvLlhriQfWHmt7q0cyWl7ayGG4iZhwk9KVa/DInwSIy8HxVTl8raewsnhluLe7sA6w3scpM7LL8Vwlw8wlW5Wd/3snrI/7394nDFWo/KekxT6ZPCJY30n1TZ8ZDTlcV+syS8uXrST8m9RpMVRejaNaaNaNaWbSGFpHmpK3Mh5W9SWjH+aRmfFUv/wAGaR9V+qc7j0vrv6T/AL08vrXL1fV5UrT1f3np/wB3zxVdc+TtGuv0l9YEsh1V45rljIQyywALbz27LxaCWFVTh6eKrF8maYbW1gnuLu6ktblL1bqecvO00W0DSykfEkIPwRf3X+Riq+bydo86XqyGYtfXKXryiQh47qOnpXNq4/uJY+CL8H7HwYqmGm6Tbae1xKjPNdXbB7q6mIaSQqvCPlxVEVI0+GOONEjxVKdS8i6LqM188r3MUOpgfX7SGYpBLIpXjcNFTaf92nxJ9v8A3ZiqZ2uiWlrqk+qRvKbq5ijgl5uWUpDX0vhb9peT/H/xY+KoTVfKllql+NQlu76C4WP0kNrdS26qleTBVhZPtt/efz4qqDyzYr9WCTXSR20P1cxLcScJYzufrKcv3shJb9//AH3/ABZiqYS2NpNYvp7xL9TkiMDQjZfSZfTMY4/ZXh8OKpBB5B0aEIDPdystlJpheScktayHl6DUC/3P2YeP/E8VRS+UNLQ2zLJODZ2badB+86WzgK0Z2+JvgT943x/u0xVda+U9MtZdMlhecNpEL29jWSoSKQBHRgR+8+FI/t/77TFUXomjWeiadHptiX+qxFmjEjFyObGR/ibf7bM2KpS3kLRDKWWS6S3+tJfxWaTssEVyjGT1reMfFF6kjcnTnw/336eKo/XfLVjrf1eSaWe0vLQsba+s5TDPGHAEqLItf3cqj94jLiqxvKulm4sbgNOsljFLbikrH1opqNNHdl+Tz85F9Zvi/vcVQ2n+SdM02S0ntp7tpbCGa3tec5akEtKW244+nBxX0P8Akp6nDFUz0Kyu7HSre0vLiS6uIgQ00zepIRyJQSzcU9aRE4o0vD95iqYYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//R7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdiqyWaKFS8rrGgBJZiFFBuTU4qtNxbiVITKgmkBaOPkOTKOrKv2mXFW1uLdpWgWVGmSheMMCy16ck+0uKuiuIJi4ikSQxtwkCMGKt/K9PstiqjqF4tlaSz/A0iqxhidxGJHCl1iDkN8T8f5cVQmia5DqOiabqdwUtX1GKORImcfakXn6SM3H1GxVNMVU47q2liM0UySQrXlIrAqKfaqwPHbFW454JYhPFIrwsOQkVgVI8Qw+HFW0likjEkbq8Z6OpBXb/KGKujmilTnE6yJ/MpBG3uMVQt1rGl2tkb+a6jW0DBPWDBl5s3pqgK1q/qHhxxVempWMl/Jp6TI15Ciyywg1ZUcsIy3hz4NiqtFcW8xcQypIY24SBGDcWH7Lcfstirpp4LdPUnkSJKgcnYKKnZRVvHFXTXFvAFM8qRB2CIXYLVj0VeXVsVdLNDCpeWRY1UFizkKAB1Ylvniq8EEVG4PQ4qsS4gdzGkqNIFDFFYFgp+y3EfstiqXve6smlzzLawy6nGZTBZJNRZFjchF9Yx/BLJF/xXwSb4MVTCGUTRJKoIDgHiaVFf2WpX4lxVKPNPmH9A6cbuONLiYSQqbdpODenNKlsZlWjs/pvKuKpjBLeNe3UU0ca2sYjNtIrlpG5BvV9aLiPS4sP3fxv6mKpf5o8y2nlzTxdzxtPI7KkcCbMeTpG0hO/CKL1F9ST/mvFVPXvMN3p91Bp+lWA1XVJkaY2f1iK2Kwr8Pq8p/t8pPg4IuKp3C0jRI0qenKygvHXlxYj4k5ftcf5sVWxXNtMrtFKkixkrIysGClftK1PssuKtrPC5dUkVmjp6gBBK1HIcv5fh+LFXJPDIzJHIrugBZVYEgMKpyp05fs4qpadLdzWUMt6kcV0y/vY4X9SMNXokpVOf8AwOKpdqnmD6lq+labFGkw1Cd7eeT1KNCVhe5SsIVuXqrH/OmKphYy3cqzfW4442SaRIhE5kBiU/uneqpwlZP7yP8AYxVWNxAJhbmRBOV5iLkOZUbcuH2uOKoFtZt59PvbrTJIbqSzMkZDSCOMzRfaieejLH8Xwep+xiqJtb1JrS2uJaQNcKhEbMpIdxy9IOp4SMP8jFUTirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir//0uzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYqwvzbZWV35y8rLd2y3EH+mx3IeP1I+MkISFJ/haPhJN9hZf28VSY21k3mG60zWJLm31P9JLdaPHb26sZLeP0vqX1W9MEnoQwRq0N1H60ccSetirmW5/SWoQaMEvrm5TVDaT+k0N9YXDq7GO5mBCz2c9wqx2c0v7z+54erHFiqYeRl0W51FL3T5Lv69DZraahbSW4to4SCriK8/cQ+veRyc1iZZJX4er+xiq7zBJaR+arxNdhMlndaaIdFZo2ki9WsrXsKcVcJdy/uP8t4o8VYreCGby3ZWD2jJfHy0ywyywyyvI8fL1LK1t2X0YJo5Ikmnu/770vR9L/fuKvRJpre78jGW4lnW3n08etPCrGcK0QDyIjD1Gcfa48fjxVhoedbRjJbw3OmWmpWMmrajp8LxwXloInXnNZr6i87KUWsmoQwepF6f/GN48VV9Tt0Wy80XenEx6DJPp81skSM1vLcRyIdQEcMCl3trn/R4rmSFPjf1f7395zVULp9KvtO8331ldPBd3wt5/qotrhHjijMcbfBLHbyzR38sT/XfqyfYf8A3ZJ9tV1zNb38fmS/0cSfpG7itGbTYreeKYWsEiJqDQfWordbiS6j/dskcf8AuuBJfjkxVZqVvoF15Z1nVNLee+tpLiwmumktfSgQ29xGs7wWy28B+sJaF/r0kaf3P28VRmpW/wDua8yjR4BFqeoaPbyaK8cRRmCpcJOYJeC+jLxaGP4mjfl6OKphpCWFz5i0S88uRehax2U8esqqGOiUjWztrrkq/wClxXKy/A/77h637D4qqearmzsfM9rc+YYTL5bmsZbaNzE88Ud28i8xJFEkjK9xbfuopOP+/I/23xVC+jo9rq4g1q0aPQZtJhg0eK6V5FjWMy/W7Rufqst7LH9Wfi3+kSRokf8AeR8MVS/RdLP6T0GLzJb+vMmh3Ed39YjLinrI9rDc1VkadbQP+7k+PnirJPJCNL+Xthb3asXW0aGaKUEMOPOP03V6MvFPhxVi3lKDT57XyXLpMYGqW6M2qTohUiz9GVZkvJKfEktwYPqqSf8AGSD4ExV1n6Fj5f8AL97JG0NppuvXDTuY3rDBM94InYceawP61t8X2PjjxVk/kD4f8RJ6TxKdZupYldGjBjkERR05qvwtRsVYjrksBsPMNpqFvI/mZdWjuoCYXkkayW5t/qsttIiN/osVmrxcFb4JPU/bkxVl/l1UTzv5rZEKJOLB0Yqyq7LC6zMrEcWZWZFkxVJ/zC0jzLJpur3UP1W5gnNskMaxTNcpEk8DrFHwdo+Pr8p5+KfvF/4xJiqaeZbTR9VgfTdTthJ5mS1D2lzbwSI6zfaiewvCvwencfHw+sfB/u/4MVTq9N1b+VZ/rsb3t5FYN9ZigJR5pFh/erC8fxo8r8vTZPjxV5kgtZbXWktow1rf+WkNtFb28scRmhaaOKGPmvqXM1szRR+vN++eT/kXiqYXdpax3d0kFvxgu/KjpMEjaktypHorL8P7y84cuPqf6RiqL0C1srbVNAPoekk/l5otSb02HOQC3Pp3Tcd5VEdx8Mv7zFU/8hLcp5B02KNSl5HbMgSQFSsqlwqyI9CPixViejS2DTeT1W3kXW7K8lj1tnhf1lnkt5lne6l4fF69wyyLIz/3eKss/L9Ei0/VIkQxxrqt8YkKlf3TzM8LKGA/dvGfgbFWO2sVnN5jlstYlvItfh1Z7yyiigBMsIettLFfejJ/oP1T9xdRPcJ8CSQ4qhkl0uw0u+tpbJVePzHILljFIsNujTyy2VzcxwhPrdrGhT6vb8/Q/eQ8+CYqmvlC50ax0ua31kKoh164isPrMBQJPI7S2jQxtHwtWdJGePh6aR+r/l4q9AxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV/9Ps2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KpfrOjw6vapBJNNbPDKk8FxbsEkjlj+w68g8b/aZWjljkjxVBTeVorm0eG7v7ua7do3W/wCaJNG0LerF6Ihijt0VZBz4ehwk/wB288VRunaSbRzNcXk9/dFeAnuOAKr1Kxx28cEScqLz/d8nxVMMVdirsVdirsVdiqncRNNBJErmMyKVDgAlainIBvhxVB6HpMWi6VbaVBK80FogjheXjz4D7IcoqK3H/UxVMMVdirsVdirsVdirsVdirsVdirsVdirsVdirsVULqzgu0SOcF4ldXMdfhYqeSeoP21Vvj4Yqr4q7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq//9Ts2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KpVqmsm0vbTTLa3N3qF6JHSLmI1SGLj6080tH4Lykjjj+D95K/8AruirFPKuvXWneWbf/Q5Z5JrvUOclxLwigWGeWiXl8/rcJG+CCD7fqyYqy/RdYh1nRbXV7WNhHdRCWOJqBwSP7s78OXL4cVSCx8/C60631OXTzaWV84gsZJp4x6lx6k0UsUgUN6EUKW7zNcN+x9hP51Vy+foDbQSmwkeWTUl0mVInR0WZ94poZjwW4t5V48JOKf8AFnp4qrQ+dQbKdrmweHVIr8aUmnrIr+pcuqyw+ncDjH6TQP68kj/3SJL/ALNVKNL179E6v5on1FTFI99ZW8Fq03NRNPbpxCTyUWOCQlp+TLH6cX+6v914qjz+YEQiQCweW5Oox6WyQyo8RkmHO2nhuG9NZreUf5CPH/uxMVRlr5qu59RXTW04JfReh+kLYXCNJD645erEnEfWrWDknq3CcPj/AGP3b4qiPLt3Z3N5rgt7V7aaG+MV2ZJC/qSLFCRMi8nWJGhaL92mKpFr13ZTWvnqGG3lttQs7FGuLn1WpJS2mmtHhRH4w+nx+Ljw9X/duKsq0x5f0JZyKvqy/VY2VK05N6amnI9OWKvPNEuYLmy0LzDrdlPJqF5qhtUuIrkqjySXEwt5LmFGXnFZNF6VvD9n/YYqyW589NbteO2ly/U9Ov00++uDJGOHqmJYp44xyaZedzFyj+2if8Biqpfee7C1vXhWMTW0F2lhdSLIvrJK/ENIlnT1JreB5ESeTl/xjjl4Yqmuva5DottDNKFP1idLaNpHEUStJyIeedg3oxfB9rg/x8I/28VS2884/VI4YpbRYtVkglunsZ50iCxxP6VFuOLpJJcP/vMqL8f7fp4qhbPzreajrdta2FgZLG40v9JI0jiKWrP6XpyI1eHpuvpN9v8A359jFVCx8x/pTSfLGoaxp59bUb1fqrxS8UjlMczxSuqMrOvpCVPRfmn+/MVV5PPzIk9wdJmNlZ6idLvZvUj5JJyjiikjir++V5J4+Xx/u/8ALxVFReb5yurQy6VMNT0qSBHsoXWbml1T6tN6qhVSPjykuuX+80ccn95iqgvn2A2Mlz9SaWSDUk0qaO3lSVOcpT054Zj6frQv60f7CSc/2MVV4vN07R6hG+lyjUtPuo7WW0R1kUCcJLBdSXCjhFbejJ6txIyf6PiqrpHmiXWLF7iwsvWlt782F5GsycEEbKJrqGenG4iSN1lT4Ekk+xirIcVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir/AP/V7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdiqQ61oV9catYa3pVzHb6hZrJBIk6GSGa3mKtJG4jeORHjeNZYXR/t/3mKpTa+SdUtV07jqMMxs7q8uHSWA+mRev6vqLEJafW7Vi/wBXlf8A39Jiqd+V9FutC8vWukSTpcS2iNHHKqFFI5M0fJSzmtD8eKpRbeSLu28tWGlRagqajpNy15p9+sVFDs0rlJ7dpH5xulzNA/737Hx4qib7y5rWp2+nm/1CE3lnfw6i/pwssP8Ao/8Ad20EbStIiNy+OaSSV/8AIxVD3Xku+mN7PFfpFeSanHrFg/pErFNHGLX0J15/6RDLAvB+Po/bxVSl8j6ldSaje3Opxx6ld3Fpf2ssEJCW91ZxiBG4ySv68EifA8T/ALGKou/8t69qlvYNf6jAby0voL8iKBhAPq1eFvFG0zS/veTNLNJK/wDkRYqv1fyxeapq0F1LNbiC2uIbi1uViK3sAi4mW2huFbi8F0yt6nNfsSP+7l/d8FUdomjT6beatcSzpKup3X1tUVCpjPBIPTLFm9X4IUbnxjxVL7zyld3M3maQXkaL5it47UD0iTAI4ntudfUHrco5Wfj+6+PFU9sbae102C1Lo88EKxB6EIWReAbjUsFNPs8sVYxbeSL6DQ9J0k38TnStQXUVn9Fh6gWWS59Ax+qfT+Od09Xm/wAH+68VX3vku9urPWbUX0SDVr+LUA/pM3pei0DLDT1V9Xl9Ti/efuv92fu8VRNv5c1mx1O7fT9Sjg0nUZ/rl3btEXmjmbj9Y+p3HqKiJc8Pi9aGX0v91YqmmuWN3fWiwWxt2UvW4t7yP1YJoqMrQSL+z8RR/U+P7H92+KsftfJep6Uun3OjX8UOoWkUttMs8Ty2z200xuktljEyTxpYyNxtP33P0/3b4qmCeXL6PzDaaz9dWYrYtYX4lj+KQGT6yJYPTZUhb1fh4ssn7rFUDZeTdRt9K0HTpL2Fl0K7W5idYmBljjWWGKJ6ynhK0c7tJL9nn/urFWpfJN6+n6lZC+iH6R1Uat6hiY8CHim+r8fVHP4raNfV5J+3+6xV2p+TNQvLnW7uG+ijk1ZrJxA8bNEPqJ/3nueMitcW12hZJ0/df89MVWt5J1Jxehr+EC61K21VaQNRXtxFWCnqj927W6In8kf8+KrtS8l6jdz6pcxX0SvqF5aXot3jZoSLRFh+p3iiT/SbedER3/uv3mKqtrpGu+X7fUZLCaC8n1HUvrqxPC4+GbgtxDySX93xWP8AdTP+7iT+99TFWWYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FX/9bs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KtE0FcVQOjaxZ6zZfXbPn6HqSRfvFKNyidoZKo3xL8aN9rFUfirsVdirsVQFhrNnf3uoWMHMT6bIkVyHUqOTp6qcOX214H7WKo/FXYqhrW9FzLcxiGaL6tJ6ReVCiyfCsnqW7H+9i+Phz/35zxVE4q7FUNDerNe3VoIZkNqIyZnQrFJ6oLf6PKfhl9Pj++4/3eKonFXYq7FUNp96t/aJdLDNbhyw9G5QxSjgzR/HE3xLy4c0/wCK8VROKpPb+ZrG6guJrWG5nFre/o6eNIWLrMGRXcx/a9CP1VeSX/ffx4qnGKpfZa1ZXupahpkPP61pvpfWQ6lR+/VniMbN/eLxT7WKt6xrFno1mLy85+gZI4axqWIaZ1ij5fyrzdfibFXW+sWdzqt5pMfP63YpFJPyUqvGfl6Xpuf7z+7f7OKo/FUr1jzBZaT8MqS3E/pPcNb2yepIsERVZrhkqv7uP1E/y3/3Wj4qmMMsc0STRmscih0NCKqw5Ls2+KqN7erZiAmGab15kgHoIZOBkNPVm4/3cEf+7Zf2MVROKuxV2KtclrxqOVK8e9MVQ+n3ovrKG7WGa3Ey8hDcIYpV3pSWJviRsVROKuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV//X7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirGdbvZpfNOkaEbiS0tLqG4uXeJvTeeSD0xHapKvxqqLJJcS+n9vgn+6+fNVimiTTDSNN063v5jLNeauzwxOIWnWKeSt1cX6Ua1jtvVSbhFHJ9ZeRP3Xpc8VZl5Kv7zVfJ+l3l5KXu7i3HqzAAMW3T1OnHnt/LirDdK1TVk8s6JqtzqU802r3f1C8luJvThjijmu+BRoo/9GmuPRitXueP/AAHwYqj9Rl8w6bBp9q+rFnfXre2Hov6zpa3ILfU7qeeJWmki/Yd/j4en6vPFVI6tqdjDc6SdRmMDeYY9LF/M/O4itpoEu2QTsPtNKfq0M0n9163+RHiqFm1CfRNW8xxWtwSs2q6Za3F5NIeUUE1unJpLmkjRcafVVuJFf0/9f48VRuqSeYdOFpaNqxCz65aQKkMpmmitbtW9S0uLieJXk+Ic7d3/AHvB/j5/BiqJupL/AEbV7dLq7vJ9GimtbaHUI7gStFIeKG11e2bi0v12SXl9d4yOnOBP3f7aqc+Vrq8nvvMUVzcPOtrqTRW/qEfBGYLeURLxC/AryvirFfMWpazbJ5uvYdTuUbRLuzlsIgyiMCWOB5IZVC/vbdvXdfSf/k5iqPvb7XNR1LWltNQi0640a7hWFZp3REt/TilL3FmkbJcxX3qzIkkkn8no/YxVONDvbyXzd5ms5rh5bW2+otbRPSkfrRSPKqABfhZlxVJ9UOo3WteaoP0xdWUGmWlreWfpOqLHIY7iRmb4P3lvygX1YpP7zFUJFq/mLXhPAt4mmX9vplhews0z26pJPF9Zubp7f0plu7dJv9Hljl/dRf8AGR+eKpnop1HU/NusR3Op3H1fTvqE9vBA4SAtcW8hmUqU5y2zP8cccmKpd5f1rU9QsPKlje3s3DUzqBurtW4SytaSOtvbevHxMXNOUjenwdvq/wAH7eKt22taq15Z+Xrq+l+qvrF3YHUweE8kFrCt1b2z3ChaTyzSfVJJovTmk+rv/u7FUJZXF3YWGqi0vJFkTzakMsgYc5IpZLWF45mp+0jcfh4fYxVl3nXVLnTtNtBbym2F9fW1lPeLSsEM78Zp1LhkRuP7tJH/ALt5OeKsRu76fQdZ82fVrlqGXRYZLu4kq0EE/OKWSSdxI/GNH/vpFkeP1MVRXmKHU7fy7rMN5ex3NubvTZrO3WZ7iWBJLu35xy3MyxySRyOvqW/P4lTFVXX9Uu9I1fzdqNmP9Jt9O08oSOQUNJco8xUV/uUZpf8AYYqnvl+LUYdTufV1CO5065gintbb6w93Ih3R7hLiSOL/AEa5+FuHxx+p/cfBiqTa0k1v+YE19BJM89voM11FbK54u8Uy8IPTHxNFK320/wB+Yq1pNxrVxZ22rDVkNtqOmSvJGs7TSNchPW+tWkckKR2j27F4poF/cr+3H6uKoeG51W30Dyrqv6VupbnWL3TFvVldWjKSoRLFGnH92kn+7OH23xVE219rmpXtxfRahHaPp2rvbTwyTOF+rJJ9XS0exETRmW6j/fwXPqer6j/B8HwYqnHm/VLqzm0e0idYYNRuzBcTvIYBtFJLFb/WUWR4XupY1jV419T9hMVSW5XzPa2EcD3jaoLWe6+sW9jc8L0W9E+rlbiVYfrlzpvqfvYW9P6zzg9X4/gxVfopW/8AN312C/uZYJ9CtJ4JGYLy9V54vU9FgyozemsvD/f+KoWz1nVYPKvlfzTd3sz2kZRNcQmqvDOWhF3JRWflaztDI/D7cXPFUde3uqre6Pp8s7xprTXlwwkuGgIKiM2lhDdQxvJFxil9X0/tyPH9v9jFU58v2WoNaWEmpam13eWBnhke3ekM9T6a/Wl4J681uir8fwfvvUxVP8VdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir//0OzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYqgtS0fS9Viji1K1jukicSxCRQeLr0dD9pG/1cVUD5Z8vFIU/RtuEt5WuIVEagLK/95IOI+0/7f8+Koqy0zT7Cz+o2VvHb2g5UhiUKvxks+y/zFsVUV0HRV06TS1sIF02WpksxGohJJ5E+lTh9r4/9f48VWR+W9AitLeyj063W1tH9W2hEa8Y5OvrIP2Zv+Lf7zFV0mgaJLDdwSWEDxX55XqFARMwNQ83+/JFP2ZG+PFVsPlvy/BBPbxabbrDdIsdynpqfVRBxRZqj95wX+fFVsXljy7FZw2Mem262lu/rQw+mvFZf9/L/AMXf8W/3mKqr6Fo8moDUns42vqqxnI+Isg4Ru/7LyRL/AHTv8cf7GKq9rp1jaSTy2tukMty3qXDooUyP/vyUj+8f/LfFUPL5f0OYXIlsIJBeMHuw0akTMpqjTgj98yfsepirU/l3Qrm9t7+40+CW9tAFt7h41Z0C/Yo5/wB9/wC6/wCTFURDpthBdzXsNvHHd3NBcTqoDyBfseq/2n4fscvsYqkQ8pR3PmfU9V1OC3ubO7jtkt42LM6m358vVRlEbxytJy4fH/dpiqbajoGiapPBcajYQXU9sawSSorsu9diw+zX9nFVaPStNiup7yK2jS7uhxuZ1UCSQdhLIPifj+xy+xiqg3l3QmsF076hAtij+tHAiBFSQHl6sXDj6UvL/dkfx4quudB0a604aXcWUMmnrQrbso4Ag8ua/wAsnI8vU+3iqweW9AETQjTrcRPIJ3T01o0qiiTMKfFKn7En20xVGXdna3ttJaXkKXFtKvGWGQB1YeDK2KoO28t6BaxSwwadbpHPEIJ19NT6kSjisUpYEyR8f2XxVbD5Y8uwaf8Ao2LTbdbAv6ptvTUxmTtIykfG6/su2KooaVpouZboWsf1m4T0p5ioLyRgcRFKx3kjp+w+KqelaHo+jxyR6VZQ2aStzlWFAnJv8rj/AC/s/wAuKqh0rTWvxqRtYzqAXgLviPVCf779X7fp/wDFf2MVQ1t5a8v2kl1Ja6dbwvfArdtHGqmRW+0j8f2H/bT9rFVQ6DorW0FobGA2tq/qW0HBeETg1V4UpxiZf2OH2MVafQNEk1RdYewgbVEFFvDGvqig4g86faC/Bz/kxVEX+nWOpWr2eoW8d1ayU5wyqGU0NQaN3U/ZxVBv5X8vPa29mdPhFtaBhbRqvERh/wC9CcOLL63+7v8Afv8AuzFVd9F0h7mK7azi+swQm2hlCAMkLbGFKfZj/wAnFV0ekaXHYHTY7SJNPIKm0CKIqE8ivpU4ceWKu1PSdM1a1NpqdrHd2xIb0pVDAMOjLX7Lf5S4qhZfL2nNc6ZLDDHbrpPL6oIl4MgZfTMMZXiqQOv97Hx/efBiqbYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FX/0ezYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYqg9Q1SysPRS4cia5Yx28MaNLK7Ac39OGJXkf00HqSNx+BMVY35Z83xvoNvdatdG6u7q5vIrUQwkyTR28si8orW3Tnxit0VpPg/wBf48VZPa6hZ3ljHqFtKJbOWMTRzLUgoRy5fzYqltn5w8vX0H1izuWmhIUpIsM3Fy7tCkUJaMerN6iMvoR/vcVb/wAX+XVt4biS8EST3JslWRJFdblftW00bJzgmX+WVUxVfF5o0OXT5tQW5It7eb6tMHjkSVZ6qgtzbyItx67s6enF6fOTn8GKpToXmZ5tS8xG9uGawsrm3is1aExyL60SObb0Qgnkm9d/T+LnI+Kpk3nHy9HAk010YQ9z9S9OSORZFuacvq8kRT1I5GX4k5r+8/3Xiq+PzTosksEayyVuDGikwygLJN/cQz8o/wDR5pf99z+n/wAOmKr9Gvory41P0r83qwXRhMXpen9XZUj52vLivr/F+99X/izhiqhcec/LdtNPDNecXtZ0tbo+nKVilloI/XkWPhFGzMq+s7ejz/3ZiqJvfMWk2FwILqYoQ6RyS8HaKN5aeglxOqmK3MvJeHqun7H86YqgdF1LUJ/NPmLTrmYSWlj9TazTiqlBPE8kqll+KT40/bxVWvvOHl2wnure5uiJrHgbxEilk9JZBVJZfSjfhD/NL/dp+3iqvf8AmTR9PAe4nPpBUkkmjR5Y445DSKaeSFXSGF/2ZZPg/b+xiqweaNDOpSaWlwXvonSOaJI5W4GRDLGZHWMxojxr8MrP6eKofS/MGnpodldyak2qfXGkW1uEhKy3BDyNwitIUDfuY04f3f2IvVkxVFDzLoradFqKXHO2mk9CEKrmVpqlfqy2/H1/rHJH5Q+n6icPjxVJvLPmgy2erXOq3fqxwatNY2REXCRlAi9C2S3RfVefm7px4erirItM1aw1SF5rKTmIpGhnRlZJI5U+3DNFIFkikX+V1xVjnnTzX9QsJo9Kuimo21zaxSlYjKg9aWJXtnmZHgima3l9Xj/ecP8AXxVPLnzFpNrdraTzFXaVbcy8HMKzOAYoJbhV9GKaTkvBJH/k/wB+JirEtW8x6/a6F5su4rwC50nUEis3MUZCwMLV/RK8eLf70SL6r/HirLNR8x6RpkhjvJzGEKCeUI7Rw+qeMJupUVo7ZZG+y0zJiqI1XVtP0iye/wBRl9C0jKiSYqzBeRCLy9NX4rybjyxVTvte0nT/AFfrtwIPRgFzKXVgFiLekrcuNOby/u0i/vXf9jFVKPzLo72tzdNOYls5Fhuo5UeOVJH4+lE0DqsvOb1I/R4p++5/u8VWDzVoptjcCV6rcfUjb+lIJ/rPH1Pq31bh63q+n+8+x/d/vPsYq1/i7y96NlN9b+DUTItmBHIWkeGomi4cOayxsvBon/eep8GKrofNGiT2tvdQzvJHdO8cSrDM0nOIlZo5IVjM0LxMPj9VExVqHzVodzZreWk7XMUkjwxLDFI8kjxf3yxQhPVl9P8AbdE4YqjLTVtOvNNXVLWdZbB0MonWtOK151WnNWTiyunHmj/BiqBsPN3l7Ubi2t7O79SS8iae0JjkRJEj/vfTlkRI2ki/3bDy9WP+TFWoPOGg3CzNDO7iG3e8BEUn723jPGSe1+D/AEmNX+H9zz/4fFVG2866NNpVlqUhljF9E00NuIpHl9NFDzSenGhd4oVdfUmRfS/kfFVK/wBcuD5i8sJYXSvpGrpdPIqqrCRY4Bc28qS05r/scVV9K8w6d+j4J31F9RW6mnW3nS3cM3pyPWL0YIq8bYfufVZf3nDFVq+ZNK1G50ptP1XhHc3E0SRLCzC6MEb+tBzkT9yIW/e+qv2vT9PFUcnmLSXv47ATETTM6QOUcRSPFX1oobgr6EksXFuUayfz/wC+5MVRdne297G8tuWKJI8Tc0eM842KP8MqoxXkPt/Yf9jFURirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVf/9Ls2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Ksa1uy1WHzJpeuWNsb+CCGezurVXRJEWdopFuofXaOJ+LQcJl9RH9PFUi0/RPM1vb6fbz6cfq31zUZL2OGeJZeNzIZrRvrAKSR2nxv8AWktpPXfhF+7eP9zirIfI9hqGl+U9PsNQtzDeWkZjeIMj14s3FlZG4fvB9n4v9fFWN2/lbXovJWkWbWayajo9693JpzTKq3EbPc/u47iNuEcnp3fON3/3bH8eKoq60DULiz0x7PRV09k1m21C6tfVjeURQbSTXE3qNHLcSfsRxvJ8H+7MVU7zy/5h9a+vreyV5INdi1e2t2kjBuYEt1s3iRuXGGb7Usfr4qh9Q8ueY9QutZ1FdPEbS3thqVlZzTopnFrALee0lkgaQW8rD4kk5PH6v7fD48VRFzoGpXFtp89noQ0+SPV7S+ubczxvMYrYMHlnm9Ro3k+LjDGkj/B9vFUdqelas3mU32l201pcNNbia6WVGsrq2QJ6/wBetHYutzbp6sVrJHF6393+99P+7VTLy3p9/Z6hr8t1AYor2++s2rclbnH6MMFaIzFPig/bxVjuveW9dvbTzjDBZ1fWJbVrCskYDrAkEUjPV/3f9wzLzxVUufLl8Na1BZ9DTVrHVZ0uormadUW3YpFFJBeWxf8AepA0HrRfV0m/k/1FU70fTdQt/NnmC/nh4Wd+tmLWbkp5G3jeOWsasXT4n+DliqSXDXrea/NtrZ2TXsl1YWUKjkiorul0iev6jL+5bkzSNH6n2PsYqhv8I6lpdytu2kpr9jcWNnaM/riARS2kX1RvXikZfVtJ1/e/B6sqfvP3WKp9oGlahYeZddvJrUR2V5FZLaPGyUJtYWhkRY+fONeTfuuf7GKpLovl7zBpNn5bu5LMyz6S19De2KPGzmK9kMqXFs5dYmeHjHzj583T1MVXf4c12yvbfzBbWnryrqt3qE2kpIiyejeQJY8lkkZbdrqJI/rDp6vD97LH6uKrLby/5kguZtU+o/vLfXZtUis/VjLTW1zB9Tl4fF6S3UCn1I/VkTn/AD4qyTy/pl1DqutazcRm3/S0sLRWjEFkS3hWASS8CyLLOeTMi/YT08VYxqWgeZl0rXNDt9P+ti81IalaXwliRGje5hvHgmWR/WW4i9L0/wC79J0/4DFUQnlzUIdZv4bjRI9Ss7+9+vW+oyTqscPqcHkiurQvzd7V4/3DQJJ6v7v+6xVrVvLmu3Wi+brOGzrPqt6k9iDJGA8YFsjMx5fu/wDeV/t4qv1LQNQOvajNJoiavYax6MivJOsQt3SOO2khvIWf9/B+79ZfQSb+TFWY3unW9/ps+m3Shra5haCVV2+F19NuPXj/AJOKsUTRvNMHk24jYJc+Y3EUR3Q8obaQRxGM3HqW/wBae1V7hWl/d/W5cVSyTyv5i9fU7yzsWSRL+w1bT4Li4VzcG3h9G4tJ5y8zxzt8bc3/AHPq8OEvp/HiqeX/APia+hsbj9Ftaob0NeWkUsH1wW4jaP1RdcxDGzy8Vm+rzfWfqnwRy/G+KpVonlzXrNdBjmsPTTTNTvp5qTRuPQuBcLBIhL83/wB6fs/3vwYquGkebItKvdMt7V7dNU1W7uLu6ilh9aOynk9altykCfWrhG9Hn/x7/wB5/JiqrqWh6kf0Rd2ehg2mk+vaDRVuEjkNtKsIjuoZ1kWFZo3h+KOSb95H+36mKsm0W0ay0ZYksEsXo8gsIWDBC5Z/TMtfTeVif3kn936n/B4qxPSfLfmC0h8mo1oqy6LFeJelpEKI00LQQH4H5So0jfvPT/YxVZpPl/zG2pWF1e2TxSNpd3YX88k0TKk0jI8Zht4H9OKy+DhbR20fwJ/fJ+3Iqvt9I8znSdC0+bTnS3t9OlsbyNJoUkE6xpDA89xG/qfo6X02f0rWT1Ofp/WYvg9PFVbSdC1yL/BDT2Rj/QsE8OoL6kbFC9v9ViK8X/ec2Xn+7+wmKrItJ82Q+Wo9FgtXtzd3t02oXMUsPrRWk08lzS15OE+sXEUvoq/L/R/jf/feKo5tK1Frry59W0kWVjpN3L+4EsTGO2+rvaxSHi55M0k3LgjSP/P8eKoHy15b1DTrq30+90WOYWE8ksGutOGRoyzyxyJacvWivf3vpP8AuvS+3J6v7GKsv0rUmv1ufUtntZbad4HR2R68aMsiPCzoVdHX/Ljb93JiqPxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Ps2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KtEgCp6YqpW13a3cXrWsyTw1K+pEwdeSni68kJX4W+FsVVsVdirsVdiqjDd2k8k0UE8cstuwSdEYM0bEcgsqqf3bcf5sVVsVdiqlDdW07yxwTJK8DenOqMGKPQP6cgX7D8GVuLYqq4q7FVGK7tZppoIZo5JrcgTxIwZoywqglVTyj5D7PLFVGHStPgv59RhgVL25AW4nFeThfsK+/wCx+x/JiqMxV2KqNrd2t5AtxaTJcW71CSxMHQlSUfi6Er8LqyNiqtiqjb3drdB2tpo51jcxyGNg4V1+1G3Eni61+JMVVsVUbm7tLSP1bueO3iLBA8rBF5MeKLycj4mb7OKq2KoR9W0tI5pXvYFit39KeQyoFjkNP3UjcqJJ8S/A2KovFXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYqpXN1bWkD3F1MkECCryysERR/lO9FXFWheWhuRaCeM3TR+ssHIeoYq8PW9OvP0uZ4ep9nFVRI0jXjGoRdzxUUG5qemKrsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdir/AP/U7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdiqSapq12ut2OhWHppc3UUt1PPMpdY4ISiUSJWi9SWaWVE/vf3cfqSYqxPy3qWpad5ds7a2NvA9xfakkjcHmYPHPO6QWVjGUmueb/a+P/R4E5virMPLWsT655bsdWMaxXF3AJDGCSgfdT/lcOYxVjOm+c9euND03VLmO356vObO1t7aKR3SRHuPWnbnL++T0bX93B+7+P/duKq8/mnzRaWdibmxijnuNWj00PMrxCWCb+5u44Q8j28n7MsUjS/YxVenm3V44Z7KeOCTVRq66PbTorJAfUiW8FzJC0kkg9K3L8olm/eSp/efHiqV2mr3Oha15k9RUmv7zUtPtIzDGQhee1RvW9DnyZ/SVpZI/V+OX/dmKo+580+abS3tVmsokluNVg06Ke4jeISwXAPC4WBZZHiliccJUZ+D/AO68VRLeYtZttettHv5ba2mcwrG0kMqQ3oYVunsbgyNHDcQE+nHZTNJI/wDl+omKpj5b1Ca8vNdimgghazv2gDQKVMiiGGRJZyftzcJODf6mKpFrHnHzBYDzDOkVobbQLm2VkKyF5oJ1ikZOfNVinVZ/73hJH+x6X+7MVRV/5q1t7+8TRrBryPTbpLWWARE+seMUlzxuvVjjtnhjn/dc45efp/8AFmKqvl9VXzz5u4gDkNOY02qTBL8WKqd/r/mY6pr1lpyWYXR4ILqL1lkZpRKksjQPxkjWN29B+M37H++3/YVQ0nnbVtQjaTQbFpJYbW0uzbNEZfUa8i+tLbNOkkS2vGH4fW4S/vf8j7aqYadrnmDUfMepaasdtb2mmm1dxIsjTMl1C0xiJWT045YpF/vP3if5GKoDQfNF7faZoFpawW1lfasLySQxofQhS0kZJTFByRpJJpHj/wB2f79l/wAjFVW384ancSwaN6UMOuyahcadLMQxtwtpCt5NeRRcvUb1LeWH0bd5P72T45eEeKpZ5b1S6059R06BIRqOp+Y7y3V+JEEYSCO5nnEVeTfuovgg9T+/k/vMVZT5f1m8u77VdJ1BU+v6TLGjzQgrHLFOnr20wRy7RScOSTR85PjT7eKsU836pfa15f1O5jEKaXY6nb2aIylp2aC7t4pblZOXCL9+fTjj9P8AuPj5/HwxVN5PNWtXGoT/AKKsWubWzvzYzwiIkuqFFuZ1u/VSOJ4mf4Imhfmkf/Fn7tVjvmCKMeWPPoCLQapG4FBs3Gwbn/rcvixVkmreaNcGoahbaJZG7fS3hjeD02YTtIiXEsf1kSRracIJV9N3jm/eYqnPmO+1Sx0K71DSoUlvbaMzi3mDEOqfHLGPSYN6vp8vT/4sxVLrrzNdPYXWpaWbaWxhtIZo5rljChlnpJzeUngIIbV1leP+95/uueKpdD53v1F3ZSIkl8uo2um2Vw8UlujfXI1uEmntpGaZPSj9T9v9/wDuv7rniqZ3uo+YdPtFS8ls0lkvVt4rwK55W7oXjdLEM0s180o9BbWGR/8Af/2PgxVK7Hzlrl9b6AY4beObVLq7sroyLIOD2vrcZY4+fJeX1fk8Mj/8Vep/uzFURbeatSOg3Op3stnarpV1dWupzskjI/1aQwRtaQCVX5zvw/dPM/x/AmKtDzN5jS30y2vbRbbV9UWe4EcMLzmCCH0+Cy25kjZ7hvXj9X99+7xVO9Jv9YutAF3f2a2WrBJOdu5Pp80LKj7FnWKbisnH+8j58MVSDSPNmvzR+XL+/itf0fr49EpCJFkhuDG9xA3N3kWWGZYZFdPTT0P9+S4qt0zzhrM981q0MF7JNp1xfW8dqHCfWLd1i+pRXjs0N6jc1RrmJeHq/wDCKt2nna6bSp7oSW95dme1sre29OW1liu7p/RaDUYJjJJCkErfC6/30SPirtU8167pI8wRS/VrmXR7SC8glEbxiQTNIHjlj9WTjw9L4OD4qj9Q8y6ja6pqdlFFbstrpkeoW7zP6KhneWF1uZnb01hT0fU5fBirHda8wXOr+WPOWnXYSZdNtoZILpYXg9VLiL10b6vO0jr6Tp+7l/3ZirJYdSuP8YLpXoQcDpIuobriTPX1lhaF3r/cV/ecFxVPrMXgtYhfNG94FHrtCrLGW7+mkjSOq/6z4qr4q7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FX//V7NirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdirsVdiqU6v5fttTu7K+E81nf2DMYLq2Kh+EgAmgkWVJYpYZeK/C8f+piqX2/kXTrU2jW95eJJZy3MscnqqWK3pD3cDcoz+6kdVfknCdH/wB3YqmmhaJb6HpEOk2k0r28AZYXlKs6qxLBahFT93y+D4MVS5fI+kr5fi0ES3At7aU3FnciQC4gm5tKs0EyovF0eSTjyT9vhiqo/lC0mtrSK5vbu4ltLtL8XUroZXni/ufVPpCP0ox8Kwxxxx4qp3XknS7mO9Ek9wJby7TUVnV1EkF1GojjntGCfu2WNeH7z1fhxVTk8h6XOmo/Wrq7nn1JoJprlpFWRJ7YBbe6tmhjjW3nj4/sLw/Y9P08VVX8m2s1vbRXV/e3M1tdR3y3csiGVpYf7jlSIR+lFX+6jjT/AIsxVEXvlqC+u2muLud7WSaG5ewJQw+rb8DC0Z4etEvOJJJUSX96/wDs8VROmaLb6bcX9xDLI76jP9ZnWQqVEnFYv3fFU4rwjRf9hiqXX3kvTL6LWIp57jhrbxyXoVkFDCFWIQn0/wB2vGKNcVXT+ULOXVH1GO8vLZrgJ9ft4JQkN0YwFV7hAnJXZFWOT6u8HqR4qjrLQ7Wz1a/1WKSQ3GpCJbhGKmMCBTHD6ahVZOKM37WKsdOhXmoebPMBma6s9Ovra1txLEFVJ1jWVbmPm6u6N+9VElT03/vfTxVMrvyVpst5Hd2dzdaW6wJaTR2MoiSaCLaGGZGST+6TlHHLF6U6Rv8A3uKo2x8v2lhqd/qVvLKJtQSJJkJUxqLdfSg9JeHw+mh/m+P9vFUBB5I021sdPtbS4uIZtKllm0+85I00ZnLNcRHlH6ckE3NvUjeP/iCYquuPJemTW0KJNPb30F01/HqUTKLj6zJtNKxdHhZZo/3MkLQ+j6P7v08VWL5G0xIbhVuboXE16NTS6MimSK7ACGaH4PTpInwSxSRyRyR/BiqbaZpMGnm4lDtNd3kglu7qSnORwqxJ9kKqRxxoqRRovBMVSa+8haXefX4xdXdvZalMt1dWUEiLEblXWX6ynKN5Y5JHjVpOMnpu/wAfDFUQ3k6x/Ssuow3l3bpdOkt7YxShbaeVAF9aaLhzV5Aqet6MkXr8P3uKtXXkzTbuz1azmnuPQ1mZbi7AdQQ68P7k+n8C0hi/4DFW7zyfZ3OptqUd7eWk86JHqCW0ojS6WIcY/rS8G+Ph+79SD0H9L4MVT8KqqFAAUCgA6UxVID5M0ZfLj+XYfUgsmkMyvGwEqSet9bSRGKlf3UwXhyTjwThiqjN5E0u4XURc3N1LJqbQSyzGRVeO4tlCQ3ls8caejP8ACv2f3P8AxV6fwYqqnyhbtHaF9QvZL6zufrceoO8bTlihgaN6xeh6DQN6fppB/wAlOeKrbLyTptkbMw3N0RYXU97bK7qwElzzEyMTHyaL97J+1z+P7eKrD5F0wiMfWrrjFeyamql4ypupTz9V0aFkf05PjhVl/dviqre+T7W8jhaS/vVv7aZ7i21JJEFxGZAqSxI3pej9XkjRUeFoeGKplHZpp2kvbxmW5KRuS7n1J5XIJZnb4ecsjf7D/UTFWN+TvKxTQtG/S5uTcWFu8SWM5VVhklVoZ3X0lR5P3LvFCzyyelFJ+7xVF2nkSwtTalL++Y2dpLp8BMiAi2lACx/u4k/3n4J6Mn2/g/e+riqtN5MsLu2vYr+5uLme9SCN7wsscyC1ZpbR4ngSNVmhldpfW4fG/wBv93+7xVK7fy5Jc69rtlqa3Nzp2oafbWhv5uKmRo/W9bi0Sxojr60bLxhSPniqOufIOmXiXX168vLqW8s0sJpnkQNwik+sQzKscSRrPFL8Stw4f8V/HJiq5/I2nyrqnr3l3M+swRW+oOzpVxCOCyqFiCRysh4txX0/99xpiqP/AMP26aouriec3sdl9QFGShi5ery4lP7/ANUc+f8AxpiqJ0a3vrbTYYL+dri5TlylkKlypYmMSvGscbypHxSSRI05tiqOxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv8A/9bs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9fs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Ds2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Hs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KpV5nDnQbz055LaXh+7uIWKOjEhRIrL/AC1xViHk7zHq503VPL+pTtN5h0y8+opPISWdJ3IguTt8XpqJZP8AjFHHiqG8heaZLLylqOs63d3WoNFqLWcJkYyOR+5jgjVT8CcpJfjfFWQD8wbBNN1m9ubSaOXQZhDqNqpjdt24rJBJzWOVD/lNE+Kqlp5+06a5vIJ7W4tvqunDV1LhGMloVDlwkTuySrXj6L/FiqVa35xtdQ8l3eqSpf6fp5Fu632nSwtNxmf4RBKJAizRSL9XvoGZJYeeKppqnnmx0yee2S2nvRpttHd6pKhQGGKSnp8g7J605X980af7q/5F4q7UPP1ha3wsLe0uL2aXT/0rbSRemIpLYBm5epLIjRtxRvtx4qg7rzRpupXXlK8jm1C2h1SR3tY7dkWKRwoV7fUkL8mjj/4r9TFWbYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq/wD/0uzYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYq7FXYql+u2V3f6VcWlm0aTzAKrzBig3DGqpRm6Yqli+UoU81y+ao+H6QlshbGEg8PWB/v+Y+L+6VIPsfYxVINP8g+ZNM8p6hoVjqsMVzeXX1pblFkj+F+C3FszKzSxqyx/DLE3qfsYq2fy5vhZeaLGK5tooNeaBrfhGyiH0zWRGjHwlf2Yvi/y5MVRln5L1W11k6ql3b+oNHXSY0MbMokQIUuGDGjxmWP44f8AfeKpZN+WF1Jo+uadbzW2nx609q/1WH1ZLeFrciWeaBZODK91KP7r7EEP7vnJiqN1fyHqd1c6pPZ3UEZ16zgs9SMgc+m8IWM3FsF/vQ8C8PQk9L4/3nrfsYqqTeQrldViurO5jW1ttGOiW8UisXpxdUnkddtmf7GKqVt5A1K3t/KsIvIW/wAOSSSSHg49YSPWi7/uqR/8ZPjxVnmKuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv8A/9Ps2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Ts2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Xs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9bs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9fs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Ds2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Hs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Ls2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Ps2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Ts2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Xs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9bs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9fs2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9Ds2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2KuxV2Kv/9k=', 25, 0);
INSERT INTO micadoapp.document_pictures VALUES (42, 'data:image/jpeg;base64,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', 26, 0);


--
-- Data for Name: document_type; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.document_type VALUES (2, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAADnZJREFUeNrsnQlYU8cWgG9WQlYIS1hFoILIjqAiVdCiKIo+q33udelibV8LWLE+kKIWtb5abdXWaq22LrWIiqC41l0UEBAVRWVVNCgQIAlZyPrO1FitS1shUMA533c+7s2dTCbzz5lzzty5gaTX6wksHUfIuAswECwYCAaCBQPBQLBgIBgIFgwEA8GCgWDBQDAQLBgIBoIFA8FAsGAgGAgWDAQLBoKBYMFAOrtQjVnZ4s+/JsrKbwfQaJTRcNoTtDsorYv2nQz0jFqjzXdxckxLio/RGaNSkrE2yiUvXxOcceBorFqjCa1vaLTWaLRqeFnaRWGgTqNTKRQOn2+mMjUxKfLwcEtxtLdZsTA+VvePAlm07GvijrA6sbi45IPqmlpBQ4M4feM3yzc7d3cUwmWlofFdUSi3bt+1mjk77lULvtk7bDbLjkalpkVGDJ63MD6mtOWoAUhLNfGzL4mggVEL/IKH6y26+Z3Zu+9wxPncAjuNRtOqejuLarVaAr4vMz3ziJ9Vd//kvmGj9YEDRmYnLVnZo6V1tqpBo/791kxogBYak5GyZ78XauDLAOJJ1el0xK70A2xr54AZD6BEZSQs+qJ9gSxcusp+YMQbFQAjD8F4GUE8qalpmSYAJQmA6CP+9WZcuwIZMXb6l25+Yfrdew8MxjAe6e6MQ/aegeHnXh0ytgqmLsaLvp/csvB2NVssaRqv0+kPhg3odwFnD49kYP8+QuG9muXNzSqHs+cuTGqXxPB0Vm4/pbLZXlRfv1XaJFNgDI+EzWLqN6xZliuXK8pMTRnj2wUI05ThIZPLiXVfLS20trLUYAyPhMEwIYYOHiBXqdU5cOrdXksnfiqVqiJiSKgERgGm8GQKL1foSSRSExyathcQc/hAiUwmx8/D/Xnf6toLiBYvTHaCxcWOIBcvXyW2/LzHl8dlW8OpJaizYQkHLeXUgMqRww0bGFwbOXTQywtkx84M96vXb46l02nucHq7sVGyLmHeh0ILvlmr6867eJn4JTWDz+VyZly7XhqWm1fowWSaWkilTWZo9cDcjKfT6nT30foTsmyVSi0sunazOq/gcoFCoTwe3Cfg9KgRQ1QvDZAtP+/uvX7Tz4tr60ThVAqFjl6TK5QhtXX1HyTO/6jY7RXnFtd9If8SkZS8cuqN0vK3NRrtQA0IBBpnamrrDo4fF1XS3dGBsmlryjQzHscXnO0OqVR2E/yfx5Wr14MuFxVHsFim7xRcuppzoeDygaAAn58AjKzLAzly7PR7Yokk0oJvTjxcXTYz4w46fOxU1PSpb1QAEOWL1pmTV0ik7z/Svaz8Vmxl1d1Zeh3RPHxI2KLhEYPOweUSpVIpDO7Tu/lmaTmC70WlUnsFBwVkwvXtcJ2PprKCwive36zfMhgS3KmVlVUjcvIuRhQUFm3z9/VMHT1yaNcFwmIxUYcQjy/1QydAEsXyo1GpfMP8/peSlZ1PHD56Et7GDMy/eKVPbv6lSJiOQslk0s+vjx72edJ/o69wOOw/vOfK1WK0PlSpUDTTvL08zEePGIJerkcKx/kh/YJSyipu7Vi9bvMEUX3jm9tS0oKOnTrXB5q3ekzU0Kqu6kO0T4V3ZDLR0CiubVapZH/Dwojs3ALvS1euT4ZR7QHJVw8Gg9HD1saaCpDFOvAPkKj6bt62q7+yuRn5CZLhM4Vl5ZU14FvsKWQKcfZcbn8olw2vc0BFdBq1HOgSVXeEh6lUynUYHDVWlhYxEol07jfrf/QuKas4CuVuoHo0anWRq4uTavzYqM4PhE6jfQEd1wvlLw9hlFfcVs6f8/7+AF9P8d+wjLD1G7cl29oKQmxsrH+3NMNfKotpOu18TsE7J06ff/gWkiEHEJnQ6Y1gUXao7I2SskiIwtwMCZsE9B5y9DQaleCw2TIAy4VyaggIqI1iScSmLSmD4TqyEhH4pwo7W+vqu8L718BNnXbqZn+9LeC0OZA96QeJkrLKdBqNNgVO0dqOM1hGxeLEOTsYJows3d+4Y2nJNx/D43FDTEzov8NAUMUSKQEOmsXlsFloyQLpE8J5MD0+yM/odDoPtPezPuNhmYegob0E09SU1iSTuVha8F30el0Q+CJiw6btUo1WV2hpaZ6qVmvWTJkwxujZZBvCOERasXpD/L37td/CdIDi2xTQJAqFslmpbOZv3bF7Tewni+eL6hs4z6vj2Mks4lRWjiWM2sdfrgYYK6dNGvvuxHGjZgur76c2Ncn0CFJrBQATMI0S0Obzvj69ohcv+PgdsJYkYJQPESIEIzyOlaX5ALlcmbhzT6Z/p7GQ1LRM4qu1P8yDUZUIYSi6LzABXi5EOQiMaMF3G7cNgE5mlZZXqv+btLz2kznvb3N17tb8ZD0nTmfbgAMX2AisfusssViSS6ZQFkDnFEqbZLz6hkb11AljMjVabc6O1Iy5drYCm8dH+4vCAP+hc+/hmh71XvjHu9IP1NY3NtoBaLRZYxfoUtDRyEjB5yDLHIty0U5hIb+k7guSNjXFAAuGYZpB/gOlxtOgw4aBo2WhyMvWRkDblXZgfl1dfc9nRmhMU2eYiqxQHWAVwulT3pgfFRleApdW7t13ePehoyd3KZTKiYMGBH8/KjJ8O0BqcZuRZXj1cs+aOW18bJ2o3rmktDJ1zbc/7oKO/w4u24DOAb1pKI62Nzm0xQJYmwiXy34dOpz3V7ta0Gi2t7d5ZXtKmhuEn09db5LJGZBNc9DoBT0BnVaoVqljoN4p4Kx9BNZWgdtS9iYDiPDXRw3bJpPJ77S0zSqVSu7t6Z4W4OcpXrrimx8tLcyH8Xgcb2jjKLi8DBRtbVprKI6OazuTU3cg/ubyM4/LJdZt3Oo1OCwk3dXZ6Q9LGJFDw4qLrl4/kl94ZRYA0GzemsoDH+7KZjN/y2UQUDinwbTiXSdqOAu5RBOF0rJxBg6cLhI13G1uVnlBfuP4+NQHg8FRrVb7gpXeeGBNaib4FmGnAQIN3wfO2tSEbuICp46gKGN7/OYJ8hcNKPSEqa307ekT8308n561QoID733KiP787PkLQvBFl06cOt8AcJqYzD/eh4H8QhoU4KNYlBC7Cq61aCqBDpf0dHsF+SYUgKC5j/XQt4CV6sFaSt6dOQnlN59ptboma0uLXzsNkCnjx+x8LSzkDDhfJzh1MgCxA0WxKbp5U2fImIUSaVPJW2+OF/Gfs9DY29+7EnQxOoZOJ5KWfrW94OKVHhAUoBBWA5aRVisSHXV3c5WCbmht20+eybYEH/IVOO5YOGWqNZrbDrY2W+Oi370xcng4KvJpp0sMXx897Lfw1KDZxqrX39eLWJwwZ/+vJ87WgMMPRXDlCsW+kH5Bd4z1GS7O3eoSP/nof2wWswINIgBSCFPp8RHDBned5Xdjip9PL6S5cJjbFvV3c7Aj4mJmoUz+h/b+bviuXwcTDAQDwYKBdCJpM6d+5twF9v2aWjsKhYKWGIy5XYikUChIA0P6ljvY28qfV0hYfZ84cfq8AEJjAQqNjT2QIWmUQfJYMTi0f8cHknnouPWSL9bOuyus7kelUlHeoTNmZ0ilMmLYkNC0ebHvrffq5S56skDRtZvEiq/Xh2YePhHN5bDQDXtjb2AgQ6Yu8vH0WAlAjnR4IMU3StkqlaqPKYPhQiaTjb2ZjoTuclTdqXauvl/LfBYQsEzi9p27Lhw2K8CETqcTbfEUF4lkTqfT+sBRxwcyN/rdcitL/qzS8lt2NBqVZOwpSyyWkqZPGZfn7dmz4VkFXgsLIWxtrHdu/CmlyIzH4bfBlEXSaLQye1tBQafxIdMmjytGxvJPOcdePXvIVi5b0OkelcBR1ssSZRUUFjFF9Q3W4EOoxp6ylM3NmkB/77sCayv18wrV1IrQJjoLBsPEgnjGrpfWtgGiLAWXw7nbN8ivQwD5U79wOiuHnbBoRUzlrapg8CEMY0dZjWKJcurEsXvnfPj2TidH+6d2rYDvIlat/b7vL6n7ZvF4HNe2irJ8vTy+PrDnx6yOAAQ5ScrzLh4/dY4jlyvGcbkcXzKJZHTr47DZxPebd2hcnLsdjZ494ykgN0vKiYuXrvpbWvIn0Wk0kzaZWmhqJUSR1+HweUD0hoHbLkCq9Hr9a5B0PfMDF8bHVsN0EgMdgyzE2GEn8nvq4L69MyDKqnxWgciIQYS9nWDH2vVbJOZmXC/iwe53YwpFo9Xec7S32/AXs8iLzwwtedI0fOTkCe7+g/S70w/2UyiUZPz07R+1sVFs3sM39NjIcTPy2uUp3FeDA/MEVpaymbPjxkmk0jaZEjqrQMBBOnkm255Gow2E0/3tEvYmxceUWllZnLMRWEdlZec7YAyPRNoko82YHTeZzTQllMrmPe2Wh8jl8iVcDtPtvej4j3ZnHGTqCfy4IZLs3Iu9bQRWH+j0+uN9Av0utxuQ3v4+p/QEKdXZyfE/s6MTJu3ee5D6Mv9PRPTN0/cf8X7r/bhVFnxzzbAhgxYsSYprQUWtcF5JS1bZBg2MykI/uGLlFDB7V9oBu5ftB2jQ983JK6RnHjoeYu0ccCxwwEjdyHEz57S0vlZl6gvjY6oB6ZuZh09sdnF2/HZ2bMJwGp22BpK1criM8gMZ0TV/L0tvSBn4t6uEZtNmzQm34Jsl2tsKSCDJ3p7uK1u8BGCMaSYpeaXg4NGTX0JsHllf32hOJpMvQcPyUdJMPNhySepiQFB+gXbsh1DIZB82h2VtQqfn93RzXWRvZ7Mv+dO5xD8K5DdrWbKKKL9VFUqlUGbcgIRQJpebQ5bOM4wkfRe0EDk4bjHT1FTYw7X79m4Odls++3SuuLUVk9rCEScvX00vvlHmRKfTUJbMNPJa1j8tJMPa2C21WnPL1cWpZlFCrPEqx/8tumMJvh+CgWDBQDAQLBgIBoIFA8FAsGAgGAgWDAQLBoKBYMFAMBAsGAgGggUDwUCwYCBYMJBOIf8XYAArY0Bkcsrf+QAAAABJRU5ErkJggg==', NULL, NULL, false, -1, false, NULL);
INSERT INTO micadoapp.document_type VALUES (1, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAADnZJREFUeNrsnQlYU8cWgG9WQlYIS1hFoILIjqAiVdCiKIo+q33udelibV8LWLE+kKIWtb5abdXWaq22LrWIiqC41l0UEBAVRWVVNCgQIAlZyPrO1FitS1shUMA533c+7s2dTCbzz5lzzty5gaTX6wksHUfIuAswECwYCAaCBQPBQLBgIBgIFgwEA8GCgWDBQDAQLBgIBoIFA8FAsGAgGAgWDAQLBoKBYMFAOrtQjVnZ4s+/JsrKbwfQaJTRcNoTtDsorYv2nQz0jFqjzXdxckxLio/RGaNSkrE2yiUvXxOcceBorFqjCa1vaLTWaLRqeFnaRWGgTqNTKRQOn2+mMjUxKfLwcEtxtLdZsTA+VvePAlm07GvijrA6sbi45IPqmlpBQ4M4feM3yzc7d3cUwmWlofFdUSi3bt+1mjk77lULvtk7bDbLjkalpkVGDJ63MD6mtOWoAUhLNfGzL4mggVEL/IKH6y26+Z3Zu+9wxPncAjuNRtOqejuLarVaAr4vMz3ziJ9Vd//kvmGj9YEDRmYnLVnZo6V1tqpBo/791kxogBYak5GyZ78XauDLAOJJ1el0xK70A2xr54AZD6BEZSQs+qJ9gSxcusp+YMQbFQAjD8F4GUE8qalpmSYAJQmA6CP+9WZcuwIZMXb6l25+Yfrdew8MxjAe6e6MQ/aegeHnXh0ytgqmLsaLvp/csvB2NVssaRqv0+kPhg3odwFnD49kYP8+QuG9muXNzSqHs+cuTGqXxPB0Vm4/pbLZXlRfv1XaJFNgDI+EzWLqN6xZliuXK8pMTRnj2wUI05ThIZPLiXVfLS20trLUYAyPhMEwIYYOHiBXqdU5cOrdXksnfiqVqiJiSKgERgGm8GQKL1foSSRSExyathcQc/hAiUwmx8/D/Xnf6toLiBYvTHaCxcWOIBcvXyW2/LzHl8dlW8OpJaizYQkHLeXUgMqRww0bGFwbOXTQywtkx84M96vXb46l02nucHq7sVGyLmHeh0ILvlmr6867eJn4JTWDz+VyZly7XhqWm1fowWSaWkilTWZo9cDcjKfT6nT30foTsmyVSi0sunazOq/gcoFCoTwe3Cfg9KgRQ1QvDZAtP+/uvX7Tz4tr60ThVAqFjl6TK5QhtXX1HyTO/6jY7RXnFtd9If8SkZS8cuqN0vK3NRrtQA0IBBpnamrrDo4fF1XS3dGBsmlryjQzHscXnO0OqVR2E/yfx5Wr14MuFxVHsFim7xRcuppzoeDygaAAn58AjKzLAzly7PR7Yokk0oJvTjxcXTYz4w46fOxU1PSpb1QAEOWL1pmTV0ik7z/Svaz8Vmxl1d1Zeh3RPHxI2KLhEYPOweUSpVIpDO7Tu/lmaTmC70WlUnsFBwVkwvXtcJ2PprKCwive36zfMhgS3KmVlVUjcvIuRhQUFm3z9/VMHT1yaNcFwmIxUYcQjy/1QydAEsXyo1GpfMP8/peSlZ1PHD56Et7GDMy/eKVPbv6lSJiOQslk0s+vjx72edJ/o69wOOw/vOfK1WK0PlSpUDTTvL08zEePGIJerkcKx/kh/YJSyipu7Vi9bvMEUX3jm9tS0oKOnTrXB5q3ekzU0Kqu6kO0T4V3ZDLR0CiubVapZH/Dwojs3ALvS1euT4ZR7QHJVw8Gg9HD1saaCpDFOvAPkKj6bt62q7+yuRn5CZLhM4Vl5ZU14FvsKWQKcfZcbn8olw2vc0BFdBq1HOgSVXeEh6lUynUYHDVWlhYxEol07jfrf/QuKas4CuVuoHo0anWRq4uTavzYqM4PhE6jfQEd1wvlLw9hlFfcVs6f8/7+AF9P8d+wjLD1G7cl29oKQmxsrH+3NMNfKotpOu18TsE7J06ff/gWkiEHEJnQ6Y1gUXao7I2SskiIwtwMCZsE9B5y9DQaleCw2TIAy4VyaggIqI1iScSmLSmD4TqyEhH4pwo7W+vqu8L718BNnXbqZn+9LeC0OZA96QeJkrLKdBqNNgVO0dqOM1hGxeLEOTsYJows3d+4Y2nJNx/D43FDTEzov8NAUMUSKQEOmsXlsFloyQLpE8J5MD0+yM/odDoPtPezPuNhmYegob0E09SU1iSTuVha8F30el0Q+CJiw6btUo1WV2hpaZ6qVmvWTJkwxujZZBvCOERasXpD/L37td/CdIDi2xTQJAqFslmpbOZv3bF7Tewni+eL6hs4z6vj2Mks4lRWjiWM2sdfrgYYK6dNGvvuxHGjZgur76c2Ncn0CFJrBQATMI0S0Obzvj69ohcv+PgdsJYkYJQPESIEIzyOlaX5ALlcmbhzT6Z/p7GQ1LRM4qu1P8yDUZUIYSi6LzABXi5EOQiMaMF3G7cNgE5mlZZXqv+btLz2kznvb3N17tb8ZD0nTmfbgAMX2AisfusssViSS6ZQFkDnFEqbZLz6hkb11AljMjVabc6O1Iy5drYCm8dH+4vCAP+hc+/hmh71XvjHu9IP1NY3NtoBaLRZYxfoUtDRyEjB5yDLHIty0U5hIb+k7guSNjXFAAuGYZpB/gOlxtOgw4aBo2WhyMvWRkDblXZgfl1dfc9nRmhMU2eYiqxQHWAVwulT3pgfFRleApdW7t13ePehoyd3KZTKiYMGBH8/KjJ8O0BqcZuRZXj1cs+aOW18bJ2o3rmktDJ1zbc/7oKO/w4u24DOAb1pKI62Nzm0xQJYmwiXy34dOpz3V7ta0Gi2t7d5ZXtKmhuEn09db5LJGZBNc9DoBT0BnVaoVqljoN4p4Kx9BNZWgdtS9iYDiPDXRw3bJpPJ77S0zSqVSu7t6Z4W4OcpXrrimx8tLcyH8Xgcb2jjKLi8DBRtbVprKI6OazuTU3cg/ubyM4/LJdZt3Oo1OCwk3dXZ6Q9LGJFDw4qLrl4/kl94ZRYA0GzemsoDH+7KZjN/y2UQUDinwbTiXSdqOAu5RBOF0rJxBg6cLhI13G1uVnlBfuP4+NQHg8FRrVb7gpXeeGBNaib4FmGnAQIN3wfO2tSEbuICp46gKGN7/OYJ8hcNKPSEqa307ekT8308n561QoID733KiP787PkLQvBFl06cOt8AcJqYzD/eh4H8QhoU4KNYlBC7Cq61aCqBDpf0dHsF+SYUgKC5j/XQt4CV6sFaSt6dOQnlN59ptboma0uLXzsNkCnjx+x8LSzkDDhfJzh1MgCxA0WxKbp5U2fImIUSaVPJW2+OF/Gfs9DY29+7EnQxOoZOJ5KWfrW94OKVHhAUoBBWA5aRVisSHXV3c5WCbmht20+eybYEH/IVOO5YOGWqNZrbDrY2W+Oi370xcng4KvJpp0sMXx897Lfw1KDZxqrX39eLWJwwZ/+vJ87WgMMPRXDlCsW+kH5Bd4z1GS7O3eoSP/nof2wWswINIgBSCFPp8RHDBned5Xdjip9PL6S5cJjbFvV3c7Aj4mJmoUz+h/b+bviuXwcTDAQDwYKBdCJpM6d+5twF9v2aWjsKhYKWGIy5XYikUChIA0P6ljvY28qfV0hYfZ84cfq8AEJjAQqNjT2QIWmUQfJYMTi0f8cHknnouPWSL9bOuyus7kelUlHeoTNmZ0ilMmLYkNC0ebHvrffq5S56skDRtZvEiq/Xh2YePhHN5bDQDXtjb2AgQ6Yu8vH0WAlAjnR4IMU3StkqlaqPKYPhQiaTjb2ZjoTuclTdqXauvl/LfBYQsEzi9p27Lhw2K8CETqcTbfEUF4lkTqfT+sBRxwcyN/rdcitL/qzS8lt2NBqVZOwpSyyWkqZPGZfn7dmz4VkFXgsLIWxtrHdu/CmlyIzH4bfBlEXSaLQye1tBQafxIdMmjytGxvJPOcdePXvIVi5b0OkelcBR1ssSZRUUFjFF9Q3W4EOoxp6ylM3NmkB/77sCayv18wrV1IrQJjoLBsPEgnjGrpfWtgGiLAWXw7nbN8ivQwD5U79wOiuHnbBoRUzlrapg8CEMY0dZjWKJcurEsXvnfPj2TidH+6d2rYDvIlat/b7vL6n7ZvF4HNe2irJ8vTy+PrDnx6yOAAQ5ScrzLh4/dY4jlyvGcbkcXzKJZHTr47DZxPebd2hcnLsdjZ494ykgN0vKiYuXrvpbWvIn0Wk0kzaZWmhqJUSR1+HweUD0hoHbLkCq9Hr9a5B0PfMDF8bHVsN0EgMdgyzE2GEn8nvq4L69MyDKqnxWgciIQYS9nWDH2vVbJOZmXC/iwe53YwpFo9Xec7S32/AXs8iLzwwtedI0fOTkCe7+g/S70w/2UyiUZPz07R+1sVFs3sM39NjIcTPy2uUp3FeDA/MEVpaymbPjxkmk0jaZEjqrQMBBOnkm255Gow2E0/3tEvYmxceUWllZnLMRWEdlZec7YAyPRNoko82YHTeZzTQllMrmPe2Wh8jl8iVcDtPtvej4j3ZnHGTqCfy4IZLs3Iu9bQRWH+j0+uN9Av0utxuQ3v4+p/QEKdXZyfE/s6MTJu3ee5D6Mv9PRPTN0/cf8X7r/bhVFnxzzbAhgxYsSYprQUWtcF5JS1bZBg2MykI/uGLlFDB7V9oBu5ftB2jQ983JK6RnHjoeYu0ccCxwwEjdyHEz57S0vlZl6gvjY6oB6ZuZh09sdnF2/HZ2bMJwGp22BpK1criM8gMZ0TV/L0tvSBn4t6uEZtNmzQm34Jsl2tsKSCDJ3p7uK1u8BGCMaSYpeaXg4NGTX0JsHllf32hOJpMvQcPyUdJMPNhySepiQFB+gXbsh1DIZB82h2VtQqfn93RzXWRvZ7Mv+dO5xD8K5DdrWbKKKL9VFUqlUGbcgIRQJpebQ5bOM4wkfRe0EDk4bjHT1FTYw7X79m4Odls++3SuuLUVk9rCEScvX00vvlHmRKfTUJbMNPJa1j8tJMPa2C21WnPL1cWpZlFCrPEqx/8tumMJvh+CgWDBQDAQLBgIBoIFA8FAsGAgGAgWDAQLBoKBYMFAMBAsGAgGggUDwUCwYCBYMJBOIf8XYAArY0Bkcsrf+QAAAABJRU5ErkJggg==', NULL, NULL, false, -1, false, NULL);
INSERT INTO micadoapp.document_type VALUES (3, 'data:image/png;base64,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', NULL, NULL, false, -1, false, NULL);
INSERT INTO micadoapp.document_type VALUES (5, 'data:image/png;base64,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', NULL, NULL, false, -1, false, NULL);
INSERT INTO micadoapp.document_type VALUES (4, 'data:image/png;base64,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', NULL, NULL, false, -1, false, NULL);


--
-- Data for Name: document_type_picture; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.document_type_picture VALUES (1, ' data:image/jpeg;base64,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Umx0AAAAAAAAAAAAAAAAU2NsIFVudEYjUHJjQFkAAAAAAAAAAAAQY3JvcFdoZW5QcmludGluZ2Jvb2wAAAAADmNyb3BSZWN0Qm90dG9tbG9uZwAAAAAAAAAMY3JvcFJlY3RMZWZ0bG9uZwAAAAAAAAANY3JvcFJlY3RSaWdodGxvbmcAAAAAAAAAC2Nyb3BSZWN0VG9wbG9uZwAAAAAAOEJJTQPtAAAAAAAQAMgAAAABAAIAyAAAAAEAAjhCSU0EJgAAAAAADgAAAAAAAAAAAAA/gAAAOEJJTQPyAAAAAAAKAAD///////8AADhCSU0EDQAAAAAABAAAAB44QklNBBkAAAAAAAQAAAAeOEJJTQPzAAAAAAAJAAAAAAAAAAABADhCSU0nEAAAAAAACgABAAAAAAAAAAI4QklNA/UAAAAAAEgAL2ZmAAEAbGZmAAYAAAAAAAEAL2ZmAAEAoZmaAAYAAAAAAAEAMgAAAAEAWgAAAAYAAAAAAAEANQAAAAEALQAAAAYAAAAAAAE4QklNA/gAAAAAAHAAAP////////////////////////////8D6AAAAAD/////////////////////////////A+gAAAAA/////////////////////////////wPoAAAAAP////////////////////////////8D6AAAOEJJTQQAAAAAAAACAAE4QklNBAIAAAAAAAQAAAAAOEJJTQQwAAAAAAACAQE4QklNBC0AAAAAAAIAADhCSU0ECAAAAAAAEAAAAAEAAAJAAAACQAAAAAA4QklNBB4AAAAAAAQAAAAAOEJJTQQaAAAAAANHAAAABgAAAAAAAAAAAAABrAAAAqYAAAAJAEMASQAgAGYAcgBvAG4AdABlAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAKmAAABrAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAABAAAAABAAAAAAAAbnVsbAAAAAIAAAAGYm91bmRzT2JqYwAAAAEAAAAAAABSY3QxAAAABAAAAABUb3AgbG9uZwAAAAAAAAAATGVmdGxvbmcAAAAAAAAAAEJ0b21sb25nAAABrAAAAABSZ2h0bG9uZwAAAqYAAAAGc2xpY2VzVmxMcwAAAAFPYmpjAAAAAQAAAAAABXNsaWNlAAAAEgAAAAdzbGljZUlEbG9uZwAAAAAAAAAHZ3JvdXBJRGxvbmcAAAAAAAAABm9yaWdpbmVudW0AAAAMRVNsaWNlT3JpZ2luAAAADWF1dG9HZW5lcmF0ZWQAAAAAVHlwZWVudW0AAAAKRVNsaWNlVHlwZQAAAABJbWcgAAAABmJvdW5kc09iamMAAAABAAAAAAAAUmN0MQAAAAQAAAAAVG9wIGxvbmcAAAAAAAAAAExlZnRsb25nAAAAAAAAAABCdG9tbG9uZwAAAawAAAAAUmdodGxvbmcAAAKmAAAAA3VybFRFWFQAAAABAAAAAAAAbnVsbFRFWFQAAAABAAAAAAAATXNnZVRFWFQAAAABAAAAAAAGYWx0VGFnVEVYVAAAAAEAAAAAAA5jZWxsVGV4dElzSFRNTGJvb2wBAAAACGNlbGxUZXh0VEVYVAAAAAEAAAAAAAlob3J6QWxpZ25lbnVtAAAAD0VTbGljZUhvcnpBbGlnbgAAAAdkZWZhdWx0AAAACXZlcnRBbGlnbmVudW0AAAAPRVNsaWNlVmVydEFsaWduAAAAB2RlZmF1bHQAAAALYmdDb2xvclR5cGVlbnVtAAAAEUVTbGljZUJHQ29sb3JUeXBlAAAAAE5vbmUAAAAJdG9wT3V0c2V0bG9uZwAAAAAAAAAKbGVmdE91dHNldGxvbmcAAAAAAAAADGJvdHRvbU91dHNldGxvbmcAAAAAAAAAC3JpZ2h0T3V0c2V0bG9uZwAAAAAAOEJJTQQoAAAAAAAMAAAAAj/wAAAAAAAAOEJJTQQUAAAAAAAEAAAAEThCSU0EDAAAAAAlvwAAAAEAAACgAAAAZQAAAeAAAL1gAAAlowAYAAH/2P/iDFhJQ0NfUFJPRklMRQABAQAADEhMaW5vAhAAAG1udHJSR0IgWFlaIAfOAAIACQAGADEAAGFjc3BNU0ZUAAAAAElFQyBzUkdCAAAAAAAAAAAAAAAAAAD21gABAAAAANMtSFAgIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEWNwcnQAAAFQAAAAM2Rlc2MAAAGEAAAAbHd0cHQAAAHwAAAAFGJrcHQAAAIEAAAAFHJYWVoAAAIYAAAAFGdYWVoAAAIsAAAAFGJYWVoAAAJAAAAAFGRtbmQAAAJUAAAAcGRtZGQAAALEAAAAiHZ1ZWQAAANMAAAAhnZpZXcAAAPUAAAAJGx1bWkAAAP4AAAAFG1lYXMAAAQMAAAAJHRlY2gAAAQwAAAADHJUUkMAAAQ8AAAIDGdUUkMAAAQ8AAAIDGJUUkMAAAQ8AAAIDHRleHQAAAAAQ29weXJpZ2h0IChjKSAxOTk4IEhld2xldHQtUGFja2FyZCBDb21wYW55AABkZXNjAAAAAAAAABJzUkdCIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAAEnNSR0IgSUVDNjE5NjYtMi4xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABYWVogAAAAAAAA81EAAQAAAAEWzFhZWiAAAAAAAAAAAAAAAAAAAAAAWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPZGVzYwAAAAAAAAAWSUVDIGh0dHA6Ly93d3cuaWVjLmNoAAAAAAAAAAAAAAAWSUVDIGh0dHA6Ly93d3cuaWVjLmNoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGRlc2MAAAAAAAAALklFQyA2MTk2Ni0yLjEgRGVmYXVsdCBSR0IgY29sb3VyIHNwYWNlIC0gc1JHQgAAAAAAAAAAAAAALklFQyA2MTk2Ni0yLjEgRGVmYXVsdCBSR0IgY29sb3VyIHNwYWNlIC0gc1JHQgAAAAAAAAAAAAAAAAAAAAAAAAAAAABkZXNjAAAAAAAAACxSZWZlcmVuY2UgVmlld2luZyBDb25kaXRpb24gaW4gSUVDNjE5NjYtMi4xAAAAAAAAAAAAAAAsUmVmZXJlbmNlIFZpZXdpbmcgQ29uZGl0aW9uIGluIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdmlldwAAAAAAE6T+ABRfLgAQzxQAA+3MAAQTCwADXJ4AAAABWFlaIAAAAAAATAlWAFAAAABXH+dtZWFzAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAACjwAAAAJzaWcgAAAAAENSVCBjdXJ2AAAAAAAABAAAAAAFAAoADwAUABkAHgAjACgALQAyADcAOwBAAEUASgBPAFQAWQBeAGMAaABtAHIAdwB8AIEAhgCLAJAAlQCaAJ8ApACpAK4AsgC3ALwAwQDGAMsA0ADVANsA4ADlAOsA8AD2APsBAQEHAQ0BEwEZAR8BJQErATIBOAE+AUUBTAFSAVkBYAFnAW4BdQF8AYMBiwGSAZoBoQGpAbEBuQHBAckB0QHZAeEB6QHyAfoCAwIMAhQCHQImAi8COAJBAksCVAJdAmcCcQJ6AoQCjgKYAqICrAK2AsECywLVAuAC6wL1AwADCwMWAyEDLQM4A0MDTwNaA2YDcgN+A4oDlgOiA64DugPHA9MD4APsA/kEBgQTBCAELQQ7BEgEVQRjBHEEfgSMBJoEqAS2BMQE0wThBPAE/gUNBRwFKwU6BUkFWAVnBXcFhgWWBaYFtQXFBdUF5QX2BgYGFgYnBjcGSAZZBmoGewaMBp0GrwbABtEG4wb1BwcHGQcrBz0HTwdhB3QHhgeZB6wHvwfSB+UH+AgLCB8IMghGCFoIbgiCCJYIqgi+CNII5wj7CRAJJQk6CU8JZAl5CY8JpAm6Cc8J5Qn7ChEKJwo9ClQKagqBCpgKrgrFCtwK8wsLCyILOQtRC2kLgAuYC7ALyAvhC/kMEgwqDEMMXAx1DI4MpwzADNkM8w0NDSYNQA1aDXQNjg2pDcMN3g34DhMOLg5JDmQOfw6bDrYO0g7uDwkPJQ9BD14Peg+WD7MPzw/sEAkQJhBDEGEQfhCbELkQ1xD1ERMRMRFPEW0RjBGqEckR6BIHEiYSRRJkEoQSoxLDEuMTAxMjE0MTYxODE6QTxRPlFAYUJxRJFGoUixStFM4U8BUSFTQVVhV4FZsVvRXgFgMWJhZJFmwWjxayFtYW+hcdF0EXZReJF64X0hf3GBsYQBhlGIoYrxjVGPoZIBlFGWsZkRm3Gd0aBBoqGlEadxqeGsUa7BsUGzsbYxuKG7Ib2hwCHCocUhx7HKMczBz1HR4dRx1wHZkdwx3sHhYeQB5qHpQevh7pHxMfPh9pH5Qfvx/qIBUgQSBsIJggxCDwIRwhSCF1IaEhziH7IiciVSKCIq8i3SMKIzgjZiOUI8Ij8CQfJE0kfCSrJNolCSU4JWgllyXHJfcmJyZXJocmtyboJxgnSSd6J6sn3CgNKD8ocSiiKNQpBik4KWspnSnQKgIqNSpoKpsqzysCKzYraSudK9EsBSw5LG4soizXLQwtQS12Last4S4WLkwugi63Lu4vJC9aL5Evxy/+MDUwbDCkMNsxEjFKMYIxujHyMioyYzKbMtQzDTNGM38zuDPxNCs0ZTSeNNg1EzVNNYc1wjX9Njc2cjauNuk3JDdgN5w31zgUOFA4jDjIOQU5Qjl/Obw5+To2OnQ6sjrvOy07azuqO+g8JzxlPKQ84z0iPWE9oT3gPiA+YD6gPuA/IT9hP6I/4kAjQGRApkDnQSlBakGsQe5CMEJyQrVC90M6Q31DwEQDREdEikTORRJFVUWaRd5GIkZnRqtG8Ec1R3tHwEgFSEtIkUjXSR1JY0mpSfBKN0p9SsRLDEtTS5pL4kwqTHJMuk0CTUpNk03cTiVObk63TwBPSU+TT91QJ1BxULtRBlFQUZtR5lIxUnxSx1MTU19TqlP2VEJUj1TbVShVdVXCVg9WXFapVvdXRFeSV+BYL1h9WMtZGllpWbhaB1pWWqZa9VtFW5Vb5Vw1XIZc1l0nXXhdyV4aXmxevV8PX2Ffs2AFYFdgqmD8YU9homH1YklinGLwY0Njl2PrZEBklGTpZT1lkmXnZj1mkmboZz1nk2fpaD9olmjsaUNpmmnxakhqn2r3a09rp2v/bFdsr20IbWBtuW4SbmtuxG8eb3hv0XArcIZw4HE6cZVx8HJLcqZzAXNdc7h0FHRwdMx1KHWFdeF2Pnabdvh3VnezeBF4bnjMeSp5iXnnekZ6pXsEe2N7wnwhfIF84X1BfaF+AX5ifsJ/I3+Ef+WAR4CogQqBa4HNgjCCkoL0g1eDuoQdhICE44VHhauGDoZyhteHO4efiASIaYjOiTOJmYn+imSKyoswi5aL/IxjjMqNMY2Yjf+OZo7OjzaPnpAGkG6Q1pE/kaiSEZJ6kuOTTZO2lCCUipT0lV+VyZY0lp+XCpd1l+CYTJi4mSSZkJn8mmia1ZtCm6+cHJyJnPedZJ3SnkCerp8dn4uf+qBpoNihR6G2oiailqMGo3aj5qRWpMelOKWpphqmi6b9p26n4KhSqMSpN6mpqhyqj6sCq3Wr6axcrNCtRK24ri2uoa8Wr4uwALB1sOqxYLHWskuywrM4s660JbSctRO1irYBtnm28Ldot+C4WbjRuUq5wro7urW7LrunvCG8m70VvY++Cr6Evv+/er/1wHDA7MFnwePCX8Lbw1jD1MRRxM7FS8XIxkbGw8dBx7/IPci8yTrJuco4yrfLNsu2zDXMtc01zbXONs62zzfPuNA50LrRPNG+0j/SwdNE08bUSdTL1U7V0dZV1tjXXNfg2GTY6Nls2fHadtr724DcBdyK3RDdlt4c3qLfKd+v4DbgveFE4cziU+Lb42Pj6+Rz5PzlhOYN5pbnH+ep6DLovOlG6dDqW+rl63Dr++yG7RHtnO4o7rTvQO/M8Fjw5fFy8f/yjPMZ86f0NPTC9VD13vZt9vv3ivgZ+Kj5OPnH+lf65/t3/Af8mP0p/br+S/7c/23////tAAxBZG9iZV9DTQAB/+4ADkFkb2JlAGSAAAAAAf/bAIQADAgICAkIDAkJDBELCgsRFQ8MDA8VGBMTFRMTGBEMDAwMDAwRDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAENCwsNDg0QDg4QFA4ODhQUDg4ODhQRDAwMDAwREQwMDAwMDBEMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM/8AAEQgAZQCgAwEiAAIRAQMRAf/dAAQACv/EAT8AAAEFAQEBAQEBAAAAAAAAAAMAAQIEBQYHCAkKCwEAAQUBAQEBAQEAAAAAAAAAAQACAwQFBgcICQoLEAABBAEDAgQCBQcGCAUDDDMBAAIRAwQhEjEFQVFhEyJxgTIGFJGhsUIjJBVSwWIzNHKC0UMHJZJT8OHxY3M1FqKygyZEk1RkRcKjdDYX0lXiZfKzhMPTdePzRieUpIW0lcTU5PSltcXV5fVWZnaGlqa2xtbm9jdHV2d3h5ent8fX5/cRAAICAQIEBAMEBQYHBwYFNQEAAhEDITESBEFRYXEiEwUygZEUobFCI8FS0fAzJGLhcoKSQ1MVY3M08SUGFqKygwcmNcLSRJNUoxdkRVU2dGXi8rOEw9N14/NGlKSFtJXE1OT0pbXF1eX1VmZ2hpamtsbW5vYnN0dXZ3eHl6e3x//aAAwDAQACEQMRAD8A9DzMl7dztSAYa2Y7rG6j9acLpz2Myy+t1gLmgBztBo4+1q0c6fTOn53b5rl+t4PVMi+m3Crx7G1D3C9rS6d25u31GWez+orMgY4uKEeKVjpxfhxQYAQclSNR168P4+pvXfXXp1BAuF1e4bmF7LGAjxG9oWlV1P1AxzJiwBzdT+dru1XG29G60GPbTRQRY91rxkWNuh7ht/RerT+jb/4Iuhprc2qtjyAQ1ocRJAIA+gPo7UcAlKUuOPCABw+mUf8Apf8AeLcxjERMJWTd6xl/0f8AvmvV9fOn3Ma6uu8h9wx27tjRvIc9svdb6f0a/ezf6383+i/SMU8b67YGVeaKmXh4e+uTAE1ttuefa535uNb7H/pf5r9H+kXP/YerVycfo1NIY5z6CJB3D1PRssFd9Tmv9C1lP/Cfpf8AB+kiW4fVrqm4dnTWfY67wGsqlwAeXDKsoubbU6vf6jrv0vp/oX+jcrxxYNaA/wAeLHxS8XWH1+6Y5lrgzIiquu5w9sltvobWs9+3f+t0+ruVpn1t6e+o3TbsBxgXu0DftYLsfd7vzWtd9o/0X8tcw/pvVgy137LquvLaoArc1mjttuwMvDafRpxsPb6L67FZr6dkNdlWN6Wyuyms2YzNljWm6h7nYFbP072dQ3s/Tvv9Gj0n/oX/AM49I4sNad+kh/VVxHu7t31wx6On/b7acijHscwUOfH6Vtg3i+pjXOf6bKWuvs9T0/0P+DUuofWpuDHqVXPHp2XRU4O/RVbPVt9zmfR9Vrvp/QXKtx8mrIYy/pdbcfTa1zHP9lj3U5FrMS662vGc3G9N32av+Y9RFdi9Wtpw2N6c2xnomi2qwPrFTCKq78f13W/Rt9P9Fd/xHvSGDF4V4n/0Jackr0J/B2r/AK4YzDey2q8PxWMtur/OAsLG7PYfp1uvo9b9z1Ue760Y2K70sh1jbBk/YnN3GBYAxz9ztP0Ffr0tfb/LXL/szqRbN/Sa3evvNwFLw6bKhe/1La7t7vVzP0H6T+b9P2emoOxOpmlxt6LXdZY0tsa/1CSXNf8AaHbrrbP+4+L+uV2ez/Sfpa7E72MWmg8aI/75HEdzI/8ANeqb9ccF132esvFjbbaXNe7YWmltj7LbJP8AMbaLNlqbE+tVGZjNycf1DWZaNxIO4GHb2T7f5H8hYmN0p2bju+1Ye70H2lljmuoLq7f597632vtp9d9lu+l1v/CfnrV6D0ihl9t7aWVMDgfTYIaXgBu7b/Nt9v8Ao0zJHBjhKZHy9L/S/d/wlvHklIQiTZO9emv0nXOcaMKzPznW000Vuse0OLn7AN35v+E/dUD9YKsV2PXk4+Ti3Zd5oFV7mFzTLG+rY6u22v7N6mRj1b6rP525HyGV2VPpsY2yu1pY+twlrmuG1zHA/SY6fcs4dE6Sxhq+yVlpa5p3bnuh5D3u9Sxz7fVc5lf6bf636Kr9J+jrWfilPLcjQv5YeA6tqYjCgLNfNJuf86unRIsedJgNfJn6Dduz6dzf0lDP8NT+lUh9ZsR59Og2X2nd6dTJG8tG5vpWWbKv0381j2Peyq239GqjuldNI1xmwQRy4cnd9Ld+b/g3/wCCZ+jq/RJndJ6Y8ODsdkP3BwG5ujxssb7HN2sc38xv83/g1N7Z7BZx+JT0/W7GvOF6VOQ5nUy/7DZ7QLG1n9PbDn76WV0t+0/pf0j6f5v9N+iW1i5jnEuBMAiQTPK55/Tuj0frFlFVW1wsa/Vuxwf9o30NDv0G6/8ASWfZ9nq/4VbGFw7vJCaYVE3X0XCZJFW//9D0PIY3ZqJkqs6pjh7mj7lbvdDPmq24njX4KOWSQOkj9qwxHYIDRWNQ1QcxjRJaC7nTXzR3Trx5IF1bnsc2TDwRuaYIBG32uHuY7+UgcszvKR+qowiOgefd06m3a0m5m1rRuZVyGnfqd7/0tth/SP8Az3vRq8DFaywY5uqZe01em+klrS1/2kuczeLPc42N/l70Zv1cwH1ip11tbiAJqDKzIAb9Outvt2N/mf5v1vWyP569Pd9V8O4Brr8gBrdjYLY2AQytzNu23Z9P1P53+WnA31KZGmtmYWBdXWy9+QPs7iPV9NwdO57vUrsbY33N3bPVWazoOFTaxl1mTbtra0AUvFdhqfW9ttdgvd+ldtuqs936T1v+DW51Ho1FjjletYLGekQxrWOZ+hb6LP0Lm7XNexz/ALQz/C/of+4tSBhNp6bvdSzMu3trqIc0HSoH03e0M/S2bv09n/am3+eU0fEsE5aaXaPA+rrGX42dVa9jqS55rtrnc51bcVxuabXfT9L1v+uKWX9V7Mg1CvOspdVUWb9ri42OL325Uttrb6ltt1m+vb/MfoKtnserzerV7CXU3MsM7aXtAscGtL3PZXu3bdNn/Gfo1EdbY1x/U8sgD2uFJg+O2CiSO6Yxlw2fmlX2Ocz6l0Nc/dlPe1xBbWd21sANcxv6Z3sexEH1cZj4zcfGuLIsrcA9rntiur0WAVm72/rO7qH0vT+0fzta2sXL+1UC4V2Uglzdlw2P9p2yWe76X5ieZd4x2CBNC12pNOFifVF1FlQPULbamPY57ILS4Vj2fpG2/Se32Wvs9b9Hbat5ja6m7K2gEyQxTmJPeNPmotZtGmrjyT4eainPTh3v1kf82K4DW+3pB/NcNJIjVxUxjtBkS4nQA8Dt+aEGy37M6qxzN1djhW+2RDNx2/QVjJxmZNLsezTd3BI1HbRHHcccpg+og6+S3JrOMf0QfzYPxiYIDCDoC1pDiY/N2lztqrdRZdh4v2msevUBLtvteNv0xqH/AJv/AJ7V7ByKzi1322NZaD6NheBHqA7XNLz/AKV3vRBkGq1zHslryA9pGkkfRa3+U1UYc5zAOuQnuPS2Dgxb8A+nE4vS+odH6jTLKib3Amyiwbn+Dve522xn9v8AsLZ6e0PoDzU+gkx6buRt9o/suauEzLv2P1/IawhjWXj7I2QD7jLaB+c5jmu2Lu8J+Va5l0sGM9kmsD3S4B1bg7+SruPLKXU/axHHEHYP/9H0PIJDJ7yq3POnxVnIPt+argbiB46a9lBLdBRZF1ePU/IudsrrA3POvPAEbt73fmtVNvXOlOeGnI2j95zHNaI/lubt/wA5YHUs23Ny32WGGMc5lNYna1rS5o9v+kd+e9VVIMQrU6oe0dtEO5DoIIggh2rXT+c3+qmcRq0cjWVi/V3IfN2I4k1taLaxqduorexv8j3MdsWwRMCNfklGNEhZkLWzqq7Ma1j2vsa4e6uv6TgCDtZuBbu/r/TWTZ0/pjnPccXJjWXeoWw4+/6bdjvUbY3/ALc/n9/6Na+bj0ZGJbTksNuO8fpGAlpIBa/6Q/dc3csDJ6X0P12VO6fe8uAaLBY7Roh/j7v3/Us/0n/CWqYfaw7A7jySOwemVPY93T8+zIqcza9jYbLH7mHb/MbWf6T6dtfvs/T+o9dI57ydTr5T8VnnrZEH7PYfY17nBzdrdw+g8z/ON930UCz6yUVxuxr4Ja0GGwXO/wAH9L/B2ex6VhnGoHk6hc93GvjHglUHOkwXGJ2jkxHCzLeoNzsW6j7LcHw7a1paH+33Oja73sc13/QV3p2Q62htx/nGnbZ/XZDXf523chI2FoFSZ0ZO/MONdX6ZEPrBM+ozTfqPz2/ufuIdrGYuXXlAnY97sbIJJOrj+jdr+7ZsUrKW25Bxp2WCMjCt76fTq/FE9IZVufi2aeqxtzB4O9zXEKKMeL66n/uV5kI/TQf902rMZt+LbjPGtjT/AJyhg3uvxa3vP6Vn6O3+uz2u7/n/AM5/bRMSy92PVZe0suDRvadPcNN30v8ACRvT1UMqfa+skG5294mRIG32t/N9qsUAKDXu990D8cNdk1yHMy9p9OJgx9NmoZ7vb/22jYeNkU3u9Wx9jHBobXb7i2CfdW+f5SJ7dwG738iOfl+cpB9kaWuI45CoZOU1PARr3ttRz2Bdvnf1lfu625z7HAMynT7g0AAwC8fns9Vzav8Ari9C6R/yfj/8UzT+yFTu6H0i+7178Wu23cX73yTuP5/0lqYzQ2va0ABugA4AA7KXHAxOtbKlIEB//9L0PI+h80F3th3hrHwRr4gfFCdq3RQy3KHic/G+yZt+PJIY8lpJklrv0tZd/YegLd+suISKs1jdB+huPxO6hx/8Er/7bWEpomwCh0egFw6gYEzS8E9hqyNy6KtsvAg+JhZnQcVrMX1+bMkxr2axzmMDf7W560q6q7/UDnP2MdsOxxbrG7tH5pS6sctZeSHOOzEubNY0gOuP6OSQ1ou/krAbhb3/AKPIwsnJtO01PBDXNIDfc+kb9zqDbR/20tTqNWTjdMy2tN2ZOlVTGh9oa5zWbWb/AOe2td6ux6fp+M9mFTeawb7YdN7R6tR2tHpewM+jH7yfTFHU13Jad/QMp7L6cMYdNBuBrqsrJJY1r5ebGv2+pba5lmx//Cf8Gmv6d1huNUPS6eDUXuJuD49Z7vTrfV+YzfWdjf8A0qtzFfb6LRkx6oEWGuInjc381VMyjJpwr212vvgF1YDWut53FtfqhzHO/kvSIG4ZoXVHoacLAfUy8ZFVXTq8fGv3mpu82tawj0i29w2ep7mVss/0fvV3Hr6+y600fY34+SwWtvabHVepsfTubtYdvqXOpt2f91bMf/Deoh4GC9976rHXtbQ9thdYxgbcXSwuD9m73Nr3bP3LP0q3qw1lDqWNDGAFzGtG0D85wDR/KTSdD5WPMJ6qqxTezFtv9t1BD4r1aXEe9m5zf5nf6n9hSuz8Km8+pZW20kMsJ0dJ2kS4D+Wz/PRWECoHw0A/ALn8k5Dup2MFeSKrrmVG2utjmAuDd187N3o1+z1XvS4hGEBHeXCs4TKc+Lpbtjq3TNAcqoTqJeBMxxP9ZBb1TGzHbMS5r2hu4em4FzgfoWDaP5tVLehPZW97suWgOIa6mqGlw2ex8bm/8Gi4mHRh1n0gHPZLd4DA/wBx3kabP9f5alHF2YJ1sCW1W0seH+2Y0DjBJd4pmh9MFro12tc3v/Z9zVCy02hoazYGSZkcj6Kn64eQzZs0hx08Pz9UyXbsuhTbovFg2nR458D5hXKfolZdGmQG9+DPmD/5FadH0Sox0Z4v/9P0LJ+iPis3P6103pwFeVb+mcQG0M99kn99v0af+vOrRfrHZdV0m5+O4ttBEEEg7dfU2x+dsXCseBQCykl8bjWBru7+5yYIWSSh2srrFvUHV4pqbTjPsZvbO57gHAtDrPZs/sN/trFe22oOymE3UB/p3smXNI+i5rfzf+/q1jH9YpPEvYYPPIQavZZf6b4DnOFjY5n83+qpAANAh0ek9YOFt9gvxXO9SG6PBMe6tzvb+b/NP/z1s15tQustxy6zEyos3NBLq3j2n1K/p7XN9q5Q44punHeHY9o3PY7RzHd4A/O/6D0au22ozU91bhqC0wQfEIolGwelu51d2UaQ/D9Zz6xusrpkOcJ9rdu2x3v/AOLe/wBL8xZzrerVMD/R6i4uc9jmgtBG3YWbi5rWbLW2WMZ6f+Fp/nP5u5aVeTfm9KNjGk5IO0trcKiXtc3VtkO9D1G+76KzXs6w14eKcl5BJcx2QwsnaY9rv5Xt/wDBU6rawPDLUaxKam/PrAmvqT/WaxxJrk1bhZ6tOjP8BFVlv7/qejX/ADFqJiU9Qy2uL787CczYWtuYBuL2B1jW8+o2iz1Kf/Bqv0dlSCf2k3G2/Zsi6C4uf67Q4O/SVhnqS1763N2WfQ/R/o01tPV/SLW0ZRMOLWDIradY0dZ7/d7K/T/68m/QtmwRYO7uE+wN5IiCfH/zJSbpqOOR5obIbU1riS4NAcTqZA8VOsjdHY8JSBoEdFgOpB6s6jps/d1+/wBv/fVlW25js+ylr8ljB/NenU7YXNY6z0/tH8zsvc70vU/0y1IILtsSdpPkON0KxTqXOAjtH4qOMRxCN7AEf3f/AEFUpERMq3JB/vF5fJy+oeg3aeoWuLi00hnu/Rlj/Ud+j2bL/U+zPZ/wXqVfov06n0x+Z1K25zLcvCbUQ9oLWBh3g7q65b+j2ubu9Oyvf+k2WLos197aCapJBG4gkQB8CuXszepDIz/Ve/Hx221NbaxgeWV2WV73YVfoGz1MbBe/7V6v25j8h7LKfT/SKxwnhuyQ1yQZVoD3LtYeJkNFjXXuusmTZdG4ge1rGsbs2s3bkeufRezaAJBn57tHfn+5YWN1DrN+RWx5sc84+99YxwTt9F735LA6oMdmtzhXVXievWz1P0H2f/CJsTO6pYMBtt1rqTbdTaHVll1tXqllOTePstfoY+PibPUfb+zbsr9J/ov0zCyRj1sPQ1RZa0MMtB3T2kH3uWpR9E/FYnSOpYmaG2YhsLXCLG2VOq2uAPs/StZ9H87Z+iW3R9EplV+bJB//1O367TkW4bW4zBZY25jywkCWjd6mrv5Llyh6J1arNuxxUX1ECyl25sbeNpdP7u1anWvtBrOwiPVJOh/leDljl2ZH0hH9r/yanjgFfNP6YMs/+dFpZOdEJVwE/X/0FsN6N1VjmvFIlpBHubyNfFQ/Y2eHOcKQ0vO53uGp8eUGcueR/wBL/wAkluy4+mI/tf8Ak0fYH70//afMs/0gP82ft/8AQUp6VniJrAn+UE7Ok9QeYbUD/aA/KgfrfG4f9L/yScfbRw4fLd/5NH2B1lP/ANp8yv8ASA/zZ+3/ANBd3ouFlYlV7chuze5paA4GYG130VYyKLLG7WPdS7s9gaSJ8rW2V/8AQXNh2aOHD/pf+TWt9h6b/wCW2un+Df8A3qSGCB04p6d8OWLH75yEkRA85Rj/ANNPbjWEOLbbGWbPTDxqR/wpa4em+3/hEbFZc2vZY/1XNAghpaYiHFzZfu938tUxgdMB16tr/wAW8flKX2HpYOnV9fHY/wDvTjy0D+lL/wAKyL4ZckekTHt7mP8Ai6ZrJHBBjVCewDXUHxGiofYemCf8r6/1H/8AkkvsXTp/5XHx2P8A/JIfdh+/L/wrIvOYn9GP/hmN06bwD7pBHJiUav2vIghrvo6LGOH07UjqzS6J+g/U/wCcufbndY0miD4b3f3qOfKxBjU5ek2Kw5Zf3mTEcmQSoY+x4s+DF/d/nJx4n0DafD8v/kVUvxGueCK3AeLR5ztE/QXF/burz/NH4b3/APkk/wC0OsT/ADbh5eo7+9PGOI2lP/wnN/3qjy2Y7jD/AO1XK/8Aq17ivDY1p9haT+6IA+f5yBZhAPna4SIIaD7h+b/ab+4uPPUOtafoyI4/SP8A/JJv2h1mI9J3/bj0z2o78c//AAnN/wB6v9jLtw4v/anlf/Vr3tdLahtY2O3mrNE7TPivOh1HrP8Aonf9uPW10DM6lY2b2OH6Zo1e46ezX3JksMRrxyPniyx/GUV4x5RvHGB/Vz8vP/mwyP8A/9XsM8xkPOMA8bjLXnZBn3Q9ot3N/wCtqtvzO9Nf/brv/edeBpK7Di4R8+39RqSriPy79OJ9835f+hZH/Gu/9IJw7I71M/7cP/pFeBJJ3q/rf+NrdPD/AJz74H5M/wA0z/tw/wDpFSDru7G/55/9JrwFJL1f1v8AxtWnh/z334G2dWN/zj/5BSBfPA+8/wDkV8/pI+r+t/42r0/1f+e/QHvngfef7k+vcgfKf4r5+SS9X9b/AMbV6f6v/PfoKB3P4f8AmSQDP3j/AJo/8mvn1JL1f1v/ABtXp/q/89+ggK+7z/mj/wAmltpn6bp/qD/0ovn1JL1f1v8AxpPp/q/89+gttE/zjv8AMH/pVPtxv9I7/Mb/AOlV8+JJev8Ar/8AjSvT/V/8cfoPbjf6R3/bY/8ASqfbix/OO/7bb/6VXz2kl6/6/wD40r0/1f8Axx+hNuJH847/ALbb/wClUbDbijIqJe5zJ0BYAJ/N9wsf7dy+dUkyfFwm+Pb/AFf7F0eGx8v/AD3/2QA4QklNBCEAAAAAAFUAAAABAQAAAA8AQQBkAG8AYgBlACAAUABoAG8AdABvAHMAaABvAHAAAAATAEEAZABvAGIAZQAgAFAAaABvAHQAbwBzAGgAbwBwACAAQwBTADYAAAABADhCSU0PoAAAAAABDG1hbmlJUkZSAAABADhCSU1BbkRzAAAA4AAAABAAAAABAAAAAAAAbnVsbAAAAAMAAAAAQUZTdGxvbmcAAAAAAAAAAEZySW5WbExzAAAAAU9iamMAAAABAAAAAAAAbnVsbAAAAAIAAAAARnJJRGxvbmdQ+iaVAAAAAEZyR0Fkb3ViQD4AAAAAAAAAAAAARlN0c1ZsTHMAAAABT2JqYwAAAAEAAAAAAABudWxsAAAABAAAAABGc0lEbG9uZwAAAAAAAAAAQUZybWxvbmcAAAAAAAAAAEZzRnJWbExzAAAAAWxvbmdQ+iaVAAAAAExDbnRsb25nAAAAAAAAOEJJTVJvbGwAAAAIAAAAAAAAAAA4QklND6EAAAAAABxtZnJpAAAAAgAAABAAAAABAAAAAAAAAAEAAAAAOEJJTQQGAAAAAAAHAAgAAAABAQD/4Q9qaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjMtYzAxMSA2Ni4xNDU2NjEsIDIwMTIvMDIvMDYtMTQ6NTY6MjcgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlRXZlbnQjIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iIHhtbG5zOnBob3Rvc2hvcD0iaHR0cDovL25zLmFkb2JlLmNvbS9waG90b3Nob3AvMS4wLyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczpNaWNyb3NvZnRQaG90bz0iaHR0cDovL25zLm1pY3Jvc29mdC5jb20vcGhvdG8vMS4wLyIgeG1wTU06RG9jdW1lbnRJRD0iNDM0N0U3OUM0MTc4NTMwRkU0RjIxODQ4NDg1Q0VDMjYiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MDUzNjM3MzE2NzQ2RTkxMUI5ODhFNDREQkU0QjI0OUIiIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0iNDM0N0U3OUM0MTc4NTMwRkU0RjIxODQ4NDg1Q0VDMjYiIGRjOmZvcm1hdD0iaW1hZ2UvanBlZyIgcGhvdG9zaG9wOkxlZ2FjeUlQVENEaWdlc3Q9IkRFRkZENDkwOEY5OUIyQjQ1OEMzQ0E5NkY4OTY4RkI2IiBwaG90b3Nob3A6Q29sb3JNb2RlPSIzIiBwaG90b3Nob3A6SUNDUHJvZmlsZT0iRVBTT04gIHNSR0IiIHhtcDpDcmVhdGVEYXRlPSIyMDE5LTAzLTA3VDA5OjA2OjE4KzAxOjAwIiB4bXA6TW9kaWZ5RGF0ZT0iMjAxOS0wMy0xNFQxNTo1NTo1MyswMTowMCIgeG1wOk1ldGFkYXRhRGF0ZT0iMjAxOS0wMy0xNFQxNTo1NTo1MyswMTowMCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChXaW5kb3dzKSIgTWljcm9zb2Z0UGhvdG86RGF0ZUFjcXVpcmVkPSIyMDE5LTAzLTE0VDEzOjMzOjE3Ij4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6NjkwQjIzM0Y1MTQ2RTkxMUI5ODhFNDREQkU0QjI0OUIiIHN0RXZ0OndoZW49IjIwMTktMDMtMTRUMTM6MzM6MDgrMDE6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDUzYgKFdpbmRvd3MpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDowNTM2MzczMTY3NDZFOTExQjk4OEU0NERCRTRCMjQ5QiIgc3RFdnQ6d2hlbj0iMjAxOS0wMy0xNFQxNTo1NTo1MyswMTowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPC9yZGY6U2VxPiA8L3htcE1NOkhpc3Rvcnk+IDxwaG90b3Nob3A6RG9jdW1lbnRBbmNlc3RvcnM+IDxyZGY6QmFnPiA8cmRmOmxpPjBFMDJBMzI2MTREMUJEMjg0Q0ZBOTRGRDI3OEVBNjJFPC9yZGY6bGk+IDxyZGY6bGk+NDM0N0U3OUM0MTc4NTMwRkU0RjIxODQ4NDg1Q0VDMjY8L3JkZjpsaT4gPHJkZjpsaT54bXAuZGlkOjAyMzYzNzMxNjc0NkU5MTFCOTg4RTQ0REJFNEIyNDlCPC9yZGY6bGk+IDwvcmRmOkJhZz4gPC9waG90b3Nob3A6RG9jdW1lbnRBbmNlc3RvcnM+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDw/eHBhY2tldCBlbmQ9InciPz7/4iIUSUNDX1BST0ZJTEUAAQEAACIEQVBQTAIgAABtbnRyUkdCIFhZWiAH1gACAAIAAgAUAABhY3NwQVBQTAAAAABub25lAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLUVQU08AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAhbAAAAEdyWFlaAAAA/AAAABRnWFlaAAABEAAAABRiWFlaAAABJAAAABR3dHB0AAABOAAAABRjcHJ0AAAhtAAAAFByVFJDAAABTAAAIAxnVFJDAAABTAAAIAxiVFJDAAABTAAAIAxia3B0AAAhWAAAABRYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA81EAAQAAAAEWzGN1cnYAAAAAAAAQAAAAAAEAAgAEAAUABgAHAAkACgALAAwADgAPABAAEQATABQAFQAWABgAGQAaABsAHAAeAB8AIAAhACMAJAAlACYAKAApACoAKwAtAC4ALwAwADIAMwA0ADUANwA4ADkAOgA7AD0APgA/AEAAQgBDAEQARQBHAEgASQBKAEwATQBOAE8AUQBSAFMAVABVAFcAWABZAFoAXABdAF4AXwBhAGIAYwBkAGYAZwBoAGkAawBsAG0AbgBvAHEAcgBzAHQAdgB3AHgAeQB7AHwAfQB+AIAAgQCCAIMAhQCGAIcAiACJAIsAjACNAI4AkACRAJIAkwCVAJYAlwCYAJoAmwCcAJ0AnwCgAKEAogCkAKUApgCnAKgAqgCrAKwArQCvALAAsQCyALQAtQC2ALcAuQC6ALsAvAC+AL8AwADBAMIAxADFAMYAxwDJAMoAywDMAM4AzwDQANEA0wDUANUA1wDYANkA2gDcAN0A3gDgAOEA4gDkAOUA5gDoAOkA6gDsAO0A7wDwAPEA8wD0APYA9wD4APoA+wD9AP4A/wEBAQIBBAEFAQcBCAEKAQsBDQEOAQ8BEQESARQBFQEXARgBGgEbAR0BHwEgASIBIwElASYBKAEpASsBLQEuATABMQEzATQBNgE4ATkBOwE8AT4BQAFBAUMBRQFGAUgBSgFLAU0BTwFQAVIBVAFVAVcBWQFaAVwBXgFgAWEBYwFlAWcBaAFqAWwBbgFvAXEBcwF1AXYBeAF6AXwBfgF/AYEBgwGFAYcBiQGKAYwBjgGQAZIBlAGWAZcBmQGbAZ0BnwGhAaMBpQGnAakBqwGsAa4BsAGyAbQBtgG4AboBvAG+AcABwgHEAcYByAHKAcwBzgHQAdIB1AHWAdgB2gHcAd4B4QHjAeUB5wHpAesB7QHvAfEB8wH1AfgB+gH8Af4CAAICAgQCBwIJAgsCDQIPAhICFAIWAhgCGgIdAh8CIQIjAiUCKAIqAiwCLgIxAjMCNQI4AjoCPAI+AkECQwJFAkgCSgJMAk8CUQJTAlYCWAJaAl0CXwJhAmQCZgJpAmsCbQJwAnICdQJ3AnkCfAJ+AoECgwKGAogCiwKNApACkgKVApcCmgKcAp8CoQKkAqYCqQKrAq4CsAKzArUCuAK7Ar0CwALCAsUCyALKAs0CzwLSAtUC1wLaAt0C3wLiAuQC5wLqAuwC7wLyAvUC9wL6Av0C/wMCAwUDCAMKAw0DEAMTAxUDGAMbAx4DIAMjAyYDKQMsAy4DMQM0AzcDOgM9Az8DQgNFA0gDSwNOA1EDVANWA1kDXANfA2IDZQNoA2sDbgNxA3QDdwN6A30DgAOCA4UDiAOLA44DkQOUA5gDmwOeA6EDpAOnA6oDrQOwA7MDtgO5A7wDvwPCA8UDyQPMA88D0gPVA9gD2wPfA+ID5QPoA+sD7gPyA/UD+AP7A/4EAgQFBAgECwQPBBIEFQQYBBwEHwQiBCUEKQQsBC8EMwQ2BDkEPQRABEMERwRKBE0EUQRUBFcEWwReBGIEZQRoBGwEbwRzBHYEeQR9BIAEhASHBIsEjgSSBJUEmQScBKAEowSnBKoErgSxBLUEuAS8BL8EwwTGBMoEzgTRBNUE2ATcBOAE4wTnBOoE7gTyBPUE+QT9BQAFBAUIBQsFDwUTBRYFGgUeBSIFJQUpBS0FMQU0BTgFPAVABUMFRwVLBU8FUgVWBVoFXgViBWYFaQVtBXEFdQV5BX0FgQWEBYgFjAWQBZQFmAWcBaAFpAWoBawFrwWzBbcFuwW/BcMFxwXLBc8F0wXXBdsF3wXjBecF6wXvBfQF+AX8BgAGBAYIBgwGEAYUBhgGHAYhBiUGKQYtBjEGNQY5Bj4GQgZGBkoGTgZTBlcGWwZfBmMGaAZsBnAGdAZ5Bn0GgQaFBooGjgaSBpcGmwafBqQGqAasBrEGtQa5Br4GwgbGBssGzwbUBtgG3AbhBuUG6gbuBvIG9wb7BwAHBAcJBw0HEgcWBxsHHwckBygHLQcxBzYHOgc/B0MHSAdNB1EHVgdaB18HYwdoB20HcQd2B3sHfweEB4kHjQeSB5cHmwegB6UHqQeuB7MHtwe8B8EHxgfKB88H1AfZB90H4gfnB+wH8Qf1B/oH/wgECAkIDQgSCBcIHAghCCYIKwgvCDQIOQg+CEMISAhNCFIIVwhcCGEIZghrCHAIdQh6CH8IhAiJCI4IkwiYCJ0IoginCKwIsQi2CLsIwAjFCMoIzwjUCNkI3wjkCOkI7gjzCPgI/QkDCQgJDQkSCRcJHQkiCScJLAkxCTcJPAlBCUYJTAlRCVYJWwlhCWYJawlxCXYJewmBCYYJiwmRCZYJmwmhCaYJqwmxCbYJvAnBCcYJzAnRCdcJ3AniCecJ7QnyCfgJ/QoCCggKDQoTChkKHgokCikKLwo0CjoKPwpFCkoKUApWClsKYQpmCmwKcgp3Cn0KgwqICo4KlAqZCp8KpQqqCrAKtgq8CsEKxwrNCtMK2AreCuQK6grvCvUK+wsBCwcLDAsSCxgLHgskCyoLLws1CzsLQQtHC00LUwtZC18LZAtqC3ALdgt8C4ILiAuOC5QLmgugC6YLrAuyC7gLvgvEC8oL0AvWC9wL4gvpC+8L9Qv7DAEMBwwNDBMMGQwgDCYMLAwyDDgMPgxFDEsMUQxXDF0MZAxqDHAMdgx9DIMMiQyPDJYMnAyiDKgMrwy1DLsMwgzIDM4M1QzbDOEM6AzuDPUM+w0BDQgNDg0VDRsNIQ0oDS4NNQ07DUINSA1PDVUNXA1iDWkNbw12DXwNgw2JDZANlg2dDaQNqg2xDbcNvg3FDcsN0g3ZDd8N5g3sDfMN+g4BDgcODg4VDhsOIg4pDi8ONg49DkQOSg5RDlgOXw5mDmwOcw56DoEOiA6ODpUOnA6jDqoOsQ64Dr4OxQ7MDtMO2g7hDugO7w72Dv0PBA8LDxIPGQ8gDycPLg81DzwPQw9KD1EPWA9fD2YPbQ90D3sPgg+JD5APmA+fD6YPrQ+0D7sPwg/KD9EP2A/fD+YP7Q/1D/wQAxAKEBIQGRAgECcQLxA2ED0QRBBMEFMQWhBiEGkQcBB4EH8QhhCOEJUQnRCkEKsQsxC6EMIQyRDQENgQ3xDnEO4Q9hD9EQURDBEUERsRIxEqETIRORFBEUgRUBFXEV8RZxFuEXYRfRGFEY0RlBGcEaQRqxGzEbsRwhHKEdIR2RHhEekR8BH4EgASCBIPEhcSHxInEi4SNhI+EkYSThJVEl0SZRJtEnUSfRKEEowSlBKcEqQSrBK0ErwSxBLMEtQS2xLjEusS8xL7EwMTCxMTExsTIxMrEzMTOxNEE0wTVBNcE2QTbBN0E3wThBOME5QTnROlE60TtRO9E8UTzRPWE94T5hPuE/YT/xQHFA8UFxQgFCgUMBQ4FEEUSRRRFFoUYhRqFHMUexSDFIwUlBScFKUUrRS2FL4UxhTPFNcU4BToFPEU+RUBFQoVEhUbFSMVLBU0FT0VRRVOFVcVXxVoFXAVeRWBFYoVkxWbFaQVrBW1Fb4VxhXPFdgV4BXpFfIV+hYDFgwWFBYdFiYWLxY3FkAWSRZSFloWYxZsFnUWfhaGFo8WmBahFqoWsxa7FsQWzRbWFt8W6BbxFvoXAxcMFxQXHRcmFy8XOBdBF0oXUxdcF2UXbhd3F4AXiReSF5wXpReuF7cXwBfJF9IX2xfkF+0X9xgAGAkYEhgbGCQYLhg3GEAYSRhSGFwYZRhuGHcYgRiKGJMYnBimGK8YuBjCGMsY1BjeGOcY8Bj6GQMZDBkWGR8ZKRkyGTsZRRlOGVgZYRlrGXQZfhmHGZEZmhmkGa0ZtxnAGcoZ0xndGeYZ8Bn6GgMaDRoWGiAaKhozGj0aRhpQGloaYxptGncagRqKGpQanhqnGrEauxrFGs4a2BriGuwa9Rr/GwkbExsdGycbMBs6G0QbThtYG2IbbBt1G38biRuTG50bpxuxG7sbxRvPG9kb4xvtG/ccARwLHBUcHxwpHDMcPRxHHFEcWxxlHHAcehyEHI4cmByiHKwcthzBHMsc1RzfHOkc9Bz+HQgdEh0cHScdMR07HUUdUB1aHWQdbx15HYMdjh2YHaIdrR23HcEdzB3WHeEd6x31HgAeCh4VHh8eKh40Hj4eSR5THl4eaB5zHn0eiB6THp0eqB6yHr0exx7SHtwe5x7yHvwfBx8SHxwfJx8yHzwfRx9SH1wfZx9yH3wfhx+SH50fpx+yH70fyB/SH90f6B/zH/4gCCATIB4gKSA0ID8gSiBUIF8gaiB1IIAgiyCWIKEgrCC3IMIgzSDYIOMg7iD5IQQhDyEaISUhMCE7IUYhUSFcIWchciF+IYkhlCGfIaohtSHAIcwh1yHiIe0h+CIEIg8iGiIlIjAiPCJHIlIiXiJpInQifyKLIpYioSKtIrgiwyLPItoi5iLxIvwjCCMTIx8jKiM1I0EjTCNYI2MjbyN6I4YjkSOdI6gjtCO/I8sj1iPiI+4j+SQFJBAkHCQoJDMkPyRLJFYkYiRuJHkkhSSRJJwkqCS0JL8kyyTXJOMk7iT6JQYlEiUeJSklNSVBJU0lWSVlJXAlfCWIJZQloCWsJbglxCXQJdwl5yXzJf8mCyYXJiMmLyY7JkcmUyZfJmsmdyaEJpAmnCaoJrQmwCbMJtgm5CbwJv0nCScVJyEnLSc5J0YnUideJ2ondieDJ48nmyenJ7QnwCfMJ9kn5SfxJ/0oCigWKCMoLyg7KEgoVChgKG0oeSiGKJIoniirKLcoxCjQKN0o6Sj2KQIpDykbKSgpNClBKU0pWilnKXMpgCmMKZkppimyKb8pzCnYKeUp8Sn+KgsqGCokKjEqPipKKlcqZCpxKn0qiiqXKqQqsSq9Ksoq1yrkKvEq/isKKxcrJCsxKz4rSytYK2Urcit/K4wrmSulK7IrvyvMK9kr5ivzLAEsDiwbLCgsNSxCLE8sXCxpLHYsgyyQLJ4sqyy4LMUs0izfLO0s+i0HLRQtIS0vLTwtSS1WLWQtcS1+LYstmS2mLbMtwS3OLdst6S32LgQuES4eLiwuOS5HLlQuYS5vLnwuii6XLqUusi7ALs0u2y7oLvYvAy8RLx4vLC86L0cvVS9iL3Avfi+LL5kvpy+0L8Iv0C/dL+sv+TAGMBQwIjAvMD0wSzBZMGcwdDCCMJAwnjCsMLkwxzDVMOMw8TD/MQ0xGjEoMTYxRDFSMWAxbjF8MYoxmDGmMbQxwjHQMd4x7DH6MggyFjIkMjIyQDJOMlwyajJ5MocylTKjMrEyvzLNMtwy6jL4MwYzFDMjMzEzPzNNM1wzajN4M4YzlTOjM7EzwDPOM9wz6zP5NAc0FjQkNDM0QTRPNF40bDR7NIk0mDSmNLU0wzTSNOA07zT9NQw1GjUpNTc1RjVUNWM1cjWANY81nTWsNbs1yTXYNec19TYENhM2ITYwNj82TjZcNms2ejaJNpc2pja1NsQ20zbhNvA2/zcONx03LDc7N0k3WDdnN3Y3hTeUN6M3sjfBN9A33zfuN/04DDgbOCo4OThIOFc4Zjh1OIQ4kziiOLE4wTjQON847jj9OQw5GzkrOTo5STlYOWc5dzmGOZU5pDm0OcM50jnhOfE6ADoPOh86Ljo9Ok06XDprOns6ijqaOqk6uDrIOtc65zr2OwY7FTslOzQ7RDtTO2M7cjuCO5E7oTuwO8A70DvfO+87/jwOPB48LTw9PE08XDxsPHw8izybPKs8ujzKPNo86jz5PQk9GT0pPTk9SD1YPWg9eD2IPZg9pz23Pcc91z3nPfc+Bz4XPic+Nz5HPlc+Zz53Poc+lz6nPrc+xz7XPuc+9z8HPxc/Jz83P0c/Vz9nP3g/iD+YP6g/uD/IP9k/6T/5QAlAGUAqQDpASkBaQGtAe0CLQJxArEC8QM1A3UDtQP5BDkEeQS9BP0FPQWBBcEGBQZFBokGyQcNB00HkQfRCBUIVQiZCNkJHQldCaEJ4QolCmkKqQrtCy0LcQu1C/UMOQx9DL0NAQ1FDYUNyQ4NDlEOkQ7VDxkPXQ+dD+EQJRBpEK0Q7RExEXURuRH9EkEShRLJEwkTTRORE9UUGRRdFKEU5RUpFW0VsRX1FjkWfRbBFwUXSReNF9EYFRhdGKEY5RkpGW0ZsRn1Gj0agRrFGwkbTRuRG9kcHRxhHKUc7R0xHXUduR4BHkUeiR7RHxUfWR+hH+UgKSBxILUg/SFBIYUhzSIRIlkinSLlIykjcSO1I/0kQSSJJM0lFSVZJaEl6SYtJnUmuScBJ0knjSfVKBkoYSipKO0pNSl9KcUqCSpRKpkq3SslK20rtSv9LEEsiSzRLRktYS2lLe0uNS59LsUvDS9VL50v5TApMHEwuTEBMUkxkTHZMiEyaTKxMvkzQTOJM9E0GTRlNK009TU9NYU1zTYVNl02pTbxNzk3gTfJOBE4XTilOO05NTl9Ock6ETpZOqU67Ts1O307yTwRPFk8pTztPTk9gT3JPhU+XT6pPvE/OT+FP81AGUBhQK1A9UFBQYlB1UIdQmlCtUL9Q0lDkUPdRCVEcUS9RQVFUUWdReVGMUZ9RsVHEUddR6VH8Ug9SIlI0UkdSWlJtUoBSklKlUrhSy1LeUvFTBFMWUylTPFNPU2JTdVOIU5tTrlPBU9RT51P6VA1UIFQzVEZUWVRsVH9UklSlVLhUy1TeVPJVBVUYVStVPlVRVWVVeFWLVZ5VsVXFVdhV61X+VhJWJVY4VktWX1ZyVoVWmVasVr9W01bmVvpXDVcgVzRXR1dbV25XgleVV6lXvFfQV+NX91gKWB5YMVhFWFhYbFiAWJNYp1i6WM5Y4lj1WQlZHVkwWURZWFlrWX9Zk1mnWbpZzlniWfZaCVodWjFaRVpZWmxagFqUWqhavFrQWuRa+FsLWx9bM1tHW1tbb1uDW5dbq1u/W9Nb51v7XA9cI1w3XEtcYFx0XIhcnFywXMRc2FzsXQFdFV0pXT1dUV1lXXpdjl2iXbZdy13fXfNeCF4cXjBeRF5ZXm1egl6WXqpev17TXude/F8QXyVfOV9OX2Jfd1+LX6BftF/JX91f8mAGYBtgL2BEYFhgbWCCYJZgq2C/YNRg6WD9YRJhJ2E7YVBhZWF6YY5ho2G4Yc1h4WH2YgtiIGI1YkliXmJzYohinWKyYsdi22LwYwVjGmMvY0RjWWNuY4NjmGOtY8Jj12PsZAFkFmQrZEBkVWRqZH9klWSqZL9k1GTpZP5lE2UpZT5lU2VoZX1lk2WoZb1l0mXoZf1mEmYnZj1mUmZnZn1mkmanZr1m0mboZv1nEmcoZz1nU2doZ35nk2epZ75n1GfpZ/9oFGgqaD9oVWhqaIBolmiraMFo1mjsaQJpF2ktaUNpWGluaYRpmWmvacVp22nwagZqHGoyakhqXWpzaolqn2q1aspq4Gr2awxrIms4a05rZGt6a5Brpmu8a9Jr6Gv+bBRsKmxAbFZsbGyCbJhsrmzEbNps8G0GbRxtM21JbV9tdW2LbaFtuG3ObeRt+m4RbiduPW5TbmpugG6Wbq1uw27ZbvBvBm8cbzNvSW9gb3ZvjG+jb7lv0G/mb/1wE3AqcEBwV3BtcIRwmnCxcMdw3nD0cQtxInE4cU9xZnF8cZNxqnHAcddx7nIEchtyMnJIcl9ydnKNcqRyunLRcuhy/3MWcyxzQ3Nac3FziHOfc7ZzzXPkc/p0EXQodD90VnRtdIR0m3SydMl04HT3dQ51JnU9dVR1a3WCdZl1sHXHdd519nYNdiR2O3ZSdmp2gXaYdq92x3bedvV3DHckdzt3Undqd4F3mHewd8d33nf2eA14JXg8eFR4a3iCeJp4sXjJeOB4+HkPeSd5PnlWeW55hXmdebR5zHnjeft6E3oqekJ6Wnpxeol6oXq4etB66HsAexd7L3tHe197dnuOe6Z7vnvWe+58BXwdfDV8TXxlfH18lXytfMV83Hz0fQx9JH08fVR9bH2EfZx9tH3NfeV9/X4Vfi1+RX5dfnV+jX6lfr5+1n7ufwZ/Hn83f09/Z39/f5d/sH/If+B/+YARgCmAQYBagHKAioCjgLuA1IDsgQSBHYE1gU6BZoF/gZeBsIHIgeGB+YISgiqCQ4JbgnSCjIKlgr6C1oLvgweDIIM5g1GDaoODg5uDtIPNg+WD/oQXhDCESIRhhHqEk4SshMSE3YT2hQ+FKIVBhVqFcoWLhaSFvYXWhe+GCIYhhjqGU4ZshoWGnoa3htCG6YcChxuHNIdNh2eHgIeZh7KHy4fkh/2IF4gwiEmIYoh7iJWIrojHiOCI+okTiSyJRolfiXiJkYmricSJ3on3ihCKKopDil2KdoqPiqmKworcivWLD4soi0KLW4t1i46LqIvCi9uL9YwOjCiMQoxbjHWMj4yojMKM3Iz1jQ+NKY1CjVyNdo2QjamNw43djfeOEY4rjkSOXo54jpKOrI7GjuCO+o8Tjy2PR49hj3uPlY+vj8mP44/9kBeQMZBLkGWQf5CakLSQzpDokQKRHJE2kVCRa5GFkZ+RuZHTke6SCJIikjySV5JxkouSppLAktqS9JMPkymTRJNek3iTk5Otk8iT4pP8lBeUMZRMlGaUgZSblLaU0JTrlQWVIJU7lVWVcJWKlaWVwJXalfWWD5YqlkWWX5Z6lpWWsJbKluWXAJcblzWXUJdrl4aXoZe7l9aX8ZgMmCeYQphdmHeYkpitmMiY45j+mRmZNJlPmWqZhZmgmbuZ1pnxmgyaJ5pCml6aeZqUmq+ayprlmwCb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', 1, 1);


--
-- Data for Name: document_type_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.document_type_translation VALUES (3, 'en', 'Family status certificate', 'The Family Status Certificate is a document containing the data of persons residing at the same residence address and in the same housing unit. In case of family members, next to each name is written the specific role in the family composition.
', '2020-04-14 18:17:39.35');
INSERT INTO micadoapp.document_type_translation VALUES (5, 'en', 'Stamp duty', 'Stamp duty is a tax that is levied on single property purchases or documents (historically, this included the majority of legal documents such as cheques, receipts, military commissions, marriage licences and land transactions.) A physical stamp (a revenue stamp) had to be attached to or impressed upon the document to denote that stamp duty had been paid before the document was legally effective. More modern versions of the tax no longer require an actual stamp.', '2020-04-14 18:17:39.35');
INSERT INTO micadoapp.document_type_translation VALUES (4, 'en', 'Employment contract', 'Employment contracts regulate the main aspects of the working relationship between employer and employee including job title, salary, responsibilities and duties, entitlement to sick pay and holidays, and applicable probationary and notice periods.', '2020-04-14 18:17:39.35');
INSERT INTO micadoapp.document_type_translation VALUES (2, 'en', 'Identity document', 'An identity document (also called a piece of identification or ID, or colloquially as papers) is any document that may be used to prove a person''s identity. If issued in a small, standard credit card size form, it is usually called an identity card (IC, ID card, citizen card),or passport card.', '2020-04-14 18:17:39.35');
INSERT INTO micadoapp.document_type_translation VALUES (1, 'it', 'permesso di soggiorno', 'bla bla', '2020-04-14 18:17:39.35');
INSERT INTO micadoapp.document_type_translation VALUES (1, 'en', 'Residence permit', 'A residence permit (less commonly residency permit) is a document or card required in some regions, allowing a foreign national to reside in a country for a fixed or indefinite length of time. These may be permits for temporary residency, or permanent residency. The exact rules vary between regions. In some cases (e.g. the UK) a temporary residence permit is required to extend a stay past some threshold, and can be an intermediate step to applying for permanent residency.', '2020-04-14 18:17:39.35');


--
-- Data for Name: document_type_validator; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: event; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.event VALUES (1, NULL, true, NULL, NULL);
INSERT INTO micadoapp.event VALUES (2, NULL, false, NULL, NULL);


--
-- Data for Name: event_category; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: event_category_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: event_tags; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.event_tags VALUES (0, 1);
INSERT INTO micadoapp.event_tags VALUES (1, 1);


--
-- Data for Name: event_tags_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.event_tags_translation VALUES (0, 'en', 'test', NULL);
INSERT INTO micadoapp.event_tags_translation VALUES (1, 'en', 'test', NULL);
INSERT INTO micadoapp.event_tags_translation VALUES (0, 'es', 'prueba', NULL);


--
-- Data for Name: event_topic; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: event_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.event_translation VALUES (1, 'en', 'test2', 'test', NULL);


--
-- Data for Name: features_flags; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.features_flags VALUES (1, 'FEAT_DOCUMENTS', false);
INSERT INTO micadoapp.features_flags VALUES (2, 'FEAT_GLOSSARY', true);
INSERT INTO micadoapp.features_flags VALUES (3, 'FEAT_ASSISTANT', true);


--
-- Data for Name: features_flags_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.features_flags_translation VALUES (1, 'it', 'Portafoglio documenti', '2020-04-14 17:54:28.436');
INSERT INTO micadoapp.features_flags_translation VALUES (1, 'en', 'Document wallet', '2020-04-14 17:54:28.436');


--
-- Data for Name: glossary; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.glossary VALUES (1, true, '2020-07-09');
INSERT INTO micadoapp.glossary VALUES (2, true, '2020-07-09');


--
-- Data for Name: glossary_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.glossary_translation VALUES (2, 'en', 'Identity Card', '{"type":"doc","content":[{"type":"paragraph","content":[{"type":"text","text":"test2"}]}]}', '2020-07-09 12:21:09.926');
INSERT INTO micadoapp.glossary_translation VALUES (1, 'it', 'Permesso di soggiorno', '{"type":"doc","content":[{"type":"paragraph","content":[{"type":"text","text":"italian test 2"}]}]}', '2020-07-09 13:31:56.182');
INSERT INTO micadoapp.glossary_translation VALUES (1, 'es', 'Permiso de residencia', '{"type":"doc","content":[{"type":"paragraph","content":[{"type":"text","text":"test"}]}]}', '2020-07-15 12:45:28.465');
INSERT INTO micadoapp.glossary_translation VALUES (1, 'en', 'Residence permit', '{"type":"doc","content":[{"type":"paragraph","content":[{"type":"text","text":"test 3 "},{"type":"mention","attrs":{"id":2,"label":"Identity Card"}},{"type":"text","text":" "}]}]}', '2020-07-15 12:46:20.443');


--
-- Data for Name: individual_intervention_plan; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: individual_intervention_plan_interventions; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: intervention_category; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.intervention_category VALUES (1, false, NULL);
INSERT INTO micadoapp.intervention_category VALUES (7, false, NULL);


--
-- Data for Name: intervention_category_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.intervention_category_translation VALUES (1, 'en', 'cat1', NULL);
INSERT INTO micadoapp.intervention_category_translation VALUES (1, 'it', NULL, NULL);
INSERT INTO micadoapp.intervention_category_translation VALUES (1, 'es', NULL, NULL);
INSERT INTO micadoapp.intervention_category_translation VALUES (1, 'nl', NULL, NULL);
INSERT INTO micadoapp.intervention_category_translation VALUES (1, 'de', NULL, NULL);
INSERT INTO micadoapp.intervention_category_translation VALUES (7, 'de', '', NULL);
INSERT INTO micadoapp.intervention_category_translation VALUES (7, 'it', 'Categoria2', NULL);
INSERT INTO micadoapp.intervention_category_translation VALUES (7, 'es', 'nueva categoria', NULL);
INSERT INTO micadoapp.intervention_category_translation VALUES (7, 'en', 'Category2 Updated', NULL);
INSERT INTO micadoapp.intervention_category_translation VALUES (7, 'nl', '', NULL);


--
-- Data for Name: intervention_processes; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: intervention_type_validator; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: intervention_types; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: intervention_types_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: languages; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.languages VALUES ('en', 'en-us', 'english', true, true);
INSERT INTO micadoapp.languages VALUES ('es', 'es', 'español', true, false);
INSERT INTO micadoapp.languages VALUES ('nl', 'nl', 'nederlands', true, false);
INSERT INTO micadoapp.languages VALUES ('de', 'de', 'deutch', true, false);
INSERT INTO micadoapp.languages VALUES ('it', 'it', 'italiano', true, false);


--
-- Data for Name: migrant_app_config; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.migrant_app_config VALUES (1, '["FEAT_DOCUMENTS","FEAT_GLOSSARY","FEAT_ASSISTANT","FEAT_SERVICES","FEAT_TASKS","FEAT_DEFAULT"]');


--
-- Data for Name: picture_hotspot; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: picture_hotspot_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: process; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.process VALUES (46, '', false, NULL);
INSERT INTO micadoapp.process VALUES (47, '', false, NULL);
INSERT INTO micadoapp.process VALUES (1, NULL, false, NULL);
INSERT INTO micadoapp.process VALUES (48, '', false, NULL);


--
-- Data for Name: process_comments; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: process_topic; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.process_topic VALUES (1, 2);
INSERT INTO micadoapp.process_topic VALUES (46, 4);
INSERT INTO micadoapp.process_topic VALUES (47, 4);
INSERT INTO micadoapp.process_topic VALUES (48, 1);


--
-- Data for Name: process_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.process_translation VALUES (48, 'de', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (48, 'nl', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (48, 'es', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (48, 'it', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (48, 'en', 'Get residence permit', 'This is the process that will allow you to get a permit to reside in the country', NULL);
INSERT INTO micadoapp.process_translation VALUES (46, 'nl', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (46, 'es', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (46, 'en', 'Certify your education degree', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (46, 'de', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (46, 'it', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (47, 'de', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (47, 'es', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (47, 'en', 'Enroll children to school', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (47, 'it', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (47, 'nl', '', '', NULL);
INSERT INTO micadoapp.process_translation VALUES (1, 'de', NULL, NULL, NULL);
INSERT INTO micadoapp.process_translation VALUES (1, 'it', NULL, NULL, NULL);
INSERT INTO micadoapp.process_translation VALUES (1, 'en', 'Get driver licence recognized', 'Placeholder description 2', NULL);
INSERT INTO micadoapp.process_translation VALUES (1, 'es', NULL, NULL, NULL);
INSERT INTO micadoapp.process_translation VALUES (1, 'nl', NULL, NULL, NULL);


--
-- Data for Name: process_users; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.process_users VALUES (1, 9);
INSERT INTO micadoapp.process_users VALUES (1, 1);
INSERT INTO micadoapp.process_users VALUES (1, 7);
INSERT INTO micadoapp.process_users VALUES (46, 1);
INSERT INTO micadoapp.process_users VALUES (46, 7);
INSERT INTO micadoapp.process_users VALUES (46, 9);
INSERT INTO micadoapp.process_users VALUES (47, 1);
INSERT INTO micadoapp.process_users VALUES (47, 7);
INSERT INTO micadoapp.process_users VALUES (47, 9);
INSERT INTO micadoapp.process_users VALUES (48, 1);
INSERT INTO micadoapp.process_users VALUES (48, 7);
INSERT INTO micadoapp.process_users VALUES (48, 9);


--
-- Data for Name: ratings; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: settings; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.settings VALUES ('api_token', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6IlpqUm1ZVE13TlRKak9XVTVNbUl6TWpnek5ESTNZMkl5TW1JeVkyRXpNamRoWmpWaU1qYzBaZz09In0.eyJhdWQiOiJodHRwOlwvXC9vcmcud3NvMi5hcGltZ3RcL2dhdGV3YXkiLCJzdWIiOiJhZG1pbkBjYXJib24uc3VwZXIiLCJhcHBsaWNhdGlvbiI6eyJvd25lciI6ImFkbWluIiwidGllciI6IlVubGltaXRlZCIsIm5hbWUiOiJNaWdyYW50QXBwbGljYXRpb24iLCJpZCI6MSwidXVpZCI6bnVsbH0sInNjb3BlIjoiYW1fYXBwbGljYXRpb25fc2NvcGUgZGVmYXVsdCIsImlzcyI6Imh0dHBzOlwvXC9nYXRld2F5Lm1pY2Fkb3Byb2plY3QuZXU6NDQzXC9vYXV0aDJcL3Rva2VuIiwidGllckluZm8iOnsiQnJvbnplIjp7InN0b3BPblF1b3RhUmVhY2giOnRydWUsInNwaWtlQXJyZXN0TGltaXQiOjAsInNwaWtlQXJyZXN0VW5pdCI6bnVsbH19LCJrZXl0eXBlIjoiUFJPRFVDVElPTiIsInN1YnNjcmliZWRBUElzIjpbeyJzdWJzY3JpYmVyVGVuYW50RG9tYWluIjoiY2FyYm9uLnN1cGVyIiwibmFtZSI6IlBvc3RnUkVTVEFQSSIsImNvbnRleHQiOiJcL2RiXC92MDEiLCJwdWJsaXNoZXIiOiJhZG1pbiIsInZlcnNpb24iOiJ2MDEiLCJzdWJzY3JpcHRpb25UaWVyIjoiQnJvbnplIn1dLCJjb25zdW1lcktleSI6InZabFNMbTFnYzVOMzIxbnRIN2Ztd2tONTNvVWEiLCJleHAiOjM3MzAyOTc0MzgsImlhdCI6MTU4MjgxMzc5MSwianRpIjoiYmYyMjBiYjMtNjY3MC00OTA5LWI4OTctOTY2ZDVhZDdhN2M0In0.GORnM7Hfflrv8iNFbBOZoLg7475tnLaXwY2f88My_qVCAupJxqPihM901E5GNQUsL2I7PW9_ymbCPJki0FuaIhdXk4ovso11ghjWDkVH9fUoMm_FElNynOlWp7gPDwtXbS5sNI2nZHflvUmc9IYG70XJG6tWhg4hI8bW0sNr03gkQOjQzbUqSqHb__J_oLJye1IGi657oJUtXnVLSDfRHOKl7w8SATrSiR_K57SkT4xGmpLqYGmbXsoWFJT-FHe1-WVrGBvwk2kqZfjgjDUoUedrDR0F9T_YrVIuPtruGqR4gJGWBuXPciOSHYsGu12Oxg3zC1FwoptN0NA2AZ-oTg');
INSERT INTO micadoapp.settings VALUES ('default_language', 'en');


--
-- Data for Name: step; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.step VALUES ('bf3ce24c-c8ae-4972-aa42-ba97a79a892f', 0, false, 'Postal Office', 0, 0, 48);
INSERT INTO micadoapp.step VALUES ('de139d62-b5d4-4684-be20-ac34cf45c8d4', 30, false, 'Postal Office', 0, 0, 48);
INSERT INTO micadoapp.step VALUES ('83c315df-677d-4690-8654-84a50abf657f', 0, false, 'Municipality', 0, 0, 48);
INSERT INTO micadoapp.step VALUES ('02e0547c-5038-4c26-9151-1559fdd5102e', 0, false, 'Housing Department', 0, 0, 48);
INSERT INTO micadoapp.step VALUES ('f1239daa-9551-42b6-b304-2503dd6d9e4a', 0, false, 'Questura', 0, 0, 48);
INSERT INTO micadoapp.step VALUES ('c99ceac0-6c92-435c-8a95-853ee7e84794', 0, false, '', 0, 0, 1);
INSERT INTO micadoapp.step VALUES ('47634f92-7244-4bdc-8331-c2145026b4cf', 0, false, '', 0, 0, 1);
INSERT INTO micadoapp.step VALUES ('17ed4b65-841a-4f21-a74f-5c2cf46aed5c', 0, false, '', 0, 0, 1);


--
-- Data for Name: step_document; Type: TABLE DATA; Schema: micadoapp; Owner: -
--



--
-- Data for Name: step_link; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.step_link VALUES ('13a8d42a-a314-4638-a58d-fb8e3ac7ee18', 'bf3ce24c-c8ae-4972-aa42-ba97a79a892f', 'de139d62-b5d4-4684-be20-ac34cf45c8d4', 48);
INSERT INTO micadoapp.step_link VALUES ('9e982d5a-13be-4472-a802-7bbb48789d71', 'de139d62-b5d4-4684-be20-ac34cf45c8d4', 'f1239daa-9551-42b6-b304-2503dd6d9e4a', 48);
INSERT INTO micadoapp.step_link VALUES ('1feccba6-60da-455d-aabd-d91393716044', 'f1239daa-9551-42b6-b304-2503dd6d9e4a', '83c315df-677d-4690-8654-84a50abf657f', 48);
INSERT INTO micadoapp.step_link VALUES ('dae5cb5e-bfb1-47b4-b248-b926f72993fc', '83c315df-677d-4690-8654-84a50abf657f', '02e0547c-5038-4c26-9151-1559fdd5102e', 48);


--
-- Data for Name: step_link_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.step_link_translation VALUES ('de', '', '13a8d42a-a314-4638-a58d-fb8e3ac7ee18');
INSERT INTO micadoapp.step_link_translation VALUES ('nl', '', '13a8d42a-a314-4638-a58d-fb8e3ac7ee18');
INSERT INTO micadoapp.step_link_translation VALUES ('it', '', '13a8d42a-a314-4638-a58d-fb8e3ac7ee18');
INSERT INTO micadoapp.step_link_translation VALUES ('es', '', '13a8d42a-a314-4638-a58d-fb8e3ac7ee18');
INSERT INTO micadoapp.step_link_translation VALUES ('en', '', '13a8d42a-a314-4638-a58d-fb8e3ac7ee18');
INSERT INTO micadoapp.step_link_translation VALUES ('de', '', '9e982d5a-13be-4472-a802-7bbb48789d71');
INSERT INTO micadoapp.step_link_translation VALUES ('de', '', '1feccba6-60da-455d-aabd-d91393716044');
INSERT INTO micadoapp.step_link_translation VALUES ('es', '', '1feccba6-60da-455d-aabd-d91393716044');
INSERT INTO micadoapp.step_link_translation VALUES ('en', '', '1feccba6-60da-455d-aabd-d91393716044');
INSERT INTO micadoapp.step_link_translation VALUES ('it', '', '1feccba6-60da-455d-aabd-d91393716044');
INSERT INTO micadoapp.step_link_translation VALUES ('nl', '', '1feccba6-60da-455d-aabd-d91393716044');
INSERT INTO micadoapp.step_link_translation VALUES ('es', '', '9e982d5a-13be-4472-a802-7bbb48789d71');
INSERT INTO micadoapp.step_link_translation VALUES ('nl', '', '9e982d5a-13be-4472-a802-7bbb48789d71');
INSERT INTO micadoapp.step_link_translation VALUES ('en', '', '9e982d5a-13be-4472-a802-7bbb48789d71');
INSERT INTO micadoapp.step_link_translation VALUES ('it', '', '9e982d5a-13be-4472-a802-7bbb48789d71');
INSERT INTO micadoapp.step_link_translation VALUES ('nl', '', 'dae5cb5e-bfb1-47b4-b248-b926f72993fc');
INSERT INTO micadoapp.step_link_translation VALUES ('it', '', 'dae5cb5e-bfb1-47b4-b248-b926f72993fc');
INSERT INTO micadoapp.step_link_translation VALUES ('es', '', 'dae5cb5e-bfb1-47b4-b248-b926f72993fc');
INSERT INTO micadoapp.step_link_translation VALUES ('en', '', 'dae5cb5e-bfb1-47b4-b248-b926f72993fc');
INSERT INTO micadoapp.step_link_translation VALUES ('de', '', 'dae5cb5e-bfb1-47b4-b248-b926f72993fc');


--
-- Data for Name: step_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.step_translation VALUES ('de', '', '', NULL, 'c99ceac0-6c92-435c-8a95-853ee7e84794');
INSERT INTO micadoapp.step_translation VALUES ('en', 'Third step updated', '', NULL, 'c99ceac0-6c92-435c-8a95-853ee7e84794');
INSERT INTO micadoapp.step_translation VALUES ('es', '', '', NULL, 'c99ceac0-6c92-435c-8a95-853ee7e84794');
INSERT INTO micadoapp.step_translation VALUES ('it', '', '', NULL, 'c99ceac0-6c92-435c-8a95-853ee7e84794');
INSERT INTO micadoapp.step_translation VALUES ('nl', '', '', NULL, 'c99ceac0-6c92-435c-8a95-853ee7e84794');
INSERT INTO micadoapp.step_translation VALUES ('de', '', '', NULL, '47634f92-7244-4bdc-8331-c2145026b4cf');
INSERT INTO micadoapp.step_translation VALUES ('en', 'Pippo', '', NULL, '47634f92-7244-4bdc-8331-c2145026b4cf');
INSERT INTO micadoapp.step_translation VALUES ('nl', '', '', NULL, '47634f92-7244-4bdc-8331-c2145026b4cf');
INSERT INTO micadoapp.step_translation VALUES ('it', '', '', NULL, '47634f92-7244-4bdc-8331-c2145026b4cf');
INSERT INTO micadoapp.step_translation VALUES ('es', '', '', NULL, '47634f92-7244-4bdc-8331-c2145026b4cf');
INSERT INTO micadoapp.step_translation VALUES ('de', '', '', NULL, '17ed4b65-841a-4f21-a74f-5c2cf46aed5c');
INSERT INTO micadoapp.step_translation VALUES ('en', 'Test step', '', NULL, '17ed4b65-841a-4f21-a74f-5c2cf46aed5c');
INSERT INTO micadoapp.step_translation VALUES ('it', '', '', NULL, '17ed4b65-841a-4f21-a74f-5c2cf46aed5c');
INSERT INTO micadoapp.step_translation VALUES ('nl', '', '', NULL, '17ed4b65-841a-4f21-a74f-5c2cf46aed5c');
INSERT INTO micadoapp.step_translation VALUES ('es', '', '', NULL, '17ed4b65-841a-4f21-a74f-5c2cf46aed5c');
INSERT INTO micadoapp.step_translation VALUES ('de', '', '', NULL, 'bf3ce24c-c8ae-4972-aa42-ba97a79a892f');
INSERT INTO micadoapp.step_translation VALUES ('es', '', '', NULL, 'bf3ce24c-c8ae-4972-aa42-ba97a79a892f');
INSERT INTO micadoapp.step_translation VALUES ('nl', '', '', NULL, 'bf3ce24c-c8ae-4972-aa42-ba97a79a892f');
INSERT INTO micadoapp.step_translation VALUES ('en', 'Get a Postal Kit', '', NULL, 'bf3ce24c-c8ae-4972-aa42-ba97a79a892f');
INSERT INTO micadoapp.step_translation VALUES ('it', '', '', NULL, 'bf3ce24c-c8ae-4972-aa42-ba97a79a892f');
INSERT INTO micadoapp.step_translation VALUES ('en', 'Send the kit', '', NULL, 'de139d62-b5d4-4684-be20-ac34cf45c8d4');
INSERT INTO micadoapp.step_translation VALUES ('es', '', '', NULL, 'de139d62-b5d4-4684-be20-ac34cf45c8d4');
INSERT INTO micadoapp.step_translation VALUES ('de', '', '', NULL, 'de139d62-b5d4-4684-be20-ac34cf45c8d4');
INSERT INTO micadoapp.step_translation VALUES ('it', '', '', NULL, 'de139d62-b5d4-4684-be20-ac34cf45c8d4');
INSERT INTO micadoapp.step_translation VALUES ('nl', '', '', NULL, 'de139d62-b5d4-4684-be20-ac34cf45c8d4');
INSERT INTO micadoapp.step_translation VALUES ('de', '', '', NULL, '83c315df-677d-4690-8654-84a50abf657f');
INSERT INTO micadoapp.step_translation VALUES ('en', 'Go to Municipality', '', NULL, '83c315df-677d-4690-8654-84a50abf657f');
INSERT INTO micadoapp.step_translation VALUES ('nl', '', '', NULL, '83c315df-677d-4690-8654-84a50abf657f');
INSERT INTO micadoapp.step_translation VALUES ('it', '', '', NULL, '83c315df-677d-4690-8654-84a50abf657f');
INSERT INTO micadoapp.step_translation VALUES ('es', '', '', NULL, '83c315df-677d-4690-8654-84a50abf657f');
INSERT INTO micadoapp.step_translation VALUES ('de', '', '', NULL, '02e0547c-5038-4c26-9151-1559fdd5102e');
INSERT INTO micadoapp.step_translation VALUES ('nl', '', '', NULL, '02e0547c-5038-4c26-9151-1559fdd5102e');
INSERT INTO micadoapp.step_translation VALUES ('en', 'Go to Housing Department', '', NULL, '02e0547c-5038-4c26-9151-1559fdd5102e');
INSERT INTO micadoapp.step_translation VALUES ('it', '', '', NULL, '02e0547c-5038-4c26-9151-1559fdd5102e');
INSERT INTO micadoapp.step_translation VALUES ('es', '', '', NULL, '02e0547c-5038-4c26-9151-1559fdd5102e');
INSERT INTO micadoapp.step_translation VALUES ('de', '', '', NULL, 'f1239daa-9551-42b6-b304-2503dd6d9e4a');
INSERT INTO micadoapp.step_translation VALUES ('nl', '', '', NULL, 'f1239daa-9551-42b6-b304-2503dd6d9e4a');
INSERT INTO micadoapp.step_translation VALUES ('it', '', '', NULL, 'f1239daa-9551-42b6-b304-2503dd6d9e4a');
INSERT INTO micadoapp.step_translation VALUES ('es', '', '', NULL, 'f1239daa-9551-42b6-b304-2503dd6d9e4a');
INSERT INTO micadoapp.step_translation VALUES ('en', 'Go to questura', '', NULL, 'f1239daa-9551-42b6-b304-2503dd6d9e4a');


--
-- Data for Name: topic; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.topic VALUES (1, 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTkiIGhlaWdodD0iMTkiIHZpZXdCb3g9IjAgMCAxOSAxOSIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE0LjgyOTMgOC40NDQzMlYtMC4wMDAxMjIwN0g0LjIyMjIyVjQuMjIyMUgwVjE4Ljk5OTlIOC40NDQ0NFYxNC43Nzc3SDEwLjU1NTZWMTguOTk5OUgxOVY4LjQ0NDMySDE0LjgyOTNaTTQuMjIyMjIgMTYuOTQwM0gyLjExMTExVjE0LjgyOTFINC4yMjIyMlYxNi45NDAzWk00LjIyMjIyIDEyLjcxOEgyLjExMTExVjEwLjYwNjlINC4yMjIyMlYxMi43MThaTTQuMjIyMjIgOC40NDQzMkgyLjExMTExVjYuMzMzMjFINC4yMjIyMlY4LjQ0NDMyWk04LjQ0NDQ0IDEyLjcxOEg2LjMzMzMzVjEwLjYwNjlIOC40NDQ0NFYxMi43MThaTTguNDQ0NDQgOC40NDQzMkg2LjMzMzMzVjYuMzMzMjFIOC40NDQ0NFY4LjQ0NDMyWk04LjQ0NDQ0IDQuMjIyMUg2LjMzMzMzVjIuMTEwOTlIOC40NDQ0NFY0LjIyMjFaTTEyLjcxODIgMTIuNzE4SDEwLjYwN1YxMC42MDY5SDEyLjcxODJWMTIuNzE4Wk0xMi43MTgyIDguNDQ0MzJIMTAuNjA3VjYuMzMzMjFIMTIuNzE4MlY4LjQ0NDMyWk0xMi43MTgyIDQuMjIyMUgxMC42MDdWMi4xMTA5OUgxMi43MTgyVjQuMjIyMVpNMTYuOTQwNCAxNi45NDAzSDE0LjgyOTNWMTQuODI5MUgxNi45NDA0VjE2Ljk0MDNaTTE2Ljk0MDQgMTIuNzE4SDE0LjgyOTNWMTAuNjA2OUgxNi45NDA0VjEyLjcxOFoiIGZpbGw9IiM2N0RGNkQiLz4KPC9zdmc+Cg==', false, NULL);
INSERT INTO micadoapp.topic VALUES (2, 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyLjU2NDIgMTQuOTI4NkgxMS4yNzQ2QzEwLjYyOTkgMTQuOTI4NiAxMC4xNDYzIDE0LjQ0NSAxMC4wOTI1IDEzLjg1MzlMMyAxMi43NzkzVjE4LjM2NzRDMyAxOS40OTU3IDMuOTEzNDMgMjAuMzU1NCA0Ljk4ODA2IDIwLjM1NTRIMTguOTU4MkMyMC4wODY2IDIwLjM1NTQgMjAuOTQ2MyAxOS40NDIgMjAuOTQ2MyAxOC4zNjc0VjEyLjc3OTNMMTMuNzQ2MyAxMy44NTM5QzEzLjY5MjUgMTQuNDk4NyAxMy4yMDkgMTQuOTI4NiAxMi41NjQyIDE0LjkyODZaIiBmaWxsPSIjMjY0MTVBIi8+CjxwYXRoIGQ9Ik0xOC45NTgyIDcuMDgzNThIMTUuOTQ5M1Y1Ljc5NDAzQzE1Ljk0OTMgNC4yMzU4MiAxNC43MTM0IDMgMTMuMTU1MiAzSDEwLjczNzNDOS4xNzkxMSAzIDcuOTQzMjggNC4yMzU4MiA3Ljk0MzI4IDUuNzk0MDNWNy4wODM1OEg0Ljk4ODA2QzMuODU5NyA3LjA4MzU4IDMgNy45OTcwMiAzIDkuMDcxNjRWMTEuOTczMUwxMC4zMDc1IDEzLjA0NzhDMTAuNTIyNCAxMi43MjU0IDEwLjg5ODUgMTIuNTEwNCAxMS4zMjg0IDEyLjUxMDRIMTIuNjE3OUMxMy4wNDc4IDEyLjUxMDQgMTMuNDIzOSAxMi43MjU0IDEzLjYzODggMTMuMTAxNUwyMSAxMS45NzMxVjkuMDcxNjRDMjAuOTQ2MyA3Ljk5NzAyIDIwLjAzMjggNy4wODM1OCAxOC45NTgyIDcuMDgzNThaTTkuNTAxNDkgNS43OTQwM0M5LjUwMTQ5IDUuMTQ5MjUgMTAuMDM4OCA0LjYxMTk0IDEwLjY4MzYgNC42MTE5NEgxMy4xMDE1QzEzLjc0NjMgNC42MTE5NCAxNC4yODM2IDUuMTQ5MjUgMTQuMjgzNiA1Ljc5NDAzVjcuMDgzNThIOS40NDc3NlY1Ljc5NDAzSDkuNTAxNDlaIiBmaWxsPSIjMjY0MTVBIi8+Cjwvc3ZnPgo=', true, NULL);
INSERT INTO micadoapp.topic VALUES (3, 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xNC42OTk3IDQuNUMxNC42OTk3IDQuMjIzODYgMTQuNDc1OCA0IDE0LjE5OTcgNEgxMC4xNDcxQzkuODcwOTIgNCA5LjY0NzA2IDQuMjIzODYgOS42NDcwNiA0LjVWOC45NzM1OEM5LjY0NzA2IDkuMjQ5NzIgOS40MjMyIDkuNDczNTggOS4xNDcwNiA5LjQ3MzU4SDQuNUM0LjIyMzg2IDkuNDczNTggNCA5LjY5NzQzIDQgOS45NzM1OFYxNC4wMjYyQzQgMTQuMzAyMyA0LjIyMzg2IDE0LjUyNjIgNC41IDE0LjUyNjJIOS4xNDcwNkM5LjQyMzIgMTQuNTI2MiA5LjY0NzA2IDE0Ljc1MDEgOS42NDcwNiAxNS4wMjYyVjE5LjVDOS42NDcwNiAxOS43NzYxIDkuODcwOTIgMjAgMTAuMTQ3MSAyMEgxNC4xOTk3QzE0LjQ3NTggMjAgMTQuNjk5NyAxOS43NzYxIDE0LjY5OTcgMTkuNVYxNS4wMjYyQzE0LjY5OTcgMTQuNzUwMSAxNC45MjM1IDE0LjUyNjIgMTUuMTk5NyAxNC41MjYySDE5LjVDMTkuNzc2MSAxNC41MjYyIDIwIDE0LjMwMjMgMjAgMTQuMDI2MlY5Ljk3MzU4QzIwIDkuNjk3NDMgMTkuNzc2MSA5LjQ3MzU4IDE5LjUgOS40NzM1OEgxNS4xOTk3QzE0LjkyMzUgOS40NzM1OCAxNC42OTk3IDkuMjQ5NzIgMTQuNjk5NyA4Ljk3MzU4VjQuNVoiIGZpbGw9IiMyRUMwRUUiLz4KPC9zdmc+Cg==', false, NULL);
INSERT INTO micadoapp.topic VALUES (4, 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPGcgaWQ9Ikljb24gLSBFZHVjYXRpb24iPgo8cGF0aCBpZD0iaWNvbi9zb2NpYWwvc2Nob29sXzI0cHgiIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNMS42NDQxOSA5LjM1MTExQzEuMzY2MTQgOS4xOTk1NyAxLjM2NjA3IDguODAwMzYgMS42NDQwNyA4LjY0ODczTDExLjgwODUgMy4xMDQ1MUMxMS45Mjc5IDMuMDM5MzggMTIuMDcyMiAzLjAzOTM4IDEyLjE5MTUgMy4xMDQ1MUwyMi43OTE2IDguODg2MzJDMjIuOTIwMSA4Ljk1NjQyIDIzIDkuMDkxMSAyMyA5LjIzNzQ4VjE2LjZDMjMgMTYuODIwOSAyMi44MjA5IDE3IDIyLjYgMTdIMjEuNEMyMS4xNzkxIDE3IDIxIDE2LjgyMDkgMjEgMTYuNlYxMC43NjM2QzIxIDEwLjQ2IDIwLjY3NTEgMTAuMjY3MSAyMC40MDg2IDEwLjQxMjRMMTkuMjA4NiAxMS4wNjY0QzE5LjA4IDExLjEzNjQgMTkgMTEuMjcxMSAxOSAxMS40MTc2VjE2Ljk0MjZDMTkgMTcuMDg5IDE4LjkyMDEgMTcuMjIzNiAxOC43OTE2IDE3LjI5MzdMMTIuMTkxNiAyMC44OTU1QzEyLjA3MjIgMjAuOTYwNiAxMS45Mjc4IDIwLjk2MDYgMTEuODA4NCAyMC44OTU1TDUuMjA4NCAxNy4yOTM3QzUuMDc5OTMgMTcuMjIzNiA1LjAwMDAxIDE3LjA4OSA1LjAwMDAxIDE2Ljk0MjZWMTEuNDE3NkM1LjAwMDAxIDExLjI3MTEgNC45MiAxMS4xMzY0IDQuNzkxNDMgMTEuMDY2NEwxLjY0NDE5IDkuMzUxMTFaTTExLjgwODMgMTguNjE1NEMxMS45Mjc4IDE4LjY4MDYgMTIuMDcyMiAxOC42ODA2IDEyLjE5MTcgMTguNjE1NEwxNi43OTE3IDE2LjEwMzhDMTYuOTIwMSAxNi4wMzM2IDE3IDE1Ljg5OSAxNyAxNS43NTI3VjEyLjk0NDJDMTcgMTIuNjQwNSAxNi42NzQ5IDEyLjQ0NzYgMTYuNDA4MyAxMi41OTMxTDEyLjE5MTcgMTQuODk1NEMxMi4wNzIyIDE0Ljk2MDYgMTEuOTI3OCAxNC45NjA2IDExLjgwODMgMTQuODk1NEw3LjU5MTcgMTIuNTkzMUM3LjMyNTE0IDEyLjQ0NzYgNy4wMDAwMSAxMi42NDA1IDcuMDAwMDEgMTIuOTQ0MlYxNS43NTI3QzcuMDAwMDEgMTUuODk5IDcuMDc5OSAxNi4wMzM2IDcuMjA4MzIgMTYuMTAzOEwxMS44MDgzIDE4LjYxNTRaIiBmaWxsPSIjMEU1MThFIi8+CjwvZz4KPC9zdmc+Cg==', false, NULL);


--
-- Data for Name: topic_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.topic_translation VALUES (1, 'it', 'Casa', '2020-06-18 16:31:27.89');
INSERT INTO micadoapp.topic_translation VALUES (1, 'de', 'aggiornato', '2020-06-24 17:59:35.993');
INSERT INTO micadoapp.topic_translation VALUES (1, 'en', 'House', NULL);
INSERT INTO micadoapp.topic_translation VALUES (2, 'en', 'Employment', NULL);
INSERT INTO micadoapp.topic_translation VALUES (2, 'de', 'Werk', NULL);
INSERT INTO micadoapp.topic_translation VALUES (2, 'it', 'Lavoro', '2020-06-18 19:42:09.469');
INSERT INTO micadoapp.topic_translation VALUES (3, 'de', '', NULL);
INSERT INTO micadoapp.topic_translation VALUES (3, 'es', '', NULL);
INSERT INTO micadoapp.topic_translation VALUES (3, 'nl', '', NULL);
INSERT INTO micadoapp.topic_translation VALUES (3, 'it', '', NULL);
INSERT INTO micadoapp.topic_translation VALUES (3, 'en', 'Health', NULL);
INSERT INTO micadoapp.topic_translation VALUES (4, 'de', '', NULL);
INSERT INTO micadoapp.topic_translation VALUES (4, 'es', '', NULL);
INSERT INTO micadoapp.topic_translation VALUES (4, 'it', '', NULL);
INSERT INTO micadoapp.topic_translation VALUES (4, 'en', 'Education', NULL);
INSERT INTO micadoapp.topic_translation VALUES (4, 'nl', '', NULL);
INSERT INTO micadoapp.topic_translation VALUES (1, 'es', NULL, NULL);
INSERT INTO micadoapp.topic_translation VALUES (1, 'nl', NULL, NULL);
INSERT INTO micadoapp.topic_translation VALUES (2, 'es', NULL, NULL);
INSERT INTO micadoapp.topic_translation VALUES (2, 'nl', NULL, NULL);


--
-- Data for Name: user_types; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.user_types VALUES (1, 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE3LjMxOTMgNy42MDkxNUMxOC41OTIxIDcuNjA5MTUgMTkuNjIzOSA2LjU3NzM1IDE5LjYyMzkgNS4zMDQ1N0MxOS42MjM5IDQuMDMxNzkgMTguNTkyMSAzIDE3LjMxOTMgM0MxNi4wNDY2IDMgMTUuMDE0OCA0LjAzMTc5IDE1LjAxNDggNS4zMDQ1N0MxNS4wMTQ4IDYuNTc3MzUgMTYuMDQ2NiA3LjYwOTE1IDE3LjMxOTMgNy42MDkxNVoiIGZpbGw9IiNGRjdDNDQiLz4KPHBhdGggZD0iTTIyLjc0NzggMTEuMzk5MUwyMC41OTY5IDExLjA0MDZMMTguODA0NSA4LjQ3OTkzQzE4Ljc1MzIgOC4zNzc1MSAxOC41OTk2IDguMzI2MjkgMTguNDk3MiA4LjMyNjI5SDE0LjcwNzRDMTQuNjA1IDguMzI2MjkgMTQuNTAyNiA4LjM3NzUxIDE0LjQ1MTQgOC40Mjg3MkwxMi4xNDY4IDEwLjczMzNMMTAuMzAzMSAxMi45MzU0TDkuMDIyODMgMTMuMjQyN0w3LjIzMDM4IDEyLjUyNTdDNy4xNzkxNyAxMi41MjU3IDcuMTI3OTUgMTIuNDc0NSA3LjA3Njc0IDEyLjQ3NDVINC40MTM2OEM0LjMxMTI1IDEyLjQ3NDUgNC4yMDg4MyAxMi41MjU3IDQuMTA2NCAxMi42MjgyTDIuNTcwMDIgMTQuNTc0MkwxLjQ0MzM0IDE1LjcwMDlDMS4yODk3IDE1Ljg1NDYgMS4yODk3IDE2LjExMDYgMS40NDMzNCAxNi4yNjQzTDIuMjExNTMgMTcuMDMyNUMyLjM2NTE3IDE3LjE4NjEgMi42MjEyMyAxNy4xODYxIDIuNzc0ODcgMTcuMDMyNUw0LjA1NTE5IDE1Ljc1MjFWMTYuNjIyOEwyLjYyMTIzIDE4Ljc3MzdMMS4wODQ4NSAyMC42Njg2QzAuOTgyNDI3IDIwLjc3MSAwLjk4MjQyNyAyMC45MjQ2IDEuMDMzNjQgMjEuMDI3MUMwLjk4MjQyNyAyMS4xMjk1IDEuMDg0ODUgMjEuMjMxOSAxLjIzODQ5IDIxLjI4MzFMMi43NzQ4NyAyMS42NDE2QzIuODI2MDggMjEuNjQxNiAyLjgyNjA4IDIxLjY0MTYgMi44NzczIDIxLjY0MTZDMi45Nzk3MiAyMS42NDE2IDMuMTMzMzYgMjEuNTkwNCAzLjE4NDU3IDIxLjQ4OEw0LjcyMDk2IDE5LjE4MzRWMTkuMTMyMkw1LjQ4OTE1IDE3LjU5NThMNS44OTg4NSAxOC42MjAxTDUuMTgxODcgMjEuNTM5MkM1LjEzMDY2IDIxLjY0MTYgNS4xODE4NyAyMS43OTUyIDUuMjMzMDggMjEuODQ2NUM1LjI4NDMgMjEuOTQ4OSA1LjQzNzkzIDIyLjAwMDEgNS41NDAzNiAyMi4wMDAxSDcuMDc2NzRDNy4yMzAzOCAyMi4wMDAxIDcuMzg0MDIgMjEuODk3NyA3LjQzNTIzIDIxLjY5MjhMOC4yMDM0MiAxOC42MjAxQzguMjAzNDIgMTguNTE3NiA4LjIwMzQyIDE4LjQ2NjQgOC4yMDM0MiAxOC4zNjRMNy40MzUyMyAxNi42MjI4VjE1LjAzNTJMOC40MDgyNyAxNS40OTYxQzguNTEwNyAxNS41NDczIDguNjEzMTIgMTUuNTQ3MyA4LjcxNTU1IDE1LjQ5NjFMMTIuMTQ2OCAxNC4zNjk0SDEyLjE5OEgxMi4yNDkyQzEyLjMwMDQgMTQuMzY5NCAxMi4zMDA0IDE0LjMxODIgMTIuMzAwNCAxNC4zMTgyTDEzLjc4NTYgMTIuNDc0NUwxNC4yOTc3IDEyLjExNlYxNC44MzAzTDEzLjkzOTIgMTcuMzkwOUwxMi4wOTU2IDIwLjAwMjhDMTEuOTkzMiAyMC4wMDI4IDExLjk5MzIgMjAuMTU2NCAxMS45OTMyIDIwLjI1ODlDMTIuMDQ0NCAyMC4zNjEzIDEyLjE0NjggMjAuNDYzNyAxMi4yNDkyIDIwLjUxNDlMMTMuNzg1NiAyMC44NzM0QzEzLjgzNjggMjAuODczNCAxMy44MzY4IDIwLjg3MzQgMTMuODg4IDIwLjg3MzRDMTQuMDQxNyAyMC44NzM0IDE0LjE0NDEgMjAuODIyMiAxNC4xOTUzIDIwLjY2ODZMMTYuMDkwMiAxNy41OTU4QzE2LjA5MDIgMTcuNTQ0NiAxNi4xNDE0IDE3LjU0NDYgMTYuMTQxNCAxNy40OTM0TDE2LjcwNDcgMTUuNTk4NUwxOC4wMzYzIDE3LjQ0MjJMMTYuNjAyMyAyMS4xMjk1QzE2LjU1MTEgMjEuMjMxOSAxNi41NTExIDIxLjM4NTUgMTYuNjUzNSAyMS40ODhDMTYuNzA0NyAyMS41OTA0IDE2Ljg1ODQgMjEuNjQxNiAxNi45NjA4IDIxLjY0MTZIMTguNDk3MkMxOC42NTA4IDIxLjY0MTYgMTguNzUzMiAyMS41MzkyIDE4Ljg1NTcgMjEuNDM2OEwyMC42OTkzIDE3LjY0N0MyMC43NTA1IDE3LjU0NDYgMjAuNzUwNSAxNy4zOTA5IDIwLjY0ODEgMTcuMjM3M0wxOC44MDQ1IDE0LjY3NjdWMTIuMTY3MkwxOS4yNjU0IDEyLjczMDZDMTkuMzE2NiAxMi43ODE4IDE5LjM2NzggMTIuODMzIDE5LjQ3MDIgMTIuODg0MkwyMi41NDMgMTMuNjUyNEMyMi42NDU0IDEzLjcwMzYgMjIuNzk5MSAxMy42NTI0IDIyLjg1MDMgMTMuNjAxMkMyMi45NTI3IDEzLjU1IDIzLjAwMzkgMTMuMzk2NCAyMy4wMDM5IDEzLjI5MzlWMTEuNzU3NUMyMy4wNTUxIDExLjU1MjcgMjIuOTAxNSAxMS4zOTkxIDIyLjc0NzggMTEuMzk5MVoiIGZpbGw9IiNGRjdDNDQiLz4KPHBhdGggZD0iTTYuMjU3MzMgMTEuNzU3NUM3LjEwNTg1IDExLjc1NzUgNy43OTM3MSAxMS4wNjk2IDcuNzkzNzEgMTAuMjIxMUM3Ljc5MzcxIDkuMzcyNTUgNy4xMDU4NSA4LjY4NDY5IDYuMjU3MzMgOC42ODQ2OUM1LjQwODgxIDguNjg0NjkgNC43MjA5NSA5LjM3MjU1IDQuNzIwOTUgMTAuMjIxMUM0LjcyMDk1IDExLjA2OTYgNS40MDg4MSAxMS43NTc1IDYuMjU3MzMgMTEuNzU3NVoiIGZpbGw9IiNGRjdDNDQiLz4KPC9zdmc+Cg==', false, NULL);
INSERT INTO micadoapp.user_types VALUES (7, 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTEyIDZDMTMuMTA0NiA2IDE0IDUuMTA0NTcgMTQgNEMxNCAyLjg5NTQzIDEzLjEwNDYgMiAxMiAyQzEwLjg5NTQgMiAxMCAyLjg5NTQzIDEwIDRDMTAgNS4xMDQ1NyAxMC44OTU0IDYgMTIgNloiIGZpbGw9IiM5MjVGRkYiLz4KPHBhdGggZD0iTTE1Ljg5IDguMTFDMTUuNSA3LjcyIDE0LjgzIDcgMTMuNTMgN0MxMy4zMiA3IDEyLjExIDcgMTAuOTkgN0M4LjQwODQ3IDYuOTkwNjEgNi4yNzYzNyA1LjAxNjA5IDYuMDI0ODIgMi40OTkyOEM1Ljk5NzM2IDIuMjI0NSA1Ljc3NjE0IDIgNS41IDJINC41QzQuMjIzODYgMiAzLjk5ODEzIDIuMjI0NDIgNC4wMTc3IDIuNDk5ODdDNC4yMTc1NCA1LjMxMjA1IDYuMDg5OTQgNy42NzI1MiA4LjY0NzAxIDguNTkzNEM4Ljg1NDU5IDguNjY4MTUgOSA4Ljg2MTAyIDkgOS4wODE2NVYyMS41QzkgMjEuNzc2MSA5LjIyMzg2IDIyIDkuNSAyMkgxMC41QzEwLjc3NjEgMjIgMTEgMjEuNzc2MSAxMSAyMS41VjE2LjVDMTEgMTYuMjIzOSAxMS4yMjM5IDE2IDExLjUgMTZIMTIuNUMxMi43NzYxIDE2IDEzIDE2LjIyMzkgMTMgMTYuNVYyMS41QzEzIDIxLjc3NjEgMTMuMjIzOSAyMiAxMy41IDIySDE0LjVDMTQuNzc2MSAyMiAxNSAyMS43NzYxIDE1IDIxLjVWMTEuMjU3MUMxNSAxMC44MTE3IDE1LjUzODYgMTAuNTg4NiAxNS44NTM2IDEwLjkwMzZMMTguNTk2NCAxMy42NDY0QzE4Ljc5MTcgMTMuODQxNyAxOS4xMDgzIDEzLjg0MTcgMTkuMzAzNiAxMy42NDY0TDIwLjAwNjggMTIuOTQzMkMyMC4yMDIgMTIuNzQ4MSAyMC4yMDIxIDEyLjQzMTggMjAuMDA3MiAxMi4yMzY0TDE1Ljg5IDguMTFaIiBmaWxsPSIjOTI1RkZGIi8+Cjwvc3ZnPgo=', false, NULL);
INSERT INTO micadoapp.user_types VALUES (9, 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPHBhdGggZD0iTTE4Ljc0MjkgOS4xMzk4OUwxNy45Njc0IDguOTU3NDNDMTcuOTY3NCA4LjYzODExIDE3LjgzMDUgOC4zMTg3OSAxNy42MDI0IDguMDkwN0wxNy41NTY4IDguMDQ1MDhDMTcuMTkxOSA3LjY4MDE1IDE2LjY5MDEgNy43MjU3NiAxNi4yNzk1IDguMTgxOTNMMTYuMDA1OCA4LjQxMDAyTDIuODIyNSA1LjAzNDM1QzIuNjQwMDMgNC45ODg3NCAyLjQ1NzU3IDUuMTI1NTkgMi40MTE5NSA1LjMwODA2QzIuMzY2MzMgNS40OTA1MiAyLjQ1NzU3IDUuNjcyOTkgMi42NDAwMyA1LjcxODYxTDMuNTUyMzggNS45NDY3QzMuMDA0OTcgNi40OTQxIDIuNTQ4OCA3LjQ5NzY4IDIuMTgzODYgOC41MDEyNUMyLjAwMTM5IDguOTU3NDMgMS44NjQ1NCA5LjU5NjA3IDIuMjI5NDggMTAuMDk3OUMyLjU0ODggMTAuNTk5NiAzLjI3ODY3IDEwLjg3MzMgNC4zNzM0OCAxMC45NjQ2SDQuNDE5MUg0LjQ2NDcyQzUuNTU5NTMgMTAuODczMyA2LjI4OTQgMTAuNTk5NiA2LjYwODcyIDEwLjA5NzlDNi45MjgwNCA5LjU5NjA3IDYuNzkxMTkgOC45NTc0MyA2LjY1NDM0IDguNTAxMjVDNi4zODA2NCA3Ljc3MTM4IDYuMTA2OTMgNy4wNDE1MSA1Ljc0MiA2LjQ5NDFMMTAuMjU4MSA3LjYzNDUzQzkuODQ3NTQgNy44MTcgOS42MTk0NSA4LjEzNjMyIDkuNjE5NDUgOC43NzQ5NlYxMy43NDcyQzkuNjE5NDUgMTMuOTI5NyA5LjI1NDUyIDE0LjYxMzkgOC40NzkwMiAxNi44NDkyTDYuNDI2MjUgMTguODU2M0M1Ljk3MDA4IDE5LjMxMjUgNi4wMTU3IDE5Ljk1MTEgNi41MTc0OSAyMC40NTI5TDYuNjA4NzIgMjAuNTQ0MkM3LjExMDUxIDIxLjA0NiA3Ljg4NiAyMS4xMzcyIDguMjk2NTYgMjAuNzI2NkwxMC42MjMgMTguNDAwMkMxMC43NTk5IDE4LjMwODkgMTAuODUxMSAxOC4xNzIxIDEwLjg5NjcgMTcuOTg5NkwxMS41ODEgMTYuMTY0OUwxMi4zMTA5IDE3LjY3MDNWMjAuNTQ0MkMxMi4zMTA5IDIxLjE4MjggMTIuNzY3IDIxLjc3NTggMTMuNDUxMyAyMS43NzU4SDEzLjU4ODFDMTQuMjcyNCAyMS43NzU4IDE1LjAwMjMgMjEuMTgyOCAxNS4wMDIzIDIwLjU0NDJWMTcuMTY4NUMxNS4wMDIzIDE3LjE2ODUgMTQuOTU2NyAxNi44OTQ4IDE0Ljg2NTQgMTYuNzU4TDEzLjU0MjUgMTMuOTI5N0MxMy41NDI1IDEzLjcwMTYgMTMuNTQyNSAxMy4wNjMgMTMuNTQyNSAxMC45NjQ2TDE0LjA4OTkgMTEuNTU3NkMxNC4yNzI0IDExLjc0MDEgMTQuNjM3MyAxMS43ODU3IDE0LjkxMSAxMS43ODU3QzE1LjQ1ODQgMTEuNzg1NyAxNS41OTUzIDExLjY0ODggMTUuNjQwOSAxMS42MDMyTDE3LjY5MzcgOS41NTA0NUwxOC41NjA0IDkuNzc4NTNDMTguNjA2IDkuNzc4NTMgMTguNjA2IDkuNzc4NTMgMTguNjUxNiA5Ljc3ODUzQzE4Ljc4ODUgOS43Nzg1MyAxOC45MjUzIDkuNjg3MyAxOC45NzEgOS41MDQ4M0MxOS4wNjIyIDkuMzY3OTggMTguOTI1MyA5LjE4NTUxIDE4Ljc0MjkgOS4xMzk4OVpNMTQuOTU2NyA5LjQ1OTIxTDE0LjEzNTUgOC42MzgxMUwxNS40NTg0IDguOTU3NDNMMTQuOTU2NyA5LjQ1OTIxWiIgZmlsbD0iI0RGNUZGRiIvPgo8cGF0aCBkPSJNMTMuMjY4OCA3LjA4NzIzQzE0LjQwMjUgNy4wODcyMyAxNS4zMjE2IDYuMTY4MTcgMTUuMzIxNiA1LjAzNDQ2QzE1LjMyMTYgMy45MDA3NSAxNC40MDI1IDIuOTgxNjkgMTMuMjY4OCAyLjk4MTY5QzEyLjEzNTEgMi45ODE2OSAxMS4yMTYxIDMuOTAwNzUgMTEuMjE2MSA1LjAzNDQ2QzExLjIxNjEgNi4xNjgxNyAxMi4xMzUxIDcuMDg3MjMgMTMuMjY4OCA3LjA4NzIzWiIgZmlsbD0iI0RGNUZGRiIvPgo8L3N2Zz4K', false, NULL);


--
-- Data for Name: user_types_translation; Type: TABLE DATA; Schema: micadoapp; Owner: -
--

INSERT INTO micadoapp.user_types_translation VALUES (1, 'it', 'Rifugiato', NULL, NULL);
INSERT INTO micadoapp.user_types_translation VALUES (1, 'en', 'Refugee', NULL, NULL);
INSERT INTO micadoapp.user_types_translation VALUES (1, 'de', NULL, NULL, NULL);
INSERT INTO micadoapp.user_types_translation VALUES (1, 'es', NULL, NULL, NULL);
INSERT INTO micadoapp.user_types_translation VALUES (1, 'nl', NULL, NULL, NULL);
INSERT INTO micadoapp.user_types_translation VALUES (7, 'de', '', '', NULL);
INSERT INTO micadoapp.user_types_translation VALUES (7, 'es', '', '', NULL);
INSERT INTO micadoapp.user_types_translation VALUES (7, 'en', 'Migrant ', '', NULL);
INSERT INTO micadoapp.user_types_translation VALUES (7, 'nl', '', '', NULL);
INSERT INTO micadoapp.user_types_translation VALUES (7, 'it', 'Migrante ', '', NULL);
INSERT INTO micadoapp.user_types_translation VALUES (9, 'de', '', '', NULL);
INSERT INTO micadoapp.user_types_translation VALUES (9, 'it', '', '', NULL);
INSERT INTO micadoapp.user_types_translation VALUES (9, 'en', 'Asylum Seeker', '', NULL);
INSERT INTO micadoapp.user_types_translation VALUES (9, 'es', '', '', NULL);
INSERT INTO micadoapp.user_types_translation VALUES (9, 'nl', '', '', NULL);


--
-- Name: charts_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.charts_id_seq', 22, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.comments_id_seq', 35, true);


--
-- Name: document_document_type_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.document_document_type_seq', 1, true);


--
-- Name: document_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.document_id_seq', 35, true);


--
-- Name: document_pictures_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.document_pictures_id_seq', 58, true);


--
-- Name: document_type_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.document_type_id_seq', 13, true);


--
-- Name: document_type_picture_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.document_type_picture_id_seq', 6, true);


--
-- Name: event_category_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_category_id_seq', 1, false);


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_id_seq', 2, true);


--
-- Name: event_tags_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_tags_id_seq', 1, false);


--
-- Name: event_tags_id_seq1; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_tags_id_seq1', 1, false);


--
-- Name: event_topic_id_event_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_topic_id_event_seq', 1, false);


--
-- Name: event_topic_id_topic_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.event_topic_id_topic_seq', 1, false);


--
-- Name: features_flags_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.features_flags_id_seq', 1, false);


--
-- Name: glossary_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.glossary_id_seq', 14, true);


--
-- Name: individual_intervention_plan_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.individual_intervention_plan_id_seq', 1, false);


--
-- Name: individual_intervention_plan_intervention_intervention_type_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.individual_intervention_plan_intervention_intervention_type_seq', 1, false);


--
-- Name: individual_intervention_plan_interventions_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.individual_intervention_plan_interventions_id_seq', 1, false);


--
-- Name: individual_intervention_plan_interventions_list_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.individual_intervention_plan_interventions_list_id_seq', 1, false);


--
-- Name: intervention_category_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.intervention_category_id_seq', 7, true);


--
-- Name: intervention_processes_intervention_type_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.intervention_processes_intervention_type_seq', 1, false);


--
-- Name: intervention_processes_process_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.intervention_processes_process_id_seq', 1, false);


--
-- Name: intervention_types_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.intervention_types_id_seq', 5, true);


--
-- Name: picture_hotspot_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.picture_hotspot_id_seq', 1, false);


--
-- Name: process_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_id_seq', 48, true);


--
-- Name: process_topic_id_process_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_topic_id_process_seq', 1, false);


--
-- Name: process_topic_id_topic_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_topic_id_topic_seq', 1, false);


--
-- Name: process_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_translation_id_seq', 1, false);


--
-- Name: process_users_id_process_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_users_id_process_seq', 1, false);


--
-- Name: process_users_id_user_types_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.process_users_id_user_types_seq', 1, false);


--
-- Name: ratings_content_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.ratings_content_id_seq', 1, false);


--
-- Name: topic_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.topic_id_seq', 4, true);


--
-- Name: topic_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.topic_translation_id_seq', 1, false);


--
-- Name: user_types_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.user_types_id_seq', 9, true);


--
-- Name: user_types_translation_id_seq; Type: SEQUENCE SET; Schema: micadoapp; Owner: -
--

SELECT pg_catalog.setval('micadoapp.user_types_translation_id_seq', 1, false);


--
-- Name: charts charts_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.charts
    ADD CONSTRAINT charts_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: comments_translation comments_translation_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.comments_translation
    ADD CONSTRAINT comments_translation_pkey PRIMARY KEY (id, lang);


--
-- Name: document_pictures document_pictures_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_pictures
    ADD CONSTRAINT document_pictures_pk PRIMARY KEY (id);


--
-- Name: document document_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_pk PRIMARY KEY (id);


--
-- Name: document_type_picture document_type_picture_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_picture
    ADD CONSTRAINT document_type_picture_pk PRIMARY KEY (id);


--
-- Name: document_type document_type_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type
    ADD CONSTRAINT document_type_pkey PRIMARY KEY (id);


--
-- Name: document_type_translation document_type_translation_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_translation
    ADD CONSTRAINT document_type_translation_pkey PRIMARY KEY (id, lang);


--
-- Name: event_category event_category_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_category
    ADD CONSTRAINT event_category_pkey PRIMARY KEY (id);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: event_tags event_tags_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_tags
    ADD CONSTRAINT event_tags_pk PRIMARY KEY (id);


--
-- Name: event_tags_translation event_tags_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_tags_translation
    ADD CONSTRAINT event_tags_translation_pk PRIMARY KEY (id, lang);


--
-- Name: features_flags features_flag_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags
    ADD CONSTRAINT features_flag_pkey PRIMARY KEY (id);


--
-- Name: features_flags_translation features_flags_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags_translation
    ADD CONSTRAINT features_flags_translation_pk PRIMARY KEY (id, lang);


--
-- Name: glossary glossary_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.glossary
    ADD CONSTRAINT glossary_pk PRIMARY KEY (id);


--
-- Name: glossary_translation glossary_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.glossary_translation
    ADD CONSTRAINT glossary_translation_pk PRIMARY KEY (id, lang);


--
-- Name: individual_intervention_plan_interventions individual_intervention_plan_interventions_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions
    ADD CONSTRAINT individual_intervention_plan_interventions_pk PRIMARY KEY (id);


--
-- Name: individual_intervention_plan individual_intervention_plan_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan
    ADD CONSTRAINT individual_intervention_plan_pkey PRIMARY KEY (id);


--
-- Name: intervention_category intervention_category_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_category
    ADD CONSTRAINT intervention_category_pk PRIMARY KEY (id);


--
-- Name: intervention_category_translation intervention_category_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_category_translation
    ADD CONSTRAINT intervention_category_translation_pk PRIMARY KEY (id, lang);


--
-- Name: intervention_type_validator intervention_type_validator_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_type_validator
    ADD CONSTRAINT intervention_type_validator_pk PRIMARY KEY (tenant_id, intervention_type_id);


--
-- Name: intervention_types intervention_types_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types
    ADD CONSTRAINT intervention_types_pkey PRIMARY KEY (id);


--
-- Name: intervention_types_translation intervention_types_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types_translation
    ADD CONSTRAINT intervention_types_translation_pk PRIMARY KEY (id, lang);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (lang);


--
-- Name: migrant_app_config migrant_app_config_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.migrant_app_config
    ADD CONSTRAINT migrant_app_config_pkey PRIMARY KEY (id);


--
-- Name: picture_hotspot picture_hotspot_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.picture_hotspot
    ADD CONSTRAINT picture_hotspot_pk PRIMARY KEY (id);


--
-- Name: picture_hotspot_translation picture_hotspot_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.picture_hotspot_translation
    ADD CONSTRAINT picture_hotspot_translation_pk PRIMARY KEY (pht_id, lang);


--
-- Name: process_comments process_comment_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_comments
    ADD CONSTRAINT process_comment_pkey PRIMARY KEY (idcomment, idprocess);


--
-- Name: process process_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process
    ADD CONSTRAINT process_pkey PRIMARY KEY (id);


--
-- Name: process_topic process_topic_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_topic
    ADD CONSTRAINT process_topic_pk PRIMARY KEY (id_process, id_topic);


--
-- Name: process_translation process_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_translation
    ADD CONSTRAINT process_translation_pk PRIMARY KEY (id, lang);


--
-- Name: process_users process_users_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_users
    ADD CONSTRAINT process_users_pk PRIMARY KEY (id_process, id_user_types);


--
-- Name: settings settings_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.settings
    ADD CONSTRAINT settings_pk PRIMARY KEY (key);


--
-- Name: step_document step_document_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_document
    ADD CONSTRAINT step_document_pk PRIMARY KEY (id_document, id_step);


--
-- Name: step_link step_link_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_link
    ADD CONSTRAINT step_link_pk PRIMARY KEY (id);


--
-- Name: step_link_translation step_link_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_link_translation
    ADD CONSTRAINT step_link_translation_pk PRIMARY KEY (lang, id);


--
-- Name: step step_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step
    ADD CONSTRAINT step_pk PRIMARY KEY (id);


--
-- Name: step_translation step_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_translation
    ADD CONSTRAINT step_translation_pk PRIMARY KEY (id, lang);


--
-- Name: topic topic_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic
    ADD CONSTRAINT topic_pkey PRIMARY KEY (id);


--
-- Name: topic_translation topic_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic_translation
    ADD CONSTRAINT topic_translation_pk PRIMARY KEY (id, lang);


--
-- Name: user_types user_types_pkey; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types
    ADD CONSTRAINT user_types_pkey PRIMARY KEY (id);


--
-- Name: user_types_translation user_types_translation_pk; Type: CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types_translation
    ADD CONSTRAINT user_types_translation_pk PRIMARY KEY (id, lang);


--
-- Name: comments_translation comment_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.comments_translation
    ADD CONSTRAINT comment_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.comments(id) NOT VALID;


--
-- Name: comments_translation comment_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.comments_translation
    ADD CONSTRAINT comment_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) NOT VALID;


--
-- Name: document document_ask_validate_by_tenant_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_ask_validate_by_tenant_fkey FOREIGN KEY (ask_validate_by_tenant) REFERENCES wso2_shared.um_tenant(um_id);


--
-- Name: document document_document_type_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_document_type_fkey FOREIGN KEY (document_type) REFERENCES micadoapp.document_type(id);


--
-- Name: document_pictures document_pictures_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_pictures
    ADD CONSTRAINT document_pictures_fk FOREIGN KEY (doc_id) REFERENCES micadoapp.document(id) ON DELETE CASCADE;


--
-- Name: document_type_picture document_type_picture_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_picture
    ADD CONSTRAINT document_type_picture_fk FOREIGN KEY (document_type_id) REFERENCES micadoapp.document_type(id);


--
-- Name: document_type_translation document_type_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_translation
    ADD CONSTRAINT document_type_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.document_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: document_type_translation document_type_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_translation
    ADD CONSTRAINT document_type_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: document_type_validator document_type_validator_document_type_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_validator
    ADD CONSTRAINT document_type_validator_document_type_id_fkey FOREIGN KEY (document_type_id) REFERENCES micadoapp.document_type(id);


--
-- Name: document_type_validator document_type_validator_validable_by_tenant_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document_type_validator
    ADD CONSTRAINT document_type_validator_validable_by_tenant_fkey FOREIGN KEY (validable_by_tenant) REFERENCES wso2_shared.um_tenant(um_id);


--
-- Name: document document_um_user_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_um_user_id_fkey FOREIGN KEY (user_id, user_tenant) REFERENCES wso2_shared.um_user(um_id, um_tenant_id);


--
-- Name: document document_validated_um_user_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.document
    ADD CONSTRAINT document_validated_um_user_id_fkey FOREIGN KEY (validated_by_user, validated_by_tenant) REFERENCES wso2_shared.um_user(um_id, um_tenant_id);


--
-- Name: event_category_translation event_category_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_category_translation
    ADD CONSTRAINT event_category_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.event_category(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_category_translation event_category_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_category_translation
    ADD CONSTRAINT event_category_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event event_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event
    ADD CONSTRAINT event_fk FOREIGN KEY (category) REFERENCES micadoapp.event_category(id);


--
-- Name: event_tags event_tags_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_tags
    ADD CONSTRAINT event_tags_fk FOREIGN KEY (event_id) REFERENCES micadoapp.event(id);


--
-- Name: event_tags_translation event_tags_translation_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_tags_translation
    ADD CONSTRAINT event_tags_translation_fk FOREIGN KEY (id) REFERENCES micadoapp.event_tags(id);


--
-- Name: event_tags_translation event_tags_translation_fk_1; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_tags_translation
    ADD CONSTRAINT event_tags_translation_fk_1 FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang);


--
-- Name: event_topic event_topic_id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_topic
    ADD CONSTRAINT event_topic_id_process_fkey FOREIGN KEY (id_event) REFERENCES micadoapp.event(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_topic event_topic_id_topic_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_topic
    ADD CONSTRAINT event_topic_id_topic_fkey FOREIGN KEY (id_topic) REFERENCES micadoapp.topic(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_translation event_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_translation
    ADD CONSTRAINT event_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.event(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_translation event_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.event_translation
    ADD CONSTRAINT event_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: features_flags_translation features_flags_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags_translation
    ADD CONSTRAINT features_flags_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.features_flags(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: features_flags_translation features_flags_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.features_flags_translation
    ADD CONSTRAINT features_flags_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: glossary_translation glossary_translation_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.glossary_translation
    ADD CONSTRAINT glossary_translation_fk FOREIGN KEY (id) REFERENCES micadoapp.glossary(id);


--
-- Name: glossary_translation glossary_translation_fk_1; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.glossary_translation
    ADD CONSTRAINT glossary_translation_fk_1 FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang);


--
-- Name: process_comments id_comment_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_comments
    ADD CONSTRAINT id_comment_fkey FOREIGN KEY (idcomment) REFERENCES micadoapp.comments(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: process_comments id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_comments
    ADD CONSTRAINT id_process_fkey FOREIGN KEY (idprocess) REFERENCES micadoapp.process(id) NOT VALID;


--
-- Name: individual_intervention_plan_interventions individual_intervention_plan_interventions_intervention_type_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions
    ADD CONSTRAINT individual_intervention_plan_interventions_intervention_type_fk FOREIGN KEY (intervention_type) REFERENCES micadoapp.intervention_types(id);


--
-- Name: individual_intervention_plan_interventions individual_intervention_plan_interventions_list_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions
    ADD CONSTRAINT individual_intervention_plan_interventions_list_id_fkey FOREIGN KEY (list_id) REFERENCES micadoapp.individual_intervention_plan(id);


--
-- Name: individual_intervention_plan_interventions individual_intervention_plan_interventions_um_user_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan_interventions
    ADD CONSTRAINT individual_intervention_plan_interventions_um_user_id_fkey FOREIGN KEY (validating_user_id, validating_user_tenant) REFERENCES wso2_shared.um_user(um_id, um_tenant_id);


--
-- Name: individual_intervention_plan individual_intervention_plan_um_user_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.individual_intervention_plan
    ADD CONSTRAINT individual_intervention_plan_um_user_id_fkey FOREIGN KEY (user_id, user_tenant) REFERENCES wso2_shared.um_user(um_id, um_tenant_id);


--
-- Name: intervention_category_translation intervention_category_id_translation_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_category_translation
    ADD CONSTRAINT intervention_category_id_translation_fk FOREIGN KEY (id) REFERENCES micadoapp.intervention_category(id);


--
-- Name: intervention_category_translation intervention_category_translation_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_category_translation
    ADD CONSTRAINT intervention_category_translation_fk FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang);


--
-- Name: intervention_processes intervention_processes_intervention_type_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_processes
    ADD CONSTRAINT intervention_processes_intervention_type_fkey FOREIGN KEY (intervention_type) REFERENCES micadoapp.intervention_types(id);


--
-- Name: intervention_processes intervention_processes_process_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_processes
    ADD CONSTRAINT intervention_processes_process_id_fkey FOREIGN KEY (process_id) REFERENCES micadoapp.process(id);


--
-- Name: intervention_type_validator intervention_type_validator_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_type_validator
    ADD CONSTRAINT intervention_type_validator_fk FOREIGN KEY (intervention_type_id) REFERENCES micadoapp.intervention_types(id);


--
-- Name: intervention_types intervention_types_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types
    ADD CONSTRAINT intervention_types_fk FOREIGN KEY (category_type) REFERENCES micadoapp.intervention_category(id);


--
-- Name: intervention_types_translation intervention_types_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types_translation
    ADD CONSTRAINT intervention_types_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.intervention_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: intervention_types_translation intervention_types_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.intervention_types_translation
    ADD CONSTRAINT intervention_types_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: picture_hotspot picture_hotspot_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.picture_hotspot
    ADD CONSTRAINT picture_hotspot_fk FOREIGN KEY (picture_id) REFERENCES micadoapp.document_type_picture(id);


--
-- Name: picture_hotspot_translation picture_hotspot_translation_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.picture_hotspot_translation
    ADD CONSTRAINT picture_hotspot_translation_fk FOREIGN KEY (pht_id) REFERENCES micadoapp.picture_hotspot(id);


--
-- Name: picture_hotspot_translation picture_hotspot_translation_fk_1; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.picture_hotspot_translation
    ADD CONSTRAINT picture_hotspot_translation_fk_1 FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON DELETE CASCADE;


--
-- Name: process_topic process_topic_id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_topic
    ADD CONSTRAINT process_topic_id_process_fkey FOREIGN KEY (id_process) REFERENCES micadoapp.process(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_topic process_topic_id_topic_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_topic
    ADD CONSTRAINT process_topic_id_topic_fkey FOREIGN KEY (id_topic) REFERENCES micadoapp.topic(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_translation process_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_translation
    ADD CONSTRAINT process_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.process(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_translation process_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_translation
    ADD CONSTRAINT process_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_users process_users_id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_users
    ADD CONSTRAINT process_users_id_process_fkey FOREIGN KEY (id_process) REFERENCES micadoapp.process(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: process_users process_users_id_user_types_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.process_users
    ADD CONSTRAINT process_users_id_user_types_fkey FOREIGN KEY (id_user_types) REFERENCES micadoapp.user_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ratings ratings_um_user_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.ratings
    ADD CONSTRAINT ratings_um_user_id_fkey FOREIGN KEY (user_id, user_tenant) REFERENCES wso2_shared.um_user(um_id, um_tenant_id);


--
-- Name: step_document step_document_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_document
    ADD CONSTRAINT step_document_fk FOREIGN KEY (id_step) REFERENCES micadoapp.step(id);


--
-- Name: step_document step_document_id_document_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_document
    ADD CONSTRAINT step_document_id_document_fkey FOREIGN KEY (id_document) REFERENCES micadoapp.document_type(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: step step_id_process_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step
    ADD CONSTRAINT step_id_process_fkey FOREIGN KEY (id_process) REFERENCES micadoapp.process(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: step_link step_link_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_link
    ADD CONSTRAINT step_link_fk FOREIGN KEY (id_process) REFERENCES micadoapp.process(id);


--
-- Name: step_link step_link_from_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_link
    ADD CONSTRAINT step_link_from_fk FOREIGN KEY (from_step) REFERENCES micadoapp.step(id);


--
-- Name: step_link step_link_to_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_link
    ADD CONSTRAINT step_link_to_fk FOREIGN KEY (to_step) REFERENCES micadoapp.step(id);


--
-- Name: step_link_translation step_link_translation_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_link_translation
    ADD CONSTRAINT step_link_translation_fk FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang);


--
-- Name: step_link_translation step_link_translation_step_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_link_translation
    ADD CONSTRAINT step_link_translation_step_fk FOREIGN KEY (id) REFERENCES micadoapp.step_link(id);


--
-- Name: step_translation step_translation_fk; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_translation
    ADD CONSTRAINT step_translation_fk FOREIGN KEY (id) REFERENCES micadoapp.step(id);


--
-- Name: step_translation step_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.step_translation
    ADD CONSTRAINT step_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: topic_translation topic_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic_translation
    ADD CONSTRAINT topic_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.topic(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: topic_translation topic_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.topic_translation
    ADD CONSTRAINT topic_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_types_translation user_types_translation_id_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types_translation
    ADD CONSTRAINT user_types_translation_id_fkey FOREIGN KEY (id) REFERENCES micadoapp.user_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_types_translation user_types_translation_lang_fkey; Type: FK CONSTRAINT; Schema: micadoapp; Owner: -
--

ALTER TABLE ONLY micadoapp.user_types_translation
    ADD CONSTRAINT user_types_translation_lang_fkey FOREIGN KEY (lang) REFERENCES micadoapp.languages(lang) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

