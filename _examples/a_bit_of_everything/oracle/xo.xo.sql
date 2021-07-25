-- SQL Schema template for the a_bit_of_everything schema.
-- Generated on Sun Jul 25 07:09:28 WIB 2021 by xo.

CREATE TABLE a_bit_of_everything (
    a_bool NUMBER(1) NOT NULL,
    a_bool_nullable NUMBER(1),
    a_blob BLOB NOT NULL,
    a_blob_nullable BLOB,
    a_char CHAR(255) NOT NULL,
    a_char_nullable CHAR(255),
    a_character CHAR(255) NOT NULL,
    a_character_nullable CHAR(255),
    a_clob CLOB NOT NULL,
    a_clob_nullable CLOB,
    a_date DATE NOT NULL,
    a_date_nullable DATE,
    a_double_precision FLOAT NOT NULL,
    a_double_precision_nullable FLOAT,
    a_decimal NUMBER NOT NULL,
    a_decimal_nullable NUMBER,
    a_float FLOAT NOT NULL,
    a_float_nullable FLOAT,
    a_int NUMBER NOT NULL,
    a_int_nullable NUMBER,
    a_integer NUMBER NOT NULL,
    a_integer_nullable NUMBER,
    a_long_raw LONG RAW NOT NULL,
    a_nchar NCHAR NOT NULL,
    a_nchar_nullable NCHAR,
    a_nclob NCLOB NOT NULL,
    a_nclob_nullable NCLOB,
    a_number NUMBER(6) NOT NULL,
    a_number_nullable NUMBER(6),
    a_numeric NUMBER NOT NULL,
    a_numeric_nullable NUMBER,
    a_nvarchar2 NVARCHAR2 NOT NULL,
    a_nvarchar2_nullable NVARCHAR2,
    a_raw RAW NOT NULL,
    a_raw_nullable RAW,
    a_real FLOAT NOT NULL,
    a_real_nullable FLOAT,
    a_rowid ROWID NOT NULL,
    a_rowid_nullable ROWID,
    a_smallint NUMBER NOT NULL,
    a_smallint_nullable NUMBER,
    a_timestamp TIMESTAMP(6) NOT NULL,
    a_timestamp_nullable TIMESTAMP(6),
    a_timestamp_with_local_time_zone TIMESTAMP WITH LOCAL TIME ZONE(6) NOT NULL,
    a_timestamp_with_local_time_zone_nullable TIMESTAMP WITH LOCAL TIME ZONE(6),
    a_timestamp_with_time_zone TIMESTAMP WITH TIME ZONE(6) NOT NULL,
    a_timestamp_with_time_zone_nullable TIMESTAMP WITH TIME ZONE(6),
    a_varchar VARCHAR2(255) NOT NULL,
    a_varchar_nullable VARCHAR2(255),
    a_varchar2 VARCHAR2(255) NOT NULL,
    a_varchar2_nullable VARCHAR2(255),
    a_xmltype XMLTYPE NOT NULL,
    a_xmltype_nullable XMLTYPE
);


CREATE TABLE a_foreign_key (
    a_key NUMBER CONSTRAINT a_key_fkey REFERENCES a_primary (a_key)
);


CREATE TABLE a_foreign_key_composite (
    a_key1 NUMBER,
    a_key2 NUMBER,
    CONSTRAINT a_foreign_key_composite_fkey FOREIGN KEY (a_key1, a_key2) REFERENCES a_primary_composite (a_key1, a_key2)
);


CREATE TABLE a_index (
    a_key NUMBER
);

CREATE INDEX a_index_idx ON a_index (a_key);

CREATE TABLE a_index_composite (
    a_key1 NUMBER,
    a_key2 NUMBER
);

CREATE INDEX a_index_composite_idx ON a_index_composite (a_key1, a_key2);

CREATE TABLE a_manual_table (
    a_text NVARCHAR2
);


CREATE TABLE a_primary (
    a_key NUMBER NOT NULL,
    CONSTRAINT a_primary_pkey UNIQUE (a_key)
);


CREATE TABLE a_primary_composite (
    a_key1 NUMBER NOT NULL,
    a_key2 NUMBER NOT NULL,
    CONSTRAINT a_primary_composite_pkey UNIQUE (a_key1, a_key2)
);


