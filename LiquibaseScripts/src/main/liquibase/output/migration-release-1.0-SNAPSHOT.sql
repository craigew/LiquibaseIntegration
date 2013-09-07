-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: src/main/liquibase/changelog/db.changelog-master.xml
-- Ran at: 9/7/13 4:21 PM
-- Against: PROD@jdbc:oracle:thin:@192.168.0.11:1521/xe
-- Liquibase version: 2.0.3
-- *********************************************************************

-- Create Database Lock Table
CREATE TABLE DATABASECHANGELOGLOCK (ID INTEGER NOT NULL, LOCKED NUMBER(1) NOT NULL, LOCKGRANTED TIMESTAMP, LOCKEDBY VARCHAR2(255), CONSTRAINT PK_DATABASECHANGELOGLOCK PRIMARY KEY (ID));

INSERT INTO DATABASECHANGELOGLOCK (ID, LOCKED) VALUES (1, 0);

-- Lock Database
-- Create Database Change Log Table
CREATE TABLE DATABASECHANGELOG (ID VARCHAR2(63) NOT NULL, AUTHOR VARCHAR2(63) NOT NULL, FILENAME VARCHAR2(200) NOT NULL, DATEEXECUTED TIMESTAMP NOT NULL, ORDEREXECUTED INTEGER NOT NULL, EXECTYPE VARCHAR2(10) NOT NULL, MD5SUM VARCHAR2(35), DESCRIPTION VARCHAR2(255), COMMENTS VARCHAR2(255), TAG VARCHAR2(255), LIQUIBASE VARCHAR2(20), CONSTRAINT PK_DATABASECHANGELOG PRIMARY KEY (ID, AUTHOR, FILENAME));

-- Changeset src/main/liquibase/changelog/db.changelog-13.8.xml::8.0_1::cw::(Checksum: 3:57e6753706504fe0b0d299d08d736861)
CREATE TABLE person (address VARCHAR2(255));

INSERT INTO DATABASECHANGELOG (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('cw', '', SYSTIMESTAMP, 'Create Table', 'EXECUTED', 'src/main/liquibase/changelog/db.changelog-13.8.xml', '8.0_1', '2.0.3', '3:57e6753706504fe0b0d299d08d736861', 1);

