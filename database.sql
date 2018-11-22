CREATE DATABASE "inventory_review";

CREATE TABLE "inventory" (
	"id" SERIAL PRIMARY KEY,
    "name" VARCHAR(60) NOT NULL,
	"description" VARCHAR(180) NOT NULL,
	"color" VARCHARS(20) NOT NULL,
	"size" VARCHARS(20) NOT NULL,
);

INSERT INTO koalas ("name", "gender", "age", "ready_to_transfer", "notes") 
VALUES ('Scotty', ' M', '4', 'TRUE', 'Guatemala');


