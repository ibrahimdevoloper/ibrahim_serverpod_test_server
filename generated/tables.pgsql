--
-- Class Post as table posts
--

CREATE TABLE "posts" (
  "id" serial,
  "title" text NOT NULL,
  "subtitle" text NOT NULL,
  "viewsCount" integer NOT NULL,
  "commentCount" integer NOT NULL,
  "postDate" timestamp without time zone NOT NULL,
  "createdAt" timestamp without time zone NOT NULL,
  "updatedAt" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "posts"
  ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Class Comment as table comments
--

CREATE TABLE "comments" (
  "id" serial,
  "comment" text NOT NULL,
  "postId" integer NOT NULL,
  "commentDate" timestamp without time zone NOT NULL,
  "createdAt" timestamp without time zone NOT NULL,
  "updatedAt" timestamp without time zone NOT NULL
);

ALTER TABLE ONLY "comments"
  ADD CONSTRAINT comments_pkey PRIMARY KEY (id);

ALTER TABLE ONLY "comments"
  ADD CONSTRAINT comments_fk_0
    FOREIGN KEY("postId")
      REFERENCES posts(id)
        ON DELETE CASCADE;

