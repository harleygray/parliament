CREATE MIGRATION m1dokoqx64jy4fg2tl5tq5cam3pgztci66ee74yaxbi7re3jvbtk7q
    ONTO m1od7nwqvfhjcsey7g3cjv2aolmasw3pdj3yk5jed4bnohvopkzs5q
{
  CREATE TYPE default::Castle EXTENDING default::Place;
  CREATE TYPE default::OtherPlace EXTENDING default::Place;
};
