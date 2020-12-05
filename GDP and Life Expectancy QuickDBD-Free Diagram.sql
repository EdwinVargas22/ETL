-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/COE1OH
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Physical

CREATE TABLE "GDP" (
    "2008" VARCHAR(100)   NOT NULL,
    "2009" VARCHAR(100)   NOT NULL,
    "2010" VARCHAR(100)   NOT NULL,
    "2011" VARCHAR(100)   NOT NULL,
    "id" serial   NOT NULL,
    "Country_Name" VARCHAR(60)   NOT NULL,
    "Country_Code" VARCHAR(6)   NOT NULL,
    CONSTRAINT "pk_GDP" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Life_Expectancy" (
    "2008" VARCHAR(100)   NOT NULL,
    "2009" VARCHAR(100)   NOT NULL,
    "2010" VARCHAR(100)   NOT NULL,
    "2011" VARCHAR(100)   NOT NULL,
    "id" serial   NOT NULL,
    "Country_Name" VARCHAR(60)   NOT NULL,
    "Country_Code" VARCHAR(6)   NOT NULL,
    CONSTRAINT "pk_Life_Expectancy" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "GDP_Life" (
    "id" serial   NOT NULL,
    "Country_Name" VARCHAR(60)   NOT NULL,
    "Country_Code" VARCHAR(6)   NOT NULL,
    "2008_GDP_Dollars" VARCHAR(100)   NOT NULL,
    "2009_GDP_Dollars" VARCHAR(100)   NOT NULL,
    "2010_GDP_Dollars" VARCHAR(100)   NOT NULL,
    "2011_GDP_Dollars" VARCHAR(100)   NOT NULL,
    "2008_Life_Expectancy_Year" VARCHAR(100)   NOT NULL,
    "2009_Life_Expectancy_Year" VARCHAR(100)   NOT NULL,
    "2010_Life_Expectancy_Year" VARCHAR(100)   NOT NULL,
    "2011_Life_Expectancy_Year" VARCHAR(100)   NOT NULL,
    CONSTRAINT "pk_GDP_Life" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "GDP" ADD CONSTRAINT "fk_GDP_2011" FOREIGN KEY("2011")
REFERENCES "Life_Expectancy" ("2011");

ALTER TABLE "Life_Expectancy" ADD CONSTRAINT "fk_Life_Expectancy_2010" FOREIGN KEY("2010")
REFERENCES "GDP_Life" ("Country_Name");

