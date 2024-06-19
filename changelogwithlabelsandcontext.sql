--liquibase formatted sql

--changeset Liquibase Pro User:createPrimaryTable labels:example-label
CREATE TABLE PRIMARY_TABLE (ID NCHAR(10) PRIMARY KEY);

--changeset Liquibase Pro User:createSecondaryTable labels:example-label context:example-context
--rollback DROP TABLE SECONDARY_TABLE; COMMIT;
CREATE TABLE SECONDARY_TABLE (ID NCHAR(10), TEXT_COLUMN VARCHAR(255), FK_COL NCHAR(10));

--changeset Liquibase Pro User:createView context:example-context
--rollback DROP VIEW VIEW1; COMMIT;
CREATE VIEW VIEW1 AS SELECT ID FROM PRIMARY_TABLE;

--changeset Liquibase Pro User:createProcedure
--rollback DROP PROCEDURE PROCEDURE1; COMMIT;
CREATE PROCEDURE PROCEDURE1()
BEGIN
    select 'HELLO WORLD' as ' ';
END
