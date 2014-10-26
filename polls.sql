BEGIN;
DROP TABLE "polls_choice";
DROP TABLE "polls_poll";
COMMIT;
BEGIN;
CREATE TABLE "polls_poll" (
    "id" integer NOT NULL PRIMARY KEY,
    "question" varchar(200) NOT NULL,
    "pub_date" datetime NOT NULL
)
;
CREATE TABLE "polls_choice" (
    "id" integer NOT NULL PRIMARY KEY,
    "poll_id" integer NOT NULL REFERENCES "polls_poll" ("id"),
    "choice" varchar(200) NOT NULL,
    "votes" integer NOT NULL
)
;
CREATE INDEX "polls_choice_763e883" ON "polls_choice" ("poll_id");
COMMIT;
