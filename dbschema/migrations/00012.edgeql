CREATE MIGRATION m1akn7jje7dd34eqmwgbaxibhrmdlawbnbu4gym7d6e642otomw7rq
    ONTO m1hkt7eodut7hw5z4gg5uyi3vdn5wx6hbhe3widj5gtpmzyjo6fw6a
{
  CREATE GLOBAL default::time := (std::assert_single((SELECT
      default::Time
  )));
};
