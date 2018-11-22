CREATE DATABASE "inventory_review";

CREATE TABLE "inventory" (
	"id" SERIAL PRIMARY KEY,
    "name" VARCHAR(60) NOT NULL,
	"description" VARCHAR(180) NOT NULL,
	"color" VARCHARS(20) NOT NULL,
	"size" VARCHARS(20) NOT NULL,
);

INSERT INTO inventory ("name", "description", "color", "size") 
VALUES ('Flake of Snow', 'Precious', 'White', 'Tiny');
INSERT INTO inventory ("name", "description", "color", "size") 
VALUES ('Pile of Snow', '', '', '');
INSERT INTO inventory ("name", "description", "color", "size") 
VALUES ('', '', '', '');
INSERT INTO inventory ("name", "description", "color", "size") 
VALUES ('', '', '', '');
INSERT INTO inventory ("name", "description", "color", "size") 
VALUES ('Universe of Snow', '', '', '');