CREATE TABLE a_primary_multi (
    a_key NUMBER NOT NULL,
    a_text NVARCHAR2,
    CONSTRAINT a_primary_multi_pkey UNIQUE (a_key)
);


CREATE TABLE a_sequence (
    a_seq NUMBER GENERATED ALWAYS AS IDENTITY,
    CONSTRAINT a_seq_pkey UNIQUE (a_seq)
);


CREATE TABLE a_sequence_multi (
    a_seq NUMBER GENERATED ALWAYS AS IDENTITY,
    a_text NVARCHAR2
);


CREATE TABLE a_unique_index (
    a_key NUMBER,
    CONSTRAINT a_unique_index_idx UNIQUE (a_key)
);


CREATE TABLE a_unique_index_composite (
    a_key1 NUMBER,
    a_key2 NUMBER,
    CONSTRAINT a_unique_index_composite_idx UNIQUE (a_key1, a_key2)
);


CREATE VIEW a_view_of_everything AS
SELECT "A_BOOL","A_BOOL_NULLABLE","A_BLOB","A_BLOB_NULLABLE","A_CHAR","A_CHAR_NULLABLE","A_CHARACTER","A_CHARACTER_NULLABLE","A_CLOB","A_CLOB_NULLABLE","A_DATE","A_DATE_NULLABLE","A_DOUBLE_PRECISION","A_DOUBLE_PRECISION_NULLABLE","A_DECIMAL","A_DECIMAL_NULLABLE","A_FLOAT","A_FLOAT_NULLABLE","A_INT","A_INT_NULLABLE","A_INTEGER","A_INTEGER_NULLABLE","A_LONG_RAW","A_NCHAR","A_NCHAR_NULLABLE","A_NCLOB","A_NCLOB_NULLABLE","A_NUMBER","A_NUMBER_NULLABLE","A_NUMERIC","A_NUMERIC_NULLABLE","A_NVARCHAR2","A_NVARCHAR2_NULLABLE","A_RAW","A_RAW_NULLABLE","A_REAL","A_REAL_NULLABLE","A_ROWID","A_ROWID_NULLABLE","A_SMALLINT","A_SMALLINT_NULLABLE","A_TIMESTAMP","A_TIMESTAMP_NULLABLE","A_TIMESTAMP_WITH_LOCAL_TIME_ZONE","A_TIMESTAMP_WITH_LOCAL_TIME_ZONE_NULLABLE","A_TIMESTAMP_WITH_TIME_ZONE","A_TIMESTAMP_WITH_TIME_ZONE_NULLABLE","A_VARCHAR","A_VARCHAR_NULLABLE","A_VARCHAR2","A_VARCHAR2_NULLABLE","A_XMLTYPE","A_XMLTYPE_NULLABLE" FROM a_bit_of_everything;

CREATE VIEW a_view_of_everything_some AS
SELECT a_bool, a_nclob FROM a_bit_of_everything;

CREATE PROCEDURE a_0_in_0_out AS
BEGIN
  null\;
END\;;

CREATE PROCEDURE a_0_in_1_out(a_return OUT INTEGER) AS
BEGIN
  SELECT 10 INTO a_return FROM dual\;
END\;;

CREATE PROCEDURE a_1_in_0_out(a_param IN INTEGER) AS
BEGIN
  null\;
END\;;

CREATE PROCEDURE a_1_in_1_out(a_param IN INTEGER, a_return OUT INTEGER) AS
BEGIN
  SELECT a_param INTO a_return FROM dual\;
END\;;

CREATE PROCEDURE a_2_in_2_out(param_one IN INTEGER, param_two IN INTEGER, return_one OUT INTEGER, return_two OUT INTEGER) AS
BEGIN
  SELECT param_one, param_two INTO return_one, return_two FROM dual\;
END\;;

CREATE FUNCTION a_func_0_in RETURN INTEGER AS
BEGIN
  RETURN 10\;
end\;;

CREATE FUNCTION a_func_1_in(a_param IN INTEGER) RETURN INTEGER AS
BEGIN
  RETURN a_param\;
END\;;

CREATE FUNCTION a_func_2_in(param_one IN INTEGER, param_two IN INTEGER) RETURN INTEGER AS
BEGIN
  RETURN param_one + param_two\;
END\;;
