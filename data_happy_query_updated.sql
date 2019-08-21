CREATE TABLE governments (
    country varchar   NOT NULL,
    gov_type varchar   NOT NULL,
    head varchar   NOT NULL,
    basis_legit varchar   NOT NULL,
    CONSTRAINT pk_Governments PRIMARY KEY (
        country
     )
);

CREATE TABLE happiness (
	country varchar,
	region varchar,
	happy_rank int,
	happy_score float);
	
CREATE TABLE freedom (
	year text,
	country varchar,
	freedom_score float,
	freedom_rank float
	);

select * from governments

select * from freedom

select * from happiness
-- Combine happy and freedom tables
select h.country, h.region, h.happy_rank, h.happy_score,
	f.freedom_score, f.freedom_rank
from happiness h
left join freedom f
on h.country=f.country
order by h.happy_rank;

DELETE FROM freedom
		