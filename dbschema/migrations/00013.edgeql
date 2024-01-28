CREATE MIGRATION m1od7nwqvfhjcsey7g3cjv2aolmasw3pdj3yk5jed4bnohvopkzs5q
    ONTO m1akn7jje7dd34eqmwgbaxibhrmdlawbnbu4gym7d6e642otomw7rq
{
  CREATE TYPE default::MinorVampire EXTENDING default::Person {
      CREATE REQUIRED LINK master: default::Vampire;
  };
};
