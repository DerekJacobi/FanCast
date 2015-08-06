CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE TABLE "welcomes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "Home" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "username" varchar, "email" varchar, "password_digest" varchar, "location" varchar, "mixlr" varchar, "role" integer, "facebook" varchar, "twitter" varchar, "instagram" varchar, "broadcast_id" integer, "game_id" integer, "provider" varchar, "uid" varchar, "name" varchar, "image" varchar, "oauth_token" varchar, "oauth_expires_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_file_name" varchar, "image_content_type" varchar, "image_file_size" integer, "image_updated_at" datetime);
CREATE TABLE "games" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "date" varchar, "time" varchar, "location" varchar, "league" varchar, "league_id" integer, "home_team" varchar, "away_team" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "broadcast_id" integer, "user_id" integer);
CREATE TABLE "broadcasts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "game_id" integer, "user_id" integer);
CREATE TABLE "follows" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "follower_id" varchar, "integer" varchar, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_follows_on_user_id" ON "follows" ("user_id");
CREATE INDEX "index_games_on_user_id" ON "games" ("user_id");
CREATE INDEX "index_broadcasts_on_game_id" ON "broadcasts" ("game_id");
CREATE INDEX "index_broadcasts_on_user_id" ON "broadcasts" ("user_id");
INSERT INTO schema_migrations (version) VALUES ('20150804161207');

INSERT INTO schema_migrations (version) VALUES ('20150804161359');

INSERT INTO schema_migrations (version) VALUES ('20150804161414');

INSERT INTO schema_migrations (version) VALUES ('20150804161420');

INSERT INTO schema_migrations (version) VALUES ('20150804161424');

INSERT INTO schema_migrations (version) VALUES ('20150804165318');

INSERT INTO schema_migrations (version) VALUES ('20150805162813');

INSERT INTO schema_migrations (version) VALUES ('20150806134224');

