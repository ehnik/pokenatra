DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  cp INTEGER,
  img_url VARCHAR NOT NULL,
  poke_type VARCHAR NOT NULL
);
