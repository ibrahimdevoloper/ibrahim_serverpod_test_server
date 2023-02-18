--
-- Class Post as table posts
--

CREATE TABLE "posts" (
  "id" serial,
  "title" text NOT NULL,
  "subtitle" text NOT NULL,
  "count" integer,
  "commentCount" integer
);

ALTER TABLE ONLY "posts"
  ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Class Comment as table comments
--

CREATE TABLE "comments" (
  "id" serial,
  "comment" text NOT NULL,
  "postId" integer NOT NULL
);

ALTER TABLE ONLY "comments"
  ADD CONSTRAINT comments_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "comments"
  ADD CONSTRAINT comments_fk_0
    FOREIGN KEY("postId")
      REFERENCES posts(id)
        ON DELETE CASCADE;

