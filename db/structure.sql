-- ARQUIVO UTILIZADO PARA EXEMPLIFICAR A UTILIZAÇÃO DO STRUCTURE.SQL AO INVÉS DO SCHEMA.RB

CREATE TABLE IF NOT EXISTS "movies" (
  "id" integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  "description" text,
  "created_at" datetime(6) NOT NULL,
  "updated_at" datetime(6) NOT NULL
);

CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);

CREATE TABLE IF NOT EXISTS "ar_internal_metadata" (
  "key" varchar NOT NULL PRIMARY KEY,
  "value" varchar,
  "created_at" datetime(6) NOT NULL,
  "updated_at" datetime(6) NOT NULL
);

INSERT INTO
  "schema_migrations" (version)
VALUES
  ('20251008232707'),
  ('20251008232623'),
  ('20251008232222'),
  ('20251008231502');