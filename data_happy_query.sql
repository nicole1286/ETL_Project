-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/q9s8Vj
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Governments" (
    "Country" varchar   NOT NULL,
    "Type" varchar   NOT NULL,
    "Head" varchar   NOT NULL,
    "Basis_legit" varchar   NOT NULL,
    CONSTRAINT "pk_Governments" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "Happiness" (
    "country" varchar   NOT NULL,
    "region" varchar   NOT NULL,
    "rank" integer   NOT NULL,
    "happy_score" float   NOT NULL,
    CONSTRAINT "pk_Happiness" PRIMARY KEY (
        "rank"
     )
);

CREATE TABLE "Freedom" (
    "country" varchar   NOT NULL,
    "freedom_score" float   NOT NULL,
    "rank" integer   NOT NULL
);

ALTER TABLE "Happiness" ADD CONSTRAINT "fk_Happiness_country" FOREIGN KEY("country")
REFERENCES "Governments" ("Country");

ALTER TABLE "Freedom" ADD CONSTRAINT "fk_Freedom_country" FOREIGN KEY("country")
REFERENCES "Governments" ("Country");

select * from governments
select * from happiness
select * from freedom where freedom_score is NULL;

--Remove NULLS from freedom
DELETE FROM freedom where freedom_score is NULL;