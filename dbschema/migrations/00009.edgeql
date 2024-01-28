CREATE MIGRATION m1djiw5ixyy5r3rfgkow3urfopg2jdayzrtzenkpl5l5zseuoo57pq
    ONTO m1ooxcq6rzdgbcrnpk4inie7ki5vt7tb6f3ejgfq32o7tnjnmixfta
{
  ALTER TYPE default::Person {
      CREATE LINK lover: default::Person;
  };
  ALTER SCALAR TYPE default::HumanAge {
      CREATE CONSTRAINT std::min_value(0);
  };
};
