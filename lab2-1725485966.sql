CREATE TABLE IF NOT EXISTS "Name" (
	"fips" varchar(4) NOT NULL,
	"name" varchar(100) NOT NULL UNIQUE,
	PRIMARY KEY ("fips")
);

CREATE TABLE IF NOT EXISTS "income" (
	"flips" varchar(4) NOT NULL,
	"income" bigint NOT NULL,
	"year" bigint NOT NULL,
	PRIMARY KEY ("flips", "year")
);

CREATE TABLE IF NOT EXISTS "population" (
	"fips" varchar(255) NOT NULL,
	"pop" bigint NOT NULL,
	"year" bigint NOT NULL,
	PRIMARY KEY ("fips", "year")
);


ALTER TABLE "income" ADD CONSTRAINT "income_fk0" FOREIGN KEY ("flips") REFERENCES "Name"("fips");
ALTER TABLE "population" ADD CONSTRAINT "population_fk0" FOREIGN KEY ("fips") REFERENCES "Name"("fips");