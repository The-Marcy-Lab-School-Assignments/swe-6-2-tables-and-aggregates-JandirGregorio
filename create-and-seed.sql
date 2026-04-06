-- create-and-seed.sql
-- Design and seed a table for ONE of the following scenarios:
--
--   A. A restaurant menu
--      Suggested columns: name, cuisine, price, vegetarian, calories, available
--
--   B. A music library
--      Suggested columns: title, artist, genre, year, duration_seconds, streams
--
--   C. A gym class schedule
--      Suggested columns: class_name, instructor, day_of_week, capacity, enrolled, difficulty
--
--   D. A movie collection
--      Suggested columns: title, director, genre, year, runtime_minutes, rating
--
--   E. A bookstore inventory
--      Suggested columns: title, author, genre, price, pages, in_stock
--
-- Requirements:
--   [ ] Creates a new database with an appropriate name
--   [ ] Connects to the database after creating it
--   [ ] Creates a new table with an appropriate name
--   [ ] The seed file can be executed multiple times without causing errors related to the database and/or table already existing
--   [ ] The table has a primary key column with unique, auto-generated, and sequential values
--   [ ] The table has at least 5 additional columns beyond the primary key
--   [ ] The table has at least 3 different data types used
--   [ ] The table has at least one `NOT NULL` constraint
--   [ ] The table has at least one `DEFAULT` value
--   [ ] The table has at least one `UNIQUE` constraint
--   [ ] The table has at least 8 rows of seed data inserted

-- ============================================================
-- Step 1: Create the database
-- ============================================================
DROP DATABASE IF EXISTS music_library_db;
CREATE DATABASE music_library_db;
\c music_library_db

-- ============================================================
-- Step 2: Create the table
-- ============================================================

CREATE TABLE songs (
  song_id           SERIAL  PRIMARY KEY,
  title             TEXT    NOT NULL UNIQUE,
  artist            TEXT    NOT NULL,
  genre             TEXT    NOT NULL,
  year              INT     NOT NULL,
  duration_seconds  INT     NOT NULL,
  streams           BIGINT  DEFAULT 0
);

-- ============================================================
-- Step 3: Insert seed data (at least 8 rows)
-- ============================================================

INSERT INTO songs (title, artist, genre, year, duration_seconds, streams)
VALUES
  ('Hasta Jesús tuvo un mal día',   'Ca7riel & Paco Amoroso, Sting',  'latin',  2026,   195,  8000000),
  ('CRY OUT',                       'TRiDENT',                        'rock',   2023,   272,  2100000),
  ('No Letting Go',                 'Wayne Wonder',                   'pop',    2004,   245,  15200000),
  ('NUEVAYoL',                      'Bad Bunny',                      'latin',  2025,   183,  1100000000),
  ('Bohemian Rhapsody',             'Queen',                          'rock',   1975,   354,  3100000000),
  ('Dumbai',                        'Ca7riel & Paco Amoroso',         'latin',  2024,   148,  70000000),
  ('Not Like Us',                   'Kendrick Lamar',                 'hip-hop', 2025,  274,  1800000000),
  ('DtMF',                          'Bad Bunny',                      'latin',  2025,   237,  1700000000);
