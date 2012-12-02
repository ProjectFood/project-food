CREATE TABLE "meals" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "category" varchar(255), "description" varchar(255), "photo" varchar(255), "title" varchar(255), "price" float, "user_id" integer, "review_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20121201213913');

INSERT INTO schema_migrations (version) VALUES ('20121201213927');