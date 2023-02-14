--
-- Class Post as table posts
--

CREATE TABLE "posts" (
  "id" serial,
  "title" text NOT NULL,
  "subtitle" text NOT NULL,
  "count" integer NOT NULL
);

ALTER TABLE ONLY "posts"
  ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


